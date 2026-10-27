.class public Lcom/android/server/backup/UserBackupManagerService;
.super Ljava/lang/Object;
.source "UserBackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    }
.end annotation


# static fields
.field public static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field public static final BACKUP_FILE_VERSION:I = 0x5

.field private static final BACKUP_FINISHED_ACTION:Ljava/lang/String; = "android.intent.action.BACKUP_FINISHED"

.field private static final BACKUP_FINISHED_PACKAGE_EXTRA:Ljava/lang/String; = "packageName"

.field public static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field public static final BACKUP_MANIFEST_VERSION:I = 0x1

.field public static final BACKUP_METADATA_FILENAME:Ljava/lang/String; = "_meta"

.field public static final BACKUP_METADATA_VERSION:I = 0x1

.field public static final BACKUP_WIDGET_METADATA_TOKEN:I = 0x1ffed01

.field private static final BIND_TIMEOUT_INTERVAL:J = 0x2710L

.field private static final BUSY_BACKOFF_FUZZ:I = 0x6ddd00

.field private static final BUSY_BACKOFF_MIN_MILLIS:J = 0x36ee80L

.field private static final CLEAR_DATA_TIMEOUT_INTERVAL:J = 0x493e0L

.field private static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field private static final INITIALIZATION_DELAY_MILLIS:J = 0xbb8L

.field private static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field public static final KEY_WIDGET_STATE:Ljava/lang/String; = "\uffed\uffedwidget"

.field public static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field public static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field private static final SCHEDULE_FILE_VERSION:I = 0x1

.field private static final SERIAL_ID_FILE:Ljava/lang/String; = "serial_id"

.field public static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.providers.settings"

.field public static final SHARED_BACKUP_AGENT_PACKAGE:Ljava/lang/String; = "com.android.sharedstoragebackup"

.field private static final SKIP_USER_FACING_PACKAGES:Ljava/lang/String; = "backup_skip_user_facing_packages"

.field private static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field private static final TRANSPORT_RETRY_INTERVAL:J = 0x36ee80L

.field private static final WALLPAPER_PACKAGE:Ljava/lang/String; = "com.android.wallpaperbackup"


# instance fields
.field private mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/params/AdbParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mAgentConnectLock:Ljava/lang/Object;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private volatile mAncestralOperationType:J

.field private mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAncestralSerialNumberFile:Ljava/io/File;

.field private mAncestralToken:J

.field private mAutoRestore:Z

.field private final mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

.field private final mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field private final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

.field private final mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

.field private volatile mBackupRunning:Z

.field private final mBaseStateDir:Ljava/io/File;

.field private mCallerFd:I

.field private final mClearDataLock:Ljava/lang/Object;

.field private volatile mClearingData:Z

.field private mConnectedAgent:Landroid/app/IBackupAgent;

.field private volatile mConnecting:Z

.field private final mConstants:Lcom/android/server/backup/BackupManagerConstants;

.field private final mContext:Landroid/content/Context;

.field private mCurrentToken:J

.field private final mDataDir:Ljava/io/File;

.field private mEnabled:Z

.field private mFullBackupQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mFullBackupScheduleFile:Ljava/io/File;

.field private mFullBackupScheduleWriter:Ljava/lang/Runnable;

.field private mIsRestoreInProgress:Z

.field private mJournal:Lcom/android/server/backup/DataChangedJournal;

.field private final mJournalDir:Ljava/io/File;

.field private volatile mLastBackupPass:J

.field private final mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

.field private final mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/keyvalue/BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingInits:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRestores:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

.field private final mQueueLock:Ljava/lang/Object;

.field private final mRegisterTransportsRequestedTime:J

.field private final mRng:Ljava/security/SecureRandom;

.field private final mRunInitIntent:Landroid/app/PendingIntent;

.field private final mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field private mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

.field private final mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field private mSetupComplete:Z

.field private final mSetupObserver:Landroid/database/ContentObserver;

.field private mTokenFile:Ljava/io/File;

.field private final mTokenGenerator:Ljava/util/Random;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;

.field private final mUserId:I

.field private final mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;


# direct methods
.method public static synthetic $r8$lambda$dQdNTkT3x-bbcTRJ-qzlv2hKbw8(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->parseLeftoverJournals()V

    return-void
.end method

.method public static synthetic $r8$lambda$nhDpousXIb-UWNtQnFwKddTYzHQ(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBackupHandler(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackupParticipants(Lcom/android/server/backup/UserBackupManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFullBackupQueue(Lcom/android/server/backup/UserBackupManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFullBackupScheduleFile(Lcom/android/server/backup/UserBackupManagerService;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/backup/UserBackupManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQueueLock(Lcom/android/server/backup/UserBackupManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunningFullBackupTask(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScheduledBackupEligibility(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransportManager(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/backup/UserBackupManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$maddPackageParticipantsLocked(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdataChangedImpl(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdequeueFullBackupLocked(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremovePackageParticipantsLocked(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteFullBackupScheduleAsync(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->writeFullBackupScheduleAsync()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smaddUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)V
    .registers 29
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Lcom/android/server/backup/BackupManagerService;
    .param p4, "userBackupThread"    # Landroid/os/HandlerThread;
    .param p5, "baseStateDir"    # Ljava/io/File;
    .param p6, "dataDir"    # Ljava/io/File;
    .param p7, "transportManager"    # Lcom/android/server/backup/TransportManager;

    .line 551
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 346
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 352
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 360
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 368
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 373
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 374
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 388
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 395
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 396
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 410
    const/4 v12, 0x0

    iput-object v12, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 411
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 412
    iput-wide v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 1086
    new-instance v3, Lcom/android/server/backup/UserBackupManagerService$1;

    invoke-direct {v3, v1}, Lcom/android/server/backup/UserBackupManagerService$1;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    .line 1296
    new-instance v3, Lcom/android/server/backup/UserBackupManagerService$2;

    invoke-direct {v3, v1}, Lcom/android/server/backup/UserBackupManagerService$2;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    .line 552
    iput v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 553
    const-string v3, "context cannot be null"

    invoke-static {v9, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/content/Context;

    iput-object v13, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 555
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 556
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 557
    const-class v4, Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal;

    iput-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 558
    const/4 v14, 0x0

    invoke-static {v3, v2, v14}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRules(Landroid/content/pm/PackageManager;II)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 561
    const-string v3, "alarm"

    invoke-virtual {v9, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 562
    const-string/jumbo v3, "power"

    invoke-virtual {v9, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 564
    const-string/jumbo v3, "parent cannot be null"

    move-object/from16 v15, p3

    invoke-static {v15, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 565
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/backup/BackupManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 567
    new-instance v3, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 568
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/backup/BackupAgentTimeoutParameters;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 569
    invoke-virtual {v3}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->start()V

    .line 571
    new-instance v3, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    invoke-direct {v3, v2}, Lcom/android/server/backup/internal/LifecycleOperationStorage;-><init>(I)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 573
    const-string/jumbo v4, "userBackupThread cannot be null"

    invoke-static {v10, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 574
    new-instance v8, Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {v8, v1, v3, v10}, Lcom/android/server/backup/internal/BackupHandler;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/os/HandlerThread;)V

    iput-object v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 578
    .local v7, "resolver":Landroid/content/ContentResolver;
    invoke-static {v9, v2}, Lcom/android/server/backup/UserBackupManagerService;->getSetupCompleteSettingForUser(Landroid/content/Context;I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 579
    const-string v3, "backup_auto_restore"

    const/4 v6, 0x1

    invoke-static {v7, v3, v6, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_101

    move v3, v6

    goto :goto_102

    :cond_101
    move v3, v14

    :goto_102
    iput-boolean v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    .line 582
    new-instance v3, Lcom/android/server/backup/internal/SetupObserver;

    invoke-direct {v3, v1, v8}, Lcom/android/server/backup/internal/SetupObserver;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/Handler;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupObserver:Landroid/database/ContentObserver;

    .line 583
    const-string/jumbo v4, "user_setup_complete"

    .line 584
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 583
    invoke-virtual {v7, v4, v14, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 590
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/server/backup/BackupManagerServiceStub;->registerHuanjiReceiver(Lcom/android/server/backup/UserBackupManagerService;Landroid/content/Context;)V

    .line 592
    const-string v3, "baseStateDir cannot be null"

    move-object/from16 v5, p5

    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/io/File;

    iput-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 595
    if-nez v2, :cond_154

    .line 596
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 597
    invoke-static {v4}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_154

    .line 598
    const-string v3, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELinux restorecon failed on "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 600
    invoke-static {v2, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 598
    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_154
    const-string v3, "dataDir cannot be null"

    move-object/from16 v12, p6

    invoke-static {v12, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 608
    new-instance v3, Lcom/android/server/backup/BackupPasswordManager;

    invoke-direct {v3, v13, v4, v0}, Lcom/android/server/backup/BackupPasswordManager;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/security/SecureRandom;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    .line 611
    new-instance v0, Lcom/android/server/backup/internal/RunInitializeReceiver;

    invoke-direct {v0, v1}, Lcom/android/server/backup/internal/RunInitializeReceiver;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 612
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v6, v3

    .line 613
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.app.backup.intent.INIT"

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 614
    nop

    .line 616
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v17

    const-string v18, "android.permission.BACKUP"

    const/16 v19, 0x0

    .line 614
    move-object/from16 v3, p2

    move-object/from16 v20, v4

    move-object v4, v0

    move-object/from16 v5, v17

    move-object/from16 v16, v6

    const/4 v0, 0x1

    .end local v6    # "filter":Landroid/content/IntentFilter;
    .local v16, "filter":Landroid/content/IntentFilter;
    move-object/from16 v17, v7

    .end local v7    # "resolver":Landroid/content/ContentResolver;
    .local v17, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v7, v18

    move-object v0, v8

    move-object/from16 v8, v19

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 621
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.backup.intent.INIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v3, "initIntent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 623
    const/high16 v4, 0x4000000

    .line 629
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 624
    invoke-static {v9, v14, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 632
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "pending"

    move-object/from16 v6, v20

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    .line 633
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 634
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 636
    new-instance v4, Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/android/server/backup/BackupManagerConstants;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 640
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerConstants;->start()V

    .line 645
    monitor-enter v11

    .line 646
    const/4 v4, 0x0

    :try_start_1d0
    invoke-direct {v1, v4}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    .line 647
    monitor-exit v11
    :try_end_1d4
    .catchall {:try_start_1d0 .. :try_end_1d4} :catchall_249

    .line 649
    const-string/jumbo v4, "transportManager cannot be null"

    .line 650
    move-object/from16 v5, p7

    invoke-static {v5, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/TransportManager;

    iput-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 651
    new-instance v7, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    invoke-virtual {v4, v7}, Lcom/android/server/backup/TransportManager;->setOnTransportRegisteredListener(Lcom/android/server/backup/transport/OnTransportRegisteredListener;)V

    .line 652
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mRegisterTransportsRequestedTime:J

    .line 653
    nop

    .line 654
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v7, v4}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/backup/TransportManager;)V

    .line 653
    move-object v8, v3

    .end local v3    # "initIntent":Landroid/content/Intent;
    .local v8, "initIntent":Landroid/content/Intent;
    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v7, v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 658
    new-instance v7, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v7, v1}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    invoke-virtual {v0, v7, v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 660
    new-instance v0, Lcom/android/server/backup/UserBackupPreferences;

    invoke-direct {v0, v13, v6}, Lcom/android/server/backup/UserBackupPreferences;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

    .line 663
    new-instance v0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*backup*-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 666
    invoke-virtual/range {p4 .. p4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 664
    const/4 v7, 0x1

    invoke-virtual {v3, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;-><init>(Landroid/os/PowerManager$WakeLock;I)V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 669
    new-instance v0, Ljava/io/File;

    const-string v3, "fb-schedule"

    invoke-direct {v0, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    .line 670
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->initPackageTracking()V

    .line 671
    return-void

    .line 647
    .end local v8    # "initIntent":Landroid/content/Intent;
    .restart local v3    # "initIntent":Landroid/content/Intent;
    :catchall_249
    move-exception v0

    move-object/from16 v5, p7

    move-object v8, v3

    .end local v3    # "initIntent":Landroid/content/Intent;
    .restart local v8    # "initIntent":Landroid/content/Intent;
    :goto_24d
    :try_start_24d
    monitor-exit v11
    :try_end_24e
    .catchall {:try_start_24d .. :try_end_24e} :catchall_24f

    throw v0

    :catchall_24f
    move-exception v0

    goto :goto_24d
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/backup/internal/LifecycleOperationStorage;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "operationStorage"    # Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 346
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 352
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 360
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 368
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 373
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 374
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 388
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 395
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 396
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 411
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 412
    iput-wide v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 1086
    new-instance v3, Lcom/android/server/backup/UserBackupManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/backup/UserBackupManagerService$1;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    .line 1296
    new-instance v3, Lcom/android/server/backup/UserBackupManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/backup/UserBackupManagerService$2;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    .line 515
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 517
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 518
    iput-wide v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRegisterTransportsRequestedTime:J

    .line 519
    iput-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 520
    iput-object p3, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 522
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 523
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 524
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    .line 525
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    .line 526
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupObserver:Landroid/database/ContentObserver;

    .line 527
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 528
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 529
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 530
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 531
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 532
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 533
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 534
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 535
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 536
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

    .line 537
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    .line 538
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 539
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 540
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 541
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 542
    return-void
.end method

.method private addPackageParticipantsLocked([Ljava/lang/String;)V
    .registers 7
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 1437
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 1438
    .local v0, "targetApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v1, "BackupManagerService"

    if-eqz p1, :cond_35

    .line 1439
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_29

    .line 1440
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackageParticipantsLocked: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1442
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1440
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_29
    array-length v1, p1

    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v1, :cond_48

    aget-object v3, p1, v2

    .line 1446
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, v0}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1445
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 1449
    :cond_35
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_44

    .line 1450
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "addPackageParticipantsLocked: all"

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_44
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1454
    :cond_48
    return-void
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 1458
    .local p2, "targetPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    const-string v1, "BackupManagerService"

    if-eqz v0, :cond_28

    .line 1459
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Examining "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for backup agent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1461
    invoke-static {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1459
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_28
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1466
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_42

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 1467
    :cond_42
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1468
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 1469
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v4, :cond_5b

    .line 1470
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v4, v5

    .line 1471
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1473
    :cond_5b
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1474
    sget-boolean v5, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v5, :cond_6f

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "Agent found; added"

    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_6f
    sget-boolean v5, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v5, :cond_91

    .line 1478
    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheduling backup for new app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1480
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1478
    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_91
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v6, 0x10

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1484
    invoke-virtual {v5, v6, v7}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1485
    .local v5, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1487
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "uid":I
    .end local v4    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "msg":Landroid/os/Message;
    :cond_a0
    goto :goto_2c

    .line 1488
    :cond_a1
    return-void
.end method

.method private static addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "userId"    # I
    .param p1, "message"    # Ljava/lang/String;

    .line 4273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UserID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private allAgentPackages()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1547
    const/high16 v0, 0x8000000

    .line 1548
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v1

    .line 1549
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1550
    .local v2, "numPackages":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "a":I
    :goto_10
    if-ltz v3, :cond_53

    .line 1551
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 1553
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_18
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1554
    .local v5, "app":Landroid/content/pm/ApplicationInfo;
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_48

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v6, :cond_48

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x4000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_2e

    goto :goto_48

    .line 1562
    :cond_2e
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x400

    iget v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    move-object v5, v6

    .line 1564
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 1565
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    goto :goto_4b

    .line 1557
    :cond_48
    :goto_48
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_4b} :catch_4c

    .line 1569
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    :goto_4b
    goto :goto_50

    .line 1567
    :catch_4c
    move-exception v5

    .line 1568
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1550
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_50
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 1571
    .end local v3    # "a":I
    :cond_53
    return-object v1
.end method

.method private clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "checkFlagAllowClearUserDataOnFailedRestore"    # Z
    .param p3, "keepSystemState"    # Z

    .line 1727
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/backup/BackupManagerServiceStub;->getAppUserId(II)I

    move-result v0

    .line 1733
    .local v0, "userId":I
    :try_start_c
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1738
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x1

    if-eqz p2, :cond_29

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_29

    .line 1740
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v5, 0x4000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_27

    move v4, v3

    goto :goto_28

    :cond_27
    move v4, v2

    .local v4, "shouldClearData":Z
    :goto_28
    goto :goto_32

    .line 1743
    .end local v4    # "shouldClearData":Z
    :cond_29
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_31

    move v4, v3

    goto :goto_32

    :cond_31
    move v4, v2

    .line 1747
    .restart local v4    # "shouldClearData":Z
    :goto_32
    if-nez v4, :cond_57

    .line 1748
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_56

    .line 1749
    const-string v2, "BackupManagerService"

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clearing app data is not allowed so not wiping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1751
    invoke-static {v3, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1749
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_56} :catch_db

    .line 1756
    :cond_56
    return-void

    .line 1764
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "shouldClearData":Z
    :cond_57
    nop

    .line 1766
    new-instance v1, Lcom/android/server/backup/internal/ClearDataObserver;

    invoke-direct {v1, p0}, Lcom/android/server/backup/internal/ClearDataObserver;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 1768
    .local v1, "observer":Lcom/android/server/backup/internal/ClearDataObserver;
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1769
    :try_start_60
    iput-boolean v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z
    :try_end_62
    .catchall {:try_start_60 .. :try_end_62} :catchall_d8

    .line 1774
    :try_start_62
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3, p1, p3, v1, v0}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_67} :catch_68
    .catchall {:try_start_62 .. :try_end_67} :catchall_d8

    .line 1779
    goto :goto_69

    .line 1777
    :catch_68
    move-exception v3

    .line 1782
    :goto_69
    :try_start_69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x493e0

    add-long/2addr v5, v7

    .line 1783
    .local v5, "timeoutMark":J
    :goto_71
    iget-boolean v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    if-eqz v3, :cond_ae

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_79
    .catchall {:try_start_69 .. :try_end_79} :catchall_d8

    cmp-long v3, v7, v5

    if-gez v3, :cond_ae

    .line 1785
    :try_start_7d
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    const-wide/16 v7, 0x1388

    invoke-virtual {v3, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_84
    .catch Ljava/lang/InterruptedException; {:try_start_7d .. :try_end_84} :catch_85
    .catchall {:try_start_7d .. :try_end_84} :catchall_d8

    .line 1797
    goto :goto_71

    .line 1786
    :catch_85
    move-exception v3

    .line 1788
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_86
    iput-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    .line 1789
    const-string v7, "BackupManagerService"

    iget v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Interrupted while waiting for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " data to be cleared"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1791
    invoke-static {v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1789
    invoke-static {v7, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1797
    nop

    .end local v3    # "e":Ljava/lang/InterruptedException;
    goto :goto_71

    .line 1800
    :cond_ae
    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    if-eqz v2, :cond_d6

    .line 1801
    const-string v2, "BackupManagerService"

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Clearing app data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " timed out"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1803
    invoke-static {v3, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1801
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    .end local v5    # "timeoutMark":J
    :cond_d6
    monitor-exit v4

    .line 1807
    return-void

    .line 1806
    :catchall_d8
    move-exception v2

    monitor-exit v4
    :try_end_da
    .catchall {:try_start_86 .. :try_end_da} :catchall_d8

    throw v2

    .line 1758
    .end local v1    # "observer":Lcom/android/server/backup/internal/ClearDataObserver;
    :catch_db
    move-exception v1

    .line 1759
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "BackupManagerService"

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to clear data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1761
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1759
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    return-void
.end method

.method public static createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 16
    .param p0, "userId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p3, "userBackupThread"    # Landroid/os/HandlerThread;
    .param p4, "baseStateDir"    # Ljava/io/File;
    .param p5, "dataDir"    # Ljava/io/File;
    .param p6, "transportManager"    # Lcom/android/server/backup/TransportManager;

    .line 489
    new-instance v8, Lcom/android/server/backup/UserBackupManagerService;

    move-object v0, v8

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/UserBackupManagerService;-><init>(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)V

    return-object v8
.end method

.method static createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Ljava/util/Set;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 15
    .param p0, "userId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/BackupManagerService;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Lcom/android/server/backup/UserBackupManagerService;"
        }
    .end annotation

    .line 431
    .local p3, "transportWhitelist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    nop

    .line 433
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 432
    const-string v1, "backup_transport"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "currentTransport":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 435
    const/4 v0, 0x0

    .line 439
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting with transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-static {p0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v9, Lcom/android/server/backup/TransportManager;

    invoke-direct {v9, p0, p1, p3, v0}, Lcom/android/server/backup/TransportManager;-><init>(ILandroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    .line 446
    .local v9, "transportManager":Lcom/android/server/backup/TransportManager;
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v1

    .line 447
    .local v1, "baseStateDir":Ljava/io/File;
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getDataDir(I)Ljava/io/File;

    move-result-object v10

    .line 449
    .local v10, "dataDir":Ljava/io/File;
    new-instance v6, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-direct {v6, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 451
    .local v6, "userBackupThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Started thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 455
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 453
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    move v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v1

    move-object v8, v10

    invoke-static/range {v3 .. v9}, Lcom/android/server/backup/UserBackupManagerService;->createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v2

    return-object v2
.end method

.method private dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2501
    .local p2, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p2, :cond_2f

    .line 2502
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataChanged but no participant pkg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2510
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2504
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2502
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    return-void

    .line 2514
    :cond_2f
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2516
    :try_start_32
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 2519
    new-instance v1, Lcom/android/server/backup/keyvalue/BackupRequest;

    invoke-direct {v1, p1}, Lcom/android/server/backup/keyvalue/BackupRequest;-><init>(Ljava/lang/String;)V

    .line 2520
    .local v1, "req":Lcom/android/server/backup/keyvalue/BackupRequest;
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6a

    .line 2521
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_67

    .line 2522
    const-string v2, "BackupManagerService"

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now staging backup of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2524
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2522
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    :cond_67
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V

    .line 2534
    .end local v1    # "req":Lcom/android/server/backup/keyvalue/BackupRequest;
    :cond_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_32 .. :try_end_6b} :catchall_75

    .line 2537
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    .line 2538
    return-void

    .line 2534
    :catchall_75
    move-exception v1

    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v1
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2544
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2545
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2544
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 2546
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2547
    :try_start_16
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    monitor-exit v0

    return-object v1

    .line 2548
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_24

    throw v1

    .line 2552
    :cond_27
    const-string v0, "@pm@"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2553
    const-string v0, "@pm@"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0

    .line 2555
    :cond_3a
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2556
    :try_start_3d
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/android/server/backup/utils/SparseArrayUtils;->union(Landroid/util/SparseArray;)Ljava/util/HashSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2557
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_45

    throw v1
.end method

.method private dequeueFullBackupLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2147
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2148
    .local v0, "numPackages":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_22

    .line 2149
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 2150
    .local v2, "e":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-object v3, v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2151
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2148
    .end local v2    # "e":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2154
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method private dumpAgents(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4135
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 4136
    .local v0, "agentPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v1, "Defined backup agents:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 4138
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4139
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4140
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 4141
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4142
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4143
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    goto :goto_d

    .line 4144
    :cond_35
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 4149
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    if-nez v0, :cond_b

    const-string v0, ""

    goto :goto_26

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    move-object v3, v0

    .line 4150
    .local v3, "userPrefix":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4151
    :try_start_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "Backup Manager is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    if-eqz v5, :cond_40

    const-string v5, "enabled"

    goto :goto_42

    :cond_40
    const-string v5, "disabled"

    :goto_42
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " / "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4152
    iget-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v5, :cond_54

    const-string/jumbo v5, "not "

    goto :goto_56

    :cond_54
    const-string v5, ""

    :goto_56
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "setup complete / "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4153
    iget-object v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-nez v5, :cond_6d

    const-string/jumbo v5, "not "

    goto :goto_6f

    :cond_6d
    const-string v5, ""

    :goto_6f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "pending init"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4151
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auto-restore is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    if-eqz v5, :cond_93

    const-string v5, "enabled"

    goto :goto_95

    :cond_93
    const-string v5, "disabled"

    :goto_95
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4155
    iget-boolean v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    if-eqz v0, :cond_a9

    const-string v0, "Backup currently running"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4156
    :cond_a9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    if-eqz v0, :cond_b2

    const-string v0, "Backup in progress"

    goto :goto_b4

    :cond_b2
    const-string v0, "No backups running"

    :goto_b4
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last backup pass started: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mLastBackupPass:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " (now = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4157
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  next scheduled: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v5}, Lcom/android/server/backup/KeyValueBackupJob;->nextScheduled(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "Transport whitelist:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4162
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getTransportWhitelist()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_138

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4163
    .local v5, "transport":Landroid/content/ComponentName;
    const-string v6, "    "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4164
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4165
    .end local v5    # "transport":Landroid/content/ComponentName;
    goto :goto_11f

    .line 4167
    :cond_138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "Available transports:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4168
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 4169
    .local v5, "transports":[Ljava/lang/String;
    if-eqz v5, :cond_234

    .line 4170
    array-length v6, v5

    const/4 v8, 0x0

    :goto_157
    if-ge v8, v6, :cond_234

    aget-object v0, v5, v8

    move-object v9, v0

    .line 4171
    .local v9, "t":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v10}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_170

    const-string v10, "  * "

    goto :goto_172

    .line 4172
    :cond_170
    const-string v10, "    "

    :goto_172
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4171
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_181
    .catchall {:try_start_2a .. :try_end_181} :catchall_455

    .line 4174
    :try_start_181
    new-instance v0, Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v11, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 4175
    invoke-virtual {v11, v9}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4176
    .local v0, "dir":Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "       destination: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 4177
    invoke-virtual {v11, v9}, Lcom/android/server/backup/TransportManager;->getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4176
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4178
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "       intent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 4179
    invoke-virtual {v11, v9}, Lcom/android/server/backup/TransportManager;->getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4178
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4180
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_1cc
    if-ge v12, v11, :cond_207

    aget-object v13, v10, v12

    .line 4181
    .local v13, "f":Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "       "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 4182
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_1e9} :catch_20a
    .catchall {:try_start_181 .. :try_end_1e9} :catchall_455

    move/from16 v16, v8

    :try_start_1eb
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4181
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_200
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_200} :catch_205
    .catchall {:try_start_1eb .. :try_end_200} :catchall_455

    .line 4180
    .end local v13    # "f":Ljava/io/File;
    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v16

    goto :goto_1cc

    .line 4184
    .end local v0    # "dir":Ljava/io/File;
    :catch_205
    move-exception v0

    goto :goto_20d

    .line 4180
    .restart local v0    # "dir":Ljava/io/File;
    :cond_207
    move/from16 v16, v8

    .line 4187
    .end local v0    # "dir":Ljava/io/File;
    goto :goto_230

    .line 4184
    :catch_20a
    move-exception v0

    move/from16 v16, v8

    .line 4185
    .local v0, "e":Ljava/lang/Exception;
    :goto_20d
    :try_start_20d
    const-string v7, "BackupManagerService"

    iget v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v10, "Error in transport"

    invoke-static {v8, v10}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "        Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4170
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "t":Ljava/lang/String;
    :goto_230
    add-int/lit8 v8, v16, 0x1

    goto/16 :goto_157

    .line 4191
    :cond_234
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/TransportManager;->dumpTransportClients(Ljava/io/PrintWriter;)V

    .line 4193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "Pending init: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4194
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_282

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4195
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4196
    .end local v6    # "s":Ljava/lang/String;
    goto :goto_25f

    .line 4198
    :cond_282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "Ancestral: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4199
    iget-wide v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "Current:   "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4201
    iget-wide v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4203
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4204
    .local v0, "numPackages":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Participants:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4205
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2dd
    if-ge v6, v0, :cond_31f

    .line 4206
    iget-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 4207
    .local v7, "uid":I
    const-string v8, "  uid: "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4208
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 4209
    iget-object v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashSet;

    .line 4210
    .local v8, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2f9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_31c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 4211
    .local v10, "app":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4212
    .end local v10    # "app":Ljava/lang/String;
    goto :goto_2f9

    .line 4205
    .end local v7    # "uid":I
    .end local v8    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_31c
    add-int/lit8 v6, v6, 0x1

    goto :goto_2dd

    .line 4215
    .end local v6    # "i":I
    :cond_31f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Ancestral packages: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4216
    iget-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v7, :cond_336

    const-string/jumbo v7, "none"

    goto :goto_33e

    :cond_336
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_33e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4215
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4217
    iget-object v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-eqz v6, :cond_374

    .line 4218
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_351
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_374

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 4219
    .local v7, "pkg":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4220
    .end local v7    # "pkg":Ljava/lang/String;
    goto :goto_351

    .line 4223
    :cond_374
    iget-object v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v6}, Lcom/android/server/backup/ProcessedPackagesJournal;->getPackagesCopy()Ljava/util/Set;

    move-result-object v6

    .line 4224
    .local v6, "processedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Ever backed up: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4225
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_39c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3bf

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 4226
    .local v8, "pkg":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4227
    .end local v8    # "pkg":Ljava/lang/String;
    goto :goto_39c

    .line 4229
    :cond_3bf
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Pending key/value backup: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4230
    iget-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3e9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_40c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/backup/keyvalue/BackupRequest;

    .line 4231
    .local v8, "req":Lcom/android/server/backup/keyvalue/BackupRequest;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4232
    .end local v8    # "req":Lcom/android/server/backup/keyvalue/BackupRequest;
    goto :goto_3e9

    .line 4234
    :cond_40c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Full backup queue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4235
    iget-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_432
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_453

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 4236
    .local v8, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    const-string v9, "    "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4237
    iget-wide v9, v8, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    invoke-virtual {v2, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    .line 4238
    const-string v9, " : "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4239
    iget-object v9, v8, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4240
    .end local v8    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    goto :goto_432

    .line 4241
    .end local v0    # "numPackages":I
    .end local v5    # "transports":[Ljava/lang/String;
    .end local v6    # "processedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_453
    monitor-exit v4

    .line 4242
    return-void

    .line 4241
    :catchall_455
    move-exception v0

    monitor-exit v4
    :try_end_457
    .catchall {:try_start_20d .. :try_end_457} :catchall_455

    throw v0
.end method

.method private fullBackupAllowable(Ljava/lang/String;)Z
    .registers 11
    .param p1, "transportName"    # Ljava/lang/String;

    .line 2190
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BackupManagerService"

    if-nez v0, :cond_17

    .line 2191
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 2193
    const-string v3, "Transport not registered; full data backup not performed"

    invoke-static {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2191
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    return v1

    .line 2201
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2202
    .local v0, "transportDirName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2203
    .local v3, "stateDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "@pm@"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2204
    .local v4, "pmState":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_41

    .line 2206
    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "Full backup requested but dataset not yet initialized"

    .line 2208
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2206
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_40} :catch_44

    .line 2212
    return v1

    .line 2220
    .end local v0    # "transportDirName":Ljava/lang/String;
    .end local v3    # "stateDir":Ljava/io/File;
    .end local v4    # "pmState":Ljava/io/File;
    :cond_41
    nop

    .line 2222
    const/4 v0, 0x1

    return v0

    .line 2214
    :catch_44
    move-exception v0

    .line 2215
    .local v0, "e":Ljava/lang/Exception;
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get transport name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2218
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2217
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2215
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    return v1
.end method

.method private getAncestralSerialNumberFile()Ljava/io/File;
    .registers 4

    .line 2663
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    if-nez v0, :cond_16

    .line 2664
    new-instance v0, Ljava/io/File;

    .line 2665
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "serial_id"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    .line 2668
    :cond_16
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    return-object v0
.end method

.method private static getEligibilityRules(Landroid/content/pm/PackageManager;II)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .registers 5
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "userId"    # I
    .param p2, "operationType"    # I

    .line 4106
    new-instance v0, Lcom/android/server/backup/utils/BackupEligibilityRules;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 4107
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;II)V

    .line 4106
    return-object v0
.end method

.method private getEligibilityRulesForRestoreAtInstall(J)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .registers 7
    .param p1, "restoreToken"    # J

    .line 1810
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralOperationType:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_14

    .line 1811
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v0

    return-object v0

    .line 1815
    :cond_14
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-object v0
.end method

.method private getMessageIdForOperationType(I)I
    .registers 5
    .param p1, "operationType"    # I

    .line 2037
    packed-switch p1, :pswitch_data_2a

    .line 2043
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageIdForOperationType called on invalid operation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2045
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2043
    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    const/4 v0, -0x1

    return v0

    .line 2041
    :pswitch_23
    const/16 v0, 0x12

    return v0

    .line 2039
    :pswitch_26
    const/16 v0, 0x11

    return v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
    .end packed-switch
.end method

.method public static getSetupCompleteSettingForUser(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 504
    nop

    .line 505
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 504
    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method

.method private initPackageTracking()V
    .registers 9

    .line 923
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "` tracking"

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_11
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v2, "ancestral"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenFile:Ljava/io/File;

    .line 927
    :try_start_1c
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_2d} :catch_7a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2d} :catch_6b

    .line 929
    .local v0, "tokenStream":Ljava/io/DataInputStream;
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 930
    .local v1, "version":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5d

    .line 931
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 932
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 934
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 935
    .local v2, "numPackages":I
    if-ltz v2, :cond_5d

    .line 936
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 937
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4e
    if-ge v3, v2, :cond_5d

    .line 938
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 939
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catchall {:try_start_2d .. :try_end_59} :catchall_61

    .line 937
    nop

    .end local v4    # "pkgName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 943
    .end local v1    # "version":I
    .end local v2    # "numPackages":I
    .end local v3    # "i":I
    :cond_5d
    :try_start_5d
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_60} :catch_7a
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_6b

    goto :goto_88

    .line 927
    :catchall_61
    move-exception v1

    :try_start_62
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6a

    :catchall_66
    move-exception v2

    :try_start_67
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :goto_6a
    throw v1
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_67 .. :try_end_6b} :catch_7a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6b} :catch_6b

    .line 946
    .end local v0    # "tokenStream":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catch_6b
    move-exception v0

    .line 947
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Unable to read token file"

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_89

    .line 943
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7a
    move-exception v0

    .line 945
    .local v0, "fnf":Ljava/io/FileNotFoundException;
    const-string v1, "BackupManagerService"

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "No ancestral data"

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    .end local v0    # "fnf":Ljava/io/FileNotFoundException;
    :goto_88
    nop

    .line 950
    :goto_89
    new-instance v0, Lcom/android/server/backup/ProcessedPackagesJournal;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/android/server/backup/ProcessedPackagesJournal;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    .line 951
    invoke-virtual {v0}, Lcom/android/server/backup/ProcessedPackagesJournal;->init()V

    .line 953
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 955
    :try_start_98
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->readFullBackupSchedule()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 956
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_98 .. :try_end_9f} :catchall_e8

    .line 959
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 960
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 961
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 962
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 963
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 964
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 966
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 964
    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 972
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 973
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 974
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 975
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 977
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v7, 0x0

    .line 975
    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 981
    return-void

    .line 956
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "sdFilter":Landroid/content/IntentFilter;
    :catchall_e8
    move-exception v1

    :try_start_e9
    monitor-exit v0
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw v1
.end method

.method static synthetic lambda$cancelBackups$2(I)V
    .registers 1
    .param p0, "operationType"    # I

    .line 1986
    return-void
.end method

.method private onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "transportDirName"    # Ljava/lang/String;

    .line 1262
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mRegisterTransportsRequestedTime:J

    sub-long/2addr v0, v2

    .line 1263
    .local v0, "timeMs":J
    const-string v2, "BackupManagerService"

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " registered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms after first request (delay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1265
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1263
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    .end local v0    # "timeMs":J
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1277
    .local v0, "stateDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1279
    new-instance v1, Ljava/io/File;

    const-string v2, "_need_init_"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1280
    .local v1, "initSentinel":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1281
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1282
    :try_start_5d
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1285
    const-wide/32 v3, 0xea60

    .line 1286
    .local v3, "delay":J
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x0

    .line 1287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v3

    iget-object v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 1286
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1288
    .end local v3    # "delay":J
    monitor-exit v2

    goto :goto_77

    :catchall_74
    move-exception v3

    monitor-exit v2
    :try_end_76
    .catchall {:try_start_5d .. :try_end_76} :catchall_74

    throw v3

    .line 1290
    :cond_77
    :goto_77
    return-void
.end method

.method private parseLeftoverJournals()V
    .registers 10

    .line 1133
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/backup/DataChangedJournal;->listJournals(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1134
    .local v0, "journals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/DataChangedJournal;>;"
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1135
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v2, "BackupManagerService"

    if-nez v1, :cond_3d

    .line 1136
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1137
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stale backup journal(s), scheduling."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1136
    invoke-static {v1, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_3d
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1140
    .local v1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/DataChangedJournal;

    .line 1142
    .local v4, "journal":Lcom/android/server/backup/DataChangedJournal;
    :try_start_52
    new-instance v5, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, v1}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/util/Set;)V

    invoke-virtual {v4, v5}, Lcom/android/server/backup/DataChangedJournal;->forEach(Ljava/util/function/Consumer;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5a} :catch_5b

    .line 1149
    goto :goto_78

    .line 1147
    :catch_5b
    move-exception v5

    .line 1148
    .local v5, "e":Ljava/io/IOException;
    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1150
    .end local v4    # "journal":Lcom/android/server/backup/DataChangedJournal;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_78
    goto :goto_46

    .line 1151
    :cond_79
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c0

    .line 1152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stale backup journals: Scheduled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package(s) total"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1154
    .local v3, "msg":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v4, :cond_b7

    .line 1155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1157
    :cond_b7
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v4, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    .end local v3    # "msg":Ljava/lang/String;
    :cond_c0
    return-void
.end method

.method private readFullBackupSchedule()Ljava/util/ArrayList;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
            ">;"
        }
    .end annotation

    .line 984
    move-object/from16 v1, p0

    const-string v2, "Package "

    const-string v3, "BackupManagerService"

    const/4 v4, 0x0

    .line 985
    .local v4, "changed":Z
    const/4 v5, 0x0

    .line 986
    .local v5, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 987
    invoke-static {v0, v6, v7}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)Ljava/util/List;

    move-result-object v6

    .line 990
    .local v6, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f9

    .line 991
    :try_start_1a
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v9, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_21} :catch_1e4

    move-object v9, v0

    .line 992
    .local v9, "fstream":Ljava/io/FileInputStream;
    :try_start_22
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1d4

    move-object v10, v0

    .line 993
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    :try_start_28
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_1c3

    move-object v11, v0

    .line 994
    .local v11, "in":Ljava/io/DataInputStream;
    :try_start_2e
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_1b2

    move v12, v0

    .line 995
    .local v12, "version":I
    const/4 v0, 0x1

    if-eq v12, v0, :cond_61

    .line 996
    :try_start_36
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown backup schedule version "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 998
    invoke-static {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 996
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_36 .. :try_end_52} :catchall_5d

    .line 1000
    const/4 v0, 0x0

    .line 1059
    :try_start_53
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_1c0

    :try_start_56
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_1d1

    :try_start_59
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_1e2

    .line 1000
    return-object v0

    .line 991
    .end local v12    # "version":I
    :catchall_5d
    move-exception v0

    move-object v2, v0

    goto/16 :goto_1b6

    .line 1003
    .restart local v12    # "version":I
    :cond_61
    :try_start_61
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v13, v0

    .line 1004
    .local v13, "numPackages":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v0

    .line 1010
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v13}, Ljava/util/HashSet;-><init>(I)V

    move-object v14, v0

    .line 1012
    .local v14, "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_74
    if-ge v15, v13, :cond_138

    .line 1013
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1014
    .local v16, "pkgName":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v17

    move-wide/from16 v19, v17

    .line 1015
    .local v19, "lastBackup":J
    move-object/from16 v7, v16

    .end local v16    # "pkgName":Ljava/lang/String;
    .local v7, "pkgName":Ljava/lang/String;
    invoke-virtual {v14, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_87
    .catchall {:try_start_61 .. :try_end_87} :catchall_1b2

    .line 1017
    :try_start_87
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I
    :try_end_8b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_87 .. :try_end_8b} :catch_101
    .catchall {:try_start_87 .. :try_end_8b} :catchall_1b2

    move/from16 v21, v4

    const/4 v4, 0x0

    .end local v4    # "changed":Z
    .local v21, "changed":Z
    :try_start_8e
    invoke-virtual {v0, v7, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1018
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v4, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v4
    :try_end_98
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8e .. :try_end_98} :catch_f7
    .catchall {:try_start_8e .. :try_end_98} :catchall_1ad

    if-eqz v4, :cond_c7

    :try_start_9a
    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1019
    invoke-virtual {v4, v8}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 1021
    new-instance v4, Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :try_end_a6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9a .. :try_end_a6} :catch_be
    .catchall {:try_start_9a .. :try_end_a6} :catchall_1ad

    move v8, v12

    move/from16 v16, v13

    move-wide/from16 v12, v19

    .end local v13    # "numPackages":I
    .end local v19    # "lastBackup":J
    .local v8, "version":I
    .local v12, "lastBackup":J
    .local v16, "numPackages":I
    :try_start_ab
    invoke-direct {v4, v7, v12, v13}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ab .. :try_end_b1} :catch_b4
    .catchall {:try_start_ab .. :try_end_b1} :catchall_1ad

    move/from16 v20, v8

    goto :goto_f0

    .line 1028
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_b4
    move-exception v0

    move/from16 v20, v8

    goto :goto_10c

    .line 1019
    .end local v8    # "version":I
    .end local v16    # "numPackages":I
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .local v12, "version":I
    .restart local v13    # "numPackages":I
    .restart local v19    # "lastBackup":J
    :cond_b8
    move v8, v12

    move/from16 v16, v13

    move-wide/from16 v12, v19

    .end local v13    # "numPackages":I
    .end local v19    # "lastBackup":J
    .restart local v8    # "version":I
    .local v12, "lastBackup":J
    .restart local v16    # "numPackages":I
    goto :goto_cc

    .line 1028
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v8    # "version":I
    .end local v16    # "numPackages":I
    .local v12, "version":I
    .restart local v13    # "numPackages":I
    .restart local v19    # "lastBackup":J
    :catch_be
    move-exception v0

    move v8, v12

    move/from16 v16, v13

    move-wide/from16 v12, v19

    move/from16 v20, v8

    .end local v13    # "numPackages":I
    .end local v19    # "lastBackup":J
    .restart local v8    # "version":I
    .local v12, "lastBackup":J
    .restart local v16    # "numPackages":I
    goto :goto_10c

    .line 1018
    .end local v8    # "version":I
    .end local v16    # "numPackages":I
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .local v12, "version":I
    .restart local v13    # "numPackages":I
    .restart local v19    # "lastBackup":J
    :cond_c7
    move v8, v12

    move/from16 v16, v13

    move-wide/from16 v12, v19

    .line 1024
    .end local v13    # "numPackages":I
    .end local v19    # "lastBackup":J
    .restart local v8    # "version":I
    .local v12, "lastBackup":J
    .restart local v16    # "numPackages":I
    :goto_cc
    :try_start_cc
    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    move-object/from16 v19, v0

    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .local v19, "pkg":Landroid/content/pm/PackageInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_dd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cc .. :try_end_dd} :catch_f3
    .catchall {:try_start_cc .. :try_end_dd} :catchall_1ad

    move/from16 v20, v8

    .end local v8    # "version":I
    .local v20, "version":I
    :try_start_df
    const-string v8, " no longer eligible for full backup"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_df .. :try_end_f0} :catch_f1
    .catchall {:try_start_df .. :try_end_f0} :catchall_1ad

    .line 1033
    .end local v19    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_f0
    goto :goto_12e

    .line 1028
    :catch_f1
    move-exception v0

    goto :goto_10c

    .end local v20    # "version":I
    .restart local v8    # "version":I
    :catch_f3
    move-exception v0

    move/from16 v20, v8

    .end local v8    # "version":I
    .restart local v20    # "version":I
    goto :goto_10c

    .end local v16    # "numPackages":I
    .end local v20    # "version":I
    .local v12, "version":I
    .restart local v13    # "numPackages":I
    .local v19, "lastBackup":J
    :catch_f7
    move-exception v0

    move/from16 v16, v13

    move-wide/from16 v22, v19

    move/from16 v20, v12

    move-wide/from16 v12, v22

    .end local v13    # "numPackages":I
    .end local v19    # "lastBackup":J
    .local v12, "lastBackup":J
    .restart local v16    # "numPackages":I
    .restart local v20    # "version":I
    goto :goto_10c

    .end local v16    # "numPackages":I
    .end local v20    # "version":I
    .end local v21    # "changed":Z
    .restart local v4    # "changed":Z
    .local v12, "version":I
    .restart local v13    # "numPackages":I
    .restart local v19    # "lastBackup":J
    :catch_101
    move-exception v0

    move/from16 v21, v4

    move/from16 v16, v13

    move-wide/from16 v22, v19

    move/from16 v20, v12

    move-wide/from16 v12, v22

    .line 1030
    .end local v4    # "changed":Z
    .end local v13    # "numPackages":I
    .end local v19    # "lastBackup":J
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v12, "lastBackup":J
    .restart local v16    # "numPackages":I
    .restart local v20    # "version":I
    .restart local v21    # "changed":Z
    :goto_10c
    :try_start_10c
    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v19, v0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v19, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, " not installed; dropping from full backup"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v12    # "lastBackup":J
    .end local v19    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_12e
    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v16

    move/from16 v12, v20

    move/from16 v4, v21

    goto/16 :goto_74

    .end local v16    # "numPackages":I
    .end local v20    # "version":I
    .end local v21    # "changed":Z
    .restart local v4    # "changed":Z
    .local v12, "version":I
    .restart local v13    # "numPackages":I
    :cond_138
    move/from16 v21, v4

    move/from16 v20, v12

    move/from16 v16, v13

    .line 1038
    .end local v4    # "changed":Z
    .end local v12    # "version":I
    .end local v13    # "numPackages":I
    .end local v15    # "i":I
    .restart local v16    # "numPackages":I
    .restart local v20    # "version":I
    .restart local v21    # "changed":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_142
    .catchall {:try_start_10c .. :try_end_142} :catchall_1ad

    move/from16 v4, v21

    .end local v21    # "changed":Z
    .restart local v4    # "changed":Z
    :goto_144
    :try_start_144
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1039
    .local v2, "app":Landroid/content/pm/PackageInfo;
    iget-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v7, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_19f

    iget-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1040
    invoke-virtual {v7, v8}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_19f

    .line 1042
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19f

    .line 1043
    sget-boolean v7, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v7, :cond_192

    .line 1044
    iget v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "New full backup app "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " found"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1046
    invoke-static {v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1044
    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_192
    new-instance v7, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide/16 v12, 0x0

    invoke-direct {v7, v8, v12, v13}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    const/4 v4, 0x1

    .line 1056
    .end local v2    # "app":Landroid/content/pm/PackageInfo;
    :cond_19f
    goto :goto_144

    .line 1058
    :cond_1a0
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1a3
    .catchall {:try_start_144 .. :try_end_1a3} :catchall_5d

    .line 1059
    .end local v14    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "numPackages":I
    .end local v20    # "version":I
    :try_start_1a3
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_1a6
    .catchall {:try_start_1a3 .. :try_end_1a6} :catchall_1c0

    .end local v11    # "in":Ljava/io/DataInputStream;
    :try_start_1a6
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1a9
    .catchall {:try_start_1a6 .. :try_end_1a9} :catchall_1d1

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    :try_start_1a9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1ac
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1ac} :catch_1e2

    .line 1063
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    goto :goto_1fb

    .line 991
    .end local v4    # "changed":Z
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "changed":Z
    :catchall_1ad
    move-exception v0

    move-object v2, v0

    move/from16 v4, v21

    goto :goto_1b6

    .end local v21    # "changed":Z
    .restart local v4    # "changed":Z
    :catchall_1b2
    move-exception v0

    move/from16 v21, v4

    move-object v2, v0

    :goto_1b6
    :try_start_1b6
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_1b9
    .catchall {:try_start_1b6 .. :try_end_1b9} :catchall_1ba

    goto :goto_1bf

    :catchall_1ba
    move-exception v0

    move-object v7, v0

    :try_start_1bc
    invoke-virtual {v2, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "changed":Z
    .end local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :goto_1bf
    throw v2
    :try_end_1c0
    .catchall {:try_start_1bc .. :try_end_1c0} :catchall_1c0

    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "changed":Z
    .restart local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catchall_1c0
    move-exception v0

    move-object v2, v0

    goto :goto_1c7

    :catchall_1c3
    move-exception v0

    move/from16 v21, v4

    move-object v2, v0

    :goto_1c7
    :try_start_1c7
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1ca
    .catchall {:try_start_1c7 .. :try_end_1ca} :catchall_1cb

    goto :goto_1d0

    :catchall_1cb
    move-exception v0

    move-object v7, v0

    :try_start_1cd
    invoke-virtual {v2, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "changed":Z
    .end local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :goto_1d0
    throw v2
    :try_end_1d1
    .catchall {:try_start_1cd .. :try_end_1d1} :catchall_1d1

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "changed":Z
    .restart local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catchall_1d1
    move-exception v0

    move-object v2, v0

    goto :goto_1d8

    :catchall_1d4
    move-exception v0

    move/from16 v21, v4

    move-object v2, v0

    :goto_1d8
    :try_start_1d8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1db
    .catchall {:try_start_1d8 .. :try_end_1db} :catchall_1dc

    goto :goto_1e1

    :catchall_1dc
    move-exception v0

    move-object v7, v0

    :try_start_1de
    invoke-virtual {v2, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "changed":Z
    .end local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :goto_1e1
    throw v2
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_1de .. :try_end_1e2} :catch_1e2

    .line 1059
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "changed":Z
    .restart local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catch_1e2
    move-exception v0

    goto :goto_1e7

    :catch_1e4
    move-exception v0

    move/from16 v21, v4

    .line 1060
    .local v0, "e":Ljava/lang/Exception;
    :goto_1e7
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v7, "Unable to read backup schedule"

    invoke-static {v2, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1061
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1062
    const/4 v5, 0x0

    goto :goto_1fb

    .line 990
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1f9
    move/from16 v21, v4

    .line 1066
    :goto_1fb
    if-nez v5, :cond_23d

    .line 1069
    const/4 v4, 0x1

    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v0

    .line 1071
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1072
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_23a

    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1073
    invoke-virtual {v3, v7}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_237

    .line 1075
    new-instance v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-direct {v3, v7, v8, v9}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23c

    .line 1073
    :cond_237
    const-wide/16 v8, 0x0

    goto :goto_23c

    .line 1072
    :cond_23a
    const-wide/16 v8, 0x0

    .line 1077
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_23c
    goto :goto_20c

    .line 1080
    :cond_23d
    if-eqz v4, :cond_242

    .line 1081
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->writeFullBackupScheduleAsync()V

    .line 1083
    :cond_242
    return-object v5
.end method

.method private removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V
    .registers 6
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1527
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1534
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_28

    .line 1535
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  removing participant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1537
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1535
    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_28
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1540
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    :cond_30
    return-void
.end method

.method private removePackageParticipantsLocked([Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "oldUid"    # I

    .line 1492
    const-string v0, "BackupManagerService"

    if-nez p1, :cond_11

    .line 1493
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string/jumbo v2, "removePackageParticipants with null list"

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    return-void

    .line 1497
    :cond_11
    sget-boolean v1, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v1, :cond_3d

    .line 1498
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removePackageParticipantsLocked: uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1500
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1498
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_3d
    array-length v1, p1

    const/4 v2, 0x0

    :goto_3f
    if-ge v2, v1, :cond_73

    aget-object v3, p1, v2

    .line 1509
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 1510
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_70

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 1511
    invoke-direct {p0, v4, v3}, Lcom/android/server/backup/UserBackupManagerService;->removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_70

    .line 1513
    sget-boolean v5, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v5, :cond_6b

    .line 1514
    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 1516
    const-string v6, "  last one of this uid; purging set"

    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1514
    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_6b
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1507
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 1523
    :cond_73
    return-void
.end method

.method private setBackupEnabled(ZZ)V
    .registers 7
    .param p1, "enable"    # Z
    .param p2, "persistToDisk"    # Z

    .line 3229
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3232
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup enabled => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3236
    .local v0, "oldId":J
    :try_start_2c
    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 3237
    .local v2, "wasEnabled":Z
    monitor-enter p0
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_42

    .line 3238
    if-eqz p2, :cond_34

    .line 3239
    :try_start_31
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->writeEnabledState(Z)V

    .line 3241
    :cond_34
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 3242
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_3f

    .line 3244
    :try_start_37
    invoke-virtual {p0, v2, p1}, Lcom/android/server/backup/UserBackupManagerService;->updateStateOnBackupEnabled(ZZ)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 3246
    .end local v2    # "wasEnabled":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3247
    nop

    .line 3248
    return-void

    .line 3242
    .restart local v2    # "wasEnabled":Z
    :catchall_3f
    move-exception v3

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    .end local v0    # "oldId":J
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "enable":Z
    .end local p2    # "persistToDisk":Z
    :try_start_41
    throw v3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    .line 3246
    .end local v2    # "wasEnabled":Z
    .restart local v0    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "enable":Z
    .restart local p2    # "persistToDisk":Z
    :catchall_42
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3247
    throw v2
.end method

.method private startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "params"    # Lcom/android/server/backup/params/AdbParams;

    .line 3121
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_11

    .line 3122
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v1, "Posting conf timeout msg after 60000 millis"

    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    :cond_11
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3127
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3128
    return-void
.end method

.method private startConfirmationUi(ILjava/lang/String;)Z
    .registers 6
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;

    .line 3103
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    invoke-interface {v0, v1}, Lcom/android/server/backup/BackupManagerServiceStub;->isRunningFromMiui(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3104
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceStub;->skipConfirmationUi(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 3108
    :cond_15
    :try_start_15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3109
    .local v0, "confIntent":Landroid/content/Intent;
    const-string v1, "com.android.backupconfirm"

    const-string v2, "com.android.backupconfirm.BackupRestoreConfirmation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3111
    const-string v1, "conftoken"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3112
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3113
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_32
    .catch Landroid/content/ActivityNotFoundException; {:try_start_15 .. :try_end_32} :catch_35

    .line 3116
    .end local v0    # "confIntent":Landroid/content/Intent;
    nop

    .line 3117
    const/4 v0, 0x1

    return v0

    .line 3114
    :catch_35
    move-exception v0

    .line 3115
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private updateStateForTransport(Ljava/lang/String;)V
    .registers 11
    .param p1, "newTransportName"    # Ljava/lang/String;

    .line 3596
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "backup_transport"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3600
    const-string v0, "BMS.updateStateForTransport()"

    .line 3601
    .local v0, "callerLogString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3602
    invoke-virtual {v1, p1, v0}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v1

    .line 3603
    .local v1, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    const-wide/16 v2, 0x0

    const-string v4, "Transport "

    const-string v5, "BackupManagerService"

    if-eqz v1, :cond_51

    .line 3605
    :try_start_1d
    invoke-virtual {v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v6

    .line 3607
    .local v6, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v6}, Lcom/android/server/backup/transport/BackupTransportClient;->getCurrentRestoreSet()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_28

    .line 3619
    .end local v6    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    goto :goto_4b

    .line 3608
    :catch_28
    move-exception v6

    .line 3611
    .local v6, "e":Ljava/lang/Exception;
    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 3612
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not available: current token = 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3614
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3612
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_4b
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    goto :goto_73

    .line 3622
    :cond_51
    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " not registered: current token = 0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3624
    invoke-static {v6, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3622
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 3633
    :goto_73
    return-void
.end method

.method private waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .registers 4
    .param p1, "params"    # Lcom/android/server/backup/params/AdbParams;

    .line 3131
    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 3132
    :goto_3
    :try_start_3
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    if-nez v1, :cond_13

    .line 3134
    :try_start_b
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    goto :goto_12

    .line 3135
    :catch_11
    move-exception v1

    :goto_12
    goto :goto_3

    .line 3137
    :cond_13
    :try_start_13
    monitor-exit v0

    .line 3138
    return-void

    .line 3137
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private writeFullBackupScheduleAsync()V
    .registers 3

    .line 1128
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1129
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1130
    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .line 2563
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/backup/DataChangedJournal;->newJournal(Ljava/io/File;)Lcom/android/server/backup/DataChangedJournal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 2564
    :cond_c
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/DataChangedJournal;->addPackage(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    .line 2571
    goto :goto_3a

    .line 2565
    :catch_12
    move-exception v0

    .line 2566
    .local v0, "e":Ljava/io/IOException;
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to backup journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2568
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2566
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2570
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 2572
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3a
    return-void
.end method


# virtual methods
.method public acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 15
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encPpassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .line 3155
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acknowledgeAdbBackupOrRestore : token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " allow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3157
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3155
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_39

    .line 3168
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "acknowledgeAdbBackupOrRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3173
    :cond_39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3177
    .local v0, "oldId":J
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_c2

    .line 3178
    :try_start_40
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/params/AdbParams;

    .line 3179
    .local v3, "params":Lcom/android/server/backup/params/AdbParams;
    if-eqz v3, :cond_ac

    .line 3180
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3181
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 3183
    if-eqz p2, :cond_9b

    .line 3184
    instance-of v4, v3, Lcom/android/server/backup/params/AdbBackupParams;

    if-eqz v4, :cond_5e

    .line 3185
    const/4 v4, 0x2

    goto :goto_60

    .line 3186
    :cond_5e
    const/16 v4, 0xa

    :goto_60
    nop

    .line 3188
    .local v4, "verb":I
    iput-object p5, v3, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 3189
    iput-object p3, v3, Lcom/android/server/backup/params/AdbParams;->curPassword:Ljava/lang/String;

    .line 3191
    iput-object p4, v3, Lcom/android/server/backup/params/AdbParams;->encryptPassword:Ljava/lang/String;

    .line 3193
    sget-boolean v5, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v5, :cond_89

    .line 3194
    const-string v5, "BackupManagerService"

    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending conf message with verb "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3196
    invoke-static {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3194
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    :cond_89
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 3200
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 3201
    .local v5, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3202
    nop

    .end local v4    # "verb":I
    .end local v5    # "msg":Landroid/os/Message;
    goto :goto_b9

    .line 3203
    :cond_9b
    const-string v4, "BackupManagerService"

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "User rejected full backup/restore operation"

    .line 3205
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3203
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    invoke-virtual {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    goto :goto_b9

    .line 3211
    :cond_ac
    const-string v4, "BackupManagerService"

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "Attempted to ack full backup/restore with invalid token"

    .line 3213
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3211
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    :goto_b9
    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_40 .. :try_end_ba} :catchall_bf

    .line 3219
    .end local v3    # "params":Lcom/android/server/backup/params/AdbParams;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3220
    nop

    .line 3221
    return-void

    .line 3217
    :catchall_bf
    move-exception v3

    :try_start_c0
    monitor-exit v2
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    .end local v0    # "oldId":J
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "token":I
    .end local p2    # "allow":Z
    .end local p3    # "curPassword":Ljava/lang/String;
    .end local p4    # "encPpassword":Ljava/lang/String;
    .end local p5    # "observer":Landroid/app/backup/IFullBackupRestoreObserver;
    :try_start_c1
    throw v3
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c2

    .line 3219
    .restart local v0    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "token":I
    .restart local p2    # "allow":Z
    .restart local p3    # "curPassword":Ljava/lang/String;
    .restart local p4    # "encPpassword":Ljava/lang/String;
    .restart local p5    # "observer":Landroid/app/backup/IFullBackupRestoreObserver;
    :catchall_c2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3220
    throw v2
.end method

.method public adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .registers 30
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doWidgets"    # Z
    .param p6, "doAllApps"    # Z
    .param p7, "includeSystem"    # Z
    .param p8, "compress"    # Z
    .param p9, "doKeyValue"    # Z
    .param p10, "pkgList"    # [Ljava/lang/String;

    .line 2829
    move-object/from16 v1, p0

    move/from16 v14, p4

    move/from16 v15, p6

    move-object/from16 v12, p10

    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "adbBackup"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v16

    .line 2832
    .local v16, "callingUserHandle":I
    if-nez v16, :cond_28c

    .line 2837
    if-nez v15, :cond_29

    .line 2838
    if-nez v14, :cond_29

    .line 2842
    if-eqz v12, :cond_21

    array-length v0, v12

    if-eqz v0, :cond_21

    goto :goto_29

    .line 2843
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Backup requested but neither shared nor any apps named"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2849
    :cond_29
    :goto_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2851
    .local v17, "oldId":J
    const/4 v11, 0x0

    :try_start_2e
    iget-boolean v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_24d

    if-nez v0, :cond_80

    .line 2852
    :try_start_32
    const-string v0, "BackupManagerService"

    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Backup not supported before setup"

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_7b

    .line 2926
    iput v11, v1, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    .line 2928
    :try_start_41
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    .line 2935
    goto :goto_6a

    .line 2929
    :catch_45
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2930
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing output for adb backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2934
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2932
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2930
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6a
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2937
    const-string v0, "BackupManagerService"

    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Adb backup processing complete."

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    return-void

    .line 2926
    :catchall_7b
    move-exception v0

    move-object v2, v0

    move v14, v11

    goto/16 :goto_250

    .line 2857
    :cond_80
    :try_start_80
    const-string v0, "BackupManagerService"

    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting backup: apks="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v10, p2

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " obb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v9, p3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shared="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " all="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " system="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v8, p7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " includekeyvalue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v7, p9

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkgs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2859
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2857
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    const-string v0, "BackupManagerService"

    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Beginning adb backup..."

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v13

    .line 2880
    .local v13, "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    new-instance v0, Lcom/android/server/backup/params/AdbBackupParams;
    :try_end_f6
    .catchall {:try_start_80 .. :try_end_f6} :catchall_24d

    move-object v2, v0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move v14, v11

    move/from16 v11, p9

    move-object/from16 v12, p10

    :try_start_10c
    invoke-direct/range {v2 .. v13}, Lcom/android/server/backup/params/AdbBackupParams;-><init>(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    move-object v2, v0

    .line 2883
    .local v2, "params":Lcom/android/server/backup/params/AdbBackupParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    move v3, v0

    .line 2884
    .local v3, "token":I
    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_118
    .catchall {:try_start_10c .. :try_end_118} :catchall_24b

    .line 2885
    :try_start_118
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2886
    monitor-exit v4
    :try_end_11e
    .catchall {:try_start_118 .. :try_end_11e} :catchall_248

    .line 2890
    :try_start_11e
    const-string v0, "BackupManagerService"

    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting backup confirmation UI, token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2892
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2890
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13c
    .catchall {:try_start_11e .. :try_end_13c} :catchall_24b

    .line 2897
    :try_start_13c
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    iput v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_142} :catch_1f2
    .catchall {:try_start_13c .. :try_end_142} :catchall_24b

    .line 2901
    nop

    .line 2903
    :try_start_143
    const-string v0, "fullback"

    invoke-direct {v1, v3, v0}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_199

    .line 2904
    const-string v0, "BackupManagerService"

    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Unable to launch backup confirmation UI"

    .line 2906
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2904
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->delete(I)V
    :try_end_15d
    .catchall {:try_start_143 .. :try_end_15d} :catchall_24b

    .line 2926
    iput v14, v1, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    .line 2928
    :try_start_15f
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_162} :catch_163

    .line 2935
    goto :goto_188

    .line 2929
    :catch_163
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 2930
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    iget v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error closing output for adb backup: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2934
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2932
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2930
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    .end local v0    # "e":Ljava/io/IOException;
    :goto_188
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2937
    const-string v0, "BackupManagerService"

    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Adb backup processing complete."

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    return-void

    .line 2912
    :cond_199
    :try_start_199
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v14, v14}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 2917
    invoke-direct {v1, v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    .line 2921
    const-string v0, "BackupManagerService"

    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Waiting for backup completion..."

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    invoke-direct {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_1b5
    .catchall {:try_start_199 .. :try_end_1b5} :catchall_24b

    .line 2926
    .end local v2    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .end local v3    # "token":I
    .end local v13    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    iput v14, v1, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    .line 2928
    :try_start_1b7
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1ba
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1ba} :catch_1bb

    .line 2935
    goto :goto_1e0

    .line 2929
    :catch_1bb
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2930
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing output for adb backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2934
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2932
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2930
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1e0
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2937
    const-string v0, "BackupManagerService"

    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Adb backup processing complete."

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    nop

    .line 2939
    return-void

    .line 2898
    .restart local v2    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .restart local v3    # "token":I
    .restart local v13    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    :catch_1f2
    move-exception v0

    move-object v4, v0

    .line 2899
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1f4
    const-string v0, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MIUI FD has been closed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20c
    .catchall {:try_start_1f4 .. :try_end_20c} :catchall_24b

    .line 2926
    iput v14, v1, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    .line 2928
    :try_start_20e
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_211
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_211} :catch_212

    .line 2935
    goto :goto_237

    .line 2929
    :catch_212
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 2930
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    iget v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO error closing output for adb backup: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2934
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2932
    invoke-static {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2930
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    .end local v0    # "e":Ljava/io/IOException;
    :goto_237
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2937
    const-string v0, "BackupManagerService"

    iget v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "Adb backup processing complete."

    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    return-void

    .line 2886
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_248
    move-exception v0

    :try_start_249
    monitor-exit v4
    :try_end_24a
    .catchall {:try_start_249 .. :try_end_24a} :catchall_248

    .end local v16    # "callingUserHandle":I
    .end local v17    # "oldId":J
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "includeApks":Z
    .end local p3    # "includeObbs":Z
    .end local p4    # "includeShared":Z
    .end local p5    # "doWidgets":Z
    .end local p6    # "doAllApps":Z
    .end local p7    # "includeSystem":Z
    .end local p8    # "compress":Z
    .end local p9    # "doKeyValue":Z
    .end local p10    # "pkgList":[Ljava/lang/String;
    :try_start_24a
    throw v0
    :try_end_24b
    .catchall {:try_start_24a .. :try_end_24b} :catchall_24b

    .line 2926
    .end local v2    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .end local v3    # "token":I
    .end local v13    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    .restart local v16    # "callingUserHandle":I
    .restart local v17    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "includeApks":Z
    .restart local p3    # "includeObbs":Z
    .restart local p4    # "includeShared":Z
    .restart local p5    # "doWidgets":Z
    .restart local p6    # "doAllApps":Z
    .restart local p7    # "includeSystem":Z
    .restart local p8    # "compress":Z
    .restart local p9    # "doKeyValue":Z
    .restart local p10    # "pkgList":[Ljava/lang/String;
    :catchall_24b
    move-exception v0

    goto :goto_24f

    :catchall_24d
    move-exception v0

    move v14, v11

    :goto_24f
    move-object v2, v0

    :goto_250
    iput v14, v1, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    .line 2928
    :try_start_252
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_255
    .catch Ljava/io/IOException; {:try_start_252 .. :try_end_255} :catch_256

    .line 2935
    goto :goto_27b

    .line 2929
    :catch_256
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 2930
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO error closing output for adb backup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2934
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2932
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2930
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    .end local v0    # "e":Ljava/io/IOException;
    :goto_27b
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2937
    const-string v0, "BackupManagerService"

    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "Adb backup processing complete."

    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    throw v2

    .line 2833
    .end local v17    # "oldId":J
    :cond_28c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Backup supported only for the device owner"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public adbRestore(Landroid/os/ParcelFileDescriptor;)V
    .registers 13
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 3014
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "adbRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3016
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3017
    .local v0, "callingUserHandle":I
    if-nez v0, :cond_1cb

    .line 3021
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3024
    .local v1, "oldId":J
    const/4 v3, 0x0

    :try_start_14
    iget-boolean v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v4, :cond_5b

    .line 3025
    const-string v4, "BackupManagerService"

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "Full restore not permitted before setup"

    .line 3027
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3025
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_194

    .line 3077
    iput v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    .line 3079
    :try_start_27
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 3085
    goto :goto_4a

    .line 3080
    :catch_2b
    move-exception v3

    .line 3081
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error trying to close fd after adb restore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3083
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3081
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    .end local v3    # "e":Ljava/io/IOException;
    :goto_4a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3087
    const-string v3, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "adb restore processing complete."

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    return-void

    .line 3031
    :cond_5b
    :try_start_5b
    const-string v4, "BackupManagerService"

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "Beginning restore..."

    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    new-instance v4, Lcom/android/server/backup/params/AdbRestoreParams;

    invoke-direct {v4, p1}, Lcom/android/server/backup/params/AdbRestoreParams;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 3034
    .local v4, "params":Lcom/android/server/backup/params/AdbRestoreParams;
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v5

    .line 3035
    .local v5, "token":I
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_74
    .catchall {:try_start_5b .. :try_end_74} :catchall_194

    .line 3036
    :try_start_74
    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v7, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3037
    monitor-exit v6
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_191

    .line 3041
    :try_start_7a
    const-string v6, "BackupManagerService"

    iget v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting restore confirmation UI, token="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3043
    invoke-static {v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3041
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_7a .. :try_end_98} :catchall_194

    .line 3048
    :try_start_98
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v6

    iput v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9e} :catch_142
    .catchall {:try_start_98 .. :try_end_9e} :catchall_194

    .line 3052
    nop

    .line 3054
    :try_start_9f
    const-string v6, "fullrest"

    invoke-direct {p0, v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_ef

    .line 3055
    const-string v6, "BackupManagerService"

    iget v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v8, "Unable to launch restore confirmation"

    .line 3057
    invoke-static {v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3055
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->delete(I)V
    :try_end_b9
    .catchall {:try_start_9f .. :try_end_b9} :catchall_194

    .line 3077
    iput v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    .line 3079
    :try_start_bb
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf

    .line 3085
    goto :goto_de

    .line 3080
    :catch_bf
    move-exception v3

    .line 3081
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v6, "BackupManagerService"

    iget v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error trying to close fd after adb restore: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3083
    invoke-static {v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3081
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    .end local v3    # "e":Ljava/io/IOException;
    :goto_de
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3087
    const-string v3, "BackupManagerService"

    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v7, "adb restore processing complete."

    invoke-static {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    return-void

    .line 3063
    :cond_ef
    :try_start_ef
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8, v3, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 3068
    invoke-direct {p0, v5, v4}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    .line 3072
    const-string v6, "BackupManagerService"

    iget v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v8, "Waiting for restore completion..."

    invoke-static {v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    invoke-direct {p0, v4}, Lcom/android/server/backup/UserBackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_10b
    .catchall {:try_start_ef .. :try_end_10b} :catchall_194

    .line 3077
    .end local v4    # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .end local v5    # "token":I
    iput v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    .line 3079
    :try_start_10d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_111

    .line 3085
    goto :goto_130

    .line 3080
    :catch_111
    move-exception v3

    .line 3081
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error trying to close fd after adb restore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3083
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3081
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    .end local v3    # "e":Ljava/io/IOException;
    :goto_130
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3087
    const-string v3, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "adb restore processing complete."

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    nop

    .line 3089
    return-void

    .line 3049
    .restart local v4    # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .restart local v5    # "token":I
    :catch_142
    move-exception v6

    .line 3050
    .local v6, "e":Ljava/lang/Exception;
    :try_start_143
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MIUI FD has been closed, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15b
    .catchall {:try_start_143 .. :try_end_15b} :catchall_194

    .line 3077
    iput v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    .line 3079
    :try_start_15d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_160} :catch_161

    .line 3085
    goto :goto_180

    .line 3080
    :catch_161
    move-exception v3

    .line 3081
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "BackupManagerService"

    iget v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error trying to close fd after adb restore: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3083
    invoke-static {v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3081
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    .end local v3    # "e":Ljava/io/IOException;
    :goto_180
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3087
    const-string v3, "BackupManagerService"

    iget v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v8, "adb restore processing complete."

    invoke-static {v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    return-void

    .line 3037
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_191
    move-exception v7

    :try_start_192
    monitor-exit v6
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_191

    .end local v0    # "callingUserHandle":I
    .end local v1    # "oldId":J
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_193
    throw v7
    :try_end_194
    .catchall {:try_start_193 .. :try_end_194} :catchall_194

    .line 3077
    .end local v4    # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .end local v5    # "token":I
    .restart local v0    # "callingUserHandle":I
    .restart local v1    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_194
    move-exception v4

    iput v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    .line 3079
    :try_start_197
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19a} :catch_19b

    .line 3085
    goto :goto_1ba

    .line 3080
    :catch_19b
    move-exception v3

    .line 3081
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error trying to close fd after adb restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3083
    invoke-static {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3081
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1ba
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3087
    const-string v3, "BackupManagerService"

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "adb restore processing complete."

    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    throw v4

    .line 3018
    .end local v1    # "oldId":J
    :cond_1cb
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Restore supported only for the device owner"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agentBinder"    # Landroid/os/IBinder;

    .line 3751
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3752
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3d

    .line 3753
    const-string v1, "BackupManagerService"

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "agentConnected pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " agent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3755
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3753
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3758
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 3759
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    goto :goto_65

    .line 3761
    :cond_3d
    const-string v1, "BackupManagerService"

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3766
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " claiming agent connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3763
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3761
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    :goto_65
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3770
    monitor-exit v0

    .line 3771
    return-void

    .line 3770
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3779
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3780
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_12

    .line 3781
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 3782
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    goto :goto_3a

    .line 3784
    :cond_12
    const-string v1, "BackupManagerService"

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3789
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " claiming agent disconnected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3786
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3784
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3792
    :goto_3a
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agentDisconnected: the backup agent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " died: cancel current operations"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    new-instance v1, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;)V

    .line 3811
    .local v1, "cancellationRunnable":Ljava/lang/Runnable;
    const-string v2, "agent-disconnected"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->getThreadForAsyncOperation(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v2

    .line 3812
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 3814
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 3815
    .end local v1    # "cancellationRunnable":Ljava/lang/Runnable;
    monitor-exit v0

    .line 3816
    return-void

    .line 3815
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public backupNow()V
    .registers 9

    .line 2758
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "backupNow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2760
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2762
    .local v0, "oldId":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x5

    .line 2763
    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v2

    .line 2764
    .local v2, "result":Landroid/os/PowerSaveState;
    iget-boolean v3, v2, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v3, :cond_2f

    .line 2766
    const-string v3, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Not running backup while in battery save mode"

    .line 2768
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2766
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v3, v4, v5}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    goto :goto_9f

    .line 2775
    :cond_2f
    const-string v3, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Scheduling immediate backup pass"

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_41
    .catchall {:try_start_d .. :try_end_41} :catchall_db

    .line 2779
    :try_start_41
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_7e

    .line 2782
    sget-boolean v4, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v4, :cond_5c

    .line 2783
    const-string v4, "BackupManagerService"

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "Init pending at scheduled backup"

    .line 2785
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2783
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_41 .. :try_end_5c} :catchall_d8

    .line 2789
    :cond_5c
    :try_start_5c
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2790
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_6a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5c .. :try_end_6a} :catch_6b
    .catchall {:try_start_5c .. :try_end_6a} :catchall_d8

    .line 2795
    goto :goto_79

    .line 2791
    :catch_6b
    move-exception v4

    .line 2792
    .local v4, "ce":Landroid/app/PendingIntent$CanceledException;
    :try_start_6c
    const-string v5, "BackupManagerService"

    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v7, "Run init intent cancelled"

    .line 2794
    invoke-static {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2792
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    .end local v4    # "ce":Landroid/app/PendingIntent$CanceledException;
    :goto_79
    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_6c .. :try_end_7a} :catchall_d8

    .line 2816
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2796
    return-void

    .line 2798
    :cond_7e
    :try_start_7e
    monitor-exit v3
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_d8

    .line 2801
    :try_start_7f
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v3

    if-nez v3, :cond_8c

    goto :goto_a4

    .line 2810
    :cond_8c
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2811
    .local v3, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2813
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V
    :try_end_9f
    .catchall {:try_start_7f .. :try_end_9f} :catchall_db

    .line 2816
    .end local v2    # "result":Landroid/os/PowerSaveState;
    .end local v3    # "message":Landroid/os/Message;
    :goto_9f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2817
    nop

    .line 2818
    return-void

    .line 2802
    .restart local v2    # "result":Landroid/os/PowerSaveState;
    :cond_a4
    :goto_a4
    :try_start_a4
    const-string v3, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Backup pass but enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2804
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " setupComplete="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2805
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2804
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2802
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_a4 .. :try_end_d4} :catchall_db

    .line 2816
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2806
    return-void

    .line 2798
    :catchall_d8
    move-exception v4

    :try_start_d9
    monitor-exit v3
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    .end local v0    # "oldId":J
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :try_start_da
    throw v4
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_db

    .line 2816
    .end local v2    # "result":Landroid/os/PowerSaveState;
    .restart local v0    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catchall_db
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2817
    throw v2
.end method

.method public backupPasswordMatches(Ljava/lang/String;)Z
    .registers 3
    .param p1, "currentPw"    # Ljava/lang/String;

    .line 1184
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupPasswordManager;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .registers 32
    .param p1, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    .line 2236
    move-object/from16 v13, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2239
    .local v14, "now":J
    iget-object v1, v13, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    monitor-enter v1

    .line 2240
    :try_start_9
    iget-object v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupIntervalMilliseconds()J

    move-result-wide v2

    move-wide/from16 v16, v2

    .line 2241
    .local v16, "fullBackupInterval":J
    iget-object v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupIntervalMilliseconds()J

    move-result-wide v2

    move-wide v11, v2

    .line 2242
    .local v11, "keyValueBackupInterval":J
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_351

    .line 2243
    const/4 v1, 0x0

    .line 2244
    .local v1, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    move-wide/from16 v2, v16

    .line 2246
    .local v2, "latency":J
    iget-boolean v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_317

    iget-boolean v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v0, :cond_2a

    move v5, v10

    move-wide/from16 v22, v11

    goto/16 :goto_31a

    .line 2259
    :cond_2a
    iget-object v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x4

    .line 2260
    invoke-virtual {v0, v4}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v9

    .line 2261
    .local v9, "result":Landroid/os/PowerSaveState;
    iget-boolean v0, v9, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v0, :cond_4c

    .line 2263
    const-string v0, "BackupManagerService"

    iget v4, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Deferring scheduled full backups in battery saver mode"

    .line 2265
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2263
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    iget v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v4, v13, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v13, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v0, v4, v11, v12, v5}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 2269
    return v10

    .line 2273
    :cond_4c
    const-string v0, "BackupManagerService"

    iget v4, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Beginning scheduled full backup operation"

    .line 2275
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2273
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    iget-object v8, v13, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2280
    :try_start_5c
    iget-object v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_end_5e
    .catchall {:try_start_5c .. :try_end_5e} :catchall_30c

    if-eqz v0, :cond_78

    .line 2281
    :try_start_60
    const-string v0, "BackupManagerService"

    iget v4, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Backup triggered but one already/still running!"

    .line 2283
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2281
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    monitor-exit v8
    :try_end_6e
    .catchall {:try_start_60 .. :try_end_6e} :catchall_6f

    return v10

    .line 2443
    :catchall_6f
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-wide/from16 v22, v11

    goto/16 :goto_313

    .line 2291
    :cond_78
    const/4 v0, 0x1

    .line 2297
    .local v0, "runBackup":Z
    :goto_79
    :try_start_79
    iget-object v4, v13, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_30c

    if-nez v4, :cond_95

    .line 2300
    :try_start_81
    const-string v4, "BackupManagerService"

    iget v5, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v7, "Backup queue empty; doing nothing"

    .line 2302
    invoke-static {v5, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2300
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_81 .. :try_end_8e} :catchall_6f

    .line 2305
    const/4 v0, 0x0

    .line 2306
    move/from16 v20, v0

    move-object v10, v1

    move-wide v5, v2

    goto/16 :goto_226

    .line 2309
    :cond_95
    const/4 v4, 0x0

    .line 2311
    .local v4, "headBusy":Z
    :try_start_96
    iget-object v5, v13, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v5

    .line 2312
    .local v5, "transportName":Ljava/lang/String;
    invoke-direct {v13, v5}, Lcom/android/server/backup/UserBackupManagerService;->fullBackupAllowable(Ljava/lang/String;)Z

    move-result v7
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_30c

    if-nez v7, :cond_b5

    .line 2313
    :try_start_a2
    sget-boolean v7, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v7, :cond_b3

    .line 2314
    const-string v7, "BackupManagerService"

    iget v6, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v10, "Preconditions not met; not running full backup"

    .line 2316
    invoke-static {v6, v10}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2314
    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_a2 .. :try_end_b3} :catchall_6f

    .line 2319
    :cond_b3
    const/4 v0, 0x0

    .line 2323
    move-wide v2, v11

    .line 2326
    :cond_b5
    if-eqz v0, :cond_219

    .line 2327
    :try_start_b7
    iget-object v6, v13, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    move-object v1, v6

    .line 2328
    iget-wide v6, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    sub-long v6, v14, v6

    .line 2329
    .local v6, "timeSinceRun":J
    cmp-long v10, v6, v16

    if-ltz v10, :cond_cb

    const/4 v10, 0x1

    goto :goto_cc

    :cond_cb
    const/4 v10, 0x0

    .line 2330
    .end local v0    # "runBackup":Z
    .local v10, "runBackup":Z
    :goto_cc
    if-nez v10, :cond_ec

    .line 2332
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_e2

    .line 2333
    const-string v0, "BackupManagerService"
    :try_end_d4
    .catchall {:try_start_b7 .. :try_end_d4} :catchall_20e

    move-wide/from16 v20, v2

    .end local v2    # "latency":J
    .local v20, "latency":J
    :try_start_d6
    iget v2, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Device ready but too early to back up next app"

    .line 2335
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2333
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catchall {:try_start_d6 .. :try_end_e1} :catchall_1ee

    goto :goto_e4

    .line 2332
    .end local v20    # "latency":J
    .restart local v2    # "latency":J
    :cond_e2
    move-wide/from16 v20, v2

    .line 2340
    .end local v2    # "latency":J
    .restart local v20    # "latency":J
    :goto_e4
    sub-long v2, v16, v6

    .line 2341
    .end local v20    # "latency":J
    .restart local v2    # "latency":J
    move-wide v5, v2

    move/from16 v20, v10

    move-object v10, v1

    goto/16 :goto_226

    .line 2345
    :cond_ec
    move-wide/from16 v20, v2

    .end local v2    # "latency":J
    .restart local v20    # "latency":J
    :try_start_ee
    iget-object v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    iget v3, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I
    :try_end_f4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ee .. :try_end_f4} :catch_1f9
    .catchall {:try_start_ee .. :try_end_f4} :catchall_1ee

    move/from16 v22, v4

    const/4 v4, 0x0

    .end local v4    # "headBusy":Z
    .local v22, "headBusy":Z
    :try_start_f7
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2347
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v13, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v2
    :try_end_101
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f7 .. :try_end_101} :catch_1e6
    .catchall {:try_start_f7 .. :try_end_101} :catchall_1ee

    if-nez v2, :cond_14c

    .line 2351
    :try_start_103
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_130

    .line 2352
    const-string v2, "BackupManagerService"

    iget v3, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_110
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_103 .. :try_end_110} :catch_143
    .catchall {:try_start_103 .. :try_end_110} :catchall_1ee

    move-object/from16 v23, v5

    .end local v5    # "transportName":Ljava/lang/String;
    .local v23, "transportName":Ljava/lang/String;
    :try_start_112
    const-string v5, "Culling package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in full-backup queue but not eligible"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2354
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2352
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_132

    .line 2351
    .end local v23    # "transportName":Ljava/lang/String;
    .restart local v5    # "transportName":Ljava/lang/String;
    :cond_130
    move-object/from16 v23, v5

    .line 2361
    .end local v5    # "transportName":Ljava/lang/String;
    .restart local v23    # "transportName":Ljava/lang/String;
    :goto_132
    iget-object v2, v13, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_138
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_112 .. :try_end_138} :catch_13c
    .catchall {:try_start_112 .. :try_end_138} :catchall_1ee

    .line 2362
    const/4 v4, 0x1

    .line 2363
    .end local v22    # "headBusy":Z
    .restart local v4    # "headBusy":Z
    move v0, v10

    goto/16 :goto_21f

    .line 2391
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "headBusy":Z
    .restart local v22    # "headBusy":Z
    :catch_13c
    move-exception v0

    move-wide/from16 v26, v6

    move/from16 v4, v22

    goto/16 :goto_200

    .end local v23    # "transportName":Ljava/lang/String;
    .restart local v5    # "transportName":Ljava/lang/String;
    :catch_143
    move-exception v0

    move-object/from16 v23, v5

    move-wide/from16 v26, v6

    move/from16 v4, v22

    .end local v5    # "transportName":Ljava/lang/String;
    .restart local v23    # "transportName":Ljava/lang/String;
    goto/16 :goto_200

    .line 2366
    .end local v23    # "transportName":Ljava/lang/String;
    .restart local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "transportName":Ljava/lang/String;
    :cond_14c
    move-object/from16 v23, v5

    .end local v5    # "transportName":Ljava/lang/String;
    .restart local v23    # "transportName":Ljava/lang/String;
    :try_start_14e
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_152
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14e .. :try_end_152} :catch_1e0
    .catchall {:try_start_14e .. :try_end_152} :catchall_1ee

    .line 2367
    .local v2, "privFlags":I
    and-int/lit16 v3, v2, 0x2000

    if-nez v3, :cond_164

    :try_start_156
    iget-object v3, v13, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2368
    invoke-virtual {v3, v4}, Landroid/app/ActivityManagerInternal;->isAppForeground(I)Z

    move-result v3
    :try_end_160
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_156 .. :try_end_160} :catch_13c
    .catchall {:try_start_156 .. :try_end_160} :catchall_1ee

    if-eqz v3, :cond_164

    const/4 v3, 0x1

    goto :goto_165

    :cond_164
    const/4 v3, 0x0

    :goto_165
    move v4, v3

    .line 2371
    .end local v22    # "headBusy":Z
    .restart local v4    # "headBusy":Z
    if-eqz v4, :cond_1d4

    .line 2372
    :try_start_168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    const-wide/32 v26, 0x36ee80

    add-long v24, v24, v26

    iget-object v3, v13, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    const v5, 0x6ddd00

    .line 2374
    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    move v5, v2

    .end local v2    # "privFlags":I
    .local v5, "privFlags":I
    int-to-long v2, v3

    add-long v2, v24, v2

    .line 2376
    .local v2, "nextEligible":J
    move-object/from16 v24, v0

    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .local v24, "appInfo":Landroid/content/pm/PackageInfo;
    new-instance v0, Ljava/text/SimpleDateFormat;
    :try_end_182
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_168 .. :try_end_182} :catch_1ce
    .catchall {:try_start_168 .. :try_end_182} :catchall_1ee

    move/from16 v22, v4

    .end local v4    # "headBusy":Z
    .restart local v22    # "headBusy":Z
    :try_start_184
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2377
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const-string v4, "BackupManagerService"

    move/from16 v25, v5

    .end local v5    # "privFlags":I
    .local v25, "privFlags":I
    iget v5, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I
    :try_end_190
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_184 .. :try_end_190} :catch_1e0
    .catchall {:try_start_184 .. :try_end_190} :catchall_1ee

    move-wide/from16 v26, v6

    .end local v6    # "timeSinceRun":J
    .local v26, "timeSinceRun":J
    :try_start_192
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Full backup time but "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is busy; deferring to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 2384
    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2379
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2377
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    nop

    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    sub-long v4, v2, v16

    invoke-virtual {v13, v0, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_1c9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_192 .. :try_end_1c9} :catch_1ca
    .catchall {:try_start_192 .. :try_end_1c9} :catchall_1ee

    goto :goto_1dc

    .line 2391
    .end local v2    # "nextEligible":J
    .end local v24    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v25    # "privFlags":I
    :catch_1ca
    move-exception v0

    move/from16 v4, v22

    goto :goto_200

    .end local v22    # "headBusy":Z
    .end local v26    # "timeSinceRun":J
    .restart local v4    # "headBusy":Z
    .restart local v6    # "timeSinceRun":J
    :catch_1ce
    move-exception v0

    move/from16 v22, v4

    move-wide/from16 v26, v6

    .end local v4    # "headBusy":Z
    .end local v6    # "timeSinceRun":J
    .restart local v22    # "headBusy":Z
    .restart local v26    # "timeSinceRun":J
    goto :goto_200

    .line 2371
    .end local v22    # "headBusy":Z
    .end local v26    # "timeSinceRun":J
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    .local v2, "privFlags":I
    .restart local v4    # "headBusy":Z
    .restart local v6    # "timeSinceRun":J
    :cond_1d4
    move-object/from16 v24, v0

    move/from16 v25, v2

    move/from16 v22, v4

    move-wide/from16 v26, v6

    .line 2397
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "privFlags":I
    .end local v4    # "headBusy":Z
    .end local v6    # "timeSinceRun":J
    .restart local v22    # "headBusy":Z
    .restart local v26    # "timeSinceRun":J
    :goto_1dc
    move v0, v10

    move/from16 v4, v22

    goto :goto_21f

    .line 2391
    .end local v26    # "timeSinceRun":J
    .restart local v6    # "timeSinceRun":J
    :catch_1e0
    move-exception v0

    move-wide/from16 v26, v6

    move/from16 v4, v22

    .end local v6    # "timeSinceRun":J
    .restart local v26    # "timeSinceRun":J
    goto :goto_200

    .end local v23    # "transportName":Ljava/lang/String;
    .end local v26    # "timeSinceRun":J
    .local v5, "transportName":Ljava/lang/String;
    .restart local v6    # "timeSinceRun":J
    :catch_1e6
    move-exception v0

    move-object/from16 v23, v5

    move-wide/from16 v26, v6

    move/from16 v4, v22

    .end local v5    # "transportName":Ljava/lang/String;
    .end local v6    # "timeSinceRun":J
    .restart local v23    # "transportName":Ljava/lang/String;
    .restart local v26    # "timeSinceRun":J
    goto :goto_200

    .line 2443
    .end local v10    # "runBackup":Z
    .end local v22    # "headBusy":Z
    .end local v23    # "transportName":Ljava/lang/String;
    .end local v26    # "timeSinceRun":J
    :catchall_1ee
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-wide/from16 v22, v11

    move-wide/from16 v2, v20

    goto/16 :goto_313

    .line 2391
    .restart local v4    # "headBusy":Z
    .restart local v5    # "transportName":Ljava/lang/String;
    .restart local v6    # "timeSinceRun":J
    .restart local v10    # "runBackup":Z
    :catch_1f9
    move-exception v0

    move/from16 v22, v4

    move-object/from16 v23, v5

    move-wide/from16 v26, v6

    .line 2396
    .end local v5    # "transportName":Ljava/lang/String;
    .end local v6    # "timeSinceRun":J
    .local v0, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v23    # "transportName":Ljava/lang/String;
    .restart local v26    # "timeSinceRun":J
    :goto_200
    :try_start_200
    iget-object v2, v13, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_206
    .catchall {:try_start_200 .. :try_end_206} :catchall_1ee

    const/4 v3, 0x1

    if-le v2, v3, :cond_20b

    const/4 v2, 0x1

    goto :goto_20c

    :cond_20b
    const/4 v2, 0x0

    :goto_20c
    move v0, v2

    .end local v10    # "runBackup":Z
    .local v2, "runBackup":Z
    goto :goto_21f

    .line 2443
    .end local v0    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "headBusy":Z
    .end local v20    # "latency":J
    .end local v23    # "transportName":Ljava/lang/String;
    .end local v26    # "timeSinceRun":J
    .local v2, "latency":J
    :catchall_20e
    move-exception v0

    move-wide/from16 v20, v2

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-wide/from16 v22, v11

    .end local v2    # "latency":J
    .restart local v20    # "latency":J
    goto/16 :goto_313

    .line 2326
    .end local v20    # "latency":J
    .local v0, "runBackup":Z
    .restart local v2    # "latency":J
    .restart local v4    # "headBusy":Z
    .restart local v5    # "transportName":Ljava/lang/String;
    :cond_219
    move-wide/from16 v20, v2

    move/from16 v22, v4

    move-object/from16 v23, v5

    .line 2399
    .end local v2    # "latency":J
    .end local v5    # "transportName":Ljava/lang/String;
    .restart local v20    # "latency":J
    :goto_21f
    if-nez v4, :cond_300

    move-object v10, v1

    move-wide/from16 v5, v20

    move/from16 v20, v0

    .line 2401
    .end local v0    # "runBackup":Z
    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v4    # "headBusy":Z
    .local v5, "latency":J
    .local v10, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .local v20, "runBackup":Z
    :goto_226
    if-eqz v20, :cond_2a0

    .line 2402
    :try_start_228
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v7, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2403
    .local v7, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v4, v3, [Ljava/lang/String;

    iget-object v0, v10, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v4, v1
    :try_end_235
    .catchall {:try_start_228 .. :try_end_235} :catchall_28f

    .line 2405
    .local v4, "pkg":[Ljava/lang/String;
    :try_start_235
    iget-object v2, v13, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    const/4 v0, 0x0

    const/16 v18, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "BMS.beginFullBackup()"

    .line 2417
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v19
    :try_end_247
    .catch Ljava/lang/IllegalStateException; {:try_start_235 .. :try_end_247} :catch_271
    .catchall {:try_start_235 .. :try_end_247} :catchall_28f

    .line 2405
    move/from16 v25, v1

    move-object/from16 v1, p0

    move/from16 v26, v3

    move-object v3, v0

    move-wide/from16 v28, v5

    .end local v5    # "latency":J
    .local v28, "latency":J
    move/from16 v5, v18

    move/from16 v18, v26

    move-object/from16 v6, p1

    move-object/from16 v26, v8

    move-object/from16 v8, v21

    move-object/from16 v27, v9

    .end local v9    # "result":Landroid/os/PowerSaveState;
    .local v27, "result":Landroid/os/PowerSaveState;
    move-object/from16 v9, v22

    move-object/from16 v21, v10

    .end local v10    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .local v21, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    move/from16 v10, v23

    move-wide/from16 v22, v11

    .end local v11    # "keyValueBackupInterval":J
    .local v22, "keyValueBackupInterval":J
    move-object/from16 v11, v24

    move-object/from16 v12, v19

    :try_start_268
    invoke-static/range {v1 .. v12}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->newWithCurrentTransport(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_end_26e
    .catch Ljava/lang/IllegalStateException; {:try_start_268 .. :try_end_26e} :catch_26f
    .catchall {:try_start_268 .. :try_end_26e} :catchall_288

    .line 2421
    goto :goto_2ac

    .line 2418
    :catch_26f
    move-exception v0

    goto :goto_27e

    .end local v21    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v22    # "keyValueBackupInterval":J
    .end local v27    # "result":Landroid/os/PowerSaveState;
    .end local v28    # "latency":J
    .restart local v5    # "latency":J
    .restart local v9    # "result":Landroid/os/PowerSaveState;
    .restart local v10    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v11    # "keyValueBackupInterval":J
    :catch_271
    move-exception v0

    move/from16 v18, v3

    move-wide/from16 v28, v5

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v21, v10

    move-wide/from16 v22, v11

    .line 2419
    .end local v5    # "latency":J
    .end local v9    # "result":Landroid/os/PowerSaveState;
    .end local v10    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v11    # "keyValueBackupInterval":J
    .local v0, "e":Ljava/lang/IllegalStateException;
    .restart local v21    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v22    # "keyValueBackupInterval":J
    .restart local v27    # "result":Landroid/os/PowerSaveState;
    .restart local v28    # "latency":J
    :goto_27e
    :try_start_27e
    const-string v1, "BackupManagerService"

    const-string v2, "Failed to start backup"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_285
    .catchall {:try_start_27e .. :try_end_285} :catchall_288

    .line 2420
    const/16 v20, 0x0

    goto :goto_2ac

    .line 2443
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v4    # "pkg":[Ljava/lang/String;
    .end local v7    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v20    # "runBackup":Z
    :catchall_288
    move-exception v0

    move-object/from16 v1, v21

    move-wide/from16 v2, v28

    goto/16 :goto_313

    .end local v21    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v22    # "keyValueBackupInterval":J
    .end local v27    # "result":Landroid/os/PowerSaveState;
    .end local v28    # "latency":J
    .restart local v5    # "latency":J
    .restart local v9    # "result":Landroid/os/PowerSaveState;
    .restart local v10    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v11    # "keyValueBackupInterval":J
    :catchall_28f
    move-exception v0

    move-wide/from16 v28, v5

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v21, v10

    move-wide/from16 v22, v11

    move-object/from16 v1, v21

    move-wide/from16 v2, v28

    .end local v5    # "latency":J
    .end local v9    # "result":Landroid/os/PowerSaveState;
    .end local v10    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v11    # "keyValueBackupInterval":J
    .restart local v21    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v22    # "keyValueBackupInterval":J
    .restart local v27    # "result":Landroid/os/PowerSaveState;
    .restart local v28    # "latency":J
    goto/16 :goto_313

    .line 2401
    .end local v21    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v22    # "keyValueBackupInterval":J
    .end local v27    # "result":Landroid/os/PowerSaveState;
    .end local v28    # "latency":J
    .restart local v5    # "latency":J
    .restart local v9    # "result":Landroid/os/PowerSaveState;
    .restart local v10    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v11    # "keyValueBackupInterval":J
    .restart local v20    # "runBackup":Z
    :cond_2a0
    move-wide/from16 v28, v5

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v21, v10

    move-wide/from16 v22, v11

    const/16 v18, 0x1

    .line 2424
    .end local v5    # "latency":J
    .end local v9    # "result":Landroid/os/PowerSaveState;
    .end local v10    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v11    # "keyValueBackupInterval":J
    .restart local v21    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v22    # "keyValueBackupInterval":J
    .restart local v27    # "result":Landroid/os/PowerSaveState;
    .restart local v28    # "latency":J
    :goto_2ac
    if-nez v20, :cond_2e2

    .line 2426
    :try_start_2ae
    const-string v0, "BackupManagerService"

    iget v1, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nothing pending full backup or failed to start the operation; rescheduling +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_2bd
    .catchall {:try_start_2ae .. :try_end_2bd} :catchall_2db

    move-wide/from16 v3, v28

    .end local v28    # "latency":J
    .local v3, "latency":J
    :try_start_2bf
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2428
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2426
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    move-wide v0, v3

    .line 2434
    .local v0, "deferTime":J
    iget v2, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v5, v13, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v13, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v2, v5, v0, v1, v6}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 2435
    monitor-exit v26

    const/4 v5, 0x0

    return v5

    .line 2443
    .end local v0    # "deferTime":J
    .end local v3    # "latency":J
    .end local v20    # "runBackup":Z
    .restart local v28    # "latency":J
    :catchall_2db
    move-exception v0

    move-wide/from16 v3, v28

    move-wide v2, v3

    move-object/from16 v1, v21

    .end local v28    # "latency":J
    .restart local v3    # "latency":J
    goto :goto_313

    .line 2439
    .end local v3    # "latency":J
    .restart local v20    # "runBackup":Z
    .restart local v28    # "latency":J
    :cond_2e2
    move-wide/from16 v3, v28

    const/4 v5, 0x0

    .end local v28    # "latency":J
    .restart local v3    # "latency":J
    iget-object v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2441
    iget-object v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 2442
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, v13, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2443
    .end local v20    # "runBackup":Z
    monitor-exit v26
    :try_end_2fa
    .catchall {:try_start_2bf .. :try_end_2fa} :catchall_2fb

    .line 2445
    return v18

    .line 2443
    :catchall_2fb
    move-exception v0

    move-wide v2, v3

    move-object/from16 v1, v21

    goto :goto_313

    .line 2399
    .end local v3    # "latency":J
    .end local v21    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v22    # "keyValueBackupInterval":J
    .end local v27    # "result":Landroid/os/PowerSaveState;
    .local v0, "runBackup":Z
    .restart local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .local v4, "headBusy":Z
    .restart local v9    # "result":Landroid/os/PowerSaveState;
    .restart local v11    # "keyValueBackupInterval":J
    .local v20, "latency":J
    :cond_300
    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-wide/from16 v22, v11

    const/4 v5, 0x0

    .end local v9    # "result":Landroid/os/PowerSaveState;
    .end local v11    # "keyValueBackupInterval":J
    .restart local v22    # "keyValueBackupInterval":J
    .restart local v27    # "result":Landroid/os/PowerSaveState;
    move v10, v5

    move-wide/from16 v2, v20

    goto/16 :goto_79

    .line 2443
    .end local v0    # "runBackup":Z
    .end local v4    # "headBusy":Z
    .end local v20    # "latency":J
    .end local v22    # "keyValueBackupInterval":J
    .end local v27    # "result":Landroid/os/PowerSaveState;
    .restart local v2    # "latency":J
    .restart local v9    # "result":Landroid/os/PowerSaveState;
    .restart local v11    # "keyValueBackupInterval":J
    :catchall_30c
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-wide/from16 v22, v11

    .end local v9    # "result":Landroid/os/PowerSaveState;
    .end local v11    # "keyValueBackupInterval":J
    .restart local v22    # "keyValueBackupInterval":J
    .restart local v27    # "result":Landroid/os/PowerSaveState;
    :goto_313
    :try_start_313
    monitor-exit v26
    :try_end_314
    .catchall {:try_start_313 .. :try_end_314} :catchall_315

    throw v0

    :catchall_315
    move-exception v0

    goto :goto_313

    .line 2246
    .end local v22    # "keyValueBackupInterval":J
    .end local v27    # "result":Landroid/os/PowerSaveState;
    .restart local v11    # "keyValueBackupInterval":J
    :cond_317
    move v5, v10

    move-wide/from16 v22, v11

    .line 2250
    .end local v11    # "keyValueBackupInterval":J
    .restart local v22    # "keyValueBackupInterval":J
    :goto_31a
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_350

    .line 2251
    const-string v0, "BackupManagerService"

    iget v4, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "beginFullBackup but enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v13, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " setupComplete="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v13, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    :cond_350
    return v5

    .line 2242
    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v2    # "latency":J
    .end local v16    # "fullBackupInterval":J
    .end local v22    # "keyValueBackupInterval":J
    :catchall_351
    move-exception v0

    :try_start_352
    monitor-exit v1
    :try_end_353
    .catchall {:try_start_352 .. :try_end_353} :catchall_351

    throw v0
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;

    .line 3935
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginRestoreSession: pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " transport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3937
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3935
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    const/4 v0, 0x1

    .line 3943
    .local v0, "needPermission":Z
    if-nez p2, :cond_89

    .line 3944
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object p2

    .line 3946
    if-eqz p1, :cond_89

    .line 3947
    const/4 v1, 0x0

    .line 3949
    .local v1, "app":Landroid/content/pm/PackageInfo;
    :try_start_34
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_3d} :catch_4b

    move-object v1, v2

    .line 3956
    nop

    .line 3958
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-ne v2, v3, :cond_89

    .line 3962
    const/4 v0, 0x0

    goto :goto_89

    .line 3950
    :catch_4b
    move-exception v2

    .line 3951
    .local v2, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Asked to restore nonexistent pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3953
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3951
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3967
    .end local v1    # "app":Landroid/content/pm/PackageInfo;
    .end local v2    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_89
    :goto_89
    if-eqz v0, :cond_95

    .line 3968
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "beginRestoreSession"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a3

    .line 3972
    :cond_95
    const-string v1, "BackupManagerService"

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string/jumbo v3, "restoring self on current transport; no permission needed"

    .line 3974
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3972
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3981
    :goto_a3
    const/4 v1, 0x0

    .line 3983
    .local v1, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    const/4 v2, 0x0

    :try_start_a5
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v4, "BMS.beginRestoreSession"

    invoke-virtual {v3, p2, v4}, Lcom/android/server/backup/TransportManager;->getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v3

    move-object v1, v3

    .line 3985
    invoke-virtual {p0, v1}, Lcom/android/server/backup/UserBackupManagerService;->getOperationTypeFromTransport(Lcom/android/server/backup/transport/TransportConnection;)I

    move-result v3
    :try_end_b2
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_a5 .. :try_end_b2} :catch_103
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_a5 .. :try_end_b2} :catch_103
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_b2} :catch_103
    .catchall {:try_start_a5 .. :try_end_b2} :catchall_101

    .line 3991
    .local v3, "operationType":I
    if-eqz v1, :cond_bb

    .line 3992
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v5, "BMS.beginRestoreSession"

    invoke-virtual {v4, v1, v5}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 3997
    :cond_bb
    monitor-enter p0

    .line 3998
    :try_start_bc
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    if-eqz v4, :cond_cf

    .line 3999
    const-string v4, "BackupManagerService"

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "Restore session requested but one already active"

    .line 4001
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3999
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4003
    monitor-exit p0

    return-object v2

    .line 4005
    :cond_cf
    iget-boolean v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    if-eqz v4, :cond_e2

    .line 4006
    const-string v4, "BackupManagerService"

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "Restore session requested but currently running backups"

    .line 4008
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4006
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4011
    monitor-exit p0

    return-object v2

    .line 4013
    :cond_e2
    new-instance v2, Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 4014
    invoke-virtual {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v4

    invoke-direct {v2, p0, p1, p2, v4}, Lcom/android/server/backup/restore/ActiveRestoreSession;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    iput-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 4015
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 4016
    invoke-virtual {v5}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreSessionTimeoutMillis()J

    move-result-wide v5

    .line 4015
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4017
    monitor-exit p0
    :try_end_fb
    .catchall {:try_start_bc .. :try_end_fb} :catchall_fe

    .line 4018
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object v2

    .line 4017
    :catchall_fe
    move-exception v2

    :try_start_ff
    monitor-exit p0
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    throw v2

    .line 3991
    .end local v3    # "operationType":I
    :catchall_101
    move-exception v2

    goto :goto_127

    .line 3986
    :catch_103
    move-exception v3

    .line 3988
    .local v3, "e":Landroid/util/AndroidException;
    :try_start_104
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get operation type from transport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11c
    .catchall {:try_start_104 .. :try_end_11c} :catchall_101

    .line 3989
    nop

    .line 3991
    if-eqz v1, :cond_126

    .line 3992
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v5, "BMS.beginRestoreSession"

    invoke-virtual {v4, v1, v5}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 3989
    :cond_126
    return-object v2

    .line 3991
    .end local v3    # "e":Landroid/util/AndroidException;
    :goto_127
    if-eqz v1, :cond_130

    .line 3992
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v4, "BMS.beginRestoreSession"

    invoke-virtual {v3, v1, v4}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 3995
    :cond_130
    throw v2
.end method

.method public bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;
    .registers 15
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I
    .param p3, "operationType"    # I

    .line 1632
    const/4 v0, 0x0

    .line 1633
    .local v0, "agent":Landroid/app/IBackupAgent;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1634
    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    .line 1635
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_141

    .line 1638
    :try_start_a
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v3

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-interface {v3, v4, v5}, Lcom/android/server/backup/BackupManagerServiceStub;->getAppUserId(II)I

    move-result v3

    .line 1640
    .local v3, "userIdX":I
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindToAgentSynchronous, packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", userId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, p2, v3, p3}, Landroid/app/IActivityManager;->bindBackupAgent(Ljava/lang/String;III)Z

    move-result v4

    if-eqz v4, :cond_fa

    .line 1645
    const-string v4, "BackupManagerService"

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "awaiting agent for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    .line 1650
    .local v4, "timeoutMark":J
    :goto_75
    iget-boolean v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    if-eqz v6, :cond_b2

    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v6, :cond_b2

    .line 1651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_81} :catch_fb
    .catchall {:try_start_a .. :try_end_81} :catchall_141

    cmp-long v6, v6, v4

    if-gez v6, :cond_b2

    .line 1653
    :try_start_85
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_8c
    .catch Ljava/lang/InterruptedException; {:try_start_85 .. :try_end_8c} :catch_8d
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_8c} :catch_fb
    .catchall {:try_start_85 .. :try_end_8c} :catchall_141

    .line 1659
    :goto_8c
    goto :goto_75

    .line 1654
    :catch_8d
    move-exception v6

    .line 1656
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_8e
    const-string v7, "BackupManagerService"

    iget v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Interrupted: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    .line 1658
    iput-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .end local v6    # "e":Ljava/lang/InterruptedException;
    goto :goto_8c

    .line 1663
    :cond_b2
    iget-boolean v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    if-eqz v6, :cond_d6

    .line 1664
    const-string v6, "BackupManagerService"

    iget v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Timeout waiting for agent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1666
    invoke-static {v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1664
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    iput-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 1670
    :cond_d6
    const-string v2, "BackupManagerService"

    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "got agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_f9} :catch_fb
    .catchall {:try_start_8e .. :try_end_f9} :catchall_141

    move-object v0, v2

    .line 1676
    .end local v3    # "userIdX":I
    .end local v4    # "timeoutMark":J
    :cond_fa
    goto :goto_fc

    .line 1674
    :catch_fb
    move-exception v2

    .line 1677
    :goto_fc
    :try_start_fc
    monitor-exit v1
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_141

    .line 1678
    if-nez v0, :cond_140

    .line 1680
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/backup/BackupManagerServiceStub;->getAppUserId(II)I

    move-result v1

    .line 1681
    .local v1, "userIdX":I
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearPendingBackup, packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, v1}, Landroid/app/ActivityManagerInternal;->clearPendingBackup(I)V

    .line 1686
    .end local v1    # "userIdX":I
    :cond_140
    return-object v0

    .line 1677
    :catchall_141
    move-exception v2

    :try_start_142
    monitor-exit v1
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    throw v2
.end method

.method public cancelBackups()V
    .registers 10

    .line 1975
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "cancelBackups"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_1a

    .line 1977
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v1, "cancelBackups() called."

    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1981
    .local v0, "oldToken":J
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    const/4 v3, 0x2

    .line 1982
    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->operationTokensForOpType(I)Ljava/util/Set;

    move-result-object v2

    .line 1984
    .local v2, "operationsToCancel":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1985
    .local v4, "token":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    new-instance v8, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v8}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->cancelOperation(IZLjava/util/function/IntConsumer;)V

    .line 1987
    .end local v4    # "token":Ljava/lang/Integer;
    goto :goto_29

    .line 1990
    :cond_45
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v5, 0x36ee80

    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 1991
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v5, 0x6ddd00

    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V
    :try_end_5d
    .catchall {:try_start_1e .. :try_end_5d} :catchall_62

    .line 1993
    .end local v2    # "operationsToCancel":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1994
    nop

    .line 1995
    return-void

    .line 1993
    :catchall_62
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1994
    throw v2
.end method

.method cancelMiuiBackups()V
    .registers 3

    .line 4285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelMiuiBackups() called. mCallerFd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4286
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    invoke-interface {v0, v1}, Lcom/android/server/backup/BackupManagerServiceStub;->isRunningFromMiui(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4287
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/backup/BackupManagerServiceStub;->cancelBackups(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 4289
    :cond_2d
    return-void
.end method

.method public clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1703
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V

    .line 1704
    return-void
.end method

.method public clearApplicationDataBeforeRestore(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1711
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V

    .line 1712
    return-void
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2680
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearBackupData() of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2682
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2680
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    :try_start_28
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x8000000

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_32} :catch_d9

    .line 2698
    .local v0, "info":Landroid/content/pm/PackageInfo;
    nop

    .line 2703
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2704
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2703
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_53

    .line 2705
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .local v1, "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_6a

    .line 2709
    .end local v1    # "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_53
    sget-boolean v1, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v1, :cond_64

    .line 2710
    const-string v1, "BackupManagerService"

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Privileged caller, allowing clear of other apps"

    .line 2712
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2710
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    :cond_64
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v1}, Lcom/android/server/backup/ProcessedPackagesJournal;->getPackagesCopy()Ljava/util/Set;

    move-result-object v1

    .line 2718
    .restart local v1    # "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_6a
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 2720
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_81

    .line 2721
    const-string v2, "BackupManagerService"

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "Found the app - running clear process"

    .line 2723
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2721
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    :cond_81
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 2726
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2727
    :try_start_8b
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v5, "BMS.clearBackupData()"

    .line 2729
    invoke-virtual {v4, p1, v5}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v4

    .line 2730
    .local v4, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    if-nez v4, :cond_aa

    .line 2732
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v6, Lcom/android/server/backup/params/ClearRetryParams;

    invoke-direct {v6, p1, p2}, Lcom/android/server/backup/params/ClearRetryParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v6}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2734
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v6, 0x36ee80

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2735
    monitor-exit v2

    return-void

    .line 2737
    .end local v3    # "msg":Landroid/os/Message;
    :cond_aa
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_ae
    .catchall {:try_start_8b .. :try_end_ae} :catchall_d5

    .line 2739
    .local v5, "oldId":J
    :try_start_ae
    new-instance v3, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v4}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;)V

    .line 2741
    .local v3, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 2742
    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v8, 0x4

    new-instance v9, Lcom/android/server/backup/params/ClearParams;

    invoke-direct {v9, v4, v0, v3}, Lcom/android/server/backup/params/ClearParams;-><init>(Lcom/android/server/backup/transport/TransportConnection;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v7, v8, v9}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2745
    .local v7, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v8, v7}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c9
    .catchall {:try_start_ae .. :try_end_c9} :catchall_cf

    .line 2747
    .end local v3    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .end local v7    # "msg":Landroid/os/Message;
    :try_start_c9
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2748
    nop

    .line 2749
    .end local v4    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .end local v5    # "oldId":J
    monitor-exit v2

    goto :goto_d8

    .line 2747
    .restart local v4    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .restart local v5    # "oldId":J
    :catchall_cf
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2748
    nop

    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "transportName":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    throw v3

    .line 2749
    .end local v4    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .end local v5    # "oldId":J
    .restart local v0    # "info":Landroid/content/pm/PackageInfo;
    .restart local v1    # "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "transportName":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_d5
    move-exception v3

    monitor-exit v2
    :try_end_d7
    .catchall {:try_start_c9 .. :try_end_d7} :catchall_d5

    throw v3

    .line 2751
    :cond_d8
    :goto_d8
    return-void

    .line 2691
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_d9
    move-exception v0

    .line 2692
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "BackupManagerService"

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such package \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' - not clearing backup data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2694
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2692
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    return-void
.end method

.method public clearPendingInits()V
    .registers 2

    .line 874
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 875
    return-void
.end method

.method public clearRestoreSession(Lcom/android/server/backup/restore/ActiveRestoreSession;)V
    .registers 5
    .param p1, "currentSession"    # Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 4023
    monitor-enter p0

    .line 4024
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    if-eq p1, v0, :cond_13

    .line 4025
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "ending non-current restore session"

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 4028
    :cond_13
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "Clearing restore session and halting timeout"

    .line 4030
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4028
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 4034
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 4036
    :goto_2a
    monitor-exit p0

    .line 4037
    return-void

    .line 4036
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2578
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 2579
    .local v0, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_33

    .line 2580
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataChanged but no participant pkg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2588
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2582
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2580
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    return-void

    .line 2592
    :cond_33
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService$4;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v1, v2}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 2597
    return-void
.end method

.method public dataChangedImpl(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2493
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 2494
    .local v0, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 2495
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4114
    .local v0, "identityToken":J
    if-eqz p3, :cond_4a

    .line 4115
    :try_start_6
    array-length v2, p3

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_4a

    aget-object v4, p3, v3

    .line 4116
    .local v4, "arg":Ljava/lang/String;
    const-string v5, "agents"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 4117
    invoke-direct {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dumpAgents(Ljava/io/PrintWriter;)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_52

    .line 4130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4118
    return-void

    .line 4119
    :cond_1b
    :try_start_1b
    const-string/jumbo v5, "transportclients"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 4120
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p2}, Lcom/android/server/backup/TransportManager;->dumpTransportClients(Ljava/io/PrintWriter;)V
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_52

    .line 4130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4121
    return-void

    .line 4122
    :cond_31
    :try_start_31
    const-string/jumbo v5, "transportstats"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 4123
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p2}, Lcom/android/server/backup/TransportManager;->dumpTransportStats(Ljava/io/PrintWriter;)V
    :try_end_43
    .catchall {:try_start_31 .. :try_end_43} :catchall_52

    .line 4130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4124
    return-void

    .line 4115
    .end local v4    # "arg":Ljava/lang/String;
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 4128
    :cond_4a
    :try_start_4a
    invoke-direct {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_52

    .line 4130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4131
    nop

    .line 4132
    return-void

    .line 4130
    :catchall_52
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4131
    throw v2
.end method

.method public endFullBackup()V
    .registers 4

    .line 2455
    new-instance v0, Lcom/android/server/backup/UserBackupManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/backup/UserBackupManagerService$3;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 2475
    .local v0, "endFullBackupRunnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "end-full-backup"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2476
    return-void
.end method

.method public enqueueFullBackup(Ljava/lang/String;J)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastBackedUp"    # J

    .line 2160
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    .line 2161
    .local v0, "newEntry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2165
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    .line 2171
    const/4 v2, -0x1

    .line 2172
    .local v2, "which":I
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_36

    .line 2173
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_1b
    if-ltz v2, :cond_36

    .line 2174
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 2175
    .local v3, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-wide v4, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    cmp-long v4, v4, p2

    if-gtz v4, :cond_33

    .line 2176
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2177
    goto :goto_36

    .line 2173
    .end local v3    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 2181
    :cond_36
    :goto_36
    if-gez v2, :cond_3e

    .line 2183
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2185
    .end local v2    # "which":I
    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_43

    .line 2186
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->writeFullBackupScheduleAsync()V

    .line 2187
    return-void

    .line 2185
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v2
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

    .line 3096
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "excludeKeysFromRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/UserBackupPreferences;->addExcludedKeys(Ljava/lang/String;Ljava/util/List;)V

    .line 3099
    return-void
.end method

.method public filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .param p1, "packages"    # [Ljava/lang/String;

    .line 4075
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "filterAppsEligibleForBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4078
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4080
    .local v0, "oldToken":J
    :try_start_d
    const-string v2, "BMS.filterAppsEligibleForBackup"

    .line 4081
    .local v2, "callerLogString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 4082
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v3

    .line 4083
    .local v3, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 4084
    .local v4, "eligibleApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v5, p1

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v5, :cond_2e

    aget-object v7, p1, v6

    .line 4085
    .local v7, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v8, v3, v7}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 4087
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4084
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 4090
    :cond_2e
    if-eqz v3, :cond_35

    .line 4091
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 4093
    :cond_35
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_d .. :try_end_41} :catchall_45

    .line 4095
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4093
    return-object v5

    .line 4095
    .end local v2    # "callerLogString":Ljava/lang/String;
    .end local v3    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .end local v4    # "eligibleApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_45
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4096
    throw v2
.end method

.method public filterUserFacingPackages(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 3567
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->shouldSkipUserFacingData()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3568
    return-object p1

    .line 3571
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3572
    .local v0, "filteredPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 3573
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->shouldSkipPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 3574
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 3576
    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Will skip backup/restore for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_46
    goto :goto_14

    .line 3580
    :cond_47
    return-object v0
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .registers 24
    .param p1, "pkgNames"    # [Ljava/lang/String;

    .line 2943
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    iget-object v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "fullTransportBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v15

    .line 2947
    .local v15, "callingUserHandle":I
    if-nez v15, :cond_bd

    .line 2951
    iget-object v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v12

    .line 2952
    .local v12, "transportName":Ljava/lang/String;
    invoke-direct {v13, v12}, Lcom/android/server/backup/UserBackupManagerService;->fullBackupAllowable(Ljava/lang/String;)Z

    move-result v0

    const-string v11, "BackupManagerService"

    if-nez v0, :cond_31

    .line 2953
    iget v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 2955
    const-string v1, "Full backup not currently possible -- key/value backup not yet run?"

    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2953
    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    goto :goto_8f

    .line 2960
    :cond_31
    iget v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v1, "fullTransportBackup()"

    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2965
    .local v16, "oldId":J
    :try_start_40
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2966
    .local v7, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, v13, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v0, "BMS.fullTransportBackup()"

    .line 2978
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v18
    :try_end_55
    .catch Ljava/lang/IllegalStateException; {:try_start_40 .. :try_end_55} :catch_ab
    .catchall {:try_start_40 .. :try_end_55} :catchall_a7

    .line 2966
    move-object/from16 v1, p0

    move/from16 v19, v4

    move-object/from16 v4, p1

    move-object/from16 v20, v11

    move-object v11, v0

    move-object/from16 v21, v12

    .end local v12    # "transportName":Ljava/lang/String;
    .local v21, "transportName":Ljava/lang/String;
    move-object/from16 v12, v18

    :try_start_62
    invoke-static/range {v1 .. v12}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->newWithCurrentTransport(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v0

    move-object v1, v0

    .line 2980
    .local v1, "task":Ljava/lang/Runnable;
    iget-object v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 2981
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "full-transport-master"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_76
    .catch Ljava/lang/IllegalStateException; {:try_start_62 .. :try_end_76} :catch_a3
    .catchall {:try_start_62 .. :try_end_76} :catchall_b8

    .line 2984
    :goto_76
    :try_start_76
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_76 .. :try_end_79} :catch_9d
    .catch Ljava/lang/IllegalStateException; {:try_start_76 .. :try_end_79} :catch_a3
    .catchall {:try_start_76 .. :try_end_79} :catchall_b8

    .line 2985
    nop

    .line 2992
    :try_start_7a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2993
    .local v2, "now":J
    array-length v0, v14

    move/from16 v4, v19

    :goto_81
    if-ge v4, v0, :cond_8b

    aget-object v5, v14, v4

    .line 2994
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v13, v5, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_88
    .catch Ljava/lang/IllegalStateException; {:try_start_7a .. :try_end_88} :catch_a3
    .catchall {:try_start_7a .. :try_end_88} :catchall_b8

    .line 2993
    .end local v5    # "pkg":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    .line 3000
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v2    # "now":J
    .end local v7    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_8b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3001
    nop

    .line 3005
    .end local v16    # "oldId":J
    :goto_8f
    iget v0, v13, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v1, "Done with full transport backup."

    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v20

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    return-void

    .line 2986
    .restart local v1    # "task":Ljava/lang/Runnable;
    .restart local v7    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v16    # "oldId":J
    :catch_9d
    move-exception v0

    move-object/from16 v2, v20

    .line 2989
    move-object/from16 v20, v2

    goto :goto_76

    .line 2996
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v7    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catch_a3
    move-exception v0

    move-object/from16 v2, v20

    goto :goto_af

    .line 3000
    .end local v21    # "transportName":Ljava/lang/String;
    .restart local v12    # "transportName":Ljava/lang/String;
    :catchall_a7
    move-exception v0

    move-object/from16 v21, v12

    .end local v12    # "transportName":Ljava/lang/String;
    .restart local v21    # "transportName":Ljava/lang/String;
    goto :goto_b9

    .line 2996
    .end local v21    # "transportName":Ljava/lang/String;
    .restart local v12    # "transportName":Ljava/lang/String;
    :catch_ab
    move-exception v0

    move-object v2, v11

    move-object/from16 v21, v12

    .line 2997
    .end local v12    # "transportName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/IllegalStateException;
    .restart local v21    # "transportName":Ljava/lang/String;
    :goto_af
    :try_start_af
    const-string v1, "Failed to start backup: "

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b4
    .catchall {:try_start_af .. :try_end_b4} :catchall_b8

    .line 3000
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2998
    return-void

    .line 3000
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_b8
    move-exception v0

    :goto_b9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3001
    throw v0

    .line 2948
    .end local v16    # "oldId":J
    .end local v21    # "transportName":Ljava/lang/String;
    :cond_bd
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore supported only for the device owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateRandomIntegerToken()I
    .registers 3

    .line 887
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 888
    .local v0, "token":I
    if-gez v0, :cond_9

    neg-int v0, v0

    .line 889
    :cond_9
    and-int/lit16 v0, v0, -0x100

    .line 890
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 891
    return v0
.end method

.method public getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;
    .registers 2

    .line 815
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object v0
.end method

.method public getActivityManager()Landroid/app/IActivityManager;
    .registers 2

    .line 716
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/params/AdbParams;",
            ">;"
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .registers 2

    .line 700
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object v0
.end method

.method public getAlarmManager()Landroid/app/AlarmManager;
    .registers 2

    .line 720
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method public getAncestralSerialNumber()J
    .registers 4

    .line 2647
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 2648
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->getAncestralSerialNumberFile()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_1e

    .line 2649
    .local v0, "af":Ljava/io/RandomAccessFile;
    :try_start_c
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 2650
    :try_start_10
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_13} :catch_2d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1e

    .line 2649
    return-wide v1

    .line 2647
    :catchall_14
    move-exception v1

    :try_start_15
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v2

    :try_start_1a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :goto_1d
    throw v1
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1e} :catch_2d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1e

    .line 2652
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catch_1e
    move-exception v0

    .line 2653
    .local v0, "e":Ljava/io/IOException;
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 2655
    const-string v2, "Unable to read work profile serial number file:"

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2653
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    .line 2650
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2d
    move-exception v0

    .line 2658
    nop

    .line 2659
    :goto_2f
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getAppUserId()I
    .registers 4

    .line 4292
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/backup/BackupManagerServiceStub;->getAppUserId(II)I

    move-result v0

    return v0
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1824
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getAvailableRestoreToken"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 1828
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1829
    :try_start_e
    iget-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/ProcessedPackagesJournal;->hasBeenProcessed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1830
    sget-boolean v3, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v3, :cond_2f

    .line 1831
    const-string v3, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "App in ever-stored, so using current token"

    .line 1833
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1831
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :cond_2f
    iget-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    move-wide v0, v3

    .line 1838
    :cond_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_56

    .line 1839
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_55

    .line 1840
    const-string v2, "BackupManagerService"

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAvailableRestoreToken() == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :cond_55
    return-wide v0

    .line 1838
    :catchall_56
    move-exception v3

    :try_start_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v3
.end method

.method public getBackupHandler()Landroid/os/Handler;
    .registers 2

    .line 767
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object v0
.end method

.method public getBackupManagerBinder()Landroid/app/backup/IBackupManager;
    .registers 2

    .line 4278
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method public getBaseStateDir()Ljava/io/File;
    .registers 2

    .line 823
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    return-object v0
.end method

.method public getClearDataLock()Ljava/lang/Object;
    .registers 2

    .line 795
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .line 3641
    const-string v0, "BackupManagerService"

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "getConfigurationIntent"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    :try_start_b
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1, p1}, Lcom/android/server/backup/TransportManager;->getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3645
    .local v1, "intent":Landroid/content/Intent;
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_31

    .line 3646
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConfigurationIntent() returning intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3648
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3646
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_b .. :try_end_31} :catch_32

    .line 3651
    :cond_31
    return-object v1

    .line 3652
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_32
    move-exception v1

    .line 3653
    .local v1, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get configuration intent from transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3658
    invoke-virtual {v1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3655
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3653
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstants()Lcom/android/server/backup/BackupManagerConstants;
    .registers 2

    .line 696
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 704
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentToken()J
    .registers 3

    .line 861
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    return-wide v0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 5

    .line 3343
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3345
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v0

    .line 3346
    .local v0, "currentTransport":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v1, :cond_31

    .line 3347
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "... getCurrentTransport() returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3349
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3347
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    :cond_31
    return-object v0
.end method

.method public getCurrentTransportComponent()Landroid/content/ComponentName;
    .registers 5

    .line 3361
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransportComponent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3363
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3365
    .local v0, "oldId":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportComponent()Landroid/content/ComponentName;

    move-result-object v2
    :try_end_13
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_d .. :try_end_13} :catch_1c
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 3369
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3365
    return-object v2

    .line 3369
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3370
    throw v2

    .line 3366
    :catch_1c
    move-exception v2

    .line 3367
    .local v2, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    const/4 v3, 0x0

    .line 3369
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3367
    return-object v3
.end method

.method public getDataDir()Ljava/io/File;
    .registers 2

    .line 827
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .line 3697
    const-string v0, "BackupManagerService"

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "getDataManagementIntent"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3701
    :try_start_b
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1, p1}, Lcom/android/server/backup/TransportManager;->getTransportDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3702
    .local v1, "intent":Landroid/content/Intent;
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_31

    .line 3703
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataManagementIntent() returning intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3705
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3703
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_b .. :try_end_31} :catch_32

    .line 3708
    :cond_31
    return-object v1

    .line 3709
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_32
    move-exception v1

    .line 3710
    .local v1, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get management intent from transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3714
    invoke-virtual {v1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3712
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3710
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3715
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .line 3724
    const-string v0, "BackupManagerService"

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "getDataManagementLabel"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3728
    :try_start_b
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1, p1}, Lcom/android/server/backup/TransportManager;->getTransportDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3729
    .local v1, "label":Ljava/lang/CharSequence;
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_31

    .line 3730
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataManagementLabel() returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3732
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3730
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_b .. :try_end_31} :catch_32

    .line 3735
    :cond_31
    return-object v1

    .line 3736
    .end local v1    # "label":Ljava/lang/CharSequence;
    :catch_32
    move-exception v1

    .line 3737
    .local v1, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get management label from transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3741
    invoke-virtual {v1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3739
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3737
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3742
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .line 3673
    const-string v0, "BackupManagerService"

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "getDestinationString"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3677
    :try_start_b
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1, p1}, Lcom/android/server/backup/TransportManager;->getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3678
    .local v1, "string":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_31

    .line 3679
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDestinationString() returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3681
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3679
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_b .. :try_end_31} :catch_32

    .line 3684
    :cond_31
    return-object v1

    .line 3685
    .end local v1    # "string":Ljava/lang/String;
    :catch_32
    move-exception v1

    .line 3686
    .local v1, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get destination string from transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3690
    invoke-virtual {v1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3688
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3686
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .registers 4
    .param p1, "operationType"    # I

    .line 4101
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRules(Landroid/content/pm/PackageManager;II)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v0

    return-object v0
.end method

.method public getExcludedRestoreKeys(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/UserBackupPreferences;->getExcludedRestoreKeysForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getJournal()Lcom/android/server/backup/DataChangedJournal;
    .registers 2

    .line 837
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    return-object v0
.end method

.method public getOperationStorage()Lcom/android/server/backup/OperationStorage;
    .registers 2

    .line 733
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    return-object v0
.end method

.method getOperationTypeFromTransport(Lcom/android/server/backup/transport/TransportConnection;)I
    .registers 7
    .param p1, "transportConnection"    # Lcom/android/server/backup/transport/TransportConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotAvailableException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4247
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->shouldUseNewBackupEligibilityRules()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 4249
    return v1

    .line 4252
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4254
    .local v2, "oldCallingId":J
    :try_start_c
    const-string v0, "BMS.getOperationTypeFromTransport"

    invoke-virtual {p1, v0}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 4256
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getTransportFlags()I

    move-result v4
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_24

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1f

    .line 4257
    const/4 v1, 0x1

    .line 4262
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4257
    return v1

    .line 4259
    :cond_1f
    nop

    .line 4262
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4259
    return v1

    .line 4262
    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :catchall_24
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4263
    throw v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 708
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public getPackageManagerBinder()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 712
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method getPackageTrackingReceiver()Landroid/content/BroadcastReceiver;
    .registers 2

    .line 832
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public getPendingBackups()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/keyvalue/BackupRequest;",
            ">;"
        }
    .end annotation

    .line 775
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPendingInits()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPendingRestores()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;",
            ">;"
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    return-object v0
.end method

.method public getQueueLock()Ljava/lang/Object;
    .registers 2

    .line 779
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method getRequestBackupParams([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ILcom/android/server/backup/utils/BackupEligibilityRules;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/BackupParams;
    .registers 27
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p4, "flags"    # I
    .param p5, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;
    .param p6, "transportConnection"    # Lcom/android/server/backup/transport/TransportConnection;
    .param p7, "transportDirName"    # Ljava/lang/String;
    .param p8, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 1924
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 1925
    .local v13, "fullBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 1926
    .local v11, "kvBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_17
    if-ge v5, v3, :cond_5a

    aget-object v6, v2, v5

    .line 1927
    .local v6, "packageName":Ljava/lang/String;
    const-string v0, "@pm@"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1928
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1929
    goto :goto_57

    .line 1932
    :cond_27
    :try_start_27
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v7, 0x8000000

    iget v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1934
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v15, v7}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-nez v7, :cond_3f

    .line 1935
    const/16 v7, -0x7d1

    invoke-static {v14, v6, v7}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1937
    goto :goto_57

    .line 1939
    :cond_3f
    invoke-virtual {v15, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 1940
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 1942
    :cond_4b
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_50} :catch_51

    .line 1947
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_50
    goto :goto_57

    .line 1944
    :catch_51
    move-exception v0

    .line 1945
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v7, -0x7d2

    invoke-static {v14, v6, v7}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1926
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "packageName":Ljava/lang/String;
    :goto_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 1950
    :cond_5a
    const/16 v0, 0xb0c

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    .line 1951
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    .line 1950
    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1952
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_c4

    .line 1953
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup requested for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " packages, of them: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1960
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " full backups, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1962
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " k/v backups"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1955
    invoke-static {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1953
    const-string v3, "BackupManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :cond_c4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v12, v6

    goto :goto_cb

    :cond_ca
    move v12, v4

    .line 1968
    .local v12, "nonIncrementalBackup":Z
    :goto_cb
    new-instance v0, Lcom/android/server/backup/params/BackupParams;

    const/16 v16, 0x1

    move-object v3, v0

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object v6, v11

    move-object v7, v13

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p8

    move-object/from16 v17, v11

    .end local v11    # "kvBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v17, "kvBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v11, v16

    move-object/from16 v16, v13

    .end local v13    # "fullBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v16, "fullBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v13, p5

    invoke-direct/range {v3 .. v13}, Lcom/android/server/backup/params/BackupParams;-><init>(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    return-object v0
.end method

.method public getRng()Ljava/security/SecureRandom;
    .registers 2

    .line 845
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getRunInitIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 771
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method getThreadForAsyncOperation(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .param p1, "operationName"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/Runnable;

    .line 3820
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTransportManager()Lcom/android/server/backup/TransportManager;
    .registers 2

    .line 729
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .line 692
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    return v0
.end method

.method public getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    .registers 2

    .line 753
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    return-object v0
.end method

.method public handleCancel(IZ)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "cancelAll"    # Z

    .line 2065
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    new-instance v1, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->cancelOperation(IZLjava/util/function/IntConsumer;)V

    .line 2070
    return-void
.end method

.method public hasBackupPassword()Z
    .registers 2

    .line 1179
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupPasswordManager;->hasBackupPassword()Z

    move-result v0

    return v0
.end method

.method initializeBackupEnableState()V
    .registers 3

    .line 675
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->readEnabledState()Z

    move-result v0

    .line 677
    .local v0, "isEnabled":Z
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->setBackupEnabled(ZZ)V

    .line 678
    return-void
.end method

.method public initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .registers 8
    .param p1, "transportNames"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;

    .line 2601
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "initializeTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initializeTransport(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2606
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2605
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2603
    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2610
    .local v0, "oldId":J
    :try_start_31
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 2611
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 2612
    .local v2, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v4, Lcom/android/server/backup/internal/PerformInitializeTask;

    invoke-direct {v4, p0, p1, p2, v2}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_45
    .catchall {:try_start_31 .. :try_end_45} :catchall_4b

    .line 2615
    nop

    .end local v2    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2616
    nop

    .line 2617
    return-void

    .line 2615
    :catchall_4b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2616
    throw v2
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4053
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "isAppEligibleForBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4056
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4058
    .local v0, "oldToken":J
    :try_start_e
    const-string v2, "BMS.isAppEligibleForBackup"

    .line 4059
    .local v2, "callerLogString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 4060
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v3

    .line 4061
    .local v3, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 4062
    invoke-virtual {v4, v3, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)Z

    move-result v4

    .line 4064
    .local v4, "eligible":Z
    if-eqz v3, :cond_23

    .line 4065
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_28

    .line 4067
    :cond_23
    nop

    .line 4069
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4067
    return v4

    .line 4069
    .end local v2    # "callerLogString":Ljava/lang/String;
    .end local v3    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .end local v4    # "eligible":Z
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4070
    throw v2
.end method

.method public isBackupEnabled()Z
    .registers 4

    .line 3336
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3338
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    return v0
.end method

.method public isBackupOperationInProgress()Z
    .registers 2

    .line 2074
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    invoke-virtual {v0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->isBackupOperationInProgress()Z

    move-result v0

    return v0
.end method

.method public isBackupRunning()Z
    .registers 2

    .line 783
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 737
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    return v0
.end method

.method public isRestoreInProgress()Z
    .registers 2

    .line 803
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mIsRestoreInProgress:Z

    return v0
.end method

.method public isSetupComplete()Z
    .registers 2

    .line 745
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    return v0
.end method

.method synthetic lambda$agentDisconnected$9$com-android-server-backup-UserBackupManagerService(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3803
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->operationTokensForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3804
    .local v1, "token":I
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_3a

    .line 3805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agentDisconnected: will handleCancel(all) for token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3806
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3805
    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    :cond_3a
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(IZ)V

    .line 3809
    .end local v1    # "token":I
    goto :goto_a

    .line 3810
    :cond_3f
    return-void
.end method

.method synthetic lambda$clearBackupData$6$com-android-server-backup-UserBackupManagerService(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 4
    .param p1, "transportConnection"    # Lcom/android/server/backup/transport/TransportConnection;
    .param p2, "caller"    # Ljava/lang/String;

    .line 2739
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 2740
    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 2739
    return-void
.end method

.method synthetic lambda$handleCancel$4$com-android-server-backup-UserBackupManagerService(I)V
    .registers 4
    .param p1, "operationType"    # I

    .line 2066
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 2067
    :cond_5
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 2069
    :cond_e
    return-void
.end method

.method synthetic lambda$initializeTransports$5$com-android-server-backup-UserBackupManagerService(Ljava/lang/String;)V
    .registers 3
    .param p1, "caller"    # Ljava/lang/String;

    .line 2611
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    return-void
.end method

.method synthetic lambda$opComplete$11$com-android-server-backup-UserBackupManagerService(JLcom/android/server/backup/BackupRestoreTask;)V
    .registers 7
    .param p1, "result"    # J
    .param p3, "callback"    # Lcom/android/server/backup/BackupRestoreTask;

    .line 4045
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 4046
    .local v0, "callbackAndResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4047
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4048
    return-void
.end method

.method synthetic lambda$parseLeftoverJournals$0$com-android-server-backup-UserBackupManagerService(Ljava/util/Set;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageNames"    # Ljava/util/Set;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1143
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1144
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1146
    :cond_9
    return-void
.end method

.method synthetic lambda$requestBackup$1$com-android-server-backup-UserBackupManagerService(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 4
    .param p1, "transportConnection"    # Lcom/android/server/backup/transport/TransportConnection;
    .param p2, "caller"    # Ljava/lang/String;

    .line 1908
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$restoreAtInstall$10$com-android-server-backup-UserBackupManagerService(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 4
    .param p1, "transportConnection"    # Lcom/android/server/backup/transport/TransportConnection;
    .param p2, "caller"    # Ljava/lang/String;

    .line 3885
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 3886
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 3887
    return-void
.end method

.method synthetic lambda$selectBackupTransportAsync$8$com-android-server-backup-UserBackupManagerService(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 9
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "listener"    # Landroid/app/backup/ISelectBackupTransportCallback;

    .line 3523
    const/4 v0, 0x0

    .line 3524
    .local v0, "transportName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3525
    invoke-virtual {v1, p1}, Lcom/android/server/backup/TransportManager;->registerAndSelectTransport(Landroid/content/ComponentName;)I

    move-result v1

    .line 3526
    .local v1, "result":I
    const-string v2, "BackupManagerService"

    if-nez v1, :cond_23

    .line 3528
    :try_start_b
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3529
    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 3530
    invoke-direct {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->updateStateForTransport(Ljava/lang/String;)V
    :try_end_15
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_b .. :try_end_15} :catch_16

    .line 3537
    goto :goto_23

    .line 3531
    :catch_16
    move-exception v3

    .line 3532
    .local v3, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3534
    const-string v5, "Transport got unregistered"

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3532
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    const/4 v1, -0x1

    .line 3541
    .end local v3    # "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    :cond_23
    :goto_23
    if-eqz v0, :cond_29

    .line 3542
    :try_start_25
    invoke-interface {p2, v0}, Landroid/app/backup/ISelectBackupTransportCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_2c

    .line 3544
    :cond_29
    invoke-interface {p2, v1}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2c} :catch_2d

    .line 3553
    :goto_2c
    goto :goto_39

    .line 3546
    :catch_2d
    move-exception v3

    .line 3547
    .local v3, "e":Landroid/os/RemoteException;
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3549
    const-string v5, "ISelectBackupTransportCallback listener not available"

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3547
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_39
    return-void
.end method

.method synthetic lambda$updateStateOnBackupEnabled$7$com-android-server-backup-UserBackupManagerService(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .param p1, "transportNames"    # Ljava/util/List;
    .param p2, "transportDirNames"    # Ljava/util/List;
    .param p3, "name"    # Ljava/lang/String;

    .line 3277
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p3}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_6} :catch_e

    .line 3286
    .local v0, "dirName":Ljava/lang/String;
    nop

    .line 3287
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3288
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3289
    return-void

    .line 3278
    .end local v0    # "dirName":Ljava/lang/String;
    :catch_e
    move-exception v0

    .line 3280
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3282
    const-string v2, "Unexpected unregistered transport"

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3280
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3285
    return-void
.end method

.method synthetic lambda$waitUntilOperationComplete$3$com-android-server-backup-UserBackupManagerService(I)V
    .registers 4
    .param p1, "operationType"    # I

    .line 2056
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 2057
    return-void
.end method

.method public listAllTransportComponents()[Landroid/content/ComponentName;
    .registers 4

    .line 3383
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "listAllTransportComponents"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3385
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponents()[Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 4

    .line 3375
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "listAllTransports"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3378
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logBackupComplete(Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1579
    const-string v0, "@pm@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1581
    :cond_9
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getBackupFinishedNotificationReceivers()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_3c

    aget-object v3, v0, v2

    .line 1582
    .local v3, "receiver":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1583
    .local v4, "notification":Landroid/content/Intent;
    const-string v5, "android.intent.action.BACKUP_FINISHED"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1584
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1585
    const v5, 0x10000020

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1587
    const-string/jumbo v5, "packageName"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1588
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1581
    .end local v3    # "receiver":Ljava/lang/String;
    .end local v4    # "notification":Landroid/content/Intent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1591
    :cond_3c
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/ProcessedPackagesJournal;->addPackage(Ljava/lang/String;)V

    .line 1592
    return-void
.end method

.method public makeMetadataAgent()Landroid/app/backup/BackupAgent;
    .registers 2

    .line 899
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->makeMetadataAgentWithEligibilityRules(Lcom/android/server/backup/utils/BackupEligibilityRules;)Landroid/app/backup/BackupAgent;

    move-result-object v0

    return-object v0
.end method

.method public makeMetadataAgent(Ljava/util/List;)Lcom/android/server/backup/PackageManagerBackupAgent;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Lcom/android/server/backup/PackageManagerBackupAgent;"
        }
    .end annotation

    .line 915
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;I)V

    .line 917
    .local v0, "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->attach(Landroid/content/Context;)V

    .line 918
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->onCreate(Landroid/os/UserHandle;)V

    .line 919
    return-object v0
.end method

.method public makeMetadataAgentWithEligibilityRules(Lcom/android/server/backup/utils/BackupEligibilityRules;)Landroid/app/backup/BackupAgent;
    .registers 5
    .param p1, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 904
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 906
    .local v0, "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->attach(Landroid/content/Context;)V

    .line 907
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->onCreate(Landroid/os/UserHandle;)V

    .line 908
    return-object v0
.end method

.method public opComplete(IJ)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "result"    # J

    .line 4044
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    new-instance v1, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/backup/UserBackupManagerService;J)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->onOperationComplete(IJLjava/util/function/Consumer;)V

    .line 4049
    return-void
.end method

.method public prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "interval"    # J
    .param p4, "callback"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p5, "operationType"    # I

    .line 2001
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    invoke-interface {v0, v1}, Lcom/android/server/backup/BackupManagerServiceStub;->isCanceling(I)Z

    move-result v0

    const-string v1, "BackupManagerService"

    if-eqz v0, :cond_15

    .line 2002
    const-string/jumbo v0, "prepareOperationTimeout() doesn\'t support operation, isCanceling !"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    return-void

    .line 2006
    :cond_15
    if-eqz p5, :cond_46

    const/4 v0, 0x1

    if-eq p5, v0, :cond_46

    .line 2007
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareOperationTimeout() doesn\'t support operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2012
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2009
    invoke-static {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2007
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    return-void

    .line 2017
    :cond_46
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_7f

    .line 2018
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "starting timeout: token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2023
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2020
    invoke-static {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2018
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    :cond_7f
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p4, p5}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->registerOperation(IILcom/android/server/backup/BackupRestoreTask;I)V

    .line 2031
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {p0, p5}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    move-result v2

    invoke-virtual {v0, v2, p1, v1, p4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2033
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2034
    return-void
.end method

.method public randomBytes(I)[B
    .registers 4
    .param p1, "bits"    # I

    .line 1167
    div-int/lit8 v0, p1, 0x8

    new-array v0, v0, [B

    .line 1168
    .local v0, "array":[B
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1169
    return-object v0
.end method

.method readEnabledState()Z
    .registers 2

    .line 3312
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->readBackupEnableState(I)Z

    move-result v0

    return v0
.end method

.method public recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "isPending"    # Z
    .param p2, "transportName"    # Ljava/lang/String;
    .param p3, "transportDirName"    # Ljava/lang/String;

    .line 1193
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1194
    :try_start_3
    sget-boolean v1, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v1, :cond_30

    .line 1195
    const-string v1, "BackupManagerService"

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recordInitPending("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") on transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1197
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1195
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_30
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v1, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1206
    .local v1, "stateDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "_need_init_"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1208
    .local v2, "initPendingFile":Ljava/io/File;
    if-eqz p1, :cond_50

    .line 1212
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_5a

    .line 1214
    :try_start_45
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4d} :catch_4e
    .catchall {:try_start_45 .. :try_end_4d} :catchall_5a

    goto :goto_4f

    .line 1215
    :catch_4e
    move-exception v3

    .line 1217
    :goto_4f
    goto :goto_58

    .line 1220
    :cond_50
    :try_start_50
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1221
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1223
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "initPendingFile":Ljava/io/File;
    :goto_58
    monitor-exit v0

    .line 1224
    return-void

    .line 1223
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_50 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;I)I
    .registers 5
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p3, "flags"    # I

    .line 1851
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/backup/UserBackupManagerService;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 21
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p4, "flags"    # I

    .line 1860
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    iget-object v0, v10, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "requestBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    const-string v0, "BackupManagerService"

    const/4 v1, 0x1

    const/16 v2, -0x3e8

    const/4 v3, 0x0

    if-eqz v11, :cond_b3

    array-length v4, v11

    if-lt v4, v1, :cond_b3

    .line 1871
    iget-boolean v4, v10, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    if-eqz v4, :cond_74

    iget-boolean v4, v10, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v4, :cond_26

    goto :goto_74

    .line 1892
    :cond_26
    :try_start_26
    iget-object v0, v10, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 1894
    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v4

    .line 1893
    invoke-virtual {v0, v4}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1895
    .local v8, "transportDirName":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v4, "BMS.requestBackup()"

    .line 1896
    invoke-virtual {v0, v4}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClientOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v0

    .line 1897
    .local v0, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    invoke-virtual {v10, v0}, Lcom/android/server/backup/UserBackupManagerService;->getOperationTypeFromTransport(Lcom/android/server/backup/transport/TransportConnection;)I

    move-result v1
    :try_end_3c
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_26 .. :try_end_3c} :catch_69
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_26 .. :try_end_3c} :catch_69
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_3c} :catch_69

    move v14, v1

    .line 1905
    .local v14, "operationType":I
    nop

    .line 1907
    new-instance v9, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v9, v10, v0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;)V

    .line 1909
    .local v9, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    invoke-virtual {v10, v14}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v15

    .line 1912
    .local v15, "backupEligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    iget-object v1, v10, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1913
    .local v7, "msg":Landroid/os/Message;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v15

    move-object v11, v7

    .end local v7    # "msg":Landroid/os/Message;
    .local v11, "msg":Landroid/os/Message;
    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/backup/UserBackupManagerService;->getRequestBackupParams([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ILcom/android/server/backup/utils/BackupEligibilityRules;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/BackupParams;

    move-result-object v1

    iput-object v1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1915
    iget-object v1, v10, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v1, v11}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1916
    const/4 v1, 0x0

    return v1

    .line 1898
    .end local v0    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .end local v8    # "transportDirName":Ljava/lang/String;
    .end local v9    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .end local v11    # "msg":Landroid/os/Message;
    .end local v14    # "operationType":I
    .end local v15    # "backupEligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    :catch_69
    move-exception v0

    .line 1900
    .local v0, "e":Landroid/util/AndroidException;
    invoke-static {v12, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1901
    const/16 v4, 0x32

    invoke-static {v13, v4, v3, v1, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    .line 1904
    .end local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v1, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    return v2

    .line 1872
    .end local v0    # "e":Landroid/util/AndroidException;
    .end local v1    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_74
    :goto_74
    iget v1, v10, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup requested but enabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, v10, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " setupComplete="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, v10, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1874
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1872
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    const/16 v0, -0x7d1

    invoke-static {v12, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1880
    iget-boolean v1, v10, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz v1, :cond_aa

    .line 1881
    const/16 v1, 0xd

    goto :goto_ac

    .line 1882
    :cond_aa
    const/16 v1, 0xe

    :goto_ac
    nop

    .line 1883
    .local v1, "logTag":I
    const/4 v2, 0x3

    invoke-static {v13, v1, v3, v2, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    .line 1885
    .end local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    return v0

    .line 1863
    .end local v1    # "logTag":I
    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_b3
    iget v4, v10, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "No packages named for backup request"

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    invoke-static {v12, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1865
    const/16 v0, 0x31

    invoke-static {v13, v0, v3, v1, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    .line 1868
    .end local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v0, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No packages are provided for backup"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetBackupState(Ljava/io/File;)V
    .registers 9
    .param p1, "stateFileDir"    # Ljava/io/File;

    .line 1231
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1232
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v1}, Lcom/android/server/backup/ProcessedPackagesJournal;->reset()V

    .line 1234
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 1235
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V

    .line 1238
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_2b

    aget-object v4, v1, v3

    .line 1240
    .local v4, "sf":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_need_init_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 1241
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1238
    .end local v4    # "sf":Ljava/io/File;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1244
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_5e

    .line 1247
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1248
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1249
    .local v0, "numParticipants":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36
    if-ge v2, v0, :cond_59

    .line 1250
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1251
    .local v3, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v3, :cond_56

    .line 1252
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1253
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1254
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_46

    .line 1249
    .end local v3    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 1257
    .end local v0    # "numParticipants":I
    .end local v2    # "i":I
    :cond_59
    monitor-exit v1

    .line 1258
    return-void

    .line 1257
    :catchall_5b
    move-exception v0

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_2f .. :try_end_5d} :catchall_5b

    throw v0

    .line 1244
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I

    .line 3828
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v12, "BackupManagerService"

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_35

    .line 3829
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3834
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attemping install-time restore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3831
    invoke-static {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3829
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    return-void

    .line 3839
    :cond_35
    const/4 v0, 0x0

    .line 3841
    .local v0, "skip":Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v13

    .line 3843
    .local v13, "restoreSet":J
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreAtInstall pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3850
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " restoreSet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3852
    invoke-static {v13, v14}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3845
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3843
    invoke-static {v12, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3854
    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-nez v2, :cond_89

    .line 3855
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_88

    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "No restore set"

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    :cond_88
    const/4 v0, 0x1

    .line 3859
    :cond_89
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3860
    const-string v15, "BMS.restoreAtInstall()"

    invoke-virtual {v2, v15}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v10

    .line 3861
    .local v10, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    if-nez v10, :cond_9f

    .line 3862
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "No transport client"

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    const/4 v0, 0x1

    .line 3866
    :cond_9f
    iget-boolean v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    if-nez v2, :cond_c5

    .line 3868
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-restorable state: auto="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3870
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3868
    invoke-static {v12, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_c7

    .line 3866
    :cond_c5
    move/from16 v16, v0

    .line 3876
    .end local v0    # "skip":Z
    .local v16, "skip":Z
    :goto_c7
    if-nez v16, :cond_141

    .line 3882
    :try_start_c9
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 3884
    new-instance v9, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v9, v1, v10}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;)V

    .line 3889
    .local v9, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d5} :catch_11c

    if-eqz v0, :cond_f7

    .line 3890
    :try_start_d7
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore at install of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3892
    invoke-static {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3890
    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_f3} :catch_f4

    goto :goto_f7

    .line 3906
    .end local v9    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    :catch_f4
    move-exception v0

    move-object v11, v10

    goto :goto_11e

    .line 3894
    .restart local v9    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    :cond_f7
    :goto_f7
    :try_start_f7
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3895
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3904
    invoke-direct {v1, v13, v14}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForRestoreAtInstall(J)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v17
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_104} :catch_11c

    .line 3896
    move-object v2, v10

    move-wide v5, v13

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object v11, v10

    .end local v10    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .local v11, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    move-object/from16 v10, v17

    :try_start_10d
    invoke-static/range {v2 .. v10}, Lcom/android/server/backup/params/RestoreParams;->createForRestoreAtInstall(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLjava/lang/String;ILcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3905
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_118} :catch_11a

    .line 3913
    nop

    .end local v0    # "msg":Landroid/os/Message;
    .end local v9    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    goto :goto_142

    .line 3906
    :catch_11a
    move-exception v0

    goto :goto_11e

    .end local v11    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .restart local v10    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    :catch_11c
    move-exception v0

    move-object v11, v10

    .line 3908
    .end local v10    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v11    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    :goto_11e
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to contact transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3911
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3910
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3908
    invoke-static {v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3912
    const/16 v16, 0x1

    goto :goto_142

    .line 3876
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .restart local v10    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    :cond_141
    move-object v11, v10

    .line 3916
    .end local v10    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .restart local v11    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    :goto_142
    if-eqz v16, :cond_165

    .line 3919
    if-eqz v11, :cond_14b

    .line 3920
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, v11, v15}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 3925
    :cond_14b
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "Finishing install immediately"

    invoke-static {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    :try_start_156
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;
    :try_end_158
    .catch Landroid/os/RemoteException; {:try_start_156 .. :try_end_158} :catch_161

    const/4 v2, 0x0

    move/from16 v3, p2

    :try_start_15b
    invoke-interface {v0, v3, v2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_15e
    .catch Landroid/os/RemoteException; {:try_start_15b .. :try_end_15e} :catch_15f

    goto :goto_164

    .line 3928
    :catch_15f
    move-exception v0

    goto :goto_164

    :catch_161
    move-exception v0

    move/from16 v3, p2

    :goto_164
    goto :goto_167

    .line 3916
    :cond_165
    move/from16 v3, p2

    .line 3930
    :goto_167
    return-void
.end method

.method public restoreWidgetData(Ljava/lang/String;[B)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "widgetData"    # [B

    .line 2481
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_11

    .line 2482
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v1, "Incorporating restored widget data"

    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    :cond_11
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {p1, p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 2485
    return-void
.end method

.method public scheduleNextFullBackupJob(J)V
    .registers 21
    .param p1, "transportMinLatency"    # J

    .line 2120
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2121
    :try_start_5
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3e

    .line 2125
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-wide v3, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    .line 2126
    .local v3, "upcomingLastBackup":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 2127
    .local v5, "timeSinceLast":J
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupIntervalMilliseconds()J

    move-result-wide v7
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_4f

    .line 2128
    .local v7, "interval":J
    cmp-long v0, v5, v7

    if-gez v0, :cond_2a

    sub-long v9, v7, v5

    goto :goto_2c

    :cond_2a
    const-wide/16 v9, 0x0

    .line 2129
    .local v9, "appLatency":J
    :goto_2c
    move-wide/from16 v11, p1

    :try_start_2e
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 2130
    .local v13, "latency":J
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v15, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v16, v3

    .end local v3    # "upcomingLastBackup":J
    .local v16, "upcomingLastBackup":J
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v0, v15, v13, v14, v3}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 2131
    .end local v5    # "timeSinceLast":J
    .end local v7    # "interval":J
    .end local v9    # "appLatency":J
    .end local v13    # "latency":J
    .end local v16    # "upcomingLastBackup":J
    goto :goto_4d

    .line 2133
    :cond_3e
    move-wide/from16 v11, p1

    const-string v0, "BackupManagerService"

    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "Full backup queue empty; not scheduling"

    .line 2135
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2133
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    :goto_4d
    monitor-exit v2

    .line 2140
    return-void

    .line 2139
    :catchall_4f
    move-exception v0

    move-wide/from16 v11, p1

    :goto_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_2e .. :try_end_53} :catchall_54

    throw v0

    :catchall_54
    move-exception v0

    goto :goto_52
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3483
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "selectBackupTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3486
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3488
    .local v0, "oldId":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3489
    .local v2, "previousTransportName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->updateStateForTransport(Ljava/lang/String;)V

    .line 3490
    const-string v3, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selectBackupTransport(transport = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): previous transport = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3492
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3490
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_e .. :try_end_40} :catchall_45

    .line 3498
    nop

    .line 3500
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3498
    return-object v2

    .line 3500
    .end local v2    # "previousTransportName":Ljava/lang/String;
    :catchall_45
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3501
    throw v2
.end method

.method public selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 10
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "listener"    # Landroid/app/backup/ISelectBackupTransportCallback;

    .line 3510
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "selectBackupTransportAsync"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3513
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3515
    .local v0, "oldId":J
    :try_start_e
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 3516
    .local v2, "transportString":Ljava/lang/String;
    const-string v3, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selectBackupTransportAsync(transport = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3518
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3516
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v4, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_47

    .line 3556
    nop

    .end local v2    # "transportString":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3557
    nop

    .line 3558
    return-void

    .line 3556
    :catchall_47
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3557
    throw v2
.end method

.method public setAncestralOperationType(I)V
    .registers 4
    .param p1, "operationType"    # I

    .line 857
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralOperationType:J

    .line 858
    return-void
.end method

.method public setAncestralPackages(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 849
    .local p1, "ancestralPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 850
    return-void
.end method

.method public setAncestralSerialNumber(J)V
    .registers 7
    .param p1, "ancestralSerialNumber"    # J

    .line 2623
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setAncestralSerialNumber"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting ancestral work profile id to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2627
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2625
    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    :try_start_28
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 2631
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->getAncestralSerialNumberFile()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "rwd"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_34} :catch_45

    .line 2632
    .local v0, "af":Ljava/io/RandomAccessFile;
    :try_start_34
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3b

    .line 2633
    :try_start_37
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_45

    .line 2639
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    goto :goto_51

    .line 2630
    .restart local v0    # "af":Ljava/io/RandomAccessFile;
    :catchall_3b
    move-exception v2

    :try_start_3c
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v3

    :try_start_41
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "ancestralSerialNumber":J
    :goto_44
    throw v2
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_45} :catch_45

    .line 2633
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "ancestralSerialNumber":J
    :catch_45
    move-exception v0

    .line 2634
    .local v0, "e":Ljava/io/IOException;
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 2636
    const-string v3, "Unable to write to work profile serial mapping file:"

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2634
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2640
    .end local v0    # "e":Ljava/io/IOException;
    :goto_51
    return-void
.end method

.method setAncestralSerialNumberFile(Ljava/io/File;)V
    .registers 2
    .param p1, "ancestralSerialNumberFile"    # Ljava/io/File;

    .line 2673
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    .line 2674
    return-void
.end method

.method public setAncestralToken(J)V
    .registers 3
    .param p1, "ancestralToken"    # J

    .line 853
    iput-wide p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 854
    return-void
.end method

.method public setAutoRestore(Z)V
    .registers 8
    .param p1, "doAutoRestore"    # Z

    .line 3317
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setAutoRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3320
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto restore => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3324
    .local v0, "oldId":J
    :try_start_2c
    monitor-enter p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_4a

    .line 3325
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_auto_restore"

    .line 3326
    if-eqz p1, :cond_39

    const/4 v4, 0x1

    goto :goto_3a

    :cond_39
    const/4 v4, 0x0

    :goto_3a
    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3325
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3327
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    .line 3328
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_47

    .line 3330
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3331
    nop

    .line 3332
    return-void

    .line 3328
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    .end local v0    # "oldId":J
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "doAutoRestore":Z
    :try_start_49
    throw v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    .line 3330
    .restart local v0    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "doAutoRestore":Z
    :catchall_4a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3331
    throw v2
.end method

.method public setBackupEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 3225
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->setBackupEnabled(ZZ)V

    .line 3226
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    .line 1174
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupPasswordManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBackupRunning(Z)V
    .registers 2
    .param p1, "backupRunning"    # Z

    .line 787
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    .line 788
    return-void
.end method

.method public setClearingData(Z)V
    .registers 2
    .param p1, "clearingData"    # Z

    .line 799
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    .line 800
    return-void
.end method

.method public setCurrentToken(J)V
    .registers 3
    .param p1, "currentToken"    # J

    .line 865
    iput-wide p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 866
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 741
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 742
    return-void
.end method

.method public setJournal(Lcom/android/server/backup/DataChangedJournal;)V
    .registers 2
    .param p1, "journal"    # Lcom/android/server/backup/DataChangedJournal;

    .line 841
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 842
    return-void
.end method

.method public setLastBackupPass(J)V
    .registers 3
    .param p1, "lastBackupPass"    # J

    .line 791
    iput-wide p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mLastBackupPass:J

    .line 792
    return-void
.end method

.method setPowerManager(Landroid/os/PowerManager;)V
    .registers 2
    .param p1, "powerManager"    # Landroid/os/PowerManager;

    .line 725
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 726
    return-void
.end method

.method public setRestoreInProgress(Z)V
    .registers 2
    .param p1, "restoreInProgress"    # Z

    .line 807
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mIsRestoreInProgress:Z

    .line 808
    return-void
.end method

.method public setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V
    .registers 2
    .param p1, "runningFullBackupTask"    # Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 879
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 880
    return-void
.end method

.method public setSetupComplete(Z)V
    .registers 2
    .param p1, "setupComplete"    # Z

    .line 749
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 750
    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 763
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->-$$Nest$fgetmPowerManagerWakeLock(Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 764
    return-void
.end method

.method public shouldSkipPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3591
    const-string v0, "com.android.wallpaperbackup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shouldSkipUserFacingData()Z
    .registers 4

    .line 3585
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "backup_skip_user_facing_packages"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method

.method shouldUseNewBackupEligibilityRules()Z
    .registers 3

    .line 4268
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "settings_use_new_backup_eligibility_rules"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .registers 5
    .param p1, "params"    # Lcom/android/server/backup/params/AdbParams;

    .line 3142
    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 3143
    :try_start_3
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3144
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3145
    monitor-exit v0

    .line 3146
    return-void

    .line 3145
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 2079
    const-string v0, "BackupManagerService"

    if-nez p1, :cond_5

    .line 2081
    return-void

    .line 2086
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 2091
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v1

    if-nez v1, :cond_67

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.backupconfirm"

    .line 2092
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 2094
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCallerFd:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/backup/BackupManagerServiceStub;->isNeedBeKilled(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 2095
    sget-boolean v1, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v1, :cond_5d

    .line 2096
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "Killing agent host process"

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Killing processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    :cond_5d
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V

    goto :goto_89

    .line 2102
    :cond_67
    sget-boolean v1, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v1, :cond_89

    .line 2103
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not killing after operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2105
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2103
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_89} :catch_8a

    .line 2111
    :cond_89
    :goto_89
    goto :goto_96

    .line 2109
    :catch_8a
    move-exception v1

    .line 2110
    .local v1, "e":Landroid/os/RemoteException;
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Lost app trying to shut down"

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_96
    return-void
.end method

.method protected tearDownService()V
    .registers 3

    .line 683
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->stop()V

    .line 684
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->stop()V

    .line 685
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 686
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 687
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 688
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v0}, Lcom/android/server/backup/internal/BackupHandler;->stop()V

    .line 689
    return-void
.end method

.method public unbindAgent(Landroid/content/pm/ApplicationInfo;)V
    .registers 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 1692
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1695
    goto :goto_7

    .line 1693
    :catch_6
    move-exception v0

    .line 1696
    :goto_7
    return-void
.end method

.method updateStateOnBackupEnabled(ZZ)V
    .registers 11
    .param p1, "wasEnabled"    # Z
    .param p2, "enable"    # Z

    .line 3252
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3253
    if-eqz p2, :cond_1a

    if-nez p1, :cond_1a

    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz v1, :cond_1a

    .line 3255
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v1, v2, v3}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    .line 3256
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_75

    .line 3257
    :cond_1a
    if-nez p2, :cond_75

    .line 3259
    sget-boolean v1, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v1, :cond_2d

    .line 3260
    const-string v1, "BackupManagerService"

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Opting out of backup"

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    :cond_2d
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V

    .line 3268
    if-eqz p1, :cond_75

    iget-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz v1, :cond_75

    .line 3271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3272
    .local v1, "transportNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3273
    .local v2, "transportDirNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    new-instance v4, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/android/server/backup/TransportManager;->forEachRegisteredTransport(Ljava/util/function/Consumer;)V

    .line 3292
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_69

    .line 3293
    nop

    .line 3295
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3296
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3293
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    .line 3292
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 3298
    .end local v3    # "i":I
    :cond_69
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3302
    .end local v1    # "transportNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "transportDirNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_75
    :goto_75
    monitor-exit v0

    .line 3303
    return-void

    .line 3302
    :catchall_77
    move-exception v1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_7 .. :try_end_79} :catchall_77

    throw v1
.end method

.method updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 23
    .param p1, "callingUid"    # I
    .param p2, "transportComponent"    # Landroid/content/ComponentName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "configurationIntent"    # Landroid/content/Intent;
    .param p5, "currentDestinationString"    # Ljava/lang/String;
    .param p6, "dataManagementIntent"    # Landroid/content/Intent;
    .param p7, "dataManagementLabel"    # Ljava/lang/CharSequence;

    .line 3438
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string/jumbo v3, "updateTransportAttributes"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3441
    const-string/jumbo v0, "transportComponent can\'t be null"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3442
    const-string/jumbo v0, "name can\'t be null"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3443
    const-string v0, "currentDestinationString can\'t be null"

    move-object/from16 v11, p5

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3445
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p6, :cond_28

    move v3, v0

    goto :goto_29

    :cond_28
    move v3, v2

    :goto_29
    if-nez p7, :cond_2d

    move v4, v0

    goto :goto_2e

    :cond_2d
    move v4, v2

    :goto_2e
    if-ne v3, v4, :cond_31

    goto :goto_32

    :cond_31
    move v0, v2

    :goto_32
    const-string v3, "dataManagementLabel should be null iff dataManagementIntent is null"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3450
    :try_start_37
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 3451
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3452
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_47} :catch_75

    .line 3453
    .local v0, "transportUid":I
    move/from16 v12, p1

    if-ne v12, v0, :cond_6b

    .line 3458
    .end local v0    # "transportUid":I
    nop

    .line 3460
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 3462
    .local v13, "oldId":J
    :try_start_50
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/backup/TransportManager;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    :try_end_61
    .catchall {:try_start_50 .. :try_end_61} :catchall_66

    .line 3470
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3471
    nop

    .line 3472
    return-void

    .line 3470
    :catchall_66
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3471
    throw v0

    .line 3454
    .end local v13    # "oldId":J
    .restart local v0    # "transportUid":I
    :cond_6b
    :try_start_6b
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only the transport can change its description"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "callingUid":I
    .end local p2    # "transportComponent":Landroid/content/ComponentName;
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "configurationIntent":Landroid/content/Intent;
    .end local p5    # "currentDestinationString":Ljava/lang/String;
    .end local p6    # "dataManagementIntent":Landroid/content/Intent;
    .end local p7    # "dataManagementLabel":Ljava/lang/CharSequence;
    throw v2
    :try_end_73
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6b .. :try_end_73} :catch_73

    .line 3456
    .end local v0    # "transportUid":I
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "callingUid":I
    .restart local p2    # "transportComponent":Landroid/content/ComponentName;
    .restart local p3    # "name":Ljava/lang/String;
    .restart local p4    # "configurationIntent":Landroid/content/Intent;
    .restart local p5    # "currentDestinationString":Ljava/lang/String;
    .restart local p6    # "dataManagementIntent":Landroid/content/Intent;
    .restart local p7    # "dataManagementLabel":Ljava/lang/CharSequence;
    :catch_73
    move-exception v0

    goto :goto_78

    :catch_75
    move-exception v0

    move/from16 v12, p1

    .line 3457
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_78
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Transport package not found"

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 15
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "configurationIntent"    # Landroid/content/Intent;
    .param p4, "currentDestinationString"    # Ljava/lang/String;
    .param p5, "dataManagementIntent"    # Landroid/content/Intent;
    .param p6, "dataManagementLabel"    # Ljava/lang/CharSequence;

    .line 3419
    nop

    .line 3420
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3419
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 3427
    return-void
.end method

.method public waitUntilOperationComplete(I)Z
    .registers 4
    .param p1, "token"    # I

    .line 2055
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    new-instance v1, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->waitUntilOperationComplete(ILjava/util/function/IntConsumer;)Z

    move-result v0

    return v0
.end method

.method writeEnabledState(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 3307
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v0, p1}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->writeBackupEnableState(IZ)V

    .line 3308
    return-void
.end method

.method public writeRestoreTokens()V
    .registers 8

    .line 1599
    const-string v0, "BackupManagerService"

    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenFile:Ljava/io/File;

    const-string/jumbo v3, "rwd"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_90

    .line 1601
    .local v1, "af":Ljava/io/RandomAccessFile;
    const/4 v2, 0x1

    :try_start_d
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1604
    iget-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1605
    iget-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1608
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v2, :cond_23

    .line 1609
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_82

    .line 1611
    :cond_23
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1613
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ancestral packages:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1616
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1615
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1613
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1619
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V

    .line 1620
    sget-boolean v4, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v4, :cond_81

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_d .. :try_end_81} :catchall_86

    .line 1621
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_81
    goto :goto_52

    .line 1623
    :cond_82
    :goto_82
    :try_start_82
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_90

    .line 1625
    .end local v1    # "af":Ljava/io/RandomAccessFile;
    goto :goto_9c

    .line 1599
    .restart local v1    # "af":Ljava/io/RandomAccessFile;
    :catchall_86
    move-exception v2

    :try_start_87
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    goto :goto_8f

    :catchall_8b
    move-exception v3

    :try_start_8c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :goto_8f
    throw v2
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_90} :catch_90

    .line 1623
    .end local v1    # "af":Ljava/io/RandomAccessFile;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catch_90
    move-exception v1

    .line 1624
    .local v1, "e":Ljava/io/IOException;
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Unable to write token file:"

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1626
    .end local v1    # "e":Ljava/io/IOException;
    :goto_9c
    return-void
.end method
