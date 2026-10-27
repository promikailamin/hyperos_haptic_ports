.class public final Landroid/app/ActivityThread;
.super Landroid/app/ClientTransactionHandler;
.source "ActivityThread.java"

# interfaces
.implements Landroid/app/ActivityThreadInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$SafeCancellationTransport;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$PurgeIdler;,
        Landroid/app/ActivityThread$Profiler;,
        Landroid/app/ActivityThread$ActivityClientRecord;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$RequestHandoffActivityData;,
        Landroid/app/ActivityThread$RequestAssistContextExtras;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$DumpComponentInfo;,
        Landroid/app/ActivityThread$DumpResourcesData;,
        Landroid/app/ActivityThread$ProviderClientRecord;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$UpdateCompatibilityData;,
        Landroid/app/ActivityThread$DumpHeapData;,
        Landroid/app/ActivityThread$ProviderKey;,
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$ReceiverList;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x4

.field private static final blacklist BINDER_CALLBACK_THROTTLE:J = 0x2774L

.field private static final blacklist CONTENT_PROVIDER_RETAIN_TIME:J = 0x3e8L

.field private static final blacklist DEBUG_APP_INFO:Z = false

.field private static final greylist-max-o DEBUG_BACKUP:Z = false

.field public static final greylist-max-o DEBUG_BROADCAST:Z = false

.field public static final greylist-max-o DEBUG_CONFIGURATION:Z = false

.field public static final greylist-max-o DEBUG_MEMORY_TRIM:Z = false

.field static final greylist-max-o DEBUG_MESSAGES:Z = false

.field public static final greylist-max-o DEBUG_ORDER:Z = false

.field private static final greylist-max-o DEBUG_PROVIDER:Z = false

.field private static final greylist-max-o DEBUG_RESULTS:Z = false

.field private static final greylist-max-o DEBUG_SERVICE:Z = false

.field private static final blacklist DEBUG_STORE_ENABLED:Z

.field private static final blacklist DEFAULT_FULL_BACKUP_AGENT:Ljava/lang/String; = "android.app.backup.FullBackupAgent"

.field private static final greylist-max-o HEAP_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s"

.field private static final greylist-max-o HEAP_FULL_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

.field public static final greylist-max-o INVALID_PROC_STATE_SEQ:J = -0x1L

.field private static final blacklist LONG_MESSAGE_THRESHOLD_MS:J

.field private static final greylist-max-o MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final blacklist ONE_ALT_COUNT_COLUMN:Ljava/lang/String; = "%21s %8s %21s %8d"

.field private static final greylist-max-o ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field public static final greylist-max-o PROC_START_SEQ_IDENT:Ljava/lang/String; = "seq="

.field private static final blacklist REQUEST_DIRECT_ACTIONS_RETRY_MAX_COUNT:I = 0x7

.field private static final blacklist REQUEST_DIRECT_ACTIONS_RETRY_TIME_MS:J = 0xc8L

.field public static final greylist-max-o SERVICE_DONE_EXECUTING_ANON:I = 0x0

.field public static final blacklist SERVICE_DONE_EXECUTING_REBIND:I = 0x3

.field public static final greylist-max-o SERVICE_DONE_EXECUTING_START:I = 0x1

.field public static final greylist-max-o SERVICE_DONE_EXECUTING_STOP:I = 0x2

.field public static final blacklist SERVICE_DONE_EXECUTING_UNBIND:I = 0x4

.field private static final greylist-max-o SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field public static final greylist-max-o TAG:Ljava/lang/String; = "ActivityThread"

.field private static final blacklist THREE_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d %21s %8d"

.field private static final greylist-max-o TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"

.field private static final blacklist TWO_COUNT_COLUMN_HEADER:Ljava/lang/String; = "%21s %8s %21s %8s"

.field private static final blacklist VM_PROCESS_STATE_JANK_IMPERCEPTIBLE:I = 0x1

.field private static final blacklist VM_PROCESS_STATE_JANK_PERCEPTIBLE:I = 0x0

.field static final greylist-max-o localLOGV:Z = false

.field private static volatile greylist sCurrentActivityThread:Landroid/app/ActivityThread;

.field private static final greylist-max-o sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field static volatile greylist-max-p sMainThreadHandler:Landroid/os/Handler;

.field static volatile greylist sPackageManager:Landroid/content/pm/IPackageManager;

.field private static volatile blacklist sPermissionManager:Landroid/permission/IPermissionManager;


# instance fields
.field final greylist mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mActivitiesToBeDestroyed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/app/servertransaction/DestroyActivityItem;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mAllApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mAppThread:Landroid/app/ActivityThread$ApplicationThread;

.field private final blacklist mBackupAgentsByUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mBinderCallbackLast:J

.field greylist mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.field private blacklist mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field greylist-max-r mConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mConfigurationChangedListenerController:Landroid/app/ConfigurationChangedListenerController;

.field private blacklist mConfigurationController:Landroid/app/ConfigurationController;

.field private blacklist mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

.field private greylist-max-o mCoreSettings:Landroid/os/Bundle;

.field private final blacklist mCoreSettingsLock:Ljava/lang/Object;

.field greylist-max-r mCurDefaultDisplayDpi:I

.field private final blacklist mDdmSyncStageUpdater:Landroid/os/DdmSyncStageUpdater;

.field greylist mDensityCompatMode:Z

.field private blacklist mDisplaySystemUiContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;>;"
        }
    .end annotation
.end field

.field final greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field final greylist-max-o mGcIdler:Landroid/app/ActivityThread$GcIdler;

.field greylist-max-o mGcIdlerScheduled:Z

.field final blacklist mGetProviderKeys:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityThread$ProviderKey;",
            "Landroid/app/ActivityThread$ProviderKey;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mH:Landroid/app/ActivityThread$H;

.field greylist mInitialApplication:Landroid/app/Application;

.field greylist mInstrumentation:Landroid/app/Instrumentation;

.field greylist mInstrumentationAppDir:Ljava/lang/String;

.field greylist-max-o mInstrumentationLibDir:Ljava/lang/String;

.field greylist-max-o mInstrumentationPackageName:Ljava/lang/String;

.field greylist-max-o mInstrumentationSplitAppDirs:[Ljava/lang/String;

.field greylist mInstrumentedAppDir:Ljava/lang/String;

.field greylist-max-o mInstrumentedLibDir:Ljava/lang/String;

.field greylist-max-o mInstrumentedSplitAppDirs:[Ljava/lang/String;

.field blacklist mInstrumentingWithoutRestart:Z

.field final greylist-max-o mLastAssistStructures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/assist/AssistStructure;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mLastProcessState:I

.field blacklist mLastReportedDeviceId:I

.field private greylist-max-o mLastSessionId:I

.field final greylist-max-p mLocalProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mLocalProvidersByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mLooper:Landroid/os/Looper;

.field private greylist-max-o mNetworkBlockSeq:J

.field private final greylist-max-o mNetworkPolicyLock:Ljava/lang/Object;

.field final blacklist mNewActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNumLaunchingActivities:Ljava/util/concurrent/atomic/AtomicInteger;

.field greylist mNumVisibleActivities:I

.field final greylist-max-o mOnPauseListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Landroid/app/OnActivityPausedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final greylist mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mPendingAppInfoUpdates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-r mPendingConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mPendingOverrideConfigs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mProfiler:Landroid/app/ActivityThread$Profiler;

.field final greylist mProviderMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityThread$ProviderKey;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mProviderRefCountMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderRefCount;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

.field blacklist mPurgeIdlerScheduled:Z

.field final greylist-max-o mRelaunchingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteCancellations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/ActivityThread$SafeCancellationTransport;",
            "Landroid/os/CancellationSignal;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mResourcePackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-p mResourcesManager:Landroid/app/ResourcesManager;

.field final greylist mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mServicesData:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$CreateServiceData;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mSomeActivitiesChanged:Z

.field private blacklist mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

.field private blacklist mStartSeq:J

.field private greylist mSystemContext:Landroid/app/ContextImpl;

.field greylist-max-o mSystemThread:Z

.field private final greylist-max-o mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

.field private blacklist mUpdateHttpProxyOnBind:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$4WJ6ycaJHWhLhvg2pL0uW-b1mR0(Landroid/app/ActivityThread;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->lambda$syncTransferSplashscreenViewTransaction$4(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ER5_VDuGIZMC0J2vqX33KPnkevc(Landroid/app/ActivityThread;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->lambda$attach$6(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JtANQHbm8_woSrSSrItwPFzx9Rc(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handleRequestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBinderCallbackLast(Landroid/app/ActivityThread;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/ActivityThread;->mBinderCallbackLast:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigurationController(Landroid/app/ActivityThread;)Landroid/app/ConfigurationController;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkPolicyLock(Landroid/app/ActivityThread;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingAppInfoUpdates(Landroid/app/ActivityThread;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread;->mPendingAppInfoUpdates:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResourcesManager(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransactionExecutor(Landroid/app/ActivityThread;)Landroid/app/servertransaction/TransactionExecutor;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBinderCallbackLast(Landroid/app/ActivityThread;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/ActivityThread;->mBinderCallbackLast:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkBlockSeq(Landroid/app/ActivityThread;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUpdateHttpProxyOnBind(Landroid/app/ActivityThread;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/ActivityThread;->mUpdateHttpProxyOnBind:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyPendingApplicationInfoChanges(Landroid/app/ActivityThread;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->applyPendingApplicationInfoChanges(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->createSafeCancellationTransport(Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetGetProviderKey(Landroid/app/ActivityThread;Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->getGetProviderKey(Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleBindApplication(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleBindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCreateBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCreateService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDestroyBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDumpActivity(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDumpGfxInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpGfxInfo(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDumpProvider(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDumpResources(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpResourcesData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpResources(Landroid/app/ActivityThread$DumpResourcesData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDumpService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleEnterAnimationComplete(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleEnterAnimationComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleFinishInstrumentationWithoutRestart(Landroid/app/ActivityThread;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityThread;->handleFinishInstrumentationWithoutRestart()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleHandoffActivityDataRequest(Landroid/app/ActivityThread;Landroid/app/ActivityThread$RequestHandoffActivityData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleHandoffActivityDataRequest(Landroid/app/ActivityThread$RequestHandoffActivityData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleInstrumentWithoutRestart(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleInstrumentWithoutRestart(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleLocalVoiceInteractionStarted(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePerformDirectAction(Landroid/app/ActivityThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handlePerformDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleReceiver(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRequestDirectActions(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handleRequestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRunIsolatedEntryPoint(Landroid/app/ActivityThread;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleRunIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleServiceArgs(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSetContentCaptureOptionsCallback(Landroid/app/ActivityThread;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetContentCaptureOptionsCallback(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSetCoreSettings(Landroid/app/ActivityThread;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleStartBinderTracking(Landroid/app/ActivityThread;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityThread;->handleStartBinderTracking()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleStopBinderTrackingAndDump(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleStopService(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTimeoutService(Landroid/app/ActivityThread;Landroid/os/IBinder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleTimeoutService(Landroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTimeoutServiceForType(Landroid/app/ActivityThread;Landroid/os/IBinder;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->handleTimeoutServiceForType(Landroid/os/IBinder;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTrimMemory(Landroid/app/ActivityThread;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleUnbindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpurgePendingResources(Landroid/app/ActivityThread;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityThread;->purgePendingResources()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/app/ActivityThread$SafeCancellationTransport;)Landroid/os/CancellationSignal;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->removeSafeCancellationTransport(Landroid/app/ActivityThread$SafeCancellationTransport;)Landroid/os/CancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreportSplashscreenViewShown(Landroid/app/ActivityThread;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->reportSplashscreenViewShown(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msyncTransferSplashscreenViewTransaction(Landroid/app/ActivityThread;Landroid/window/SplashScreenView;Landroid/os/IBinder;Landroid/view/View;Landroid/view/SurfaceControl;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->syncTransferSplashscreenViewTransaction(Landroid/window/SplashScreenView;Landroid/os/IBinder;Landroid/view/View;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mthrowRemoteServiceException(Landroid/app/ActivityThread;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->throwRemoteServiceException(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateUiTranslationState(Landroid/app/ActivityThread;Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/app/ActivityThread;->updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG_STORE_ENABLED()Z
    .registers 1

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_STORE_ENABLED:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLONG_MESSAGE_THRESHOLD_MS()J
    .registers 2

    sget-wide v0, Landroid/app/ActivityThread;->LONG_MESSAGE_THRESHOLD_MS:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 393
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/Flags;->debugStoreEnabled()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_STORE_ENABLED:Z

    .line 399
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x7d0

    int-to-long v0, v0

    sput-wide v0, Landroid/app/ActivityThread;->LONG_MESSAGE_THRESHOLD_MS:J

    .line 5232
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor greylist <init>()V
    .registers 4

    .line 3359
    invoke-direct {p0}, Landroid/app/ClientTransactionHandler;-><init>()V

    .line 323
    invoke-static {}, Landroid/app/ActivityThread;->newDdmSyncStageUpdater()Landroid/os/DdmSyncStageUpdater;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mDdmSyncStageUpdater:Landroid/os/DdmSyncStageUpdater;

    .line 385
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    .line 390
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/ActivityThread;->mBinderCallbackLast:J

    .line 407
    iput-wide v0, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    .line 419
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 421
    nop

    .line 422
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    .line 423
    new-instance v0, Landroid/app/ActivityThread$H;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 425
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mExecutor:Ljava/util/concurrent/Executor;

    .line 433
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 436
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    .line 444
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mPendingAppInfoUpdates:Landroid/util/ArrayMap;

    .line 448
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 449
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mNewActivities:Ljava/util/ArrayList;

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 455
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Landroid/app/ActivityThread;->mNumLaunchingActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 456
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    .line 458
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    .line 460
    new-instance v1, Landroid/app/ConfigurationChangedListenerController;

    invoke-direct {v1}, Landroid/app/ConfigurationChangedListenerController;-><init>()V

    iput-object v1, p0, Landroid/app/ActivityThread;->mConfigurationChangedListenerController:Landroid/app/ConfigurationChangedListenerController;

    .line 466
    iput v0, p0, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    .line 467
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    .line 468
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 483
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mUpdateHttpProxyOnBind:Z

    .line 487
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    .line 495
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/app/ActivityThread;->mBackupAgentsByUser:Landroid/util/SparseArray;

    .line 502
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 503
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 505
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 506
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 507
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 509
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 510
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 512
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 513
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 524
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    .line 527
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    .line 530
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 532
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 537
    invoke-static {p0}, Landroid/app/ActivityThread;->newTransactionExecutor(Landroid/app/ActivityThread;)Landroid/app/servertransaction/TransactionExecutor;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    .line 581
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 583
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 585
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    .line 587
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    .line 593
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    .line 596
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    .line 601
    new-instance v2, Landroid/app/ActivityThread$GcIdler;

    invoke-direct {v2, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    .line 602
    new-instance v2, Landroid/app/ActivityThread$PurgeIdler;

    invoke-direct {v2, p0}, Landroid/app/ActivityThread$PurgeIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    .line 604
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 605
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 611
    iput-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 616
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    .line 618
    iput-object v1, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    .line 3360
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 3361
    return-void
.end method

.method private blacklist applyPendingApplicationInfoChanges(Ljava/lang/String;)V
    .registers 4

    .line 7232
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 7233
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingAppInfoUpdates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 7234
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    .line 7235
    if-nez p1, :cond_f

    .line 7236
    return-void

    .line 7238
    :cond_f
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 7239
    return-void

    .line 7234
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method private greylist attach(ZJ)V
    .registers 6

    .line 9058
    sput-object p0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    .line 9059
    new-instance v0, Landroid/app/ConfigurationController;

    invoke-direct {v0, p0}, Landroid/app/ConfigurationController;-><init>(Landroid/app/ActivityThreadInternal;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 9060
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 9061
    iput-wide p2, p0, Landroid/app/ActivityThread;->mStartSeq:J

    .line 9062
    iget-object v0, p0, Landroid/app/ActivityThread;->mDdmSyncStageUpdater:Landroid/os/DdmSyncStageUpdater;

    sget-object v1, Landroid/os/DdmSyncState$Stage;->Attach:Landroid/os/DdmSyncState$Stage;

    invoke-virtual {v0, v1}, Landroid/os/DdmSyncStageUpdater;->next(Landroid/os/DdmSyncState$Stage;)V

    .line 9064
    if-nez p1, :cond_42

    .line 9065
    nop

    .line 9066
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 9065
    const-string v0, "<pre-initialized>"

    invoke-static {v0, p1}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 9067
    iget-object p1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {p1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    .line 9068
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    .line 9070
    :try_start_2d
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {p1, v0, p2, p3}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;J)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_3c

    .line 9073
    nop

    .line 9075
    new-instance p1, Landroid/app/ActivityThread$6;

    invoke-direct {p1, p0}, Landroid/app/ActivityThread$6;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {p1}, Lcom/android/internal/os/BinderInternal;->addGcWatcher(Ljava/lang/Runnable;)V

    .line 9096
    goto :goto_50

    .line 9071
    :catch_3c
    move-exception p1

    .line 9072
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 9099
    :cond_42
    nop

    .line 9100
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 9099
    const-string/jumbo p2, "system_process"

    invoke-static {p2, p1}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 9101
    invoke-static {p0}, Landroid/app/ActivityThread;->initializeSystemThread(Landroid/app/ActivityThread;)V

    .line 9104
    :goto_50
    new-instance p1, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;-><init>(Landroid/app/ActivityThread;)V

    .line 9123
    invoke-static {p1}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 9124
    return-void
.end method

.method private static greylist-max-o attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .registers 4

    .line 5179
    :try_start_0
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->attachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 5180
    const/4 p0, 0x1

    return p0

    .line 5181
    :catch_5
    move-exception v0

    .line 5182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attaching agent with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityThread"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5183
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 5

    .line 6886
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 6887
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 6889
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->enableTaskContinuity()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isHandoffEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 6890
    new-instance v0, Landroid/app/HandoffActivityDataRequestInfo;

    invoke-direct {v0, v1}, Landroid/app/HandoffActivityDataRequestInfo;-><init>(Z)V

    .line 6892
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->onHandoffActivityDataRequested(Landroid/app/HandoffActivityDataRequestInfo;)Landroid/app/HandoffActivityData;

    move-result-object v0

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->handoffActivityData:Landroid/app/HandoffActivityData;

    .line 6895
    :cond_28
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 6896
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 6897
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_4a

    .line 6900
    :cond_41
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 6902
    :goto_4a
    return-void
.end method

.method private greylist-max-o callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    .registers 7

    .line 6277
    if-eqz p2, :cond_14

    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean p2, p2, Landroid/app/Activity;->mFinished:Z

    if-nez p2, :cond_14

    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez p2, :cond_14

    .line 6278
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result p2

    if-nez p2, :cond_14

    const/4 p2, 0x1

    goto :goto_15

    :cond_14
    const/4 p2, 0x0

    .line 6279
    :goto_15
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreP(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v0

    .line 6280
    if-eqz p2, :cond_20

    if-eqz v0, :cond_20

    .line 6281
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 6285
    :cond_20
    :try_start_20
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    invoke-virtual {v1, v2, p3}, Landroid/app/Activity;->performStop(ZLjava/lang/String;)V
    :try_end_27
    .catch Landroid/util/SuperNotCalledException; {:try_start_20 .. :try_end_27} :catch_62
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_28

    .line 6294
    goto :goto_33

    .line 6288
    :catch_28
    move-exception p3

    .line 6289
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, p3}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 6295
    :goto_33
    const/4 p3, 0x5

    invoke-virtual {p1, p3}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 6297
    if-eqz p2, :cond_3e

    if-nez v0, :cond_3e

    .line 6298
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 6300
    :cond_3e
    return-void

    .line 6290
    :cond_3f
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to stop activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6292
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 6286
    :catch_62
    move-exception p1

    .line 6287
    throw p1
.end method

.method private greylist-max-o checkAndBlockForNetworkAccess()V
    .registers 8

    .line 4570
    iget-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4571
    :try_start_3
    iget-wide v1, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1e

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1c

    .line 4573
    :try_start_b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-wide v5, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    invoke-interface {v1, v5, v6}, Landroid/app/IActivityManager;->waitForNetworkStateUpdate(J)V

    .line 4574
    iput-wide v3, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_17
    .catchall {:try_start_b .. :try_end_16} :catchall_1e

    goto :goto_18

    .line 4575
    :catch_17
    move-exception v1

    :goto_18
    nop

    .line 4580
    :try_start_19
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 4582
    :cond_1c
    monitor-exit v0

    .line 4583
    return-void

    .line 4582
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method static greylist-max-o cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .registers 5

    .line 5888
    iget-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    .line 5889
    return-void

    .line 5891
    :cond_7
    iget-object p1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz p1, :cond_35

    .line 5892
    iget-object p1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 5893
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 5892
    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 5894
    iget-object p1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    .line 5895
    if-eqz p1, :cond_35

    .line 5896
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5897
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5896
    const-string v2, "Activity"

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5900
    :cond_35
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 5901
    iput-object p1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 5902
    return-void
.end method

.method private greylist-max-o createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;
    .registers 10

    .line 4586
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getDisplayId(Landroid/os/IBinder;)I

    move-result v6

    .line 4587
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroid/app/ContextImpl;->createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 4590
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 4594
    const-string v2, "debug.second-display.pkg"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4595
    if-eqz v2, :cond_53

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_53

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object p1, p1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 4596
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 4597
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_39
    if-ge v3, v2, :cond_53

    aget v4, p1, v3

    .line 4598
    if-eqz v4, :cond_50

    .line 4599
    nop

    .line 4600
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object p1

    .line 4601
    invoke-virtual {v0, p1}, Landroid/app/ContextImpl;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/app/ContextImpl;

    .line 4602
    goto :goto_53

    .line 4597
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 4606
    :cond_53
    :goto_53
    return-object v0
.end method

.method private blacklist createBaseContextForSandboxActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;
    .registers 11

    .line 4616
    const-string v1, "ActivityThread"

    invoke-static {}, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;->getInstance()Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;

    move-result-object v0

    .line 4620
    const/4 v2, 0x0

    :try_start_7
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;->getActivityContextInfo(Landroid/content/Intent;)Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_d} :catch_4f
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_d} :catch_47
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_3f

    .line 4630
    nop

    .line 4632
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/app/ActivityClient;->getDisplayId(Landroid/os/IBinder;)I

    move-result v7

    .line 4633
    nop

    .line 4634
    invoke-interface {v0}, Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;->getSdkApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 4635
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 4636
    invoke-interface {v0}, Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;->getContextFlags()I

    move-result v0

    .line 4633
    invoke-virtual {p0, v1, v2, v0}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v4

    .line 4638
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Landroid/app/ContextImpl;->createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;

    move-result-object p1

    .line 4642
    iget-object v0, p1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v1, 0x0

    iget-object v2, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, v1, v2}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    .line 4645
    return-object p1

    .line 4627
    :catch_3f
    move-exception v0

    move-object p1, v0

    .line 4628
    const-string v0, "Failed to create context for sandbox activity"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4629
    return-object v2

    .line 4624
    :catch_47
    move-exception v0

    move-object p1, v0

    .line 4625
    const-string v0, "SDK customized context flag is disabled"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4626
    return-object v2

    .line 4621
    :catch_4f
    move-exception v0

    move-object p1, v0

    .line 4622
    const-string v0, "Passed intent does not match an expected sandbox activity"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4623
    return-object v2
.end method

.method private blacklist createSafeCancellationTransport(Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;
    .registers 4

    .line 2448
    monitor-enter p0

    .line 2449
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 2450
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    .line 2452
    :cond_c
    new-instance v0, Landroid/app/ActivityThread$SafeCancellationTransport;

    invoke-direct {v0, p0, p1}, Landroid/app/ActivityThread$SafeCancellationTransport;-><init>(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)V

    .line 2454
    iget-object v1, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    monitor-exit p0

    return-object v0

    .line 2456
    :catchall_18
    move-exception p1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method private blacklist createSplashScreen(Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V
    .registers 11

    .line 5051
    new-instance v0, Landroid/window/SplashScreenView$Builder;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/window/SplashScreenView$Builder;-><init>(Landroid/content/Context;)V

    .line 5052
    invoke-virtual {v0, p3}, Landroid/window/SplashScreenView$Builder;->createFromParcel(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/window/SplashScreenView$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/window/SplashScreenView$Builder;->build()Landroid/window/SplashScreenView;

    move-result-object v2

    .line 5053
    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v2, p3}, Landroid/window/SplashScreenView;->attachHostWindow(Landroid/view/Window;)V

    .line 5054
    invoke-virtual {p2, v2}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;)V

    .line 5055
    invoke-virtual {v2}, Landroid/window/SplashScreenView;->requestLayout()V

    .line 5057
    invoke-virtual {v2}, Landroid/window/SplashScreenView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance v0, Landroid/app/ActivityThread$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread$1;-><init>(Landroid/app/ActivityThread;Landroid/window/SplashScreenView;Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/view/SurfaceControl;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5075
    return-void
.end method

.method public static blacklist createSystemActivityThreadForTesting()Landroid/app/ActivityThread;
    .registers 2

    .line 3370
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 3371
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 3372
    invoke-static {v0}, Landroid/app/ActivityThread;->initializeSystemThread(Landroid/app/ActivityThread;)V

    .line 3373
    return-object v0
.end method

.method public static greylist currentActivityThread()Landroid/app/ActivityThread;
    .registers 1

    .line 3076
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    return-object v0
.end method

.method public static greylist currentApplication()Landroid/app/Application;
    .registers 1

    .line 3112
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 3113
    if-eqz v0, :cond_9

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public static blacklist currentAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    .line 3090
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 3091
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 3092
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 3091
    :goto_16
    return-object v0
.end method

.method public static greylist-max-o currentOpPackageName()Ljava/lang/String;
    .registers 2

    .line 3084
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 3085
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 3086
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 3085
    :goto_16
    return-object v0
.end method

.method public static greylist currentPackageName()Ljava/lang/String;
    .registers 2

    .line 3097
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 3098
    if-eqz v0, :cond_11

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_11

    .line 3099
    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 3098
    :goto_12
    return-object v0
.end method

.method public static greylist currentProcessName()Ljava/lang/String;
    .registers 2

    .line 3104
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 3105
    if-eqz v0, :cond_f

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_f

    .line 3106
    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 3105
    :goto_10
    return-object v0
.end method

.method public static blacklist currentSystemContext()Landroid/content/Context;
    .registers 1

    .line 3122
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 3123
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method private greylist-max-o deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .line 4735
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 4736
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4d

    .line 4737
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/content/ReferrerIntent;

    .line 4738
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/content/ReferrerIntent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4739
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4740
    invoke-virtual {v4}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 4739
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/content/ReferrerIntent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 4741
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 4742
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->contentUriPermissionApis()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 4743
    new-instance v3, Landroid/app/ComponentCaller;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v5, v2, Lcom/android/internal/content/ReferrerIntent;->mCallerToken:Landroid/os/IBinder;

    invoke-direct {v3, v4, v5}, Landroid/app/ComponentCaller;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 4744
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v2, v3}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;Landroid/app/ComponentCaller;)V

    .line 4745
    goto :goto_4a

    .line 4746
    :cond_43
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V

    .line 4736
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4749
    :cond_4d
    return-void
.end method

.method private greylist-max-o deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6429
    move-object/from16 v1, p1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    .line 6430
    const/4 v0, 0x0

    move v3, v0

    :goto_8
    if-ge v3, v2, :cond_a3

    .line 6431
    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/ResultInfo;

    .line 6433
    :try_start_13
    iget-object v0, v5, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v0, :cond_33

    .line 6434
    iget-object v0, v5, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 6435
    iget-object v0, v5, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v6}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    iget-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6436
    invoke-virtual {v7}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v7

    .line 6435
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 6440
    :cond_33
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->contentUriPermissionApis()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 6441
    new-instance v11, Landroid/app/ComponentCaller;

    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v6, v5, Landroid/app/ResultInfo;->mCallerToken:Landroid/os/IBinder;

    invoke-direct {v11, v0, v6}, Landroid/app/ComponentCaller;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 6442
    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v7, v5, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget v8, v5, Landroid/app/ResultInfo;->mRequestCode:I

    iget v9, v5, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v10, v5, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    move-object/from16 v12, p3

    invoke-virtual/range {v6 .. v12}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Landroid/app/ComponentCaller;Ljava/lang/String;)V

    .line 6444
    goto :goto_63

    .line 6445
    :cond_52
    iget-object v12, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v13, v5, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget v14, v5, Landroid/app/ResultInfo;->mRequestCode:I

    iget v15, v5, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v0, v5, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    move-object/from16 v17, p3

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_63} :catch_66

    .line 6454
    :goto_63
    move-object/from16 v6, p0

    goto :goto_73

    .line 6448
    :catch_66
    move-exception v0

    .line 6449
    move-object/from16 v6, p0

    iget-object v7, v6, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v8, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 6430
    :goto_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 6450
    :cond_76
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure delivering result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6452
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 6456
    :cond_a3
    return-void
.end method

.method public static blacklist dumpBitmapsProto(Landroid/util/proto/ProtoOutputStream;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 4094
    const-wide v0, 0x10500000001L

    :try_start_5
    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4095
    const-wide v0, 0x10900000002L

    invoke-virtual {p0, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4096
    invoke-static {p0, p3}, Landroid/graphics/Bitmap;->dumpAll(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_18

    .line 4098
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 4099
    nop

    .line 4100
    return-void

    .line 4098
    :catchall_18
    move-exception p1

    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 4099
    throw p1
.end method

.method public static greylist-max-o dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V
    .registers 47
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 3941
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    const-wide v1, 0x10500000004L

    const-wide v3, 0x10500000003L

    const-wide v5, 0x10500000002L

    if-nez p3, :cond_254

    .line 3942
    const-wide v7, 0x10b00000003L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 3943
    move-wide v9, v3

    iget v4, v14, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move-wide v11, v5

    iget v5, v14, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    iget v6, v14, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move-wide v15, v7

    iget v7, v14, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    iget v8, v14, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    move-wide/from16 v17, v9

    iget v9, v14, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    iget-boolean v10, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move-wide v12, v11

    iget v11, v14, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    move-wide/from16 v19, v12

    iget v12, v14, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    iget v13, v14, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    move-wide/from16 v21, v1

    const-wide v1, 0x10b00000001L

    const-string v3, "Native Heap"

    move-wide/from16 v23, v15

    move-wide/from16 v14, p4

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3949
    const-wide v1, 0x10500000002L

    invoke-virtual {v0, v1, v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3950
    move-wide/from16 v3, p6

    const-wide v5, 0x10500000003L

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3951
    move-wide/from16 v7, p8

    const-wide v9, 0x10500000004L

    invoke-virtual {v0, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3952
    move-wide/from16 v11, v23

    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3954
    const-wide v11, 0x10b00000004L

    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 3955
    move-object/from16 v13, p1

    iget v4, v13, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move-wide/from16 v17, v5

    iget v5, v13, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    iget v6, v13, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    iget v7, v13, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iget v8, v13, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    move-wide/from16 v21, v9

    iget v9, v13, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    iget-boolean v10, v13, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move-wide/from16 v19, v11

    iget v11, v13, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    iget v12, v13, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    move-object v3, v13

    iget v13, v3, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    move-wide/from16 v29, v1

    const-wide v1, 0x10b00000001L

    const-string v3, "Dalvik Heap"

    move-wide/from16 v14, v29

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3961
    move-wide/from16 v1, p10

    invoke-virtual {v0, v14, v15, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3962
    move-wide/from16 v3, p12

    const-wide v5, 0x10500000003L

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3963
    move-wide/from16 v5, p14

    const-wide v9, 0x10500000004L

    invoke-virtual {v0, v9, v10, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3964
    move-wide/from16 v7, v19

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3966
    move-object/from16 v7, p1

    iget v8, v7, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 3967
    iget v9, v7, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 3968
    iget v10, v7, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 3969
    iget v11, v7, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 3970
    iget v12, v7, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 3971
    iget v13, v7, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 3972
    iget v14, v7, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 3973
    iget v15, v7, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 3974
    iget v0, v7, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 3976
    const/16 v16, 0x0

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    move/from16 v27, v14

    move/from16 v28, v15

    move v14, v0

    move v15, v8

    move/from16 v0, v16

    move/from16 v16, v9

    :goto_e5
    const/16 v8, 0x11

    if-ge v0, v8, :cond_160

    .line 3977
    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v4

    .line 3978
    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v5

    .line 3979
    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v6

    .line 3980
    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v3

    .line 3981
    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v8

    .line 3982
    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v9

    .line 3983
    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v11

    .line 3984
    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v12

    .line 3985
    invoke-virtual {v7, v0}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v13

    .line 3986
    if-nez v4, :cond_128

    if-nez v6, :cond_128

    if-nez v3, :cond_128

    if-nez v8, :cond_128

    if-nez v9, :cond_128

    if-nez v13, :cond_128

    .line 3988
    iget-boolean v10, v7, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_11f

    move v10, v12

    goto :goto_120

    :cond_11f
    move v10, v11

    :goto_120
    if-eqz v10, :cond_123

    goto :goto_128

    :cond_123
    move/from16 v29, v0

    move v0, v14

    move-object v14, v7

    goto :goto_154

    .line 3989
    :cond_128
    :goto_128
    nop

    .line 3990
    move v10, v3

    invoke-static {v0}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v29, v10

    iget-boolean v10, v7, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 3989
    const-wide v1, 0x20b00000005L

    move/from16 p3, v14

    move-object v14, v7

    move/from16 v7, v29

    move/from16 v29, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3995
    sub-int/2addr v15, v4

    .line 3996
    sub-int v16, v16, v5

    .line 3997
    sub-int v23, v23, v6

    .line 3998
    sub-int v24, v24, v7

    .line 3999
    sub-int v25, v25, v8

    .line 4000
    sub-int v26, v26, v9

    .line 4001
    sub-int v27, v27, v11

    .line 4002
    sub-int v28, v28, v12

    .line 4003
    sub-int v0, p3, v13

    .line 3976
    :goto_154
    add-int/lit8 v1, v29, 0x1

    move-wide/from16 v3, p12

    move-wide/from16 v5, p14

    move-object v7, v14

    move v14, v0

    move v0, v1

    move-wide/from16 v1, p10

    goto :goto_e5

    .line 4007
    :cond_160
    move/from16 p3, v14

    move-object v14, v7

    const-string v3, "Unknown"

    iget-boolean v10, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    const-wide v1, 0x10b00000006L

    move-object/from16 v0, p0

    move/from16 v13, p3

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v9, v26

    move/from16 v11, v27

    move/from16 v12, v28

    move v15, v8

    move/from16 v8, v25

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 4011
    const-wide v1, 0x10b00000007L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 4012
    nop

    .line 4013
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v5

    .line 4014
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v6

    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v7

    .line 4015
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v8

    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v9

    iget-boolean v10, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 4016
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v11

    .line 4017
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v12

    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v13

    .line 4012
    move-wide/from16 v23, v1

    const-wide v1, 0x10b00000001L

    const-string v3, "TOTAL"

    move-wide/from16 v14, v23

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 4018
    add-long v1, p4, p10

    const-wide v11, 0x10500000002L

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4020
    add-long v1, p6, p12

    const-wide v5, 0x10500000003L

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4022
    add-long v1, p8, p14

    const-wide v9, 0x10500000004L

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4024
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4026
    if-eqz p2, :cond_252

    .line 4027
    const/16 v8, 0x11

    .line 4028
    :goto_1e6
    const/16 v1, 0x20

    if-ge v8, v1, :cond_24f

    .line 4030
    move-object/from16 v14, p1

    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v1

    .line 4031
    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v2

    .line 4032
    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v3

    .line 4033
    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v4

    .line 4034
    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v5

    .line 4035
    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v6

    .line 4036
    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v7

    .line 4037
    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v9

    .line 4038
    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v10

    .line 4039
    if-nez v1, :cond_223

    if-nez v3, :cond_223

    if-nez v4, :cond_223

    if-nez v5, :cond_223

    if-nez v6, :cond_223

    .line 4041
    iget-boolean v11, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v11, :cond_220

    move v11, v9

    goto :goto_221

    :cond_220
    move v11, v7

    :goto_221
    if-eqz v11, :cond_24c

    .line 4042
    :cond_223
    nop

    .line 4043
    invoke-static {v8}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 4042
    const-wide v15, 0x20b00000008L

    move-object/from16 p2, v0

    move/from16 p6, v1

    move/from16 p7, v2

    move/from16 p8, v3

    move/from16 p9, v4

    move/from16 p10, v5

    move/from16 p11, v6

    move/from16 p13, v7

    move/from16 p14, v9

    move/from16 p15, v10

    move-object/from16 p5, v11

    move/from16 p12, v12

    move-wide/from16 p3, v15

    invoke-static/range {p2 .. p15}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 4029
    :cond_24c
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e6

    .line 4028
    :cond_24f
    move-object/from16 v14, p1

    goto :goto_254

    .line 4026
    :cond_252
    move-object/from16 v14, p1

    .line 4052
    :cond_254
    :goto_254
    const-wide v1, 0x10b00000009L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 4053
    nop

    .line 4054
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v3

    .line 4053
    const-wide v4, 0x10500000001L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4055
    nop

    .line 4056
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v3

    .line 4055
    const-wide v11, 0x10500000002L

    invoke-virtual {v0, v11, v12, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4057
    nop

    .line 4058
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v3

    .line 4057
    const-wide v5, 0x10500000003L

    invoke-virtual {v0, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4059
    nop

    .line 4060
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v3

    .line 4059
    const-wide v9, 0x10500000004L

    invoke-virtual {v0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4061
    nop

    .line 4062
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v3

    .line 4061
    const-wide v4, 0x10500000005L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4063
    nop

    .line 4064
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v3

    .line 4063
    const-wide v4, 0x10500000006L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4065
    nop

    .line 4066
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v3

    .line 4065
    const-wide v4, 0x10500000007L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4067
    iget-boolean v3, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    const-wide v4, 0x10500000008L

    if-eqz v3, :cond_2ca

    .line 4068
    nop

    .line 4069
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v3

    .line 4068
    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_2d2

    .line 4071
    :cond_2ca
    nop

    .line 4072
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v3

    .line 4071
    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4074
    :goto_2d2
    nop

    .line 4075
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeapRss()I

    move-result v3

    .line 4074
    const-wide v4, 0x1050000000aL

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4076
    nop

    .line 4077
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeapRss()I

    move-result v3

    .line 4076
    const-wide v4, 0x1050000000bL

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4078
    nop

    .line 4079
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryCodeRss()I

    move-result v3

    .line 4078
    const-wide v4, 0x1050000000cL

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4080
    nop

    .line 4081
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryStackRss()I

    move-result v3

    .line 4080
    const-wide v4, 0x1050000000dL

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4082
    nop

    .line 4083
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphicsRss()I

    move-result v3

    .line 4082
    const-wide v4, 0x1050000000eL

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4084
    nop

    .line 4085
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryUnknownRss()I

    move-result v3

    .line 4084
    const-wide v4, 0x1050000000fL

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4087
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4088
    return-void
.end method

.method public static greylist-max-o dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V
    .registers 63
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 3613
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p8

    move-wide/from16 v4, p10

    move-wide/from16 v6, p12

    move-wide/from16 v8, p14

    move-wide/from16 v10, p16

    move-wide/from16 v12, p18

    if-eqz p2, :cond_1fd

    .line 3618
    const/4 v14, 0x4

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    const/16 v14, 0x2c

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3619
    move/from16 v15, p6

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3620
    move-object/from16 v15, p7

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3623
    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3624
    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3625
    const-string v15, "N/A,"

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3626
    add-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3629
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3630
    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3631
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3632
    add-long v2, v4, v10

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3635
    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3636
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3637
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3638
    add-long v2, v6, v12

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3641
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3642
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3643
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3644
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3647
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3648
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3649
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3650
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3653
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3654
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3655
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3656
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3659
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3660
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3661
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3662
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3665
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3666
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3667
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3668
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3671
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3672
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3673
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3674
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3677
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3678
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3679
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3680
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3683
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_186

    .line 3684
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3685
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3686
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3687
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_192

    .line 3689
    :cond_186
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3690
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3691
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3692
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3696
    :goto_192
    const/4 v2, 0x0

    :goto_193
    const/16 v3, 0x11

    if-ge v2, v3, :cond_1fc

    .line 3697
    invoke-static {v2}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3698
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3699
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3700
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3701
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3702
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3703
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3704
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3705
    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_1f6

    .line 3706
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_1f9

    .line 3708
    :cond_1f6
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3696
    :goto_1f9
    add-int/lit8 v2, v2, 0x1

    goto :goto_193

    .line 3711
    :cond_1fc
    return-void

    .line 3714
    :cond_1fd
    const-string v14, " "

    if-nez p5, :cond_6db

    .line 3715
    const-string v15, "SwapPss"

    const-string v18, "Swap"

    const-string v2, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const-string v3, "%13s %8s %8s %8s %8s %8s %8s %8s %8s"

    if-eqz p3, :cond_30a

    .line 3716
    nop

    .line 3717
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_213

    move-object/from16 v26, v15

    goto :goto_215

    :cond_213
    move-object/from16 v26, v18

    :goto_215
    const-string v29, "Heap"

    const-string v30, "Heap"

    const-string v19, ""

    const-string v20, "Pss"

    const-string v21, "Pss"

    const-string v22, "Shared"

    const-string v23, "Private"

    const-string v24, "Shared"

    const-string v25, "Private"

    const-string v27, "Rss"

    const-string v28, "Heap"

    filled-new-array/range {v19 .. v30}, [Ljava/lang/Object;

    move-result-object v4

    .line 3716
    invoke-static {v0, v2, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3719
    const-string v28, "Alloc"

    const-string v29, "Free"

    const-string v18, ""

    const-string v19, "Total"

    const-string v20, "Clean"

    const-string v21, "Dirty"

    const-string v22, "Dirty"

    const-string v23, "Clean"

    const-string v24, "Clean"

    const-string v25, "Dirty"

    const-string v26, "Total"

    const-string v27, "Size"

    filled-new-array/range {v18 .. v29}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v2, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3722
    const-string v28, "------"

    const-string v29, "------"

    const-string v18, ""

    const-string v19, "------"

    const-string v20, "------"

    const-string v21, "------"

    const-string v22, "------"

    const-string v23, "------"

    const-string v24, "------"

    const-string v25, "------"

    const-string v26, "------"

    const-string v27, "------"

    filled-new-array/range {v18 .. v29}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v2, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3724
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    .line 3725
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 3726
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 3727
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_29b

    .line 3728
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    goto :goto_29d

    :cond_29b
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 3727
    :goto_29d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 3729
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    const-string v18, "Native Heap"

    filled-new-array/range {v18 .. v29}, [Ljava/lang/Object;

    move-result-object v4

    .line 3724
    invoke-static {v0, v2, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3730
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    .line 3731
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 3732
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 3733
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_2e7

    .line 3734
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    goto :goto_2e9

    :cond_2e7
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 3733
    :goto_2e9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 3735
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    const-string v18, "Dalvik Heap"

    filled-new-array/range {v18 .. v29}, [Ljava/lang/Object;

    move-result-object v4

    .line 3730
    invoke-static {v0, v2, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3d3

    .line 3737
    :cond_30a
    nop

    .line 3738
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_312

    move-object/from16 v23, v15

    goto :goto_314

    :cond_312
    move-object/from16 v23, v18

    :goto_314
    const-string v26, "Heap"

    const-string v27, "Heap"

    const-string v19, ""

    const-string v20, "Pss"

    const-string v21, "Private"

    const-string v22, "Private"

    const-string v24, "Rss"

    const-string v25, "Heap"

    filled-new-array/range {v19 .. v27}, [Ljava/lang/Object;

    move-result-object v4

    .line 3737
    invoke-static {v0, v3, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3740
    const-string v25, "Alloc"

    const-string v26, "Free"

    const-string v18, ""

    const-string v19, "Total"

    const-string v20, "Dirty"

    const-string v21, "Clean"

    const-string v22, "Dirty"

    const-string v23, "Total"

    const-string v24, "Size"

    filled-new-array/range {v18 .. v26}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3742
    const-string v26, "------"

    const-string v27, "------"

    const-string v18, ""

    const-string v19, "------"

    const-string v20, "------"

    const-string v21, "------"

    const-string v22, "------"

    const-string v23, "------"

    const-string v24, "------"

    const-string v25, "------"

    filled-new-array/range {v18 .. v27}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3744
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 3745
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 3746
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 3747
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_378

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    goto :goto_37a

    .line 3748
    :cond_378
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 3747
    :goto_37a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 3748
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 3749
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v18, "Native Heap"

    filled-new-array/range {v18 .. v26}, [Ljava/lang/Object;

    move-result-object v4

    .line 3744
    invoke-static {v0, v3, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3750
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 3751
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 3752
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 3753
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_3b2

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    goto :goto_3b4

    .line 3754
    :cond_3b2
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 3753
    :goto_3b4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 3754
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 3755
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v18, "Dalvik Heap"

    filled-new-array/range {v18 .. v26}, [Ljava/lang/Object;

    move-result-object v4

    .line 3750
    invoke-static {v0, v3, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3758
    :goto_3d3
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 3759
    iget v5, v1, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 3760
    iget v15, v1, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 3761
    move/from16 v18, v4

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 3762
    move/from16 v19, v4

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 3763
    move/from16 v20, v4

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 3764
    move/from16 v21, v4

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 3765
    move/from16 v22, v4

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 3766
    move/from16 v23, v4

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 3768
    move/from16 v16, v15

    move/from16 p2, v18

    move v15, v5

    move v5, v4

    const/4 v4, 0x0

    :goto_3f8
    move/from16 p5, v5

    const/16 v5, 0x11

    if-ge v4, v5, :cond_4c5

    .line 3769
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v17

    .line 3770
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v18

    .line 3771
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v24

    .line 3772
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v25

    .line 3773
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v26

    .line 3774
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v27

    .line 3775
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v28

    .line 3776
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v29

    .line 3777
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v30

    .line 3778
    if-nez v17, :cond_440

    if-nez v24, :cond_440

    if-nez v25, :cond_440

    if-nez v26, :cond_440

    if-nez v27, :cond_440

    if-nez v30, :cond_440

    .line 3780
    iget-boolean v5, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v5, :cond_435

    move/from16 v5, v29

    goto :goto_437

    :cond_435
    move/from16 v5, v28

    :goto_437
    if-eqz v5, :cond_43a

    goto :goto_440

    :cond_43a
    move/from16 v5, p2

    move/from16 v17, p5

    goto/16 :goto_4bd

    .line 3781
    :cond_440
    :goto_440
    if-eqz p3, :cond_47d

    .line 3782
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v31

    .line 3783
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 3784
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 3785
    iget-boolean v5, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v5, :cond_465

    move/from16 v5, v29

    goto :goto_467

    :cond_465
    move/from16 v5, v28

    :goto_467
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    .line 3786
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    const-string v41, ""

    const-string v42, ""

    const-string v40, ""

    filled-new-array/range {v31 .. v42}, [Ljava/lang/Object;

    move-result-object v5

    .line 3782
    invoke-static {v0, v2, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4ab

    .line 3788
    :cond_47d
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v31

    .line 3789
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 3790
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    .line 3791
    iget-boolean v5, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v5, :cond_494

    move/from16 v5, v29

    goto :goto_496

    :cond_494
    move/from16 v5, v28

    :goto_496
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 3792
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const-string v38, ""

    const-string v39, ""

    const-string v37, ""

    filled-new-array/range {v31 .. v39}, [Ljava/lang/Object;

    move-result-object v5

    .line 3788
    invoke-static {v0, v3, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3794
    :goto_4ab
    sub-int v5, p2, v17

    .line 3795
    sub-int v15, v15, v18

    .line 3796
    sub-int v16, v16, v24

    .line 3797
    sub-int v19, v19, v25

    .line 3798
    sub-int v20, v20, v26

    .line 3799
    sub-int v21, v21, v27

    .line 3800
    sub-int v22, v22, v28

    .line 3801
    sub-int v23, v23, v29

    .line 3802
    sub-int v17, p5, v30

    .line 3768
    :goto_4bd
    add-int/lit8 v4, v4, 0x1

    move/from16 p2, v5

    move/from16 v5, v17

    goto/16 :goto_3f8

    .line 3806
    :cond_4c5
    if-eqz p3, :cond_57b

    .line 3807
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 3808
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 3809
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_4e5

    move/from16 v22, v23

    :cond_4e5
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    .line 3810
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const-string v34, ""

    const-string v35, ""

    const-string v24, "Unknown"

    const-string v33, ""

    filled-new-array/range {v24 .. v35}, [Ljava/lang/Object;

    move-result-object v4

    .line 3807
    invoke-static {v0, v2, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3811
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3812
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3813
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 3814
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 3815
    move-object/from16 p2, v4

    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_537

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v4

    goto :goto_53b

    .line 3816
    :cond_537
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v4

    .line 3815
    :goto_53b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3816
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    add-long v8, p8, v8

    .line 3817
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    add-long v9, p10, v10

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    add-long/2addr v6, v12

    .line 3818
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "TOTAL"

    move-object/from16 p8, p2

    move-object/from16 p14, v4

    move-object/from16 p9, v5

    move-object/from16 p18, v6

    move-object/from16 p7, v7

    move-object/from16 p16, v8

    move-object/from16 p17, v9

    move-object/from16 p10, v15

    move-object/from16 p11, v16

    move-object/from16 p12, v17

    move-object/from16 p13, v18

    move-object/from16 p15, v19

    filled-new-array/range {p7 .. p18}, [Ljava/lang/Object;

    move-result-object v4

    .line 3811
    invoke-static {v0, v2, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_603

    .line 3820
    :cond_57b
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 3821
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 3822
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_58d

    move/from16 v22, v23

    :cond_58d
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 3823
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v22, ""

    const-string v23, ""

    const-string v15, "Unknown"

    const-string v21, ""

    filled-new-array/range {v15 .. v23}, [Ljava/lang/Object;

    move-result-object v4

    .line 3820
    invoke-static {v0, v3, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3824
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3825
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3826
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 3827
    move-object/from16 p2, v4

    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_5c7

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v4

    goto :goto_5cb

    .line 3828
    :cond_5c7
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v4

    .line 3827
    :goto_5cb
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3828
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    add-long v8, p8, v8

    .line 3829
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    add-long v9, p10, v10

    .line 3830
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    add-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "TOTAL"

    move-object/from16 p8, p2

    move-object/from16 p11, v4

    move-object/from16 p9, v5

    move-object/from16 p15, v6

    move-object/from16 p7, v7

    move-object/from16 p13, v8

    move-object/from16 p14, v9

    move-object/from16 p10, v15

    move-object/from16 p12, v16

    filled-new-array/range {p7 .. p15}, [Ljava/lang/Object;

    move-result-object v4

    .line 3824
    invoke-static {v0, v3, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3833
    :goto_603
    if-eqz p4, :cond_6db

    .line 3834
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3835
    const-string v4, " Dalvik Details"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3837
    const/16 v15, 0x11

    .line 3838
    :goto_60f
    const/16 v4, 0x20

    if-ge v15, v4, :cond_6db

    .line 3839
    invoke-virtual {v1, v15}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v4

    .line 3840
    invoke-virtual {v1, v15}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v5

    .line 3841
    invoke-virtual {v1, v15}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v6

    .line 3842
    invoke-virtual {v1, v15}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v7

    .line 3843
    invoke-virtual {v1, v15}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v8

    .line 3844
    invoke-virtual {v1, v15}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v9

    .line 3845
    invoke-virtual {v1, v15}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v10

    .line 3846
    invoke-virtual {v1, v15}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v11

    .line 3847
    invoke-virtual {v1, v15}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v12

    .line 3848
    if-nez v4, :cond_64a

    if-nez v6, :cond_64a

    if-nez v7, :cond_64a

    if-nez v8, :cond_64a

    if-nez v9, :cond_64a

    .line 3850
    iget-boolean v13, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v13, :cond_647

    move v13, v11

    goto :goto_648

    :cond_647
    move v13, v10

    :goto_648
    if-eqz v13, :cond_6d7

    .line 3851
    :cond_64a
    if-eqz p3, :cond_69b

    .line 3852
    invoke-static {v15}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v13

    .line 3853
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3854
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3855
    move-object/from16 p5, v4

    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_66f

    move v10, v11

    :cond_66f
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3856
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, ""

    const-string v12, ""

    const-string v16, ""

    move-object/from16 p11, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p12, v10

    move-object/from16 p14, v11

    move-object/from16 p15, v12

    move-object/from16 p4, v13

    move-object/from16 p13, v16

    filled-new-array/range {p4 .. p15}, [Ljava/lang/Object;

    move-result-object v4

    .line 3852
    invoke-static {v0, v2, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6d7

    .line 3858
    :cond_69b
    invoke-static {v15}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v5

    .line 3859
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3860
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3861
    iget-boolean v8, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v8, :cond_6b0

    move v10, v11

    :cond_6b0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 3862
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    move-object/from16 p5, v4

    move-object/from16 p4, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move-object/from16 p10, v12

    filled-new-array/range {p4 .. p12}, [Ljava/lang/Object;

    move-result-object v4

    .line 3858
    invoke-static {v0, v3, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3838
    :cond_6d7
    :goto_6d7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_60f

    .line 3869
    :cond_6db
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3870
    const-string v2, " App Summary"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3871
    const-string v2, "Pss(KB)"

    const-string v3, "Rss(KB)"

    const-string v4, ""

    filled-new-array {v4, v2, v4, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%21s %8s %21s %8s"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3872
    const-string v2, "------"

    filled-new-array {v4, v2, v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3873
    nop

    .line 3874
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeapRss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Java Heap:"

    filled-new-array {v5, v2, v4, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 3873
    const-string v3, "%21s %8d %21s %8d"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3875
    nop

    .line 3876
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3877
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeapRss()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Native Heap:"

    filled-new-array {v6, v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 3875
    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3878
    nop

    .line 3879
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryCodeRss()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Code:"

    filled-new-array {v6, v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 3878
    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3880
    nop

    .line 3881
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryStackRss()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Stack:"

    filled-new-array {v6, v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 3880
    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3882
    nop

    .line 3883
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphicsRss()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Graphics:"

    filled-new-array {v6, v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 3882
    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3884
    nop

    .line 3885
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Private Other:"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 3884
    const-string v3, "%21s %8d"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3886
    nop

    .line 3887
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "System:"

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 3886
    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3888
    nop

    .line 3889
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryUnknownRss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Unknown:"

    filled-new-array {v3, v4, v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 3888
    const-string v3, "%21s %8s %21s %8d"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3890
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3891
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    const-string v3, "%21s %8d %21s %8d %21s %8d"

    if-eqz v2, :cond_7f5

    .line 3892
    nop

    .line 3893
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3894
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3895
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "TOTAL PSS:"

    const-string v6, "TOTAL RSS:"

    const-string v7, "TOTAL SWAP PSS:"

    move-object/from16 p6, v1

    move-object/from16 p2, v2

    move-object/from16 p4, v4

    move-object/from16 p1, v5

    move-object/from16 p3, v6

    move-object/from16 p5, v7

    filled-new-array/range {p1 .. p6}, [Ljava/lang/Object;

    move-result-object v1

    .line 3892
    invoke-static {v0, v3, v1}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_827

    .line 3897
    :cond_7f5
    nop

    .line 3898
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3899
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3900
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "TOTAL PSS:"

    const-string v6, "TOTAL RSS:"

    const-string v7, "TOTAL SWAP (KB):"

    move-object/from16 p6, v1

    move-object/from16 p2, v2

    move-object/from16 p4, v4

    move-object/from16 p1, v5

    move-object/from16 p3, v6

    move-object/from16 p5, v7

    filled-new-array/range {p1 .. p6}, [Ljava/lang/Object;

    move-result-object v1

    .line 3897
    invoke-static {v0, v3, v1}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3902
    :goto_827
    return-void
.end method

.method private static blacklist dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V
    .registers 16

    .line 3913
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    .line 3915
    const-wide v0, 0x10900000001L

    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3916
    const-wide v0, 0x10500000002L

    invoke-virtual {p0, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3917
    const-wide p3, 0x10500000003L

    invoke-virtual {p0, p3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3918
    const-wide p3, 0x10500000004L

    invoke-virtual {p0, p3, p4, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3919
    const-wide p3, 0x10500000005L

    invoke-virtual {p0, p3, p4, p7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3920
    const-wide p3, 0x10500000006L

    invoke-virtual {p0, p3, p4, p8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3921
    const-wide p3, 0x10500000007L

    invoke-virtual {p0, p3, p4, p9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3922
    if-eqz p10, :cond_47

    .line 3923
    const-wide p3, 0x10500000009L

    invoke-virtual {p0, p3, p4, p12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_4f

    .line 3925
    :cond_47
    const-wide p3, 0x10500000008L

    invoke-virtual {p0, p3, p4, p11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3927
    :goto_4f
    const-wide p3, 0x1050000000aL

    invoke-virtual {p0, p3, p4, p13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3929
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3930
    return-void
.end method

.method private blacklist generateForegroundServiceDidNotStartInTimeException(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;
    .registers 4

    .line 2523
    nop

    .line 2524
    invoke-static {p2}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;->getServiceClassNameFromExtras(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 2525
    if-nez p2, :cond_9

    const/4 p2, 0x0

    goto :goto_d

    .line 2526
    :cond_9
    invoke-static {p2}, Landroid/app/Service;->getStartForegroundServiceStackTrace(Ljava/lang/String;)Landroid/app/StackTrace;

    move-result-object p2

    .line 2527
    :goto_d
    new-instance v0, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;

    invoke-direct {v0, p1, p2}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist generateForegroundServiceDidNotStopInTimeException(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/RemoteServiceException$ForegroundServiceDidNotStopInTimeException;
    .registers 4

    .line 2532
    nop

    .line 2533
    invoke-static {p2}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStopInTimeException;->getServiceClassNameFromExtras(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 2534
    if-nez p2, :cond_9

    const/4 p2, 0x0

    goto :goto_d

    .line 2535
    :cond_9
    invoke-static {p2}, Landroid/app/Service;->getStartForegroundServiceStackTrace(Ljava/lang/String;)Landroid/app/StackTrace;

    move-result-object p2

    .line 2536
    :goto_d
    new-instance v0, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStopInTimeException;

    invoke-direct {v0, p1, p2}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStopInTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist getBackupAgentName(Landroid/app/ActivityThread$CreateBackupAgentData;)Ljava/lang/String;
    .registers 5

    .line 5465
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 5467
    if-nez v0, :cond_12

    iget v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    iget p1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_12

    .line 5469
    :cond_10
    const-string v0, "android.app.backup.FullBackupAgent"

    .line 5471
    :cond_12
    return-object v0
.end method

.method private blacklist getBackupAgentsForUser(I)Landroid/util/ArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;"
        }
    .end annotation

    .line 5496
    iget-object v0, p0, Landroid/app/ActivityThread;->mBackupAgentsByUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 5497
    if-nez v0, :cond_14

    .line 5498
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 5499
    iget-object v1, p0, Landroid/app/ActivityThread;->mBackupAgentsByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5501
    :cond_14
    return-object v0
.end method

.method private blacklist getCoreSettingsForDefaultDeviceLocked()Landroid/os/Bundle;
    .registers 2

    .line 9221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/ActivityThread;->getCoreSettingsForDeviceLocked(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCoreSettingsForDeviceLocked(I)Landroid/os/Bundle;
    .registers 4

    .line 9225
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->deviceAwareSettingsOverride()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 9226
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 9227
    if-eqz p1, :cond_1f

    if-nez v0, :cond_1f

    .line 9230
    iget-object p1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 9232
    :cond_1f
    return-object v0

    .line 9234
    :cond_20
    iget-object p1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    return-object p1
.end method

.method private blacklist getGetProviderKey(Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;
    .registers 5

    .line 8545
    new-instance v0, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v0, p1, p2}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 8546
    iget-object p1, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 8547
    :try_start_8
    iget-object p2, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    new-instance v1, Landroid/app/ActivityThread$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/app/ActivityThread$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p2, v0, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityThread$ProviderKey;

    .line 8548
    monitor-exit p1

    return-object p2

    .line 8549
    :catchall_17
    move-exception p2

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw p2
.end method

.method private greylist-max-o getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;
    .registers 5

    .line 7795
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_49

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_49

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 7796
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 7799
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 7800
    invoke-static {p1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.dalvik.vm.isa."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7802
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7803
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_38

    :cond_37
    move-object p1, v0

    .line 7805
    :goto_38
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v0

    .line 7806
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 7807
    iget-object p1, p2, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object p1

    .line 7810
    :cond_49
    iget-object p1, p2, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object p1
.end method

.method public static greylist-max-o getIntentBeingBroadcast()Landroid/content/Intent;
    .registers 1

    .line 5240
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private static blacklist getOperationTypeFromBackupMode(I)I
    .registers 3

    .line 5450
    packed-switch p0, :pswitch_data_22

    .line 5458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid backup mode when initialising BackupAgent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityThread"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5460
    const/4 p0, -0x1

    return p0

    .line 5453
    :pswitch_1d
    const/4 p0, 0x1

    return p0

    .line 5456
    :pswitch_1f
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method private greylist-max-o getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;
    .registers 15

    .line 3271
    nop

    .line 3272
    invoke-static {}, Landroid/os/Process;->isSdkSandbox()Z

    move-result v7

    .line 3271
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZ)Landroid/app/LoadedApk;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZ)Landroid/app/LoadedApk;
    .registers 18

    .line 3278
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v3

    .line 3279
    :goto_11
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 3281
    const/4 v4, 0x0

    if-nez v0, :cond_32

    if-eqz p7, :cond_1a

    goto :goto_32

    .line 3284
    :cond_1a
    if-eqz p5, :cond_27

    .line 3285
    :try_start_1c
    iget-object v5, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    goto :goto_33

    .line 3287
    :cond_27
    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    goto :goto_33

    .line 3283
    :cond_32
    :goto_32
    move-object v5, v4

    .line 3290
    :goto_33
    if-eqz v5, :cond_40

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk;

    goto :goto_40

    .line 3340
    :catchall_3c
    move-exception v0

    move-object p1, v0

    goto/16 :goto_ec

    .line 3292
    :cond_40
    :goto_40
    if-eqz v4, :cond_96

    .line 3293
    invoke-static {v4, p1}, Landroid/app/ActivityThread;->isLoadedApkResourceDirsUpToDate(Landroid/app/LoadedApk;Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-nez p2, :cond_94

    .line 3294
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-wide p2, p2, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    iget-wide p4, p1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    cmp-long p2, p2, p4

    if-lez p2, :cond_6f

    .line 3297
    const-string p2, "ActivityThread"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getPackageInfo() called with an older ApplicationInfo than the cached version for package "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 3300
    :cond_6f
    const-string p2, "ActivityThread"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getPackageInfo() caused update to cached ApplicationInfo for package "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3303
    invoke-static {p0, p1, p2}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 3304
    invoke-virtual {v4, p1, p2}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 3308
    :cond_94
    :goto_94
    monitor-exit v1

    return-object v4

    .line 3319
    :cond_96
    move v4, v2

    new-instance v2, Landroid/app/LoadedApk;

    if-eqz p5, :cond_a3

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_a3

    move v8, v4

    goto :goto_a4

    :cond_a3
    move v8, v3

    :goto_a4
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V

    .line 3324
    iget-boolean p2, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz p2, :cond_ca

    const-string p2, "android"

    iget-object p3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ca

    .line 3325
    nop

    .line 3326
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object p2

    iget-object p2, p2, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p2}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 3325
    invoke-virtual {v2, p1, p2}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 3329
    :cond_ca
    if-nez v0, :cond_ea

    if-eqz p7, :cond_cf

    goto :goto_ea

    .line 3331
    :cond_cf
    if-eqz p5, :cond_de

    .line 3332
    iget-object p2, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ea

    .line 3335
    :cond_de
    iget-object p2, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3339
    :cond_ea
    :goto_ea
    monitor-exit v1

    return-object v2

    .line 3340
    :goto_ec
    monitor-exit v1
    :try_end_ed
    .catchall {:try_start_1c .. :try_end_ed} :catchall_3c

    throw p1
.end method

.method public static greylist getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 3128
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v0, :cond_7

    .line 3129
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0

    .line 3131
    :cond_7
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3132
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 3133
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method public static blacklist getPermissionManager()Landroid/permission/IPermissionManager;
    .registers 1

    .line 3138
    sget-object v0, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    if-eqz v0, :cond_7

    .line 3139
    sget-object v0, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    return-object v0

    .line 3141
    :cond_7
    const-string/jumbo v0, "permissionmgr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3142
    invoke-static {v0}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    .line 3143
    sget-object v0, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    return-object v0
.end method

.method private blacklist getSystemUiContextNoCreateLocked(I)Landroid/content/Context;
    .registers 5

    .line 3512
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 3513
    iget-object v1, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 3514
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_20

    .line 3515
    return-object v1

    .line 3512
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3518
    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist handleActivityConfigurationChangedInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;Z)V
    .registers 9

    .line 7396
    iget-object v0, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7397
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 7398
    invoke-virtual {p2, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 7404
    monitor-exit v0

    return-void

    .line 7406
    :cond_15
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7407
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_7d

    .line 7409
    const/4 v0, -0x1

    if-ne p3, v0, :cond_26

    .line 7412
    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getDisplayId()I

    move-result p3

    .line 7414
    :cond_26
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 7415
    invoke-virtual {v0}, Landroid/app/Activity;->getDisplayId()I

    move-result v0

    .line 7414
    invoke-static {v0, p3}, Landroid/window/ConfigurationHelper;->isDifferentDisplay(II)Z

    move-result v0

    .line 7416
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_3f

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_3f

    if-nez v0, :cond_3f

    .line 7423
    return-void

    .line 7427
    :cond_3f
    iput-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 7428
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 7430
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object p2, p2, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz p2, :cond_57

    .line 7431
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object p2, p2, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p2

    goto :goto_58

    :cond_57
    const/4 p2, 0x0

    .line 7439
    :goto_58
    iget-object p4, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 7440
    invoke-virtual {p4}, Landroid/app/ConfigurationController;->getCompatConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    .line 7441
    if-eqz v0, :cond_62

    move v1, p3

    goto :goto_68

    :cond_62
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getDisplayId()I

    move-result v1

    .line 7439
    :goto_68
    invoke-direct {p0, p1, p4, v1, p5}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;

    move-result-object p4

    .line 7445
    if-eqz p2, :cond_76

    .line 7446
    if-eqz v0, :cond_73

    .line 7447
    invoke-virtual {p2, p3, p4}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 7449
    :cond_73
    invoke-virtual {p2, p3}, Landroid/view/ViewRootImpl;->updateConfiguration(I)V

    .line 7451
    :cond_76
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 7454
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleActivityWindowInfoChanged(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 7455
    return-void

    .line 7407
    :catchall_7d
    move-exception p1

    :try_start_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw p1
.end method

.method private blacklist handleActivityWindowInfoChanged(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 4

    .line 7458
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object v0

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmLastReportedActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/ActivityWindowInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7459
    return-void

    .line 7461
    :cond_f
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmLastReportedActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object v0

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 7462
    invoke-static {}, Landroid/app/servertransaction/ClientTransactionListenerController;->getInstance()Landroid/app/servertransaction/ClientTransactionListenerController;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/servertransaction/ClientTransactionListenerController;->onActivityWindowInfoChanged(Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;)V

    .line 7464
    return-void
.end method

.method static greylist-max-o handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V
    .registers 4

    .line 5188
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_9

    :cond_8
    move-object p1, v0

    .line 5189
    :goto_9
    invoke-static {p0, p1}, Landroid/app/ActivityThread;->attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5190
    return-void

    .line 5192
    :cond_10
    if-eqz p1, :cond_15

    .line 5193
    invoke-static {p0, v0}, Landroid/app/ActivityThread;->attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    .line 5195
    :cond_15
    return-void
.end method

.method static blacklist handleAttachStartupAgents(Ljava/lang/String;)V
    .registers 5

    .line 5199
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/app/ContextImpl;->getCodeCacheDirBeforeBind(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 5200
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 5201
    return-void

    .line 5203
    :cond_17
    const-string/jumbo v2, "startup_agents"

    invoke-interface {v0, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 5204
    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 5205
    invoke-static {v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_71

    .line 5206
    :try_start_2a
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    .line 5207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5208
    invoke-interface {v2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5207
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V
    :try_end_5d
    .catchall {:try_start_2a .. :try_end_5d} :catchall_64

    .line 5212
    goto :goto_2e

    .line 5213
    :cond_5e
    if-eqz v0, :cond_70

    :try_start_60
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_71

    goto :goto_70

    .line 5205
    :catchall_64
    move-exception p0

    if-eqz v0, :cond_6f

    :try_start_67
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception v0

    :try_start_6c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6f
    :goto_6f
    throw p0
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_70} :catch_71

    .line 5217
    :cond_70
    :goto_70
    goto :goto_72

    .line 5215
    :catch_71
    move-exception p0

    .line 5218
    :goto_72
    return-void
.end method

.method private greylist handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .registers 16

    .line 7816
    iget-object v0, p0, Landroid/app/ActivityThread;->mDdmSyncStageUpdater:Landroid/os/DdmSyncStageUpdater;

    sget-object v1, Landroid/os/DdmSyncState$Stage;->Bind:Landroid/os/DdmSyncState$Stage;

    invoke-virtual {v0, v1}, Landroid/os/DdmSyncStageUpdater;->next(Landroid/os/DdmSyncState$Stage;)V

    .line 7819
    invoke-static {}, Ldalvik/system/VMRuntime;->registerSensitiveThread()V

    .line 7821
    const-string v0, "debug.allocTracker.stackDepth"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7822
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 7823
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ldalvik/system/VMDebug;->setAllocTrackerStackDepth(I)V

    .line 7825
    :cond_1d
    iget-boolean v0, p1, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    .line 7826
    invoke-static {v1}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->setRecentAllocationsTrackingEnabled(Z)V

    .line 7829
    :cond_25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p1, Landroid/app/ActivityThread$AppBindData;->startRequestedElapsedTime:J

    iget-wide v8, p1, Landroid/app/ActivityThread$AppBindData;->startRequestedUptime:J

    invoke-static/range {v2 .. v9}, Landroid/os/Process;->setStartTimes(JJJJ)V

    .line 7832
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->disabledCompatChanges:[J

    iget-object v2, p1, Landroid/app/ActivityThread$AppBindData;->mLoggableCompatChanges:[J

    iget-boolean v3, p1, Landroid/app/ActivityThread$AppBindData;->mLogChangeChecksToStatsD:Z

    invoke-static {v0, v2, v3}, Landroid/app/AppCompatCallbacks;->install([J[JZ)V

    .line 7837
    invoke-static {}, Ldalvik/system/AppSpecializationHooks;->handleCompatChangesBeforeBindingApplication()V

    .line 7842
    invoke-direct {p0}, Landroid/app/ActivityThread;->initZipPathValidatorCallback()V

    .line 7844
    iput-object p1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 7845
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v2, p1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/app/ConfigurationController;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 7846
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v2, p1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/app/ConfigurationController;->setCompatConfiguration(Landroid/content/res/Configuration;)V

    .line 7847
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 7848
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/app/ActivityThread;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 7850
    new-instance v0, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 7851
    nop

    .line 7852
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    const/4 v2, 0x0

    if-eqz v0, :cond_b0

    .line 7853
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v3, v3, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 7854
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v3, v3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v3, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 7855
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget v3, v3, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v3, v0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 7856
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v3, v3, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v3, v0, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 7857
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v3, v3, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v3, v0, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    .line 7858
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget v3, v3, Landroid/app/ProfilerInfo;->clockType:I

    iput v3, v0, Landroid/app/ActivityThread$Profiler;->mClockType:I

    .line 7859
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget v3, v3, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    iput v3, v0, Landroid/app/ActivityThread$Profiler;->mProfilerOutputVersion:I

    .line 7860
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v0, v0, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    if-eqz v0, :cond_b0

    .line 7861
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v0, v0, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    move-object v3, v0

    goto :goto_b1

    .line 7865
    :cond_b0
    move-object v3, v2

    :goto_b1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Ldalvik/system/VMDebug;->setUserId(I)V

    .line 7866
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMDebug;->addApplication(Ljava/lang/String;)V

    .line 7868
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 7869
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 7871
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 7869
    invoke-static {v0, v4, v5}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7872
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->setProcessPackageName(Ljava/lang/String;)V

    .line 7873
    iget-object v0, p0, Landroid/app/ActivityThread;->mDdmSyncStageUpdater:Landroid/os/DdmSyncStageUpdater;

    sget-object v4, Landroid/os/DdmSyncState$Stage;->Named:Landroid/os/DdmSyncState$Stage;

    invoke-virtual {v0, v4}, Landroid/os/DdmSyncStageUpdater;->next(Landroid/os/DdmSyncState$Stage;)V

    .line 7877
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->setProcessDataDirectory(Ljava/lang/String;)V

    .line 7879
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_f1

    .line 7880
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 7887
    :cond_f1
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xc

    if-gt v0, v4, :cond_fe

    .line 7888
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 7892
    :cond_fe
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1d

    const/4 v5, 0x0

    if-lt v0, v4, :cond_109

    move v0, v1

    goto :goto_10a

    :cond_109
    move v0, v5

    :goto_10a
    invoke-static {v0}, Landroid/util/UtilConfig;->setThrowExceptionForUpperArrayOutOfBounds(Z)V

    .line 7897
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Landroid/graphics/Compatibility;->setTargetSdkVersion(I)V

    .line 7905
    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 7910
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 7914
    :try_start_120
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->mSerializedSystemFontMap:Landroid/os/SharedMemory;

    invoke-static {v0}, Landroid/graphics/Typeface;->setSystemFontMap(Landroid/os/SharedMemory;)V
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_125} :catch_126
    .catch Landroid/system/ErrnoException; {:try_start_120 .. :try_end_125} :catch_126

    .line 7918
    goto :goto_131

    .line 7915
    :catch_126
    move-exception v0

    .line 7916
    const-string v0, "ActivityThread"

    const-string v4, "Failed to parse serialized system font map"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7917
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    .line 7921
    :goto_131
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v4

    .line 7927
    :try_start_134
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v6, p1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget-object v7, p1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v6, v7}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 7928
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 7931
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->applyCompatConfiguration()Landroid/content/res/Configuration;

    .line 7932
    monitor-exit v4
    :try_end_149
    .catchall {:try_start_134 .. :try_end_149} :catchall_40f

    .line 7934
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppPackage:Ljava/lang/String;

    if-eqz v0, :cond_14f

    move v13, v1

    goto :goto_150

    :cond_14f
    move v13, v5

    .line 7935
    :goto_150
    iget-object v7, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Landroid/app/ActivityThread;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 7938
    if-eqz v13, :cond_16a

    .line 7939
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v4, p1, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    iget-object v7, p1, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppPackage:Ljava/lang/String;

    invoke-virtual {v0, v4, v7}, Landroid/app/LoadedApk;->setSdkSandboxStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 7943
    :cond_16a
    if-eqz v3, :cond_171

    .line 7944
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-static {v3, v0}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V

    .line 7950
    :cond_171
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_180

    .line 7952
    iput-boolean v1, v6, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    .line 7953
    const/16 v0, 0xa0

    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 7955
    :cond_180
    iget-object v0, v6, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v3}, Landroid/app/ConfigurationController;->updateDefaultDensity(I)V

    .line 7959
    invoke-direct {p0}, Landroid/app/ActivityThread;->getCoreSettingsForDefaultDeviceLocked()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "time_12_24"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7961
    nop

    .line 7962
    if-eqz v0, :cond_1a5

    .line 7963
    const-string v3, "24"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1a6

    :cond_1a2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1a6

    .line 7962
    :cond_1a5
    move-object v0, v2

    .line 7968
    :goto_1a6
    invoke-static {v0}, Ljava/text/DateFormat;->set24HourTimePref(Ljava/lang/Boolean;)V

    .line 7970
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDebugViewAttributeState()Z

    .line 7972
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/os/StrictMode;->initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 7973
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 7976
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-eqz v0, :cond_1c0

    move v0, v1

    goto :goto_1c1

    :cond_1c0
    move v0, v5

    .line 7977
    :goto_1c1
    if-nez v0, :cond_1ce

    iget-object v4, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v4

    if-eqz v4, :cond_1cc

    goto :goto_1ce

    :cond_1cc
    move v4, v5

    goto :goto_1cf

    :cond_1ce
    :goto_1ce
    move v4, v1

    .line 7978
    :goto_1cf
    invoke-static {v4}, Landroid/os/Trace;->setAppTracingAllowed(Z)V

    .line 7979
    if-nez v4, :cond_1d8

    sget-boolean v7, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v7, :cond_1df

    :cond_1d8
    iget-boolean v7, p1, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    if-eqz v7, :cond_1df

    .line 7980
    invoke-static {}, Landroid/os/Binder;->enableStackTracking()V

    .line 7984
    :cond_1df
    if-nez v4, :cond_1e5

    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_1e8

    .line 7985
    :cond_1e5
    invoke-direct {p0}, Landroid/app/ActivityThread;->nInitZygoteChildHeapProfiling()V

    .line 7989
    :cond_1e8
    if-nez v0, :cond_1f1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1ef

    goto :goto_1f1

    :cond_1ef
    move v0, v5

    goto :goto_1f2

    :cond_1f1
    :goto_1f1
    move v0, v1

    :goto_1f2
    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->setDebuggingEnabled(Z)V

    .line 7990
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->setPackageName(Ljava/lang/String;)V

    .line 7993
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->setContextForInit(Landroid/content/Context;)V

    .line 7994
    iget-boolean v0, p1, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    if-eqz v0, :cond_20a

    .line 7995
    invoke-static {}, Landroid/graphics/HardwareRenderer;->setIsSystemOrPersistent()V

    .line 8001
    :cond_20a
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    if-eqz v0, :cond_214

    .line 8002
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->prepareInstrumentation(Landroid/app/ActivityThread$AppBindData;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    move-object v4, v0

    goto :goto_215

    .line 8004
    :cond_214
    move-object v4, v2

    .line 8007
    :goto_215
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    .line 8008
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v8

    .line 8009
    iget-object v0, v6, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0, v8}, Landroid/app/ConfigurationController;->updateLocaleListFromAppContext(Landroid/content/Context;)V

    .line 8012
    const-string v0, "Setup proxies"

    const-wide/16 v9, 0x40

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8018
    :try_start_22b
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 8019
    if-eqz v0, :cond_242

    .line 8020
    const-class v0, Landroid/net/ConnectivityManager;

    .line 8021
    invoke-virtual {v8, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8022
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Proxy;->setHttpProxyConfiguration(Landroid/net/ProxyInfo;)V
    :try_end_242
    .catchall {:try_start_22b .. :try_end_242} :catchall_409

    .line 8025
    :cond_242
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 8026
    nop

    .line 8028
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_25e

    .line 8029
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v1

    .line 8031
    :try_start_250
    invoke-direct {p0, v8}, Landroid/app/ActivityThread;->setupGraphicsSupport(Landroid/content/Context;)V
    :try_end_253
    .catchall {:try_start_250 .. :try_end_253} :catchall_258

    .line 8033
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 8034
    nop

    .line 8035
    goto :goto_261

    .line 8033
    :catchall_258
    move-exception v0

    move-object p1, v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 8034
    throw p1

    .line 8036
    :cond_25e
    invoke-static {v1}, Landroid/graphics/HardwareRenderer;->setIsolatedProcess(Z)V

    .line 8042
    :goto_261
    const-string v0, "NetworkSecurityConfigProvider.install"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8043
    invoke-static {v8}, Landroid/security/net/config/NetworkSecurityConfigProvider;->install(Landroid/content/Context;)V

    .line 8044
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 8049
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_275

    .line 8050
    invoke-static {v8}, Landroid/net/TrafficStats;->init(Landroid/content/Context;)V

    .line 8054
    :cond_275
    if-eqz v4, :cond_27b

    .line 8055
    invoke-direct {p0, v4, p1, v8}, Landroid/app/ActivityThread;->initInstrumentation(Landroid/content/pm/InstrumentationInfo;Landroid/app/ActivityThread$AppBindData;Landroid/app/ContextImpl;)V

    goto :goto_287

    .line 8057
    :cond_27b
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, v6, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 8058
    iget-object v0, v6, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->basicInit(Landroid/app/ActivityThread;)V

    .line 8061
    :goto_287
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_298

    .line 8062
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    goto :goto_29f

    .line 8066
    :cond_298
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clampGrowthLimit()V

    .line 8073
    :goto_29f
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 8074
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v9

    .line 8076
    iget v0, p1, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    if-eqz v0, :cond_2c2

    .line 8077
    iget-object v0, v6, Landroid/app/ActivityThread;->mDdmSyncStageUpdater:Landroid/os/DdmSyncStageUpdater;

    sget-object v10, Landroid/os/DdmSyncState$Stage;->Debugger:Landroid/os/DdmSyncState$Stage;

    invoke-virtual {v0, v10}, Landroid/os/DdmSyncStageUpdater;->next(Landroid/os/DdmSyncState$Stage;)V

    .line 8078
    iget v0, p1, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    if-ne v0, v3, :cond_2ba

    .line 8079
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->waitForDebugger(Landroid/app/ActivityThread$AppBindData;)V

    goto :goto_2c2

    .line 8080
    :cond_2ba
    iget v0, p1, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2c2

    .line 8081
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->suspendAllAndSendVmStart(Landroid/app/ActivityThread$AppBindData;)V

    .line 8085
    :cond_2c2
    :goto_2c2
    iget-object v0, v6, Landroid/app/ActivityThread;->mDdmSyncStageUpdater:Landroid/os/DdmSyncStageUpdater;

    sget-object v3, Landroid/os/DdmSyncState$Stage;->Running:Landroid/os/DdmSyncState$Stage;

    invoke-virtual {v0, v3}, Landroid/os/DdmSyncStageUpdater;->next(Landroid/os/DdmSyncState$Stage;)V

    .line 8087
    nop

    .line 8091
    const/16 v3, 0x1b

    :try_start_2cc
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-boolean v10, p1, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    invoke-virtual {v0, v10, v2}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v2

    .line 8094
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->autofillOptions:Landroid/content/AutofillOptions;

    invoke-virtual {v2, v0}, Landroid/app/Application;->setAutofillOptions(Landroid/content/AutofillOptions;)V

    .line 8097
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->contentCaptureOptions:Landroid/content/ContentCaptureOptions;

    invoke-virtual {v2, v0}, Landroid/app/Application;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 8098
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->contentCaptureOptions:Landroid/content/ContentCaptureOptions;

    if-eqz v0, :cond_2f1

    .line 8099
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->contentCaptureOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->enableReceiver:Z

    if-eqz v0, :cond_2f1

    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->contentCaptureOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-nez v0, :cond_2f1

    .line 8104
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->startIfNeeded()V

    .line 8107
    :cond_2f1
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v10, 0xa4

    invoke-virtual {p0, v10, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 8109
    iput-object v2, v6, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 8111
    monitor-enter p0
    :try_end_2fd
    .catchall {:try_start_2cc .. :try_end_2fd} :catchall_3f4

    .line 8112
    :try_start_2fd
    iget-boolean v0, v6, Landroid/app/ActivityThread;->mUpdateHttpProxyOnBind:Z

    .line 8115
    monitor-exit p0
    :try_end_300
    .catchall {:try_start_2fd .. :try_end_300} :catchall_3f1

    .line 8116
    if-eqz v0, :cond_305

    .line 8117
    :try_start_302
    invoke-static {v2}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    .line 8122
    :cond_305
    iget-boolean v0, p1, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    if-nez v0, :cond_316

    .line 8123
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_316

    .line 8124
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    :try_end_316
    .catchall {:try_start_302 .. :try_end_316} :catchall_3f4

    .line 8131
    :cond_316
    :try_start_316
    iget-object v0, v6, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v10, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_31d
    .catch Ljava/lang/Exception; {:try_start_316 .. :try_end_31d} :catch_3d5
    .catchall {:try_start_316 .. :try_end_31d} :catchall_3f4

    .line 8136
    nop

    .line 8138
    :try_start_31e
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v10

    .line 8139
    iget-object v0, v6, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, v2}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_327
    .catch Ljava/lang/Exception; {:try_start_31e .. :try_end_327} :catch_328
    .catchall {:try_start_31e .. :try_end_327} :catchall_3f4

    .line 8146
    goto :goto_334

    .line 8140
    :catch_328
    move-exception v0

    .line 8141
    nop

    .line 8142
    :try_start_32a
    iget-object v10, v6, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v10, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v10
    :try_end_330
    .catchall {:try_start_32a .. :try_end_330} :catchall_3f4

    if-eqz v10, :cond_3b4

    const-wide/16 v10, 0x0

    .line 8150
    :goto_334
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v3, :cond_344

    .line 8151
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_347

    .line 8152
    :cond_344
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8157
    :cond_347
    invoke-static {v8}, Landroid/provider/FontsContract;->setApplicationContextForResources(Landroid/content/Context;)V

    .line 8158
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_382

    .line 8161
    :try_start_350
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 8164
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 8161
    const-wide/16 v8, 0x80

    invoke-interface {v0, v1, v8, v9, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 8165
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_37a

    .line 8166
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "preloaded_fonts"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 8168
    if-eqz v0, :cond_37a

    .line 8169
    iget-object p1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {p1}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->preloadFonts(I)V
    :try_end_37a
    .catch Landroid/os/RemoteException; {:try_start_350 .. :try_end_37a} :catch_37b

    .line 8174
    :cond_37a
    goto :goto_382

    .line 8172
    :catch_37b
    move-exception v0

    move-object p1, v0

    .line 8173
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 8178
    :cond_382
    :goto_382
    :try_start_382
    iget-wide v0, v6, Landroid/app/ActivityThread;->mStartSeq:J

    invoke-interface {v7, v0, v1, v10, v11}, Landroid/app/IActivityManager;->finishAttachApplication(JJ)V
    :try_end_387
    .catch Landroid/os/RemoteException; {:try_start_382 .. :try_end_387} :catch_3ad

    .line 8181
    nop

    .line 8184
    new-instance p1, Landroid/app/ActivityThread$3;

    invoke-direct {p1, p0, v7}, Landroid/app/ActivityThread$3;-><init>(Landroid/app/ActivityThread;Landroid/app/IActivityManager;)V

    invoke-static {p1}, Landroid/os/Binder;->setTransactionCallback(Landroid/os/IBinderCallback;)V

    .line 8205
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result p1

    if-nez p1, :cond_3ac

    if-nez v4, :cond_3ac

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->reportPostgcMemoryMetrics()Z

    move-result p1

    if-eqz p1, :cond_3ac

    .line 8206
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/readonly/Flags;->postCleanupApis()Z

    move-result p1

    if-eqz p1, :cond_3ac

    .line 8207
    new-instance p1, Landroid/app/ActivityThread$4;

    invoke-direct {p1, p0}, Landroid/app/ActivityThread$4;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {p1}, Ldalvik/system/VMRuntime;->addPostCleanupCallback(Ljava/lang/Runnable;)V

    .line 8213
    :cond_3ac
    return-void

    .line 8179
    :catch_3ad
    move-exception v0

    move-object p1, v0

    .line 8180
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 8143
    :cond_3b4
    :try_start_3b4
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create application "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 8144
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 8133
    :catch_3d5
    move-exception v0

    .line 8134
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown in onCreate() of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3f1
    .catchall {:try_start_3b4 .. :try_end_3f1} :catchall_3f4

    .line 8115
    :catchall_3f1
    move-exception v0

    :try_start_3f2
    monitor-exit p0
    :try_end_3f3
    .catchall {:try_start_3f2 .. :try_end_3f3} :catchall_3f1

    :try_start_3f3
    throw v0
    :try_end_3f4
    .catchall {:try_start_3f3 .. :try_end_3f4} :catchall_3f4

    .line 8150
    :catchall_3f4
    move-exception v0

    iget-object p1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt p1, v3, :cond_405

    .line 8151
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_408

    .line 8152
    :cond_405
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8154
    :cond_408
    throw v0

    .line 8025
    :catchall_409
    move-exception v0

    move-object p1, v0

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 8026
    throw p1

    .line 7932
    :catchall_40f
    move-exception v0

    move-object p1, v0

    :try_start_411
    monitor-exit v4
    :try_end_412
    .catchall {:try_start_411 .. :try_end_412} :catchall_40f

    throw p1
.end method

.method private greylist-max-o handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .registers 7

    .line 5570
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    .line 5571
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 5574
    if-eqz v1, :cond_8b

    .line 5576
    :try_start_16
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 5577
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    iget-object v0, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    invoke-static {v0}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z

    move-result v0

    .line 5578
    invoke-virtual {v1}, Landroid/app/Service;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    .line 5577
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2e} :catch_5c

    .line 5580
    :try_start_2e
    iget-boolean v0, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    if-nez v0, :cond_44

    .line 5581
    iget-object v0, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 5582
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->bindToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, v4, v0}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 5584
    goto :goto_54

    .line 5585
    :cond_44
    iget-object v0, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 5586
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4, v4}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_54} :catch_56
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_54} :catch_5c

    .line 5591
    :goto_54
    nop

    .line 5598
    goto :goto_8b

    .line 5589
    :catch_56
    move-exception v0

    .line 5590
    :try_start_57
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5c} :catch_5c

    .line 5592
    :catch_5c
    move-exception v0

    .line 5593
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_66

    goto :goto_8b

    .line 5594
    :cond_66
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind to service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 5600
    :cond_8b
    :goto_8b
    return-void
.end method

.method private greylist-max-o handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 11

    .line 5373
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5374
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 5373
    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 5375
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_d8

    const-string v2, "ActivityThread"

    if-eq v0, v1, :cond_39

    .line 5376
    :try_start_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asked to instantiate non-matching package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_38} :catch_d8

    .line 5378
    return-void

    .line 5382
    :cond_39
    nop

    .line 5385
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 5388
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 5389
    iget-object v1, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 5390
    if-nez v1, :cond_4d

    .line 5391
    const-string p1, "Asked to create backup agent for nonexistent package"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5392
    return-void

    .line 5395
    :cond_4d
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->getBackupAgentName(Landroid/app/ActivityThread$CreateBackupAgentData;)Ljava/lang/String;

    move-result-object v3

    .line 5398
    nop

    .line 5399
    :try_start_52
    iget v4, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-direct {p0, v4}, Landroid/app/ActivityThread;->getBackupAgentsForUser(I)Landroid/util/ArrayMap;

    move-result-object v4

    .line 5400
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/backup/BackupAgent;

    .line 5401
    if-eqz v5, :cond_65

    .line 5406
    invoke-virtual {v5}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_64} :catch_be

    goto :goto_ac

    .line 5411
    :cond_65
    const/4 v5, 0x0

    :try_start_66
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 5412
    invoke-virtual {v6, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/backup/BackupAgent;

    .line 5415
    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 5416
    invoke-virtual {v0, v6}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 5417
    invoke-virtual {v6, v0}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 5419
    iget v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget v7, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupDestination:I

    iget v8, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 5420
    invoke-static {v8}, Landroid/app/ActivityThread;->getOperationTypeFromBackupMode(I)I

    move-result v8

    .line 5419
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/backup/BackupAgent;->onCreate(Landroid/os/UserHandle;II)V

    .line 5421
    invoke-virtual {v6}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v0
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_93} :catch_99

    .line 5422
    :try_start_93
    invoke-virtual {v4, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_97

    .line 5433
    goto :goto_ac

    .line 5423
    :catch_97
    move-exception v4

    goto :goto_9b

    :catch_99
    move-exception v4

    move-object v0, v5

    .line 5426
    :goto_9b
    :try_start_9b
    const-string v5, "Agent threw during creation"

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5427
    iget v2, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_ac

    iget v2, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_ab

    goto :goto_ac

    .line 5430
    :cond_ab
    throw v4
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_ac} :catch_be

    .line 5438
    :cond_ac
    :goto_ac
    :try_start_ac
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget p1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-interface {v2, v1, v0, p1}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_b5} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b5} :catch_be

    .line 5441
    nop

    .line 5445
    nop

    .line 5446
    return-void

    .line 5439
    :catch_b8
    move-exception p1

    .line 5440
    :try_start_b9
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_be} :catch_be

    .line 5442
    :catch_be
    move-exception p1

    .line 5443
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create BackupAgent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 5380
    :catch_d8
    move-exception p1

    .line 5381
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private greylist handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .registers 13

    .line 5508
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 5510
    iget-object v0, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 5511
    nop

    .line 5515
    const/4 v1, 0x0

    :try_start_d
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v9

    .line 5518
    iget-object v2, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 5519
    iget-object v2, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/LoadedApk;->getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_27

    .line 5521
    :cond_23
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 5523
    :goto_27
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/ActivityThread$CreateServiceData;->intent:Landroid/content/Intent;

    .line 5524
    invoke-virtual {v4, v2, v5, v6}, Landroid/app/AppComponentFactory;->instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;

    move-result-object v4
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_35} :catch_e1

    .line 5525
    nop

    .line 5526
    :try_start_36
    invoke-virtual {v4, p0, v0}, Landroid/app/Service;->createServiceBaseContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/content/Context;

    move-result-object v0

    .line 5525
    invoke-static {v0}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 5527
    iget-object v1, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v1, :cond_4e

    .line 5528
    iget-object v1, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/ContextImpl;

    .line 5530
    :cond_4e
    iget-object v1, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->attributionTags:[Ljava/lang/String;

    if-eqz v1, :cond_69

    iget-object v1, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->attributionTags:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_69

    .line 5531
    iget-object v1, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->attributionTags:[Ljava/lang/String;

    aget-object v1, v1, v3

    .line 5532
    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/ContextImpl;

    move-object v5, v0

    goto :goto_6a

    .line 5536
    :cond_69
    move-object v5, v0

    :goto_6a
    invoke-virtual {v5}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5537
    invoke-virtual {v9}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v1

    new-array v2, v3, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/res/loader/ResourcesLoader;

    .line 5536
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 5539
    invoke-virtual {v5, v4}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 5540
    iget-object v0, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v7, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v8, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 5541
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v10
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_8e} :catch_dd

    .line 5540
    move-object v6, p0

    :try_start_8f
    invoke-virtual/range {v4 .. v10}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 5542
    invoke-virtual {v4}, Landroid/app/Service;->isUiContext()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 5543
    iget v0, v6, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    if-nez v0, :cond_a2

    .line 5544
    iget v0, v6, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    invoke-virtual {v4, v0}, Landroid/app/Service;->updateDeviceId(I)V

    goto :goto_b9

    .line 5546
    :cond_a2
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v5, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 5547
    if-eqz v0, :cond_b9

    iget v1, v6, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    invoke-virtual {v0, v1}, Landroid/companion/virtual/VirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 5548
    iget v0, v6, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    invoke-virtual {v4, v0}, Landroid/app/Service;->updateDeviceId(I)V

    .line 5552
    :cond_b9
    :goto_b9
    invoke-virtual {v4}, Landroid/app/Service;->onCreate()V

    .line 5553
    iget-object v0, v6, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5554
    iget-object v0, v6, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_ca} :catch_db

    .line 5556
    :try_start_ca
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-interface {v0, v1, v3, v3, v3}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_d3
    .catch Landroid/os/RemoteException; {:try_start_ca .. :try_end_d3} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d3} :catch_db

    .line 5560
    nop

    .line 5566
    goto :goto_eb

    .line 5558
    :catch_d5
    move-exception v0

    .line 5559
    :try_start_d6
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_db} :catch_db

    .line 5561
    :catch_db
    move-exception v0

    goto :goto_df

    :catch_dd
    move-exception v0

    move-object v6, p0

    :goto_df
    move-object v1, v4

    goto :goto_e3

    :catch_e1
    move-exception v0

    move-object v6, p0

    .line 5562
    :goto_e3
    iget-object v2, v6, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 5567
    :goto_eb
    return-void

    .line 5563
    :cond_ec
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 8

    .line 5478
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 5479
    iget-object v0, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 5480
    iget v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-direct {p0, v1}, Landroid/app/ActivityThread;->getBackupAgentsForUser(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 5481
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/backup/BackupAgent;

    .line 5482
    const-string v3, "ActivityThread"

    if-eqz v2, :cond_3c

    .line 5484
    :try_start_18
    invoke-virtual {v2}, Landroid/app/backup/BackupAgent;->onDestroy()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 5488
    goto :goto_38

    .line 5485
    :catch_1c
    move-exception v2

    .line 5486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown in onDestroy by backup agent of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object p1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5487
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 5489
    :goto_38
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 5491
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to destroy unknown backup agent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5493
    :goto_52
    return-void
.end method

.method private greylist-max-o handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 8

    .line 5679
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 5681
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5682
    if-eqz v1, :cond_36

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_36

    .line 5683
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 5684
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 5685
    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/app/Activity;->dumpInternal(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5686
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_40

    .line 5689
    :cond_36
    iget-object p1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5690
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5691
    nop

    .line 5692
    return-void

    .line 5689
    :catchall_40
    move-exception v1

    iget-object p1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5690
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5691
    throw v1
.end method

.method private blacklist handleDumpGfxInfo(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 6

    .line 5633
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 5635
    :try_start_4
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/view/ThreadedRenderer;->handleDumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_1a
    .catchall {:try_start_4 .. :try_end_f} :catchall_18

    .line 5639
    :goto_f
    iget-object p1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5640
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5641
    goto :goto_23

    .line 5639
    :catchall_18
    move-exception v1

    goto :goto_24

    .line 5636
    :catch_1a
    move-exception v1

    .line 5637
    :try_start_1b
    const-string v2, "ActivityThread"

    const-string v3, "Caught exception from dumpGfxInfo()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    goto :goto_f

    .line 5642
    :goto_23
    return-void

    .line 5639
    :goto_24
    iget-object p1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5640
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5641
    throw v1
.end method

.method static greylist-max-o handleDumpHeap(Landroid/app/ActivityThread$DumpHeapData;)V
    .registers 6

    .line 7533
    const-string v0, "ActivityThread"

    iget-boolean v1, p0, Landroid/app/ActivityThread$DumpHeapData;->runGc:Z

    if-eqz v1, :cond_f

    .line 7534
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 7535
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 7536
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 7538
    :cond_f
    :try_start_f
    iget-object v1, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_11} :catch_4d
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_11} :catch_46

    .line 7539
    :try_start_11
    iget-boolean v2, p0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    if-eqz v2, :cond_21

    .line 7540
    iget-object v2, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread$DumpHeapData;->dumpBitmaps:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;)V

    goto :goto_34

    .line 7541
    :cond_21
    iget-boolean v2, p0, Landroid/app/ActivityThread$DumpHeapData;->mallocInfo:Z

    if-eqz v2, :cond_2d

    .line 7542
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Debug;->dumpNativeMallocInfo(Ljava/io/FileDescriptor;)V

    goto :goto_34

    .line 7544
    :cond_2d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_3a

    .line 7546
    :goto_34
    if-eqz v1, :cond_76

    :try_start_36
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_4d
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_39} :catch_46

    goto :goto_76

    .line 7538
    :catchall_3a
    move-exception v2

    if-eqz v1, :cond_45

    :try_start_3d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v1

    :try_start_42
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    throw v2
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_4d
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_46} :catch_46

    .line 7553
    :catch_46
    move-exception v1

    .line 7555
    const-string v2, "Heap dumper threw a runtime exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    .line 7546
    :catch_4d
    move-exception v1

    .line 7547
    iget-boolean v2, p0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    if-eqz v2, :cond_71

    .line 7548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Managed heap dump failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_76

    .line 7551
    :cond_71
    const-string v2, "Failed to dump heap"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7556
    :cond_76
    :goto_76
    nop

    .line 7558
    :goto_77
    :try_start_77
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->dumpHeapFinished(Ljava/lang/String;)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_80} :catch_8c

    .line 7561
    nop

    .line 7562
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->finishCallback:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_8b

    .line 7563
    iget-object p0, p0, Landroid/app/ActivityThread$DumpHeapData;->finishCallback:Landroid/os/RemoteCallback;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 7565
    :cond_8b
    return-void

    .line 7559
    :catch_8c
    move-exception p0

    .line 7560
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private greylist-max-o handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 7

    .line 5695
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 5697
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 5698
    if-eqz v1, :cond_34

    iget-object v2, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    if-eqz v2, :cond_34

    .line 5699
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 5700
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 5701
    iget-object v1, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5702
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_3e

    .line 5705
    :cond_34
    iget-object p1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5706
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5707
    nop

    .line 5708
    return-void

    .line 5705
    :catchall_3e
    move-exception v1

    iget-object p1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5706
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5707
    throw v1
.end method

.method private blacklist handleDumpResources(Landroid/app/ActivityThread$DumpResourcesData;)V
    .registers 6

    .line 5661
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 5663
    :try_start_4
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 5664
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 5666
    const-string v2, ""

    invoke-static {v1, v2}, Landroid/content/res/Resources;->dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5667
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 5668
    iget-object v1, p1, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const-string v2, "-refresh"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/res/ResourceTimer;->dumpTimers(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 5669
    iget-object v1, p1, Landroid/app/ActivityThread$DumpResourcesData;->finishCallback:Landroid/os/RemoteCallback;

    if-eqz v1, :cond_35

    .line 5670
    iget-object v1, p1, Landroid/app/ActivityThread$DumpResourcesData;->finishCallback:Landroid/os/RemoteCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_3f

    .line 5673
    :cond_35
    iget-object p1, p1, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5674
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5675
    nop

    .line 5676
    return-void

    .line 5673
    :catchall_3f
    move-exception v1

    iget-object p1, p1, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5674
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5675
    throw v1
.end method

.method private greylist-max-o handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 7

    .line 5645
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 5647
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 5648
    if-eqz v1, :cond_2e

    .line 5649
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 5650
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 5651
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5652
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_38

    .line 5655
    :cond_2e
    iget-object p1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5656
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5657
    nop

    .line 5658
    return-void

    .line 5655
    :catchall_38
    move-exception v1

    iget-object p1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5656
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5657
    throw v1
.end method

.method private greylist-max-o handleEnterAnimationComplete(Landroid/os/IBinder;)V
    .registers 3

    .line 4979
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4980
    if-eqz p1, :cond_f

    .line 4981
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->dispatchEnterAnimationComplete()V

    .line 4983
    :cond_f
    return-void
.end method

.method private blacklist handleFinishInstrumentationWithoutRestart()V
    .registers 3

    .line 8413
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    .line 8415
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 8416
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 8417
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMDebug;->removeApplication(Ljava/lang/String;)V

    .line 8420
    :cond_1b
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onDestroy()V

    .line 8421
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 8422
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 8423
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 8424
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 8425
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 8426
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 8427
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 8428
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mInstrumentingWithoutRestart:Z

    .line 8429
    return-void
.end method

.method private blacklist handleHandoffActivityDataRequest(Landroid/app/ActivityThread$RequestHandoffActivityData;)V
    .registers 10

    .line 4758
    new-instance v0, Landroid/app/HandoffActivityDataRequestInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/app/HandoffActivityDataRequestInfo;-><init>(Z)V

    .line 4759
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4760
    iget-object v2, p1, Landroid/app/ActivityThread$RequestHandoffActivityData;->activityTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 4761
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4762
    const-string v4, "ActivityThread"

    if-eqz v3, :cond_51

    .line 4763
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4764
    invoke-virtual {v5, v0}, Landroid/app/Activity;->onHandoffActivityDataRequested(Landroid/app/HandoffActivityDataRequestInfo;)Landroid/app/HandoffActivityData;

    move-result-object v5

    .line 4765
    if-nez v5, :cond_4d

    .line 4766
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HandoffActivityData is null for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4768
    :cond_4d
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4769
    goto :goto_5a

    .line 4770
    :cond_51
    const-string v3, "Attempted to fetch HandoffActivityData for non-existent activity."

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4771
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4773
    :goto_5a
    goto :goto_11

    .line 4775
    :cond_5b
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    .line 4777
    :try_start_5f
    iget-object p1, p1, Landroid/app/ActivityThread$RequestHandoffActivityData;->requestToken:Landroid/os/IBinder;

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityTaskManager;->reportHandoffActivityData(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_64} :catch_66

    .line 4780
    nop

    .line 4781
    return-void

    .line 4778
    :catch_66
    move-exception p1

    .line 4779
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist handleInstrumentWithoutRestart(Landroid/app/ActivityThread$AppBindData;)V
    .registers 6

    .line 8302
    :try_start_0
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 8303
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 8304
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mInstrumentingWithoutRestart:Z

    .line 8305
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->prepareInstrumentation(Landroid/app/ActivityThread$AppBindData;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    .line 8306
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 8307
    invoke-static {p0, v1}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v1

    .line 8309
    invoke-direct {p0, v0, p1, v1}, Landroid/app/ActivityThread;->initInstrumentation(Landroid/content/pm/InstrumentationInfo;Landroid/app/ActivityThread$AppBindData;Landroid/app/ContextImpl;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_41

    .line 8312
    :try_start_1c
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_23} :catch_25

    .line 8316
    nop

    .line 8320
    goto :goto_49

    .line 8313
    :catch_25
    move-exception v0

    .line 8314
    :try_start_26
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown in onCreate() of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_41} :catch_41

    .line 8318
    :catch_41
    move-exception p1

    .line 8319
    const-string v0, "ActivityThread"

    const-string v1, "Error in handleInstrumentWithoutRestart"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8321
    :goto_49
    return-void
.end method

.method private greylist-max-o handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 4

    .line 5165
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5166
    if-eqz p1, :cond_1e

    .line 5167
    iput-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 5168
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)V

    .line 5169
    if-nez p2, :cond_19

    .line 5170
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onLocalVoiceInteractionStopped()V

    goto :goto_1e

    .line 5172
    :cond_19
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onLocalVoiceInteractionStarted()V

    .line 5175
    :cond_1e
    :goto_1e
    return-void
.end method

.method private blacklist handlePerformDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V
    .registers 9

    .line 4927
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4928
    const/4 v0, 0x0

    if-eqz p1, :cond_52

    .line 4929
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v1

    .line 4930
    const/4 v2, 0x2

    if-lt v1, v2, :cond_4e

    const/4 v2, 0x5

    if-lt v1, v2, :cond_16

    goto :goto_4e

    .line 4935
    :cond_16
    const-string v0, "android.REMOTE_AUTOFILL"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4936
    const-class v0, Landroid/view/autofill/AutofillId;

    .line 4937
    const-string v1, "android.view.autofill.extra.REMOTE_AUTOFILL_ID"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 4939
    const-class v1, Landroid/view/autofill/AutofillValue;

    .line 4940
    const-string v2, "android.view.autofill.extra.REMOTE_AUTOFILL_VALUE"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillValue;

    .line 4942
    if-eqz v0, :cond_3b

    if-eqz v1, :cond_3b

    .line 4943
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->autofillViewIfAvailable(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V

    .line 4947
    :cond_3b
    if-eqz p3, :cond_3e

    goto :goto_40

    :cond_3e
    sget-object p3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 4948
    :goto_40
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4949
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/app/ActivityThread$$ExternalSyntheticLambda9;

    invoke-direct {v0, p5}, Landroid/app/ActivityThread$$ExternalSyntheticLambda9;-><init>(Landroid/os/RemoteCallback;)V

    .line 4948
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/app/Activity;->onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    .line 4950
    goto :goto_55

    .line 4931
    :cond_4e
    :goto_4e
    invoke-virtual {p5, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4932
    return-void

    .line 4951
    :cond_52
    invoke-virtual {p5, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4953
    :goto_55
    return-void
.end method

.method private greylist-max-p handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .registers 11

    .line 5247
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 5249
    iget-object v0, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 5251
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v1

    .line 5253
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 5259
    :try_start_19
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v3

    .line 5260
    invoke-virtual {v3}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/ContextImpl;

    .line 5261
    iget-object v5, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v5, :cond_36

    .line 5262
    iget-object v5, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/app/ContextImpl;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/ContextImpl;

    .line 5264
    :cond_36
    iget-object v5, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    if-eqz v5, :cond_4f

    iget-object v5, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_4f

    .line 5265
    iget-object v5, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    aget-object v5, v5, v4

    .line 5266
    invoke-virtual {v3, v5}, Landroid/app/ContextImpl;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/ContextImpl;

    .line 5268
    :cond_4f
    invoke-virtual {p0, v3, p1}, Landroid/app/ActivityThread;->createDisplayContextIfNeeded(Landroid/content/Context;Landroid/app/ActivityThread$ReceiverData;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/ContextImpl;

    .line 5269
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 5270
    iget-object v6, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 5271
    iget-object v6, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    iget-object v7, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 5272
    invoke-static {v7}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v7

    if-nez v7, :cond_70

    iget-object v7, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-static {v7}, Landroid/app/ActivityThread;->isProtectedBroadcast(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_71

    :cond_70
    const/4 v4, 0x1

    .line 5273
    :cond_71
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v7

    .line 5271
    invoke-virtual {v6, v4, v7}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 5274
    invoke-virtual {p1, v5}, Landroid/app/ActivityThread$ReceiverData;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 5275
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v1

    iget-object v4, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 5276
    invoke-virtual {v1, v5, v4, v6}, Landroid/app/AppComponentFactory;->instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    move-result-object v1
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_89} :catch_10a

    .line 5283
    nop

    .line 5285
    nop

    .line 5286
    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_STORE_ENABLED:Z

    if-eqz v4, :cond_a0

    .line 5287
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 5288
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 5287
    invoke-static {v4, v5}, Lcom/android/internal/os/DebugStore;->recordBroadcastReceive(ILjava/lang/String;)J

    move-result-wide v4

    goto :goto_a2

    .line 5286
    :cond_a0
    const-wide/16 v4, -0x1

    .line 5299
    :goto_a2
    const/4 v6, 0x0

    :try_start_a3
    sget-object v7, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5300
    invoke-virtual {v1, p1}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 5301
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getReceiverRestrictedContext()Landroid/content/Context;

    move-result-object v3

    iget-object v7, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v3, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_b6} :catch_c2
    .catchall {:try_start_a3 .. :try_end_b6} :catchall_c0

    .line 5312
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5313
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_STORE_ENABLED:Z

    if-eqz v0, :cond_da

    .line 5314
    goto :goto_d7

    .line 5312
    :catchall_c0
    move-exception p1

    goto :goto_fd

    .line 5303
    :catch_c2
    move-exception v3

    .line 5306
    :try_start_c3
    invoke-virtual {p1, v2}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 5307
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1, v3}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2
    :try_end_cc
    .catchall {:try_start_c3 .. :try_end_cc} :catchall_c0

    if-eqz v2, :cond_e4

    .line 5312
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5313
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_STORE_ENABLED:Z

    if-eqz v0, :cond_da

    .line 5314
    :goto_d7
    invoke-static {v4, v5}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 5318
    :cond_da
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    if-eqz v0, :cond_e3

    .line 5319
    invoke-virtual {p1}, Landroid/app/ActivityThread$ReceiverData;->finish()V

    .line 5321
    :cond_e3
    return-void

    .line 5308
    :cond_e4
    :try_start_e4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to start receiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_fd
    .catchall {:try_start_e4 .. :try_end_fd} :catchall_c0

    .line 5312
    :goto_fd
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5313
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_STORE_ENABLED:Z

    if-eqz v0, :cond_109

    .line 5314
    invoke-static {v4, v5}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 5316
    :cond_109
    throw p1

    .line 5277
    :catch_10a
    move-exception v1

    .line 5280
    invoke-virtual {p1, v2}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 5281
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private blacklist handleRelaunchActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/util/List;Landroid/app/servertransaction/PendingTransactionActions;ZLandroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/app/servertransaction/PendingTransactionActions;",
            "Z",
            "Landroid/content/res/Configuration;",
            "Landroid/window/ActivityWindowInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6844
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 6846
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_d

    .line 6847
    invoke-direct {p0, p1, v3, p8, v2}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    .line 6849
    :cond_d
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    const/4 v4, 0x1

    if-nez v1, :cond_15

    .line 6850
    invoke-direct {p0, p1, v4, p8}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 6853
    :cond_15
    invoke-virtual {p0, p1, v3, v4, p8}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)V

    .line 6855
    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6856
    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 6857
    iput-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 6859
    if-eqz p2, :cond_2c

    .line 6860
    iget-object p8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-nez p8, :cond_27

    .line 6861
    iput-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    goto :goto_2c

    .line 6863
    :cond_27
    iget-object p8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {p8, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6866
    :cond_2c
    :goto_2c
    if-eqz p3, :cond_3a

    .line 6867
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-nez p2, :cond_35

    .line 6868
    iput-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    goto :goto_3a

    .line 6870
    :cond_35
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6873
    :cond_3a
    :goto_3a
    iput-boolean p5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 6874
    iput-object p6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 6875
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object p2

    invoke-virtual {p2, p7}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 6877
    iget p2, p0, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    invoke-virtual {p0, p1, p4, p2, v0}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ILandroid/content/Intent;)Landroid/app/Activity;

    .line 6878
    return-void
.end method

.method private blacklist handleRequestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .registers 14

    .line 4869
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4870
    const/4 v1, 0x0

    const-string v2, "ActivityThread"

    if-nez v0, :cond_28

    .line 4871
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "requestDirectActions(): no activity for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4872
    invoke-virtual {p4, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4873
    return-void

    .line 4875
    :cond_28
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v3

    .line 4876
    const/4 v4, 0x2

    const-string v5, "): wrong lifecycle: "

    const-string/jumbo v6, "requestDirectActions("

    if-ge v3, v4, :cond_73

    .line 4878
    if-lez p5, :cond_52

    .line 4879
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    new-instance v1, Landroid/app/ActivityThread$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/app/ActivityThread$$ExternalSyntheticLambda7;-><init>()V

    add-int/lit8 p5, p5, -0x1

    .line 4882
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4880
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4879
    const-wide/16 p2, 0xc8

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/ActivityThread$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4883
    return-void

    .line 4885
    :cond_52
    move-object p1, p4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4886
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4887
    return-void

    .line 4889
    :cond_73
    move-object v4, p2

    move-object p2, p3

    move-object p1, p4

    const/4 p3, 0x5

    if-lt v3, p3, :cond_99

    .line 4890
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4891
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4892
    return-void

    .line 4894
    :cond_99
    iget-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object p3, p3, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz p3, :cond_af

    iget-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object p3, p3, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    iget-object p3, p3, Landroid/app/VoiceInteractor;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 4895
    invoke-interface {p3}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    .line 4896
    invoke-interface {v4}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    move-result-object p4

    if-eq p3, p4, :cond_cd

    .line 4897
    :cond_af
    iget-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object p3, p3, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz p3, :cond_bc

    .line 4898
    iget-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object p3, p3, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {p3}, Landroid/app/VoiceInteractor;->destroy()V

    .line 4900
    :cond_bc
    iget-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    new-instance p4, Landroid/app/VoiceInteractor;

    iget-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4901
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p4, v4, p5, v1, v2}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object p4, p3, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 4903
    :cond_cd
    iget-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    new-instance p4, Landroid/app/ActivityThread$$ExternalSyntheticLambda8;

    invoke-direct {p4, v0, p1}, Landroid/app/ActivityThread$$ExternalSyntheticLambda8;-><init>(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/os/RemoteCallback;)V

    invoke-virtual {p3, p2, p4}, Landroid/app/Activity;->onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    .line 4920
    return-void
.end method

.method private greylist-max-o handleRunIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    .line 9047
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string/jumbo v0, "main"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 9048
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_1b} :catch_20

    .line 9051
    nop

    .line 9053
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 9054
    return-void

    .line 9049
    :catch_20
    move-exception p1

    .line 9050
    new-instance p2, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v0, "runIsolatedEntryPoint failed"

    invoke-direct {p2, v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private greylist-max-o handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .registers 8

    .line 5711
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    .line 5712
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 5713
    if-eqz v1, :cond_8e

    .line 5715
    :try_start_16
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    if-eqz v2, :cond_32

    .line 5716
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 5717
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget-object v0, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    invoke-static {v0}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z

    move-result v0

    .line 5718
    invoke-virtual {v1}, Landroid/app/Service;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    .line 5717
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 5721
    :cond_32
    iget-boolean v0, p1, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    if-nez v0, :cond_41

    .line 5722
    iget-object v0, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iget v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_48

    .line 5724
    :cond_41
    iget-object v0, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 5725
    const/16 v0, 0x3e8

    .line 5728
    :goto_48
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4b} :catch_5f

    .line 5731
    :try_start_4b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    iget v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5, v4, v0}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_57} :catch_59
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_57} :catch_5f

    .line 5735
    nop

    .line 5742
    goto :goto_8e

    .line 5733
    :catch_59
    move-exception v0

    .line 5734
    :try_start_5a
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_5f

    .line 5736
    :catch_5f
    move-exception v0

    .line 5737
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_69

    goto :goto_8e

    .line 5738
    :cond_69
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 5744
    :cond_8e
    :goto_8e
    return-void
.end method

.method private blacklist handleSetContentCaptureOptionsCallback(Ljava/lang/String;)V
    .registers 5

    .line 8271
    iget-object v0, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    if-eqz v0, :cond_5

    .line 8272
    return-void

    .line 8275
    :cond_5
    const-string v0, "content_capture"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 8276
    if-nez v0, :cond_e

    .line 8277
    return-void

    .line 8280
    :cond_e
    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    .line 8281
    new-instance v1, Landroid/app/ActivityThread$5;

    invoke-direct {v1, p0}, Landroid/app/ActivityThread$5;-><init>(Landroid/app/ActivityThread;)V

    iput-object v1, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    .line 8291
    :try_start_19
    iget-object v1, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    invoke-interface {v0, p1, v1}, Landroid/view/contentcapture/IContentCaptureManager;->registerContentCaptureOptionsCallback(Ljava/lang/String;Landroid/view/contentcapture/IContentCaptureOptionsCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_1f

    .line 8297
    goto :goto_3c

    .line 8293
    :catch_1f
    move-exception v0

    .line 8294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerContentCaptureOptionsCallback() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ActivityThread"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8296
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    .line 8298
    :goto_3c
    return-void
.end method

.method private greylist-max-o handleSetCoreSettings(Landroid/os/Bundle;)V
    .registers 3

    .line 6379
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6380
    :try_start_3
    iput-object p1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 6381
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 6382
    invoke-direct {p0}, Landroid/app/ActivityThread;->onCoreSettingsChange()V

    .line 6383
    return-void

    .line 6381
    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method private greylist-max-o handleStartBinderTracking()V
    .registers 1

    .line 4986
    invoke-static {}, Landroid/os/Binder;->enableStackTracking()V

    .line 4987
    return-void
.end method

.method private greylist-max-o handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    .line 4991
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->disableStackTracking()V

    .line 4992
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/TransactionTracker;->writeTracesToFile(Landroid/os/ParcelFileDescriptor;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_16

    .line 4994
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4995
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 4996
    nop

    .line 4997
    return-void

    .line 4994
    :catchall_16
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4995
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 4996
    throw v0
.end method

.method private greylist-max-o handleStopService(Landroid/os/IBinder;)V
    .registers 7

    .line 5747
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5748
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 5749
    const-string v1, "ActivityThread"

    if-eqz v0, :cond_76

    .line 5752
    :try_start_11
    invoke-virtual {v0}, Landroid/app/Service;->onDestroy()V

    .line 5753
    invoke-virtual {v0}, Landroid/app/Service;->detachAndCleanUp()V

    .line 5754
    invoke-virtual {v0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 5755
    instance-of v3, v2, Landroid/app/ContextImpl;

    if-eqz v3, :cond_2a

    .line 5756
    invoke-virtual {v0}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 5757
    check-cast v2, Landroid/app/ContextImpl;

    const-string v4, "Service"

    invoke-virtual {v2, v3, v4}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 5760
    :cond_2a
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2d} :catch_3d

    .line 5763
    :try_start_2d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v4, v4}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_36} :catch_37
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_3d

    .line 5767
    goto :goto_5c

    .line 5765
    :catch_37
    move-exception v2

    .line 5766
    :try_start_38
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_3d

    .line 5768
    :catch_3d
    move-exception v2

    .line 5769
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v0, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 5772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStopService: exception for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5773
    :goto_5c
    goto :goto_92

    .line 5770
    :cond_5d
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to stop service "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 5775
    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStopService: token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " not found."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5778
    :goto_92
    return-void
.end method

.method private blacklist handleTimeoutService(Landroid/os/IBinder;I)V
    .registers 6

    .line 5781
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 5782
    const-string v1, "ActivityThread"

    if-eqz v0, :cond_49

    .line 5790
    :try_start_c
    invoke-virtual {v0, p2}, Landroid/app/Service;->callOnTimeout(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_10

    .line 5797
    :goto_f
    goto :goto_65

    .line 5791
    :catch_10
    move-exception p2

    .line 5792
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v0, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 5796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTimeoutService: exception for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 5793
    :cond_30
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to call onTimeout on service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 5799
    :cond_49
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleTimeoutService: token="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " not found."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5801
    :goto_65
    return-void
.end method

.method private blacklist handleTimeoutServiceForType(Landroid/os/IBinder;II)V
    .registers 6

    .line 5805
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 5806
    const-string v1, "ActivityThread"

    if-eqz v0, :cond_49

    .line 5810
    :try_start_c
    invoke-virtual {v0, p2, p3}, Landroid/app/Service;->callOnTimeLimitExceeded(II)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_10

    .line 5817
    :goto_f
    goto :goto_65

    .line 5811
    :catch_10
    move-exception p2

    .line 5812
    iget-object p3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {p3, v0, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result p3

    if-eqz p3, :cond_30

    .line 5816
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleTimeoutServiceForType: exception for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 5813
    :cond_30
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to call onTimeLimitExceeded on service "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 5819
    :cond_49
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handleTimeoutServiceForType: token="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " not found."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5821
    :goto_65
    return-void
.end method

.method private greylist-max-o handleTrimMemory(I)V
    .registers 9

    .line 7706
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 7707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trimMemory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7712
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->skipBgMemTrimOnFgApp()Z

    move-result v2

    const/16 v3, 0x28

    if-eqz v2, :cond_32

    iget v2, p0, Landroid/app/ActivityThread;->mLastProcessState:I
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_64

    const/4 v4, 0x6

    if-gt v2, v4, :cond_32

    if-lt p1, v3, :cond_32

    .line 7726
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7715
    return-void

    .line 7718
    :cond_32
    nop

    .line 7719
    const/4 v2, 0x1

    :try_start_34
    invoke-virtual {p0, v2}, Landroid/app/ActivityThread;->collectComponentCallbacks(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 7721
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7722
    const/4 v5, 0x0

    :goto_3d
    if-ge v5, v4, :cond_4b

    .line 7723
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentCallbacks2;

    invoke-interface {v6, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V
    :try_end_48
    .catchall {:try_start_34 .. :try_end_48} :catchall_64

    .line 7722
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 7726
    :cond_4b
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7727
    nop

    .line 7729
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 7731
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->parcelStringCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_63

    if-lt p1, v3, :cond_63

    .line 7733
    sget-object p1, Lcom/android/internal/util/StringCache;->INSTANCE:Lcom/android/internal/util/StringCache;

    invoke-virtual {p1}, Lcom/android/internal/util/StringCache;->clear()V

    .line 7735
    :cond_63
    return-void

    .line 7726
    :catchall_64
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7727
    throw p1
.end method

.method private greylist-max-o handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .registers 7

    .line 5603
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    .line 5604
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 5605
    if-eqz v1, :cond_84

    .line 5607
    :try_start_16
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 5608
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    iget-object v0, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    invoke-static {v0}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z

    move-result v0

    .line 5609
    invoke-virtual {v1}, Landroid/app/Service;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    .line 5608
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 5610
    iget-object v0, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_34} :catch_55

    .line 5612
    if-eqz v0, :cond_42

    .line 5613
    :try_start_36
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->bindToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, v3}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/os/IBinder;)V

    goto :goto_4d

    .line 5616
    :cond_42
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4, v4}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_4d} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4d} :catch_55

    .line 5621
    :goto_4d
    nop

    .line 5628
    goto :goto_84

    .line 5619
    :catch_4f
    move-exception v0

    .line 5620
    :try_start_50
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_55} :catch_55

    .line 5622
    :catch_55
    move-exception v0

    .line 5623
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_5f

    goto :goto_84

    .line 5624
    :cond_5f
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to unbind to service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 5630
    :cond_84
    :goto_84
    return-void
.end method

.method private greylist-max-o handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .registers 4

    .line 6416
    iget-object v0, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/app/ActivityThread;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 6417
    iget-object v0, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 6418
    if-eqz v0, :cond_12

    .line 6419
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 6421
    :cond_12
    iget-object v0, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 6422
    if-eqz v0, :cond_20

    .line 6423
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 6425
    :cond_20
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object p1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/CompatibilityInfo;)V

    .line 6426
    return-void
.end method

.method private blacklist handleWindowingModeChangeIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V
    .registers 7

    .line 7210
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 7211
    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    .line 7212
    iget v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedWindowingMode:I

    .line 7213
    if-ne v2, v1, :cond_d

    return-void

    .line 7215
    :cond_d
    const/4 v3, 0x2

    if-ne v1, v3, :cond_15

    .line 7216
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p2}, Landroid/app/Activity;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    goto :goto_1b

    .line 7217
    :cond_15
    if-ne v2, v3, :cond_1b

    .line 7218
    const/4 v3, 0x0

    invoke-virtual {v0, v3, p2}, Landroid/app/Activity;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 7220
    :cond_1b
    :goto_1b
    invoke-static {v2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v2

    .line 7222
    invoke-static {v1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v3

    .line 7224
    if-eq v2, v3, :cond_28

    .line 7225
    invoke-virtual {v0, v3, p2}, Landroid/app/Activity;->dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 7227
    :cond_28
    iput v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedWindowingMode:I

    .line 7228
    return-void
.end method

.method private greylist-max-o incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    .registers 6

    .line 8553
    const/16 v0, 0x83

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2c

    .line 8554
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    add-int/2addr p2, v2

    iput p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 8555
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-ne p2, v2, :cond_6c

    .line 8558
    iget-boolean p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz p2, :cond_1d

    .line 8562
    nop

    .line 8568
    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 8571
    iget-object p2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {p2, v0, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, -0x1

    goto :goto_1e

    .line 8573
    :cond_1d
    nop

    .line 8581
    :goto_1e
    :try_start_1e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    iget-object p1, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object p1, p1, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {p2, p1, v2, v1}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_2a

    .line 8585
    goto :goto_2b

    .line 8583
    :catch_2a
    move-exception p1

    .line 8586
    :goto_2b
    goto :goto_6c

    .line 8588
    :cond_2c
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    add-int/2addr p2, v2

    iput p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 8589
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-ne p2, v2, :cond_6c

    .line 8591
    iget-boolean p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz p2, :cond_41

    .line 8600
    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 8601
    iget-object p2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {p2, v0, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_6c

    .line 8610
    :cond_41
    :try_start_41
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->skipRefContentProvider()Z

    move-result p2

    if-eqz p2, :cond_5f

    .line 8614
    if-eqz p1, :cond_6a

    iget-object p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    if-eqz p2, :cond_6a

    iget-object p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-boolean p2, p2, Landroid/app/ContentProviderHolder;->noReleaseNeededIfUnstable:Z

    if-nez p2, :cond_6a

    .line 8616
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    iget-object p1, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object p1, p1, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {p2, p1, v1, v2}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z

    goto :goto_6a

    .line 8620
    :cond_5f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    iget-object p1, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object p1, p1, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {p2, p1, v1, v2}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_6a} :catch_6b

    .line 8625
    :cond_6a
    :goto_6a
    goto :goto_6c

    .line 8623
    :catch_6b
    move-exception p1

    .line 8629
    :cond_6c
    :goto_6c
    return-void
.end method

.method private blacklist initInstrumentation(Landroid/content/pm/InstrumentationInfo;Landroid/app/ActivityThread$AppBindData;Landroid/app/ContextImpl;)V
    .registers 12

    .line 8361
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    .line 8362
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 8361
    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 8365
    goto :goto_13

    .line 8363
    :catch_11
    move-exception v0

    .line 8364
    const/4 v0, 0x0

    .line 8366
    :goto_13
    if-nez v0, :cond_1c

    .line 8367
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    move-object v2, v0

    goto :goto_1d

    .line 8366
    :cond_1c
    move-object v2, v0

    .line 8369
    :goto_1d
    invoke-virtual {p1, v2}, Landroid/content/pm/InstrumentationInfo;->copyTo(Landroid/content/pm/ApplicationInfo;)V

    .line 8370
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 8371
    iget-object v3, p2, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 8372
    invoke-virtual {p3}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 8371
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    .line 8382
    iget-boolean v2, p2, Landroid/app/ActivityThread$AppBindData;->isSdkInSandbox:Z

    if-eqz v2, :cond_3b

    .line 8383
    move-object v3, p3

    goto :goto_44

    .line 8384
    :cond_3b
    invoke-virtual {p3}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Ljava/lang/String;)Landroid/app/ContextImpl;

    move-result-object v0

    move-object v3, v0

    :goto_44
    nop

    .line 8387
    :try_start_45
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 8388
    iget-object v2, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 8389
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation;

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5b} :catch_a9

    .line 8393
    nop

    .line 8395
    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8396
    move-object v2, v1

    iget-object v1, v2, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v6, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v7, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    move-object v4, p3

    invoke-virtual/range {v1 .. v7}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V

    .line 8399
    move-object v1, v2

    iget-object p2, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object p2, p2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz p2, :cond_9f

    iget-boolean p2, p1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    if-nez p2, :cond_9f

    iget-object p2, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object p2, p2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez p2, :cond_9f

    .line 8401
    iget-object p2, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    .line 8402
    new-instance p2, Ljava/io/File;

    iget-object p3, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object p3, p3, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8403
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 8404
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/high16 p3, 0x800000

    invoke-static {p2, p3}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 8407
    :cond_9f
    iget-object p2, p1, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    if-eqz p2, :cond_a8

    .line 8408
    iget-object p1, p1, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Ldalvik/system/VMDebug;->addApplication(Ljava/lang/String;)V

    .line 8410
    :cond_a8
    return-void

    .line 8390
    :catch_a9
    move-exception v0

    move-object p1, v0

    .line 8391
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate instrumentation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p2, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method private blacklist initZipPathValidatorCallback()V
    .registers 3

    .line 8263
    const-wide/32 v0, 0xe778e5a

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 8264
    new-instance v0, Lcom/android/internal/os/SafeZipPathValidatorCallback;

    invoke-direct {v0}, Lcom/android/internal/os/SafeZipPathValidatorCallback;-><init>()V

    invoke-static {v0}, Ldalvik/system/ZipPathValidator;->setCallback(Ldalvik/system/ZipPathValidator$Callback;)V

    goto :goto_15

    .line 8266
    :cond_12
    invoke-static {}, Ldalvik/system/ZipPathValidator;->clearCallback()V

    .line 8268
    :goto_15
    return-void
.end method

.method public static blacklist initializeMainlineModules()V
    .registers 1

    .line 9297
    new-instance v0, Landroid/os/TelephonyServiceManager;

    invoke-direct {v0}, Landroid/os/TelephonyServiceManager;-><init>()V

    invoke-static {v0}, Landroid/telephony/TelephonyFrameworkInitializer;->setTelephonyServiceManager(Landroid/os/TelephonyServiceManager;)V

    .line 9298
    new-instance v0, Landroid/os/StatsServiceManager;

    invoke-direct {v0}, Landroid/os/StatsServiceManager;-><init>()V

    invoke-static {v0}, Landroid/os/StatsFrameworkInitializer;->setStatsServiceManager(Landroid/os/StatsServiceManager;)V

    .line 9299
    new-instance v0, Landroid/media/MediaServiceManager;

    invoke-direct {v0}, Landroid/media/MediaServiceManager;-><init>()V

    invoke-static {v0}, Landroid/media/MediaFrameworkPlatformInitializer;->setMediaServiceManager(Landroid/media/MediaServiceManager;)V

    .line 9300
    new-instance v0, Landroid/media/MediaServiceManager;

    invoke-direct {v0}, Landroid/media/MediaServiceManager;-><init>()V

    invoke-static {v0}, Landroid/media/MediaFrameworkInitializer;->setMediaServiceManager(Landroid/media/MediaServiceManager;)V

    .line 9301
    new-instance v0, Landroid/os/BluetoothServiceManager;

    invoke-direct {v0}, Landroid/os/BluetoothServiceManager;-><init>()V

    invoke-static {v0}, Landroid/bluetooth/BluetoothFrameworkInitializer;->setBluetoothServiceManager(Landroid/os/BluetoothServiceManager;)V

    .line 9302
    new-instance v0, Landroid/app/ActivityThread$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/app/ActivityThread$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Landroid/bluetooth/BluetoothFrameworkInitializer;->setBinderCallsStatsInitializer(Ljava/util/function/Consumer;)V

    .line 9305
    new-instance v0, Landroid/nfc/NfcServiceManager;

    invoke-direct {v0}, Landroid/nfc/NfcServiceManager;-><init>()V

    invoke-static {v0}, Landroid/nfc/NfcFrameworkInitializer;->setNfcServiceManager(Landroid/nfc/NfcServiceManager;)V

    .line 9306
    new-instance v0, Landroid/provider/DeviceConfigServiceManager;

    invoke-direct {v0}, Landroid/provider/DeviceConfigServiceManager;-><init>()V

    invoke-static {v0}, Landroid/provider/DeviceConfigInitializer;->setDeviceConfigServiceManager(Landroid/provider/DeviceConfigServiceManager;)V

    .line 9307
    new-instance v0, Landroid/se/omapi/SeServiceManager;

    invoke-direct {v0}, Landroid/se/omapi/SeServiceManager;-><init>()V

    invoke-static {v0}, Landroid/se/omapi/SeFrameworkInitializer;->setSeServiceManager(Landroid/se/omapi/SeServiceManager;)V

    .line 9308
    new-instance v0, Landroid/os/ProfilingServiceManager;

    invoke-direct {v0}, Landroid/os/ProfilingServiceManager;-><init>()V

    invoke-static {v0}, Landroid/os/ProfilingFrameworkInitializer;->setProfilingServiceManager(Landroid/os/ProfilingServiceManager;)V

    .line 9309
    return-void
.end method

.method private static blacklist initializeSystemThread(Landroid/app/ActivityThread;)V
    .registers 4

    .line 9133
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-nez v0, :cond_5

    .line 9134
    return-void

    .line 9137
    :cond_5
    :try_start_5
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 9138
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->basicInit(Landroid/app/ActivityThread;)V

    .line 9139
    nop

    .line 9140
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 9139
    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 9141
    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 9142
    iget-object p0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->onCreate()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2d

    .line 9145
    nop

    .line 9146
    return-void

    .line 9143
    :catch_2d
    move-exception p0

    .line 9144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to instantiate Application()"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private greylist installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 8452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8454
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/pm/ProviderInfo;

    .line 8463
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;

    move-result-object p1

    .line 8465
    if-eqz p1, :cond_28

    .line 8466
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 8467
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8469
    :cond_28
    move-object p1, v3

    goto :goto_9

    .line 8472
    :cond_2a
    :try_start_2a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    .line 8473
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object p2

    .line 8472
    invoke-interface {p1, p2, v0}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_35} :catch_37

    .line 8476
    nop

    .line 8477
    return-void

    .line 8474
    :catch_37
    move-exception v0

    move-object p1, v0

    .line 8475
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private greylist installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;
    .registers 12

    .line 8909
    nop

    .line 8911
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_f

    iget-object v3, p2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v3, :cond_b

    goto :goto_f

    .line 8979
    :cond_b
    iget-object p1, p2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    goto/16 :goto_106

    .line 8912
    :cond_f
    :goto_f
    if-eqz p4, :cond_37

    .line 8913
    const-string p4, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8916
    :cond_37
    nop

    .line 8917
    iget-object p4, p3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8918
    if-eqz p1, :cond_49

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 8919
    goto :goto_69

    .line 8920
    :cond_49
    iget-object v3, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 8921
    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 8922
    iget-object p1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    goto :goto_69

    .line 8923
    :cond_5e
    if-eqz p1, :cond_68

    .line 8925
    :try_start_60
    iget-object v3, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1
    :try_end_66
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_60 .. :try_end_66} :catch_67

    .line 8929
    goto :goto_69

    .line 8927
    :catch_67
    move-exception p1

    .line 8931
    :cond_68
    move-object p1, v2

    :goto_69
    if-nez p1, :cond_92

    .line 8932
    const-string p1, "ActivityThread"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unable to get context for package "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " while loading content provider "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8936
    return-object v2

    .line 8939
    :cond_92
    iget-object v3, p3, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v3, :cond_a4

    .line 8941
    :try_start_96
    iget-object v3, p3, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Context;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1
    :try_end_9c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_96 .. :try_end_9c} :catch_9d

    .line 8944
    goto :goto_a4

    .line 8942
    :catch_9d
    move-exception p1

    .line 8943
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 8946
    :cond_a4
    :goto_a4
    iget-object v3, p3, Landroid/content/pm/ProviderInfo;->attributionTags:[Ljava/lang/String;

    if-eqz v3, :cond_b5

    iget-object v3, p3, Landroid/content/pm/ProviderInfo;->attributionTags:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_b5

    .line 8947
    iget-object v3, p3, Landroid/content/pm/ProviderInfo;->attributionTags:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 8948
    invoke-virtual {p1, v3}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    .line 8952
    :cond_b5
    :try_start_b5
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 8953
    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p4, v1}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object p4

    .line 8954
    if-nez p4, :cond_c7

    .line 8956
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object p4

    iget-object p4, p4, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 8958
    :cond_c7
    invoke-virtual {p4}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object p4

    iget-object v4, p3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 8959
    invoke-virtual {p4, v3, v4}, Landroid/app/AppComponentFactory;->instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object p4

    .line 8960
    invoke-virtual {p4}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v3

    .line 8961
    if-nez v3, :cond_100

    .line 8962
    const-string p1, "ActivityThread"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to instantiate class "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " from sourceDir "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8965
    return-object v2

    .line 8970
    :cond_100
    invoke-virtual {p4, p1, p3}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_103} :catch_182

    .line 8977
    nop

    .line 8978
    move-object v2, p4

    move-object p1, v3

    .line 8986
    :goto_106
    iget-object p4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter p4

    .line 8989
    :try_start_109
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 8990
    if-eqz v2, :cond_13f

    .line 8991
    new-instance p2, Landroid/content/ComponentName;

    iget-object p5, p3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p6, p3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {p2, p5, p6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8992
    iget-object p5, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    invoke-virtual {p5, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 8993
    if-eqz p5, :cond_125

    .line 8998
    iget-object p1, p5, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    goto :goto_13c

    .line 9000
    :cond_125
    new-instance p5, Landroid/app/ContentProviderHolder;

    invoke-direct {p5, p3}, Landroid/app/ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 9001
    iput-object p1, p5, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 9002
    iput-boolean v1, p5, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 9003
    invoke-direct {p0, p1, v2, p5}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object p5

    .line 9004
    iget-object p1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1, v3, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9005
    iget-object p1, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9007
    :goto_13c
    iget-object p1, p5, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;

    .line 9008
    goto :goto_17d

    .line 9009
    :cond_13f
    iget-object p3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {p3, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 9010
    if-eqz p3, :cond_15a

    .line 9018
    if-nez p5, :cond_17b

    .line 9019
    invoke-direct {p0, p3, p6}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_14e
    .catchall {:try_start_109 .. :try_end_14e} :catchall_17f

    .line 9021
    :try_start_14e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object p2, p2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {p1, p2, p6}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_157
    .catch Landroid/os/RemoteException; {:try_start_14e .. :try_end_157} :catch_158
    .catchall {:try_start_14e .. :try_end_157} :catchall_17f

    goto :goto_159

    .line 9023
    :catch_158
    move-exception p1

    .line 9025
    :goto_159
    goto :goto_17b

    .line 9028
    :cond_15a
    :try_start_15a
    invoke-direct {p0, p1, v2, p2}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object p1

    .line 9030
    if-eqz p5, :cond_168

    .line 9031
    new-instance p3, Landroid/app/ActivityThread$ProviderRefCount;

    const/16 p5, 0x3e8

    invoke-direct {p3, p2, p1, p5, p5}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    goto :goto_176

    .line 9033
    :cond_168
    if-eqz p6, :cond_170

    .line 9034
    new-instance p3, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-direct {p3, p2, p1, v1, v0}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    goto :goto_175

    .line 9035
    :cond_170
    new-instance p3, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-direct {p3, p2, p1, v0, v1}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    :goto_175
    nop

    .line 9037
    :goto_176
    iget-object p1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v3, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9039
    :cond_17b
    :goto_17b
    iget-object p1, p3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    .line 9041
    :goto_17d
    monitor-exit p4

    .line 9042
    return-object p1

    .line 9041
    :catchall_17f
    move-exception p1

    monitor-exit p4
    :try_end_181
    .catchall {:try_start_15a .. :try_end_181} :catchall_17f

    throw p1

    .line 8971
    :catch_182
    move-exception p1

    .line 8972
    iget-object p2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {p2, v2, p1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_18c

    .line 8976
    return-object v2

    .line 8973
    :cond_18c
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unable to get provider "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p3, p3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private greylist-max-o installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;
    .registers 11

    .line 8856
    iget-object v0, p3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8857
    iget-object v1, p3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 8859
    const/4 v2, 0x0

    if-eqz p1, :cond_7b

    .line 8862
    array-length v3, v0

    move v4, v2

    :goto_19
    if-ge v4, v3, :cond_7b

    aget-object v5, v0, v4

    .line 8863
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_c6

    :cond_24
    goto :goto_6c

    :sswitch_25
    const-string v6, "com.android.blockednumber"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x3

    goto :goto_6d

    :sswitch_2f
    const-string v6, "downloads"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x5

    goto :goto_6d

    :sswitch_39
    const-string/jumbo v6, "telephony"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x6

    goto :goto_6d

    :sswitch_44
    const-string v6, "call_log_shadow"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x2

    goto :goto_6d

    :sswitch_4e
    const-string v6, "call_log"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x1

    goto :goto_6d

    :sswitch_58
    const-string v6, "com.android.calendar"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x4

    goto :goto_6d

    :sswitch_62
    const-string v6, "com.android.contacts"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    move v5, v2

    goto :goto_6d

    :goto_6c
    const/4 v5, -0x1

    :goto_6d
    packed-switch v5, :pswitch_data_e4

    goto :goto_78

    .line 8871
    :pswitch_71
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 8862
    :goto_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 8876
    :cond_7b
    new-instance v3, Landroid/app/ActivityThread$ProviderClientRecord;

    invoke-direct {v3, v0, p1, p2, p3}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>([Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)V

    .line 8878
    array-length p1, v0

    :goto_81
    if-ge v2, p1, :cond_c5

    aget-object p2, v0, v2

    .line 8879
    new-instance p3, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {p3, p2, v1}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 8880
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 8881
    if-eqz v4, :cond_bd

    .line 8882
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content provider "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v4, v3, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;

    iget-object v4, v4, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v4, " already published as "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ActivityThread"

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 8885
    :cond_bd
    iget-object p2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8878
    :goto_c2
    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    .line 8888
    :cond_c5
    return-object v3

    :sswitch_data_c6
    .sparse-switch
        -0x3260a241 -> :sswitch_62
        -0x1b2f0756 -> :sswitch_58
        -0xa45121d -> :sswitch_4e
        0x3cfb2fc -> :sswitch_44
        0x2eaeb418 -> :sswitch_39
        0x4e3e48eb -> :sswitch_2f
        0x76f32249 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
    .end packed-switch
.end method

.method private static blacklist isInDeskUiMode(Landroid/content/res/Configuration;)Z
    .registers 2

    .line 7074
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private static blacklist isLoadedApkResourceDirsUpToDate(Landroid/app/LoadedApk;Landroid/content/pm/ApplicationInfo;)Z
    .registers 5

    .line 3345
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 3346
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 3347
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3348
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3346
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 3349
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 3350
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3351
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3349
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    .line 3353
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result p1

    if-eqz p1, :cond_38

    :cond_32
    if-eqz v1, :cond_38

    if-eqz p0, :cond_38

    const/4 p0, 0x1

    goto :goto_39

    :cond_38
    const/4 p0, 0x0

    :goto_39
    return p0
.end method

.method public static blacklist isProtectedBroadcast(Landroid/content/Intent;)Z
    .registers 3

    .line 9367
    invoke-static {}, Landroid/os/StrictMode;->vmUnsafeIntentLaunchEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 9371
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/pm/IPackageManager;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result p0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    return p0

    .line 9372
    :catch_15
    move-exception p0

    .line 9374
    return v1
.end method

.method public static blacklist isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z
    .registers 2

    .line 9323
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static blacklist isProtectedComponent(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z
    .registers 5

    .line 9345
    invoke-static {}, Landroid/os/StrictMode;->vmUnsafeIntentLaunchEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 9348
    :cond_8
    iget-boolean p0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    const/4 v0, 0x1

    if-nez p0, :cond_e

    .line 9349
    return v0

    .line 9351
    :cond_e
    if-eqz p1, :cond_28

    .line 9353
    :try_start_10
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object p0

    .line 9354
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 9353
    invoke-interface {p0, p1, v2, v1}, Landroid/permission/IPermissionManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    .line 9355
    if-eqz p0, :cond_26

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result p0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_22} :catch_27

    const/4 p1, 0x2

    if-ne p0, p1, :cond_26

    move v1, v0

    :cond_26
    return v1

    .line 9356
    :catch_27
    move-exception p0

    .line 9359
    :cond_28
    return v1
.end method

.method public static blacklist isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z
    .registers 2

    .line 9332
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-o isSystem()Z
    .registers 1

    .line 3080
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private synthetic blacklist lambda$attach$6(Landroid/content/res/Configuration;)V
    .registers 5

    .line 9105
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 9108
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 9110
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v2, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 9111
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 9110
    invoke-virtual {v1, v2}, Landroid/app/ConfigurationController;->updateLocaleListFromAppContext(Landroid/content/Context;)V

    .line 9114
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 9115
    invoke-virtual {v1, p1}, Landroid/app/ConfigurationController;->updatePendingConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 9116
    if-eqz v1, :cond_26

    .line 9117
    const/16 v2, 0x76

    invoke-virtual {p0, v2, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 9118
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 9121
    :cond_26
    monitor-exit v0

    .line 9122
    return-void

    .line 9121
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method static synthetic blacklist lambda$getGetProviderKey$5(Landroid/app/ActivityThread$ProviderKey;)Landroid/app/ActivityThread$ProviderKey;
    .registers 1

    .line 8547
    return-object p0
.end method

.method static synthetic blacklist lambda$getSystemUiContext$0(Ljava/lang/ref/WeakReference;)Z
    .registers 2

    .line 3474
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$handleRequestDirectActions$3(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/os/RemoteCallback;Ljava/util/List;)V
    .registers 8

    .line 4904
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4905
    const-string v0, "actions"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 4906
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 4907
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 4908
    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_2d

    .line 4909
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DirectAction;

    .line 4910
    iget-object v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    iget-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getAssistToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/DirectAction;->setSource(ILandroid/os/IBinder;)V

    .line 4908
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 4912
    :cond_2d
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 4913
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const-string p2, "actions_list"

    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4915
    invoke-virtual {p1, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4916
    goto :goto_44

    .line 4917
    :cond_40
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4919
    :goto_44
    return-void
.end method

.method static synthetic blacklist lambda$initializeMainlineModules$7(Landroid/content/Context;)V
    .registers 1

    .line 9303
    invoke-static {p0}, Lcom/android/internal/os/BinderCallsStats;->startForBluetooth(Landroid/content/Context;)V

    .line 9304
    return-void
.end method

.method static synthetic blacklist lambda$onSystemUiContextCleanup$1(Landroid/app/ContextImpl;Ljava/lang/ref/WeakReference;)Z
    .registers 3

    .line 3525
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1, p0}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method

.method static synthetic blacklist lambda$registerOnActivityPausedListener$2(Landroid/app/Activity;)Ljava/util/ArrayList;
    .registers 1

    .line 4107
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private synthetic blacklist lambda$syncTransferSplashscreenViewTransaction$4(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 3

    .line 5118
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->reportSplashscreenViewShown(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method

.method public static greylist-max-o main([Ljava/lang/String;)V
    .registers 9

    .line 9239
    const-string v0, "ActivityThreadMain"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9242
    invoke-static {}, Landroid/app/AndroidForwardingOs;->install()V

    .line 9247
    const/4 v0, 0x0

    invoke-static {v0}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 9249
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    .line 9252
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    move-result-object v3

    .line 9253
    invoke-static {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    .line 9256
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 9258
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 9260
    const-string v3, "<pre-initialized>"

    invoke-static {v3}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 9264
    nop

    .line 9265
    const-wide/16 v3, 0x0

    if-eqz p0, :cond_51

    .line 9266
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    :goto_2f
    if-ltz v5, :cond_51

    .line 9267
    aget-object v6, p0, v5

    if-eqz v6, :cond_4e

    aget-object v6, p0, v5

    const-string/jumbo v7, "seq="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 9268
    aget-object v3, p0, v5

    .line 9269
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 9268
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 9266
    :cond_4e
    add-int/lit8 v5, v5, -0x1

    goto :goto_2f

    .line 9273
    :cond_51
    new-instance p0, Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/ActivityThread;-><init>()V

    .line 9274
    invoke-direct {p0, v0, v3, v4}, Landroid/app/ActivityThread;->attach(ZJ)V

    .line 9276
    sget-object v0, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_63

    .line 9277
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    sput-object p0, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    .line 9286
    :cond_63
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 9287
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 9289
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Main thread loop unexpectedly exited"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private native blacklist nInitZygoteChildHeapProfiling()V
.end method

.method private native blacklist nPurgePendingResources()V
.end method

.method private static blacklist newDdmSyncStageUpdater()Landroid/os/DdmSyncStageUpdater;
    .registers 1

    .line 327
    new-instance v0, Landroid/os/DdmSyncStageUpdater;

    invoke-direct {v0}, Landroid/os/DdmSyncStageUpdater;-><init>()V

    return-object v0
.end method

.method private static blacklist newTransactionExecutor(Landroid/app/ActivityThread;)Landroid/app/servertransaction/TransactionExecutor;
    .registers 2

    .line 541
    new-instance v0, Landroid/app/servertransaction/TransactionExecutor;

    invoke-direct {v0, p0}, Landroid/app/servertransaction/TransactionExecutor;-><init>(Landroid/app/ClientTransactionHandler;)V

    return-object v0
.end method

.method private greylist-max-o onCoreSettingsChange()V
    .registers 3

    .line 6386
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDebugViewAttributeState()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6388
    const/4 v0, 0x1

    const-string/jumbo v1, "onCoreSettingsChange"

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->relaunchAllActivities(ZLjava/lang/String;)V

    .line 6390
    :cond_d
    return-void
.end method

.method private blacklist onlyDeskInUiModeChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 7

    .line 7063
    invoke-static {p1}, Landroid/app/ActivityThread;->isInDeskUiMode(Landroid/content/res/Configuration;)Z

    move-result v0

    invoke-static {p2}, Landroid/app/ActivityThread;->isInDeskUiMode(Landroid/content/res/Configuration;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v3

    .line 7067
    :goto_f
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, -0x10

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, -0x10

    if-eq p1, p2, :cond_1b

    move p1, v2

    goto :goto_1c

    :cond_1b
    move p1, v3

    .line 7070
    :goto_1c
    if-eqz v0, :cond_21

    if-nez p1, :cond_21

    goto :goto_22

    :cond_21
    move v2, v3

    :goto_22
    return v2
.end method

.method private blacklist performActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;
    .registers 15

    .line 6978
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6979
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 6984
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleWindowingModeChangeIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V

    .line 6986
    invoke-virtual {v0}, Landroid/app/Activity;->getDisplayId()I

    move-result v2

    invoke-static {v2, p4}, Landroid/window/ConfigurationHelper;->isDifferentDisplay(II)Z

    move-result v5

    .line 6988
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 6989
    invoke-virtual {v2, p2}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v3

    .line 6990
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_23

    move v3, v7

    goto :goto_24

    :cond_23
    move v3, v8

    .line 6993
    :goto_24
    if-nez v3, :cond_35

    .line 6995
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6994
    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Landroid/window/ConfigurationHelper;->shouldUpdateResources(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZLjava/lang/Boolean;)Z

    move-result p2

    if-eqz p2, :cond_33

    goto :goto_37

    :cond_33
    move v7, v8

    goto :goto_38

    .line 6993
    :cond_35
    move-object v3, p2

    move-object v4, p3

    .line 6994
    :goto_37
    nop

    .line 6998
    :goto_38
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x111026c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    .line 7000
    iget-object p3, v0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result p3

    .line 7001
    if-eqz p2, :cond_55

    iget-object p2, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, p2, v3}, Landroid/app/ActivityThread;->onlyDeskInUiModeChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result p2

    if-eqz p2, :cond_55

    .line 7006
    or-int/lit16 p3, p3, 0x200

    .line 7009
    :cond_55
    iget-object p2, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/SizeConfigurationBuckets;

    move-result-object p1

    invoke-static {p2, v3, p1, p3, p5}, Landroid/app/ActivityThread;->shouldReportChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;IZ)Z

    move-result p1

    .line 7012
    if-nez v7, :cond_65

    if-nez p1, :cond_65

    .line 7013
    const/4 p1, 0x0

    return-object p1

    .line 7020
    :cond_65
    invoke-virtual {v0}, Landroid/app/Activity;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 7028
    invoke-static {v4, p2}, Landroid/app/ConfigurationController;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object p3

    .line 7030
    iget-object p5, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {p5, v1, p3, p4}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 7035
    invoke-static {v3, p2}, Landroid/app/ConfigurationController;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object p2

    .line 7038
    if-eqz v5, :cond_7b

    .line 7039
    invoke-virtual {v0, p4, p2}, Landroid/app/Activity;->dispatchMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 7042
    :cond_7b
    iput v8, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 7043
    if-eqz p1, :cond_b3

    .line 7044
    iput-boolean v8, v0, Landroid/app/Activity;->mCalled:Z

    .line 7045
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 7046
    invoke-virtual {v0, p2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7047
    iget-boolean p1, v0, Landroid/app/Activity;->mCalled:Z

    if-eqz p1, :cond_90

    goto :goto_b3

    .line 7048
    :cond_90
    new-instance p1, Landroid/util/SuperNotCalledException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Activity "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " did not call through to super.onConfigurationChanged()"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7052
    :cond_b3
    :goto_b3
    iget-object p1, p0, Landroid/app/ActivityThread;->mConfigurationChangedListenerController:Landroid/app/ConfigurationChangedListenerController;

    .line 7053
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/ConfigurationChangedListenerController;->dispatchOnConfigurationChanged(Landroid/os/IBinder;)V

    .line 7055
    return-object p2
.end method

.method private greylist-max-o performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;
    .registers 12

    .line 6955
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6956
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz p2, :cond_14

    .line 6957
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object p2

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p2, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 6959
    :cond_14
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/app/ActivityThread;->performActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;

    move-result-object p1

    .line 6961
    iget-object p2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object p2, p2, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-static {v2}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p2

    invoke-static {p2}, Landroid/window/ConfigurationHelper;->freeTextLayoutCachesIfNeeded(I)V

    .line 6962
    return-object p1
.end method

.method private greylist-max-o performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 30

    .line 4336
    move-object/from16 v3, p0

    move-object/from16 v1, p1

    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4338
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_45

    .line 4339
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 4340
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 4341
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Instrumentation;->isSdkSandboxAllowedToStartActivities()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 4344
    nop

    .line 4346
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v3, Landroid/app/ActivityThread;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 4345
    invoke-virtual {v3, v0, v2, v4}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    goto :goto_53

    .line 4349
    :cond_45
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    if-nez v2, :cond_53

    .line 4350
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/app/ActivityThread;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v3, v0, v2, v4}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 4354
    :cond_53
    :goto_53
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4355
    if-nez v0, :cond_6c

    .line 4356
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v2, v3, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 4357
    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4356
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 4358
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4361
    :cond_6c
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v2, :cond_81

    .line 4362
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_82

    .line 4361
    :cond_81
    move-object v2, v0

    .line 4366
    :goto_82
    iget-object v0, v3, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v0, v5}, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;->isSdkSandboxActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 4368
    nop

    .line 4370
    const/4 v5, 0x0

    if-eqz v0, :cond_9e

    .line 4371
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->createBaseContextForSandboxActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 4372
    if-nez v0, :cond_9b

    .line 4375
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;

    move-result-object v0

    move-object v6, v0

    move v0, v5

    goto :goto_a4

    .line 4377
    :cond_9b
    move-object v6, v0

    move v0, v4

    goto :goto_a4

    .line 4380
    :cond_9e
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;

    move-result-object v0

    move-object v6, v0

    move v0, v5

    .line 4382
    :goto_a4
    nop

    .line 4385
    const/4 v7, 0x0

    if-eqz v0, :cond_b1

    .line 4388
    :try_start_a8
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_b5

    .line 4390
    :cond_b1
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 4392
    :goto_b5
    iget-object v8, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4393
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4392
    invoke-virtual {v8, v0, v9, v10}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v8
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_c1} :catch_e8

    .line 4394
    :try_start_c1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Landroid/os/StrictMode;->incrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 4395
    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4396
    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v10, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v10}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    .line 4397
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v11

    .line 4396
    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 4398
    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v9, :cond_e5

    .line 4399
    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_e5} :catch_e6

    .line 4406
    :cond_e5
    goto :goto_f2

    .line 4401
    :catch_e6
    move-exception v0

    goto :goto_ea

    :catch_e8
    move-exception v0

    move-object v8, v7

    .line 4402
    :goto_ea
    iget-object v9, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v9, v8, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v9

    if-eqz v9, :cond_266

    .line 4409
    :goto_f2
    :try_start_f2
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v9, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, v5, v9}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    .line 4422
    iget-object v9, v3, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v9
    :try_end_fd
    .catch Landroid/util/SuperNotCalledException; {:try_start_f2 .. :try_end_fd} :catch_264
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_fd} :catch_23c

    .line 4423
    :try_start_fd
    iget-object v10, v3, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v10, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4424
    monitor-exit v9
    :try_end_105
    .catchall {:try_start_fd .. :try_end_105} :catchall_232

    .line 4426
    if-eqz v8, :cond_22a

    .line 4427
    :try_start_107
    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4428
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 4429
    new-instance v14, Landroid/content/res/Configuration;

    iget-object v9, v3, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 4430
    invoke-virtual {v9}, Landroid/app/ConfigurationController;->getCompatConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-direct {v14, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 4431
    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v9, :cond_125

    .line 4432
    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v14, v9}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 4436
    :cond_125
    nop

    .line 4437
    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz v9, :cond_137

    iget-boolean v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v9, :cond_137

    .line 4438
    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 4439
    iput-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 4440
    iput-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    move-object/from16 v17, v9

    goto :goto_139

    .line 4445
    :cond_137
    move-object/from16 v17, v7

    :goto_139
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 4446
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v11

    new-array v12, v5, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/content/res/loader/ResourcesLoader;

    .line 4445
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 4448
    invoke-virtual {v6, v8}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 4449
    move v9, v4

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    move v11, v5

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;
    :try_end_15b
    .catch Landroid/util/SuperNotCalledException; {:try_start_107 .. :try_end_15b} :catch_264
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_15b} :catch_23c

    move-object v12, v2

    move-object v2, v6

    :try_start_15d
    iget v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I
    :try_end_15f
    .catch Landroid/util/SuperNotCalledException; {:try_start_15d .. :try_end_15f} :catch_264
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_15f} :catch_225

    move-object v13, v8

    :try_start_160
    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move v15, v9

    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move/from16 v16, v11

    iget-object v11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;
    :try_end_169
    .catch Landroid/util/SuperNotCalledException; {:try_start_160 .. :try_end_169} :catch_264
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_169} :catch_223

    move-object/from16 v18, v12

    :try_start_16b
    iget-object v12, v1, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;
    :try_end_16d
    .catch Landroid/util/SuperNotCalledException; {:try_start_16b .. :try_end_16d} :catch_264
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_16d} :catch_21f

    move-object/from16 v19, v13

    :try_start_16f
    iget-object v13, v1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    move/from16 v20, v15

    iget-object v15, v1, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    iget-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v22, v0

    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    move-object/from16 v23, v0

    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->assistToken:Landroid/os/IBinder;

    move-object/from16 v24, v0

    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->shareableActivityToken:Landroid/os/IBinder;

    move-object/from16 v25, v0

    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;
    :try_end_187
    .catch Landroid/util/SuperNotCalledException; {:try_start_16f .. :try_end_187} :catch_264
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_187} :catch_219

    move-object/from16 v21, v0

    move-object/from16 v16, v7

    move-object/from16 v26, v18

    move-object/from16 v1, v19

    move-object/from16 v7, v22

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    :try_start_197
    invoke-virtual/range {v1 .. v21}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_19a
    .catch Landroid/util/SuperNotCalledException; {:try_start_197 .. :try_end_19a} :catch_264
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_19a} :catch_216

    move-object v13, v1

    .line 4455
    move-object/from16 v1, p2

    if-eqz v1, :cond_1a1

    .line 4456
    :try_start_19f
    iput-object v1, v13, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 4458
    :cond_1a1
    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 4459
    invoke-direct {v3}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 4460
    const/4 v11, 0x0

    iput-boolean v11, v13, Landroid/app/Activity;->mStartedActivity:Z

    .line 4461
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v0

    .line 4462
    if-eqz v0, :cond_1b7

    .line 4463
    invoke-virtual {v13, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 4466
    :cond_1b7
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-eqz v0, :cond_1c1

    .line 4467
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    iput-object v0, v13, Landroid/app/Activity;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 4468
    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 4470
    :cond_1c1
    iget-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mLaunchedFromBubble:Z

    iput-boolean v0, v13, Landroid/app/Activity;->mLaunchedFromBubble:Z

    .line 4471
    iput-boolean v11, v13, Landroid/app/Activity;->mCalled:Z

    .line 4476
    iput-object v13, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4477
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_1d9

    .line 4478
    iget-object v0, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v13, v2, v4}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_1e0

    .line 4480
    :cond_1d9
    iget-object v0, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v0, v13, v2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 4482
    :goto_1e0
    iget-boolean v0, v13, Landroid/app/Activity;->mCalled:Z

    if-eqz v0, :cond_1ed

    .line 4487
    iget-object v0, v14, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    iput v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedWindowingMode:I

    goto :goto_22d

    .line 4483
    :cond_1ed
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4484
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4494
    :catch_216
    move-exception v0

    move-object v13, v1

    goto :goto_240

    :catch_219
    move-exception v0

    move-object/from16 v26, v18

    move-object/from16 v13, v19

    goto :goto_240

    :catch_21f
    move-exception v0

    move-object/from16 v26, v18

    goto :goto_240

    :catch_223
    move-exception v0

    goto :goto_227

    :catch_225
    move-exception v0

    move-object v13, v8

    :goto_227
    move-object/from16 v26, v12

    goto :goto_240

    .line 4426
    :cond_22a
    move-object/from16 v26, v2

    move-object v13, v8

    .line 4489
    :goto_22d
    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V
    :try_end_231
    .catch Landroid/util/SuperNotCalledException; {:try_start_19f .. :try_end_231} :catch_264
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_231} :catch_238

    .line 4499
    goto :goto_248

    .line 4424
    :catchall_232
    move-exception v0

    move-object/from16 v26, v2

    move-object v13, v8

    :goto_236
    :try_start_236
    monitor-exit v9
    :try_end_237
    .catchall {:try_start_236 .. :try_end_237} :catchall_23a

    :try_start_237
    throw v0
    :try_end_238
    .catch Landroid/util/SuperNotCalledException; {:try_start_237 .. :try_end_238} :catch_264
    .catch Ljava/lang/Exception; {:try_start_237 .. :try_end_238} :catch_238

    .line 4494
    :catch_238
    move-exception v0

    goto :goto_240

    .line 4424
    :catchall_23a
    move-exception v0

    goto :goto_236

    .line 4494
    :catch_23c
    move-exception v0

    move-object/from16 v26, v2

    move-object v13, v8

    .line 4495
    :goto_240
    iget-object v1, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1, v13, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_249

    .line 4501
    :goto_248
    return-object v13

    .line 4496
    :cond_249
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v12, v26

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4491
    :catch_264
    move-exception v0

    .line 4492
    throw v0

    .line 4403
    :cond_266
    move-object v12, v2

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;
    .registers 10

    .line 6109
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 6110
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_c

    .line 6114
    return-object v1

    .line 6116
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing pause of activity that is not resumed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6118
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6119
    const-string v2, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6121
    :cond_37
    const/4 v0, 0x1

    if-eqz p2, :cond_3e

    .line 6122
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, p2, Landroid/app/Activity;->mFinished:Z

    .line 6126
    :cond_3e
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean p2, p2, Landroid/app/Activity;->mFinished:Z

    const/4 v2, 0x0

    if-nez p2, :cond_4c

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result p2

    if-eqz p2, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v2

    .line 6127
    :goto_4d
    if-eqz v0, :cond_52

    .line 6128
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 6131
    :cond_52
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 6135
    iget-object p2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 6136
    :try_start_58
    iget-object p3, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p3, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    .line 6137
    monitor-exit p2
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_93

    .line 6138
    if-eqz p3, :cond_6a

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_6b

    :cond_6a
    move p2, v2

    .line 6139
    :goto_6b
    nop

    :goto_6c
    if-ge v2, p2, :cond_7c

    .line 6140
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/OnActivityPausedListener;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-interface {v3, v4}, Landroid/app/OnActivityPausedListener;->onPaused(Landroid/app/Activity;)V

    .line 6139
    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 6143
    :cond_7c
    if-eqz p4, :cond_83

    invoke-virtual {p4}, Landroid/app/servertransaction/PendingTransactionActions;->getOldState()Landroid/os/Bundle;

    move-result-object p2

    goto :goto_84

    :cond_83
    move-object p2, v1

    .line 6144
    :goto_84
    if-eqz p2, :cond_8e

    .line 6150
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result p3

    if-eqz p3, :cond_8e

    .line 6151
    iput-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 6155
    :cond_8e
    if-eqz v0, :cond_92

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    :cond_92
    return-object v1

    .line 6137
    :catchall_93
    move-exception p1

    :try_start_94
    monitor-exit p2
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw p1
.end method

.method private greylist-max-o performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V
    .registers 6

    .line 6159
    iget-boolean p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz p2, :cond_5

    .line 6161
    return-void

    .line 6166
    :cond_5
    const-string/jumbo p2, "pausing"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/app/ActivityThread;->reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 6169
    :try_start_c
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, p2, Landroid/app/Activity;->mCalled:Z

    .line 6170
    iget-object p2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 6171
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean p2, p2, Landroid/app/Activity;->mCalled:Z

    if-eqz p2, :cond_1e

    .line 6182
    goto :goto_4e

    .line 6172
    :cond_1e
    new-instance p2, Landroid/util/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v1}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " did not call through to super.onPause()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_43
    .catch Landroid/util/SuperNotCalledException; {:try_start_c .. :try_end_43} :catch_72
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_43} :catch_43

    .line 6177
    :catch_43
    move-exception p2

    .line 6178
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 6183
    :goto_4e
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 6184
    return-void

    .line 6179
    :cond_53
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to pause activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6180
    invoke-static {p1}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 6175
    :catch_72
    move-exception p1

    .line 6176
    throw p1
.end method

.method private blacklist performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZLjava/lang/String;)V
    .registers 8

    .line 6231
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v0, :cond_3f

    .line 6232
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_b

    .line 6236
    return-void

    .line 6238
    :cond_b
    if-nez p4, :cond_3f

    .line 6239
    new-instance p4, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Performing stop of activity that is already stopped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6241
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6242
    invoke-virtual {p4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6243
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getStateString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6248
    :cond_3f
    invoke-direct {p0, p1, p5}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 6250
    if-eqz p2, :cond_7d

    .line 6255
    :try_start_44
    iget-object p4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p4}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setDescription(Ljava/lang/CharSequence;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4d} :catch_4e

    .line 6262
    goto :goto_7d

    .line 6256
    :catch_4e
    move-exception p2

    .line 6257
    iget-object p4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p4, v0, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result p4

    if-eqz p4, :cond_5a

    goto :goto_7d

    .line 6258
    :cond_5a
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unable to save state of activity "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6260
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 6265
    :cond_7d
    :goto_7d
    invoke-direct {p0, p1, p3, p5}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 6266
    return-void
.end method

.method private blacklist prepareInstrumentation(Landroid/app/ActivityThread$AppBindData;)Landroid/content/pm/InstrumentationInfo;
    .registers 7

    .line 8326
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 8327
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 8326
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getInstrumentationInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_ca

    .line 8330
    nop

    .line 8331
    if-eqz v0, :cond_af

    .line 8337
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 8338
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 8339
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package uses different ABI(s) than its instrumentation: package["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " instrumentation["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8346
    :cond_82
    iget-object v1, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 8347
    iget-object v1, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 8348
    iget-object v1, v0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 8349
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityThread;->getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 8350
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 8351
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getSplitAppDirs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 8352
    iget-object p1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {p1}, Landroid/app/LoadedApk;->getLibDir()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 8354
    return-object v0

    .line 8332
    :cond_af
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find instrumentation info for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8328
    :catch_ca
    move-exception p1

    .line 8329
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method static varargs blacklist printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 3602
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3603
    return-void
.end method

.method private blacklist purgePendingResources()V
    .registers 4

    .line 9312
    const-string/jumbo v0, "purgePendingResources"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9313
    invoke-direct {p0}, Landroid/app/ActivityThread;->nPurgePendingResources()V

    .line 9314
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 9315
    return-void
.end method

.method private blacklist relaunchAllActivities(ZLjava/lang/String;)V
    .registers 5

    .line 6409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Relaunch all activities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityThread"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6410
    iget-object p2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_20
    if-ltz p2, :cond_30

    .line 6411
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->scheduleRelaunchActivityIfPossible(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 6410
    add-int/lit8 p2, p2, -0x1

    goto :goto_20

    .line 6413
    :cond_30
    return-void
.end method

.method private blacklist removeSafeCancellationTransport(Landroid/app/ActivityThread$SafeCancellationTransport;)Landroid/os/CancellationSignal;
    .registers 3

    .line 2461
    monitor-enter p0

    .line 2462
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/CancellationSignal;

    .line 2463
    iget-object v0, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2464
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    .line 2466
    :cond_14
    monitor-exit p0

    return-object p1

    .line 2467
    :catchall_16
    move-exception p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw p1
.end method

.method private greylist-max-o reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 4

    .line 4722
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4724
    return-void

    .line 4726
    :cond_b
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    .line 4727
    if-nez v0, :cond_18

    .line 4728
    return-void

    .line 4730
    :cond_18
    new-instance v1, Landroid/window/SizeConfigurationBuckets;

    invoke-direct {v1, v0}, Landroid/window/SizeConfigurationBuckets;-><init>([Landroid/content/res/Configuration;)V

    invoke-static {p1, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fputmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SizeConfigurationBuckets;)V

    .line 4731
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/SizeConfigurationBuckets;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityClient;->reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V

    .line 4732
    return-void
.end method

.method private blacklist reportSplashscreenViewShown(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 6

    .line 5078
    const-wide/16 v0, 0x8

    const-string/jumbo v2, "reportSplashscreenViewShown"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 5079
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityClient;->reportSplashScreenAttached(Landroid/os/IBinder;)V

    .line 5080
    monitor-enter p0

    .line 5081
    :try_start_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    if-eqz v0, :cond_19

    .line 5082
    iget-object v0, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->handOverSplashScreenView(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    .line 5084
    :cond_19
    monitor-exit p0

    .line 5085
    return-void

    .line 5084
    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method private blacklist reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    .registers 5

    .line 6064
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastReportedTopResumedState:Z

    if-eq v0, p2, :cond_b

    .line 6065
    iput-boolean p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastReportedTopResumedState:Z

    .line 6066
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->performTopResumedActivityChanged(ZLjava/lang/String;)V

    .line 6068
    :cond_b
    return-void
.end method

.method private static greylist-max-o safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .registers 1

    .line 6556
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    .line 6557
    if-nez p0, :cond_9

    const-string p0, "[Unknown]"

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method private blacklist schedulePauseWithUserLeaveHintAndReturnToCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 4

    .line 5128
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    .line 5129
    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    .line 5130
    return-void

    .line 5133
    :cond_b
    packed-switch v0, :pswitch_data_1e

    goto :goto_1d

    .line 5141
    :pswitch_f
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->scheduleResume(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5142
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->schedulePauseWithUserLeavingHint(Landroid/app/ActivityThread$ActivityClientRecord;)V

    goto :goto_1d

    .line 5136
    :pswitch_16
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->schedulePauseWithUserLeavingHint(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5137
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->scheduleResume(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5138
    nop

    .line 5145
    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x3
        :pswitch_16
        :pswitch_f
    .end packed-switch
.end method

.method private blacklist schedulePauseWithUserLeavingHint(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 10

    .line 5148
    new-instance v0, Landroid/app/servertransaction/ClientTransaction;

    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-direct {v0, v1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/app/IApplicationThread;)V

    .line 5149
    new-instance v2, Landroid/app/servertransaction/PauseActivityItem;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5150
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Landroid/app/servertransaction/PauseActivityItem;-><init>(Landroid/os/IBinder;ZZZZ)V

    .line 5152
    invoke-virtual {v0, v2}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 5153
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 5154
    return-void
.end method

.method private blacklist scheduleRelaunchActivityIfPossible(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .registers 5

    .line 6789
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-nez v0, :cond_10

    :cond_a
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_11

    .line 6792
    :cond_10
    return-void

    .line 6794
    :cond_11
    if-eqz p2, :cond_1a

    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz p2, :cond_1a

    .line 6795
    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 6797
    :cond_1a
    iget-object p2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/16 v1, 0xa0

    invoke-virtual {p2, v1, v0}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    .line 6798
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 6799
    return-void
.end method

.method private blacklist scheduleResume(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 5

    .line 5157
    new-instance v0, Landroid/app/servertransaction/ClientTransaction;

    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-direct {v0, v1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/app/IApplicationThread;)V

    .line 5158
    new-instance v1, Landroid/app/servertransaction/ResumeActivityItem;

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Landroid/app/servertransaction/ResumeActivityItem;-><init>(Landroid/os/IBinder;ZZ)V

    .line 5160
    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 5161
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 5162
    return-void
.end method

.method private greylist-max-o sendMessage(ILjava/lang/Object;I)V
    .registers 10

    .line 4302
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 4303
    return-void
.end method

.method private greylist-max-o sendMessage(ILjava/lang/Object;II)V
    .registers 11

    .line 4306
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 4307
    return-void
.end method

.method private greylist-max-o sendMessage(ILjava/lang/Object;IIZ)V
    .registers 7

    .line 4314
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4315
    iput p1, v0, Landroid/os/Message;->what:I

    .line 4316
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4317
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 4318
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 4319
    if-eqz p5, :cond_12

    .line 4320
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4322
    :cond_12
    iget-object p1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {p1, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 4323
    return-void
.end method

.method private greylist-max-o setupGraphicsSupport(Landroid/content/Context;)V
    .registers 8

    .line 7738
    const-string/jumbo v0, "setupGraphicsSupport"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7741
    const-string v0, "android"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 7745
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 7746
    const-string v3, "ActivityThread"

    if-eqz v0, :cond_34

    .line 7748
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 7749
    const-string/jumbo v4, "java.io.tmpdir"

    invoke-static {v4, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7751
    :try_start_26
    const-string v4, "TMPDIR"

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2c
    .catch Landroid/system/ErrnoException; {:try_start_26 .. :try_end_2c} :catch_2d

    .line 7754
    goto :goto_33

    .line 7752
    :catch_2d
    move-exception v0

    .line 7753
    const-string v4, "Unable to initialize $TMPDIR"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7755
    :goto_33
    goto :goto_39

    .line 7756
    :cond_34
    const-string v0, "Unable to initialize \"java.io.tmpdir\" property due to missing cache directory"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7761
    :goto_39
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 7762
    invoke-virtual {v0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v4

    .line 7763
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 7764
    if-eqz v4, :cond_67

    if-eqz v0, :cond_67

    .line 7766
    :try_start_49
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 7767
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 7768
    if-eqz v3, :cond_5d

    .line 7769
    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->setupDiskCache(Ljava/io/File;)V

    .line 7770
    invoke-static {v4}, Landroid/renderscript/RenderScriptCacheDir;->setupDiskCache(Ljava/io/File;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_5d} :catch_5e

    .line 7775
    :cond_5d
    goto :goto_6c

    .line 7772
    :catch_5e
    move-exception p1

    .line 7773
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 7774
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 7777
    :cond_67
    const-string v0, "Unable to use shader/script cache: missing code-cache directory"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7783
    :cond_6c
    :goto_6c
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v0

    invoke-direct {p0}, Landroid/app/ActivityThread;->getCoreSettingsForDefaultDeviceLocked()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/os/GraphicsEnvironment;->setup(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 7784
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 7785
    return-void
.end method

.method public static blacklist shouldReportChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;IZ)Z
    .registers 8

    .line 7092
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v0

    .line 7094
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 7095
    return v1

    .line 7099
    :cond_8
    const/4 v2, 0x1

    if-eqz p4, :cond_c

    .line 7100
    return v2

    .line 7103
    :cond_c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->handleAllConfigChanges()Z

    move-result p4

    if-eqz p4, :cond_18

    .line 7104
    const/high16 p4, 0x8000000

    and-int/2addr p4, p3

    if-eqz p4, :cond_18

    .line 7106
    return v2

    .line 7110
    :cond_18
    invoke-static {v0, p0, p1, p2}, Landroid/window/SizeConfigurationBuckets;->filterDiff(ILandroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;)I

    move-result p0

    .line 7116
    if-eqz p0, :cond_1f

    move v0, p0

    .line 7120
    :cond_1f
    not-int p0, p3

    and-int/2addr p0, v0

    if-nez p0, :cond_24

    move v1, v2

    :cond_24
    return v1
.end method

.method static blacklist staticInitForRavenwood(Landroid/app/ActivityThread;)V
    .registers 1

    .line 3064
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method static blacklist staticInitForRavenwood$ravenwood(Landroid/app/ActivityThread;)V
    .registers 1

    .line 3070
    sput-object p0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    .line 3071
    return-void
.end method

.method private greylist suspendAllAndSendVmStart(Landroid/app/ActivityThread$AppBindData;)V
    .registers 5

    .line 8238
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 8239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {p1}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is suspending. Debugger needs to resume to continue."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ActivityThread"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8243
    :try_start_28
    iget-object p1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2e} :catch_40

    .line 8246
    nop

    .line 8248
    invoke-static {}, Landroid/os/Debug;->suspendAllAndSendVmStart()V

    .line 8251
    :try_start_32
    iget-object p1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_38} :catch_3a

    .line 8254
    nop

    .line 8255
    return-void

    .line 8252
    :catch_3a
    move-exception p1

    .line 8253
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 8244
    :catch_40
    move-exception p1

    .line 8245
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist syncTransferSplashscreenViewTransaction(Landroid/window/SplashScreenView;Landroid/os/IBinder;Landroid/view/View;Landroid/view/SurfaceControl;)V
    .registers 7

    .line 5093
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 5094
    invoke-virtual {v0, p4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 5095
    invoke-virtual {p4}, Landroid/view/SurfaceControl;->release()V

    .line 5096
    invoke-virtual {p3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 5097
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->syncTransferSurfaceOnDraw()V

    .line 5099
    invoke-virtual {p3}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result p4

    if-eqz p4, :cond_28

    .line 5100
    invoke-virtual {p3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p4

    new-instance v0, Landroid/app/ActivityThread$2;

    invoke-direct {v0, p0, p3, p2, p1}, Landroid/app/ActivityThread$2;-><init>(Landroid/app/ActivityThread;Landroid/view/View;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    invoke-virtual {p4, v0}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    goto :goto_38

    .line 5116
    :cond_28
    const-wide/16 v0, 0x8

    const-string/jumbo p4, "transferSplashscreenView_software"

    invoke-static {v0, v1, p4}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 5118
    new-instance p4, Landroid/app/ActivityThread$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p2, p1}, Landroid/app/ActivityThread$$ExternalSyntheticLambda1;-><init>(Landroid/app/ActivityThread;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5120
    :goto_38
    return-void
.end method

.method public static greylist systemMain()Landroid/app/ActivityThread;
    .registers 4

    .line 9150
    invoke-static {}, Landroid/view/ThreadedRenderer;->initForSystemProcess()V

    .line 9151
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 9152
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread;->attach(ZJ)V

    .line 9153
    return-object v0
.end method

.method public static blacklist throwIfNotInstrumenting()V
    .registers 1
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 3393
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 3394
    if-nez v0, :cond_7

    .line 3396
    return-void

    .line 3398
    :cond_7
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    .line 3399
    if-nez v0, :cond_e

    .line 3401
    return-void

    .line 3403
    :cond_e
    invoke-virtual {v0}, Landroid/app/Instrumentation;->isInstrumenting()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3404
    return-void

    .line 3406
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static blacklist throwIfNotInstrumenting$ravenwood()V
    .registers 0

    .line 3412
    return-void
.end method

.method private blacklist throwRemoteServiceException(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5

    .line 2493
    packed-switch p2, :pswitch_data_4e

    .line 2516
    new-instance p3, Landroid/app/RemoteServiceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " (with unwknown typeId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 2498
    :pswitch_26
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->generateForegroundServiceDidNotStopInTimeException(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/RemoteServiceException$ForegroundServiceDidNotStopInTimeException;

    move-result-object p1

    throw p1

    .line 2507
    :pswitch_2b
    new-instance p2, Landroid/app/RemoteServiceException$BadUserInitiatedJobNotificationException;

    invoke-direct {p2, p1}, Landroid/app/RemoteServiceException$BadUserInitiatedJobNotificationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2513
    :pswitch_31
    new-instance p2, Landroid/app/RemoteServiceException$CrashedByAdbException;

    invoke-direct {p2, p1}, Landroid/app/RemoteServiceException$CrashedByAdbException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2510
    :pswitch_37
    new-instance p2, Landroid/app/RemoteServiceException$MissingRequestPasswordComplexityPermissionException;

    invoke-direct {p2, p1}, Landroid/app/RemoteServiceException$MissingRequestPasswordComplexityPermissionException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2504
    :pswitch_3d
    new-instance p2, Landroid/app/RemoteServiceException$BadForegroundServiceNotificationException;

    invoke-direct {p2, p1}, Landroid/app/RemoteServiceException$BadForegroundServiceNotificationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2501
    :pswitch_43
    new-instance p2, Landroid/app/RemoteServiceException$CannotPostForegroundServiceNotificationException;

    invoke-direct {p2, p1}, Landroid/app/RemoteServiceException$CannotPostForegroundServiceNotificationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2495
    :pswitch_49
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->generateForegroundServiceDidNotStartInTimeException(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;

    move-result-object p1

    throw p1

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_49
        :pswitch_43
        :pswitch_3d
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_26
    .end packed-switch
.end method

.method private static blacklist toVmProcessState(I)I
    .registers 2

    .line 4243
    invoke-static {p0}, Landroid/app/ActivityManager;->isProcStateJankPerceptible(I)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 4244
    return v0

    .line 4247
    :cond_8
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->jankPerceptibleNarrow()Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->jankPerceptibleNarrowHoldback()Z

    move-result p0

    if-nez p0, :cond_1b

    .line 4251
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 4252
    return v0

    .line 4256
    :cond_1b
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist updateDebugViewAttributeState()Z
    .registers 6

    .line 6393
    sget-boolean v0, Landroid/view/View;->sDebugViewAttributes:Z

    .line 6397
    invoke-direct {p0}, Landroid/app/ActivityThread;->getCoreSettingsForDefaultDeviceLocked()Landroid/os/Bundle;

    move-result-object v1

    .line 6398
    const-string v2, "debug_view_attributes_application_package"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/view/View;->sDebugViewAttributesApplicationPackage:Ljava/lang/String;

    .line 6400
    iget-object v2, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v2, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_21

    .line 6401
    iget-object v2, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v2, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_23

    :cond_21
    const-string v2, "<unknown-app>"

    .line 6402
    :goto_23
    nop

    .line 6403
    const-string v3, "debug_view_attributes"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_39

    sget-object v1, Landroid/view/View;->sDebugViewAttributesApplicationPackage:Ljava/lang/String;

    .line 6404
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_39

    :cond_37
    move v1, v4

    goto :goto_3a

    :cond_39
    :goto_39
    move v1, v3

    :goto_3a
    sput-boolean v1, Landroid/view/View;->sDebugViewAttributes:Z

    .line 6405
    sget-boolean v1, Landroid/view/View;->sDebugViewAttributes:Z

    if-eq v0, v1, :cond_41

    move v4, v3

    :cond_41
    return v4
.end method

.method private blacklist updateDeviceIdForNonUIContexts(I)V
    .registers 9

    .line 7131
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 7132
    return-void

    .line 7134
    :cond_4
    iget v0, p0, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    if-ne p1, v0, :cond_9

    .line 7135
    return-void

    .line 7137
    :cond_9
    iput p1, p0, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    .line 7138
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7141
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 7142
    :try_start_13
    iget-object v2, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 7143
    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v2, :cond_2b

    .line 7144
    iget-object v5, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7143
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 7146
    :cond_2b
    iget-object v2, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 7147
    move v4, v3

    :goto_32
    if-ge v4, v2, :cond_48

    .line 7148
    iget-object v5, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Service;

    .line 7150
    invoke-virtual {v5}, Landroid/app/Service;->isUiContext()Z

    move-result v6

    if-nez v6, :cond_45

    .line 7151
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7147
    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 7154
    :cond_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_13 .. :try_end_49} :catchall_9e

    .line 7155
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 7156
    :try_start_4c
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 7157
    nop

    :goto_53
    if-ge v3, v1, :cond_6b

    .line 7158
    iget-object v4, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v4, v4, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    .line 7159
    invoke-virtual {v4}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 7160
    if-eqz v4, :cond_68

    .line 7161
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7157
    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 7164
    :cond_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_4c .. :try_end_6c} :catchall_9b

    .line 7166
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 7168
    :try_start_7c
    invoke-virtual {v1, p1}, Landroid/content/Context;->updateDeviceId(I)V
    :try_end_7f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7c .. :try_end_7f} :catch_80

    .line 7175
    goto :goto_99

    .line 7169
    :catch_80
    move-exception v1

    .line 7174
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception updating context with deviceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7176
    :goto_99
    goto :goto_70

    .line 7177
    :cond_9a
    return-void

    .line 7164
    :catchall_9b
    move-exception p1

    :try_start_9c
    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw p1

    .line 7154
    :catchall_9e
    move-exception p1

    :try_start_9f
    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw p1
.end method

.method public static blacklist updateHttpProxy(Landroid/content/Context;)V
    .registers 2

    .line 9157
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 9158
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Proxy;->setHttpProxyConfiguration(Landroid/net/ProxyInfo;)V

    .line 9159
    return-void
.end method

.method private blacklist updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .line 5223
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5224
    if-nez v0, :cond_24

    .line 5225
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateUiTranslationState(): no activity for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityThread"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    return-void

    .line 5228
    :cond_24
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 5230
    return-void
.end method

.method private greylist-max-o updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .registers 5

    .line 6303
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 6304
    if-eqz v0, :cond_38

    .line 6305
    const/4 v1, 0x1

    if-eqz p2, :cond_24

    .line 6306
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean p2, p2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-nez p2, :cond_38

    .line 6307
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, p2, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 6308
    iget p2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/2addr p2, v1

    iput p2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 6309
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean p2, p2, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz p2, :cond_38

    .line 6310
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->makeVisible()V

    goto :goto_38

    .line 6314
    :cond_24
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean p2, p2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz p2, :cond_38

    .line 6315
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 6316
    iget p1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 6317
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6321
    :cond_38
    :goto_38
    return-void
.end method

.method private blacklist updateVmProcessState(II)V
    .registers 4

    .line 4261
    invoke-static {p2}, Landroid/app/ActivityThread;->toVmProcessState(I)I

    move-result p2

    .line 4262
    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    .line 4263
    invoke-static {p1}, Landroid/app/ActivityThread;->toVmProcessState(I)I

    move-result p1

    if-eq p2, p1, :cond_14

    .line 4264
    :cond_d
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object p1

    invoke-virtual {p1, p2}, Ldalvik/system/VMRuntime;->updateProcessState(I)V

    .line 4266
    :cond_14
    return-void
.end method

.method private greylist waitForDebugger(Landroid/app/ActivityThread$AppBindData;)V
    .registers 5

    .line 8217
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 8218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {p1}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is waiting for the debugger ..."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ActivityThread"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8222
    :try_start_28
    iget-object p1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2e} :catch_40

    .line 8225
    nop

    .line 8227
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 8230
    :try_start_32
    iget-object p1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_38} :catch_3a

    .line 8233
    nop

    .line 8234
    return-void

    .line 8231
    :catch_3a
    move-exception p1

    .line 8232
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 8223
    :catch_40
    move-exception p1

    .line 8224
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public greylist acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .registers 9

    .line 8634
    iget-object p1, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 8635
    :try_start_3
    new-instance v0, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v0, p2, p3}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 8636
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 8637
    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 8638
    monitor-exit p1

    return-object v1

    .line 8641
    :cond_15
    iget-object v0, v0, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 8642
    invoke-interface {v0}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 8643
    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 8646
    const-string p4, "ActivityThread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquiring provider "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " for user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ": existing object\'s process dead"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8648
    const/4 p2, 0x1

    invoke-virtual {p0, v2, p2}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    .line 8649
    monitor-exit p1

    return-object v1

    .line 8654
    :cond_4f
    iget-object p2, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityThread$ProviderRefCount;

    .line 8655
    if-eqz p2, :cond_5c

    .line 8656
    invoke-direct {p0, p2, p4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V

    .line 8658
    :cond_5c
    monitor-exit p1

    return-object v0

    .line 8659
    :catchall_5e
    move-exception p2

    monitor-exit p1
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw p2
.end method

.method public greylist acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .registers 15

    .line 8482
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v0

    .line 8483
    if-eqz v0, :cond_7

    .line 8484
    return-object v0

    .line 8494
    :cond_7
    invoke-direct {p0, p2, p3}, Landroid/app/ActivityThread;->getGetProviderKey(Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;

    move-result-object v1

    .line 8496
    const/4 v2, 0x0

    :try_start_c
    monitor-enter v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_d} :catch_ca
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_d} :catch_67
    .catchall {:try_start_c .. :try_end_d} :catchall_63

    .line 8497
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 8498
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_58

    .line 8497
    move-object v6, p2

    move v7, p3

    move v8, p4

    :try_start_1c
    invoke-interface/range {v3 .. v8}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object p2

    .line 8501
    if-eqz p2, :cond_4b

    iget-object p3, p2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez p3, :cond_4b

    iget-boolean p3, p2, Landroid/app/ContentProviderHolder;->mLocal:Z

    if-nez p3, :cond_4b

    .line 8502
    iget-object p2, v1, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_61

    .line 8503
    :try_start_2d
    iget-object p3, v1, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    if-eqz p3, :cond_32

    goto :goto_3a

    .line 8508
    :cond_32
    iget-object p3, v1, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    sget p4, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v3, p4

    invoke-virtual {p3, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 8510
    :goto_3a
    iget-object p3, v1, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 8511
    monitor-exit p2
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_47

    .line 8512
    if-eqz p3, :cond_45

    :try_start_3f
    iget-object p2, p3, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_61

    if-nez p2, :cond_45

    .line 8514
    move-object p2, v2

    goto :goto_4b

    .line 8517
    :cond_45
    move-object p2, p3

    goto :goto_4b

    .line 8511
    :catchall_47
    move-exception v0

    move-object p3, v0

    :try_start_49
    monitor-exit p2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_47

    :try_start_4a
    throw p3

    .line 8517
    :cond_4b
    :goto_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_61

    .line 8524
    iget-object p3, v1, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 8525
    :try_start_4f
    iput-object v2, v1, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 8526
    monitor-exit p3

    .line 8527
    move-object v5, p2

    goto :goto_73

    .line 8526
    :catchall_54
    move-exception v0

    move-object p1, v0

    monitor-exit p3
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_54

    throw p1

    .line 8517
    :catchall_58
    move-exception v0

    move-object v6, p2

    move v7, p3

    move v8, p4

    :goto_5c
    move-object p2, v0

    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_61

    :try_start_5e
    throw p2
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_5f} :catch_ca
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_5f} :catch_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_63

    .line 8520
    :catch_5f
    move-exception v0

    goto :goto_6b

    .line 8517
    :catchall_61
    move-exception v0

    goto :goto_5c

    .line 8524
    :catchall_63
    move-exception v0

    move-object p1, v0

    goto/16 :goto_d1

    .line 8520
    :catch_67
    move-exception v0

    move-object v6, p2

    move v7, p3

    move v8, p4

    .line 8521
    :goto_6b
    nop

    .line 8524
    iget-object p2, v1, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 8525
    :try_start_6f
    iput-object v2, v1, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 8526
    monitor-exit p2
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_c6

    .line 8527
    move-object v5, v2

    .line 8528
    :goto_73
    if-nez v5, :cond_b7

    .line 8529
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p1

    if-eqz p1, :cond_98

    .line 8530
    const-string p1, "ActivityThread"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to find provider info for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    .line 8532
    :cond_98
    const-string p1, "ActivityThread"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to find provider info for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " (user not unlocked)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8534
    :goto_b6
    return-object v2

    .line 8539
    :cond_b7
    iget-object v6, v5, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    const/4 v7, 0x1

    move v9, v8

    iget-boolean v8, v5, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;

    move-result-object p1

    .line 8541
    iget-object p1, p1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    return-object p1

    .line 8526
    :catchall_c6
    move-exception v0

    move-object p1, v0

    :try_start_c8
    monitor-exit p2
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c6

    throw p1

    .line 8518
    :catch_ca
    move-exception v0

    move-object p1, v0

    .line 8519
    :try_start_cc
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_d1
    .catchall {:try_start_cc .. :try_end_d1} :catchall_63

    .line 8524
    :goto_d1
    iget-object p2, v1, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 8525
    :try_start_d4
    iput-object v2, v1, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 8526
    monitor-exit p2
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_d8

    .line 8527
    throw p1

    .line 8526
    :catchall_d8
    move-exception v0

    move-object p1, v0

    :try_start_da
    monitor-exit p2
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d8

    throw p1
.end method

.method blacklist addApplication(Landroid/app/Application;)V
    .registers 3

    .line 9379
    iget-object v0, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9380
    iget-object p1, p1, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    iget-object p1, p1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Ldalvik/system/VMDebug;->addApplication(Ljava/lang/String;)V

    .line 9381
    return-void
.end method

.method public blacklist addConfigurationChangedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 4202
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationChangedListenerController:Landroid/app/ConfigurationChangedListenerController;

    invoke-virtual {v0, p1, p2}, Landroid/app/ConfigurationChangedListenerController;->addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 4203
    return-void
.end method

.method final greylist-max-o appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .registers 4

    .line 8841
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8842
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityThread$ProviderRefCount;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_21

    .line 8843
    if-eqz p1, :cond_1f

    .line 8845
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object p1, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object p1, p1, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 8846
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->appNotRespondingViaProvider(Landroid/os/IBinder;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19
    .catchall {:try_start_d .. :try_end_18} :catchall_21

    .line 8849
    goto :goto_1f

    .line 8847
    :catch_19
    move-exception p1

    .line 8848
    :try_start_1a
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 8851
    :cond_1f
    :goto_1f
    monitor-exit v0

    .line 8852
    return-void

    .line 8851
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw p1
.end method

.method public final greylist-max-o applyConfigurationToResources(Landroid/content/res/Configuration;)V
    .registers 5

    .line 7124
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 7125
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 7126
    monitor-exit v0

    .line 7127
    return-void

    .line 7126
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public blacklist collectComponentCallbacks(Z)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentCallbacks2;",
            ">;"
        }
    .end annotation

    .line 6906
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6909
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 6910
    :try_start_8
    iget-object v2, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6911
    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v2, :cond_20

    .line 6912
    iget-object v5, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6911
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 6914
    :cond_20
    if-eqz p1, :cond_42

    .line 6915
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2a
    if-ltz v2, :cond_42

    .line 6916
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v4, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6917
    if-eqz v4, :cond_3f

    iget-boolean v5, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v5, :cond_3f

    .line 6918
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6915
    :cond_3f
    add-int/lit8 v2, v2, -0x1

    goto :goto_2a

    .line 6922
    :cond_42
    iget-object v2, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 6923
    move v4, v3

    :goto_49
    if-ge v4, v2, :cond_5f

    .line 6924
    iget-object v5, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Service;

    .line 6927
    if-nez p1, :cond_59

    instance-of v6, v5, Landroid/window/WindowProviderService;

    if-nez v6, :cond_5c

    .line 6928
    :cond_59
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6923
    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 6931
    :cond_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_8 .. :try_end_60} :catchall_81

    .line 6932
    iget-object p1, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 6933
    :try_start_63
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 6934
    nop

    :goto_6a
    if-ge v3, v1, :cond_7c

    .line 6935
    iget-object v2, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v2, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6934
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 6937
    :cond_7c
    monitor-exit p1

    .line 6939
    return-object v0

    .line 6937
    :catchall_7e
    move-exception v0

    monitor-exit p1
    :try_end_80
    .catchall {:try_start_63 .. :try_end_80} :catchall_7e

    throw v0

    .line 6931
    :catchall_81
    move-exception p1

    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p1
.end method

.method greylist-max-o completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V
    .registers 7

    .line 8761
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8762
    :try_start_3
    iget-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v1, :cond_9

    .line 8768
    monitor-exit v0

    return-void

    .line 8774
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 8776
    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 8777
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 8778
    if-ne v3, p1, :cond_23

    .line 8779
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8782
    :cond_23
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2b
    if-ltz v3, :cond_45

    .line 8783
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 8784
    iget-object v4, v4, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 8785
    if-ne v4, v2, :cond_42

    .line 8786
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 8782
    :cond_42
    add-int/lit8 v3, v3, -0x1

    goto :goto_2b

    .line 8789
    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_54

    .line 8796
    :try_start_46
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p1, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object p1, p1, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_51} :catch_52

    .line 8800
    goto :goto_53

    .line 8798
    :catch_52
    move-exception p1

    .line 8801
    :goto_53
    return-void

    .line 8789
    :catchall_54
    move-exception p1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p1
.end method

.method public blacklist countLaunchingActivities(I)V
    .registers 3

    .line 4270
    iget-object v0, p0, Landroid/app/ActivityThread;->mNumLaunchingActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 4271
    return-void
.end method

.method public blacklist createDisplayContextIfNeeded(Landroid/content/Context;Landroid/app/ActivityThread$ReceiverData;)Landroid/content/Context;
    .registers 5

    .line 5342
    iget-object p2, p2, Landroid/app/ActivityThread$ReceiverData;->mOptions:Landroid/app/ActivityOptions;

    .line 5343
    if-nez p2, :cond_5

    .line 5344
    return-object p1

    .line 5347
    :cond_5
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result p2

    .line 5348
    const/4 v0, -0x1

    if-ne p2, v0, :cond_d

    .line 5349
    return-object p1

    .line 5352
    :cond_d
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 5353
    if-nez v0, :cond_18

    .line 5354
    return-object p1

    .line 5357
    :cond_18
    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 5358
    if-nez v0, :cond_37

    .line 5359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create a display context for nonexistent display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityThread"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5361
    return-object p1

    .line 5364
    :cond_37
    invoke-virtual {p1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createSystemUiContextForTesting(I)Landroid/content/Context;
    .registers 3

    .line 3495
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/ContextImpl;->createSystemUiContext(Landroid/app/ContextImpl;I)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o doGcIfNeeded()V
    .registers 2

    .line 3574
    const-string v0, "bg"

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->doGcIfNeeded(Ljava/lang/String;)V

    .line 3575
    return-void
.end method

.method blacklist doGcIfNeeded(Ljava/lang/String;)V
    .registers 8

    .line 3578
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 3579
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3582
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getLastGcTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_15

    .line 3584
    invoke-static {p1}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 3586
    :cond_15
    return-void
.end method

.method greylist-max-o finishInstrumentation(ILandroid/os/Bundle;)V
    .registers 5

    .line 8432
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 8433
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v1, v1, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_19

    .line 8435
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 8440
    :cond_19
    :try_start_19
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_2a

    .line 8443
    nop

    .line 8444
    iget-boolean p1, p0, Landroid/app/ActivityThread;->mInstrumentingWithoutRestart:Z

    if-eqz p1, :cond_29

    .line 8445
    const/16 p1, 0xab

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 8447
    :cond_29
    return-void

    .line 8441
    :catch_2a
    move-exception p1

    .line 8442
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getActivitiesToBeDestroyed()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/app/servertransaction/DestroyActivityItem;",
            ">;"
        }
    .end annotation

    .line 6562
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    return-object v0
.end method

.method public final greylist getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .registers 3

    .line 4171
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4172
    if-eqz p1, :cond_d

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return-object p1
.end method

.method public greylist-max-o getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;
    .registers 3

    .line 4189
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    return-object p1
.end method

.method public greylist getApplication()Landroid/app/Application;
    .registers 2

    .line 3437
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public greylist getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .registers 2

    .line 3379
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    return-object v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 4194
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method blacklist getDefaultDeviceCoreSettings()Landroid/os/Bundle;
    .registers 3

    .line 9172
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9173
    :try_start_3
    invoke-direct {p0}, Landroid/app/ActivityThread;->getCoreSettingsForDefaultDeviceLocked()Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 9174
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public greylist-max-o getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 3431
    iget-object v0, p0, Landroid/app/ActivityThread;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method blacklist getFloatCoreSetting(Ljava/lang/String;F)F
    .registers 5

    .line 9209
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9210
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v1, :cond_15

    .line 9211
    iget v1, p0, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    invoke-direct {p0, v1}, Landroid/app/ActivityThread;->getCoreSettingsForDeviceLocked(I)Landroid/os/Bundle;

    move-result-object v1

    .line 9212
    if-eqz v1, :cond_15

    .line 9213
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    monitor-exit v0

    return p1

    .line 9216
    :cond_15
    monitor-exit v0

    return p2

    .line 9217
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public greylist getHandler()Landroid/os/Handler;
    .registers 2

    .line 3161
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    return-object v0
.end method

.method public greylist getInstrumentation()Landroid/app/Instrumentation;
    .registers 2

    .line 3386
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method greylist-max-o getIntCoreSetting(Ljava/lang/String;I)I
    .registers 4

    .line 9178
    iget v0, p0, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ActivityThread;->getIntCoreSetting(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method blacklist getIntCoreSetting(Ljava/lang/String;II)I
    .registers 6

    .line 9182
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9183
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v1, :cond_13

    .line 9184
    invoke-direct {p0, p3}, Landroid/app/ActivityThread;->getCoreSettingsForDeviceLocked(I)Landroid/os/Bundle;

    move-result-object p3

    .line 9185
    if-eqz p3, :cond_13

    .line 9186
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 9189
    :cond_13
    monitor-exit v0

    return p2

    .line 9190
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public blacklist getLastCreatedActivity()Landroid/app/Activity;
    .registers 3

    .line 4180
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4181
    const/4 v0, 0x0

    return-object v0

    .line 4184
    :cond_a
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public greylist getLooper()Landroid/os/Looper;
    .registers 2

    .line 3426
    iget-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public greylist getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .registers 14

    .line 3219
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v8, v2

    goto :goto_9

    :cond_8
    move v8, v1

    .line 3220
    :goto_9
    if-eqz v8, :cond_29

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v0, :cond_29

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_29

    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_27

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v3, v3, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3222
    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_27
    move v7, v2

    goto :goto_2a

    :cond_29
    move v7, v1

    .line 3224
    :goto_2a
    if-eqz v8, :cond_33

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p3

    if-eqz v0, :cond_33

    move v9, v2

    goto :goto_34

    :cond_33
    move v9, v1

    .line 3225
    :goto_34
    and-int/lit8 p3, p3, 0x3

    if-ne p3, v2, :cond_98

    .line 3228
    if-eqz v7, :cond_98

    .line 3229
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Requesting code from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " (with uid "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3231
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_92

    .line 3232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to be run in process "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object p3, p3, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3236
    :cond_92
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3239
    :cond_98
    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v9}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-p getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .registers 5

    .line 3167
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;
    .registers 8

    .line 3172
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq v0, p4, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 3173
    :goto_9
    nop

    .line 3177
    if-gez p4, :cond_10

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p4

    .line 3173
    :cond_10
    const-wide/32 v1, 0x10000400

    invoke-static {p1, v1, v2, p4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 3178
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 3180
    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    .line 3182
    move-object v0, v2

    goto :goto_34

    .line 3183
    :cond_1f
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2c

    .line 3184
    :try_start_23
    iget-object v0, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    goto :goto_34

    .line 3186
    :cond_2c
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 3189
    :goto_34
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk;

    goto :goto_3e

    :cond_3d
    move-object v0, v2

    .line 3190
    :goto_3e
    if-eqz p4, :cond_97

    if-eqz v0, :cond_97

    .line 3191
    invoke-static {v0, p4}, Landroid/app/ActivityThread;->isLoadedApkResourceDirsUpToDate(Landroid/app/LoadedApk;Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-nez p2, :cond_53

    .line 3192
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3193
    invoke-static {p0, p4, p2}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 3194
    invoke-virtual {v0, p4, p2}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 3197
    :cond_53
    invoke-virtual {v0}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    move-result p2

    if-eqz p2, :cond_95

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_5e

    goto :goto_95

    .line 3199
    :cond_5e
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Requesting code from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " to be run in process "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object p3, p3, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object p3, p3, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3205
    :cond_95
    :goto_95
    monitor-exit v1

    return-object v0

    .line 3207
    :cond_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_23 .. :try_end_98} :catchall_a0

    .line 3209
    if-eqz p4, :cond_9f

    .line 3210
    invoke-virtual {p0, p4, p2, p3}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object p1

    return-object p1

    .line 3213
    :cond_9f
    return-object v2

    .line 3207
    :catchall_a0
    move-exception p1

    :try_start_a1
    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    throw p1
.end method

.method public blacklist getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;
    .registers 9

    .line 3251
    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object p1

    return-object p1
.end method

.method public greylist getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
    .registers 10

    .line 3246
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object p1

    return-object p1
.end method

.method public greylist getProcessName()Ljava/lang/String;
    .registers 2

    .line 3442
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getProfileFilePath()Ljava/lang/String;
    .registers 2

    .line 3420
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getStringCoreSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 9197
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9198
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v1, :cond_15

    .line 9199
    iget v1, p0, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    invoke-direct {p0, v1}, Landroid/app/ActivityThread;->getCoreSettingsForDeviceLocked(I)Landroid/os/Bundle;

    move-result-object v1

    .line 9200
    if-eqz v1, :cond_15

    .line 9201
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 9204
    :cond_15
    monitor-exit v0

    return-object p2

    .line 9205
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public greylist getSystemContext()Landroid/app/ContextImpl;
    .registers 2

    .line 3449
    monitor-enter p0

    .line 3450
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    if-nez v0, :cond_b

    .line 3451
    invoke-static {p0}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 3453
    :cond_b
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    monitor-exit p0

    return-object v0

    .line 3454
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public blacklist getSystemUiContext()Landroid/content/Context;
    .registers 2

    .line 3459
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->getSystemUiContext(I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSystemUiContext(I)Landroid/content/Context;
    .registers 4

    .line 3469
    monitor-enter p0

    .line 3470
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 3471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    .line 3474
    :cond_c
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/ActivityThread$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/ActivityThread$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 3476
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->getSystemUiContextNoCreateLocked(I)Landroid/content/Context;

    move-result-object v0

    .line 3477
    if-eqz v0, :cond_1e

    .line 3478
    monitor-exit p0

    return-object v0

    .line 3481
    :cond_1e
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/ContextImpl;->createSystemUiContext(Landroid/app/ContextImpl;I)Landroid/content/Context;

    move-result-object p1

    .line 3482
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3483
    monitor-exit p0

    return-object p1

    .line 3484
    :catchall_32
    move-exception p1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public blacklist getSystemUiContextNoCreate()Landroid/content/Context;
    .registers 2

    .line 3501
    monitor-enter p0

    .line 3502
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 3503
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 3505
    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/ActivityThread;->getSystemUiContextNoCreateLocked(I)Landroid/content/Context;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 3506
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method blacklist getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/LoadedApk;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .registers 20

    .line 3153
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 3154
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    .line 3155
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 3153
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v11}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o getTransactionExecutor()Landroid/app/servertransaction/TransactionExecutor;
    .registers 2

    .line 4293
    iget-object v0, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    return-object v0
.end method

.method public blacklist handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;)V
    .registers 11

    .line 7358
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;Z)V

    .line 7365
    return-void
.end method

.method blacklist handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;Z)V
    .registers 9

    .line 7382
    invoke-static {}, Landroid/app/servertransaction/ClientTransactionListenerController;->getInstance()Landroid/app/servertransaction/ClientTransactionListenerController;

    move-result-object v1

    .line 7383
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 7384
    invoke-virtual {v1, v2}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPreChanged(Landroid/content/Context;)V

    .line 7386
    :try_start_9
    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handleActivityConfigurationChangedInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;Z)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    .line 7389
    invoke-virtual {v1, v2}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPostChanged(Landroid/content/Context;)V

    .line 7390
    nop

    .line 7391
    return-void

    .line 7389
    :catchall_11
    move-exception v0

    move-object p1, v0

    invoke-virtual {v1, v2}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPostChanged(Landroid/content/Context;)V

    .line 7390
    throw p1
.end method

.method public greylist-max-o handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 9

    .line 7261
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 7262
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 7263
    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoadedApk;

    goto :goto_18

    :cond_17
    move-object v1, v2

    .line 7264
    :goto_18
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 7265
    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoadedApk;

    .line 7266
    :cond_2a
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 7267
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 7268
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object p1, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7269
    if-nez v1, :cond_5a

    if-eqz v2, :cond_57

    goto :goto_5a

    .line 7272
    :cond_57
    iget-object v1, v4, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    goto :goto_61

    .line 7270
    :cond_5a
    :goto_5a
    if-eqz v1, :cond_5e

    move-object v5, v1

    goto :goto_5f

    :cond_5e
    move-object v5, v2

    :goto_5f
    iput-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 7275
    :cond_61
    :goto_61
    goto :goto_34

    .line 7276
    :cond_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_14f

    .line 7278
    if-eqz v1, :cond_74

    .line 7279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7280
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-static {p0, v3, v0}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 7281
    invoke-virtual {v1, p1, v0}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 7283
    :cond_74
    if-eqz v2, :cond_85

    .line 7284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7285
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 7286
    invoke-virtual {v2, p1, v0}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 7288
    :cond_85
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->systemContextHandleAppInfoChanged()Z

    move-result v0

    if-eqz v0, :cond_b0

    iget-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v0, :cond_b0

    .line 7289
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 7290
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 7293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7294
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 7295
    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, p1, v1}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 7299
    :cond_b0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 7301
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 7303
    :try_start_bf
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v2}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 7304
    monitor-exit v1
    :try_end_c5
    .catchall {:try_start_bf .. :try_end_c5} :catchall_14c

    .line 7306
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v1

    .line 7308
    if-eq v0, v1, :cond_14b

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v2

    .line 7309
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v3

    .line 7308
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14b

    .line 7310
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getApkPaths()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7311
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getApkPaths()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 7313
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7314
    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 7315
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7316
    invoke-interface {v3, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 7318
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApplicationInfo updating for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", new timestamp: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\nassets removed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\nassets added: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7328
    :cond_14b
    return-void

    .line 7304
    :catchall_14c
    move-exception p1

    :try_start_14d
    monitor-exit v1
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14c

    throw p1

    .line 7276
    :catchall_14f
    move-exception p1

    :try_start_150
    monitor-exit v0
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_14f

    throw p1
.end method

.method public blacklist handleAttachSplashScreenView(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V
    .registers 5

    .line 5039
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v0, :cond_d

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 5040
    :goto_e
    if-eqz p2, :cond_16

    if-eqz v0, :cond_16

    .line 5041
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/app/ActivityThread;->createSplashScreen(Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V

    goto :goto_1d

    .line 5044
    :cond_16
    const-string p1, "ActivityThread"

    const-string p2, "handleAttachSplashScreenView failed, unable to attach"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5046
    :goto_1d
    return-void
.end method

.method public blacklist handleConfigurationChanged(Landroid/content/res/Configuration;I)V
    .registers 4

    .line 7181
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0, p1}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7182
    invoke-direct {p0, p2}, Landroid/app/ActivityThread;->updateDeviceIdForNonUIContexts(I)V

    .line 7185
    iget-object p1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {p1}, Landroid/app/ConfigurationController;->getCurDefaultDisplayDpi()I

    move-result p1

    iput p1, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 7186
    iget-object p1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {p1}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 7187
    iget-object p1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/ConfigurationController;->getPendingConfiguration(Z)Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 7189
    return-void
.end method

.method public blacklist handleDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)V
    .registers 10

    .line 6568
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)V

    .line 6569
    invoke-static {p1, p2}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 6570
    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p3

    .line 6571
    iget-object p4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object p4, p4, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 6572
    const/4 v0, 0x1

    const-string v1, "Activity"

    if-eqz p4, :cond_7a

    .line 6573
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v2, :cond_20

    .line 6574
    iget v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 6576
    :cond_20
    invoke-virtual {p4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 6577
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mWindowAdded:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_47

    .line 6578
    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v3, :cond_3b

    .line 6580
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    iput-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 6581
    iput-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 6585
    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {p3}, Landroid/view/Window;->clearContentView()V

    goto :goto_47

    .line 6587
    :cond_3b
    invoke-virtual {p4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    .line 6588
    if-eqz v3, :cond_44

    .line 6591
    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl;->setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    .line 6593
    :cond_44
    invoke-interface {p3, p4}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 6596
    :cond_47
    :goto_47
    if-eqz v2, :cond_5f

    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-nez p3, :cond_5f

    .line 6597
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p3

    iget-object p4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6598
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    .line 6597
    invoke-virtual {p3, v2, p4, v1}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    .line 6599
    :cond_5f
    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz p3, :cond_76

    .line 6604
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p3

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6605
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 6604
    invoke-virtual {p3, v2, p4, v3, v1}, Landroid/view/WindowManagerGlobal;->closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 6607
    :cond_76
    :goto_76
    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-object v4, p3, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 6609
    :cond_7a
    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-nez p3, :cond_91

    .line 6616
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p3

    iget-object p4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6617
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 6616
    invoke-virtual {p3, p4, v2, v1}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 6624
    :cond_91
    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    .line 6625
    instance-of p4, p3, Landroid/app/ContextImpl;

    if-eqz p4, :cond_aa

    .line 6626
    check-cast p3, Landroid/app/ContextImpl;

    iget-object p4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, v1}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 6628
    :cond_aa
    if-eqz p2, :cond_ba

    .line 6629
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object p2

    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {p2, p3}, Landroid/app/ActivityClient;->activityDestroyed(Landroid/os/IBinder;)V

    .line 6630
    iget-object p2, p0, Landroid/app/ActivityThread;->mNewActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6632
    :cond_ba
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 6633
    return-void
.end method

.method greylist-max-o handleDispatchPackageBroadcast(I[Ljava/lang/String;)V
    .registers 15

    .line 7568
    nop

    .line 7569
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_150

    :pswitch_6
    goto/16 :goto_14c

    .line 7601
    :pswitch_8
    if-nez p2, :cond_c

    .line 7602
    goto/16 :goto_14c

    .line 7605
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7607
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v3

    .line 7608
    :try_start_14
    array-length v4, p2

    sub-int/2addr v4, v0

    move v5, v1

    :goto_17
    if-ltz v4, :cond_e4

    .line 7609
    aget-object v6, p2, v4

    .line 7610
    iget-object v7, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 7611
    const/4 v8, 0x0

    if-eqz v7, :cond_2d

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/LoadedApk;

    goto :goto_2e

    :cond_2d
    move-object v7, v8

    .line 7612
    :goto_2e
    if-eqz v7, :cond_32

    .line 7613
    move v5, v0

    goto :goto_49

    .line 7615
    :cond_32
    iget-object v7, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 7616
    if-eqz v7, :cond_43

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/app/LoadedApk;

    .line 7617
    :cond_43
    if-eqz v8, :cond_48

    .line 7618
    move v5, v0

    move-object v7, v8

    goto :goto_49

    .line 7617
    :cond_48
    move-object v7, v8

    .line 7625
    :goto_49
    if-eqz v7, :cond_b2

    .line 7626
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_14 .. :try_end_4e} :catchall_f9

    .line 7628
    :try_start_4e
    sget-object v8, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 7632
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 7629
    const-wide/16 v10, 0x400

    invoke-interface {v8, v6, v10, v11, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 7634
    if-eqz v8, :cond_b1

    .line 7635
    iget-object v9, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-lez v9, :cond_8d

    .line 7636
    iget-object v9, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 7637
    iget-object v11, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 7638
    invoke-virtual {v11, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8c

    .line 7639
    iget-object v11, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v8, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7640
    iput-object v7, v10, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 7642
    :cond_8c
    goto :goto_6e

    .line 7645
    :cond_8d
    invoke-virtual {v7}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 7647
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 7648
    nop

    .line 7649
    invoke-virtual {v7}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 7648
    invoke-static {p0, v10, v9}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 7650
    invoke-virtual {v7, v8, v9}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 7653
    iget-object v7, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v7, v6, v8}, Landroid/app/ResourcesManager;->appendPendingAppInfoUpdate([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 7655
    iget-object v6, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v6}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_af} :catch_b0
    .catchall {:try_start_4e .. :try_end_af} :catchall_f9

    goto :goto_b1

    .line 7657
    :catch_b0
    move-exception v6

    .line 7658
    :cond_b1
    :goto_b1
    goto :goto_e0

    .line 7661
    :cond_b2
    :try_start_b2
    const-string v6, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p2, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] reported as REPLACED, but missing application info. Assuming REMOVED."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7663
    iget-object v6, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v7, p2, v4

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7664
    iget-object v6, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v7, p2, v4

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7608
    :goto_e0
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_17

    .line 7667
    :cond_e4
    monitor-exit v3
    :try_end_e5
    .catchall {:try_start_b2 .. :try_end_e5} :catchall_f9

    .line 7670
    :try_start_e5
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    .line 7671
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 7670
    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->notifyPackagesReplacedReceived([Ljava/lang/String;)V
    :try_end_f4
    .catch Landroid/os/RemoteException; {:try_start_e5 .. :try_end_f4} :catch_f5

    .line 7673
    goto :goto_f7

    .line 7672
    :catch_f5
    move-exception v0

    .line 7675
    nop

    .line 7678
    :goto_f7
    move v1, v5

    goto :goto_14c

    .line 7667
    :catchall_f9
    move-exception p1

    :try_start_fa
    monitor-exit v3
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw p1

    .line 7573
    :pswitch_fc
    if-nez p1, :cond_100

    move v2, v0

    goto :goto_101

    :cond_100
    move v2, v1

    .line 7574
    :goto_101
    if-nez p2, :cond_104

    .line 7575
    goto :goto_14c

    .line 7577
    :cond_104
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v3

    .line 7578
    :try_start_107
    array-length v4, p2

    sub-int/2addr v4, v0

    :goto_109
    if-ltz v4, :cond_147

    .line 7579
    if-nez v1, :cond_134

    .line 7580
    iget-object v5, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v6, p2, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 7581
    if-eqz v5, :cond_121

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_121

    .line 7582
    move v1, v0

    goto :goto_134

    .line 7584
    :cond_121
    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v6, p2, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 7585
    if-eqz v5, :cond_134

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_134

    .line 7586
    move v1, v0

    .line 7590
    :cond_134
    :goto_134
    if-eqz v2, :cond_144

    .line 7592
    iget-object v5, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v6, p2, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7593
    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v6, p2, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7578
    :cond_144
    add-int/lit8 v4, v4, -0x1

    goto :goto_109

    .line 7596
    :cond_147
    monitor-exit v3

    .line 7597
    goto :goto_14c

    .line 7596
    :catchall_149
    move-exception p1

    monitor-exit v3
    :try_end_14b
    .catchall {:try_start_107 .. :try_end_14b} :catchall_149

    throw p1

    .line 7678
    :goto_14c
    invoke-static {p1, p2, v1}, Landroid/app/ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    .line 7679
    return-void

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_6
        :pswitch_fc
        :pswitch_8
    .end packed-switch
.end method

.method public greylist-max-o handleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .registers 6

    .line 4970
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4972
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 4974
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4975
    nop

    .line 4976
    return-void

    .line 4974
    :catchall_18
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4975
    throw p1
.end method

.method public blacklist handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ILandroid/content/Intent;)Landroid/app/Activity;
    .registers 9

    .line 4656
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4657
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4659
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v1, :cond_16

    .line 4660
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 4661
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v1}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 4665
    :cond_16
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/app/ActivityThread;->applyPendingApplicationInfoChanges(Ljava/lang/String;)V

    .line 4666
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 4667
    invoke-direct {p0, p3}, Landroid/app/ActivityThread;->updateDeviceIdForNonUIContexts(I)V

    .line 4673
    sget-boolean p3, Landroid/view/ThreadedRenderer;->sRendererEnabled:Z

    if-eqz p3, :cond_52

    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget p3, p3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 p3, p3, 0x200

    if-eqz p3, :cond_52

    .line 4675
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->earlyRenderThreadPriorityBoost()Z

    move-result p3

    if-eqz p3, :cond_4f

    .line 4676
    invoke-static {}, Landroid/graphics/HardwareRenderer;->preload()I

    move-result p3

    .line 4678
    if-lez p3, :cond_4e

    .line 4680
    :try_start_3e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/app/IActivityManager;->setRenderThread(I)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_46

    .line 4683
    goto :goto_4e

    .line 4681
    :catchall_46
    move-exception p3

    .line 4682
    const-string v1, "ActivityThread"

    const-string v3, "Failed to set scheduler for RenderThread"

    invoke-static {v1, v3, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4685
    :cond_4e
    :goto_4e
    goto :goto_52

    .line 4686
    :cond_4f
    invoke-static {}, Landroid/graphics/HardwareRenderer;->preload()I

    .line 4690
    :cond_52
    :goto_52
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->imetrackerProtolog()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_5e

    .line 4691
    new-array p3, v1, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    invoke-static {p3}, Lcom/android/internal/protolog/ProtoLog;->init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 4694
    :cond_5e
    invoke-static {}, Landroid/view/WindowManagerGlobal;->initialize()V

    .line 4697
    invoke-static {}, Landroid/os/GraphicsEnvironment;->hintActivityLaunch()V

    .line 4699
    invoke-direct {p0, p1, p4}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p3

    .line 4701
    if-eqz p3, :cond_91

    .line 4702
    new-instance p4, Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v1}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p4, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 4703
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4704
    iget-object p4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean p4, p4, Landroid/app/Activity;->mFinished:Z

    if-nez p4, :cond_8d

    if-eqz p2, :cond_8d

    .line 4705
    iget-object p4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {p2, p4}, Landroid/app/servertransaction/PendingTransactionActions;->setOldState(Landroid/os/Bundle;)V

    .line 4706
    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setRestoreInstanceState(Z)V

    .line 4707
    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setCallOnPostCreate(Z)V

    .line 4711
    :cond_8d
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleActivityWindowInfoChanged(Landroid/app/ActivityThread$ActivityClientRecord;)V

    goto :goto_9a

    .line 4714
    :cond_91
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object p2

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {p2, p1, v1, v2, v1}, Landroid/app/ActivityClient;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    .line 4718
    :goto_9a
    return-object p3
.end method

.method greylist-max-o handleLowMemory()V
    .registers 5

    .line 7682
    nop

    .line 7683
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->collectComponentCallbacks(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 7685
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7686
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_19

    .line 7687
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks2;

    invoke-interface {v3}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    .line 7686
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7691
    :cond_19
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2b

    .line 7692
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    move-result v0

    .line 7693
    const v1, 0x124fb

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 7697
    :cond_2b
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 7700
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 7702
    const-string/jumbo v0, "mem"

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 7703
    return-void
.end method

.method public blacklist handleNewIntent(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .line 4753
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 4754
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 4755
    return-void
.end method

.method public blacklist handlePauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZZLandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V
    .registers 7

    .line 6074
    if-eqz p3, :cond_5

    .line 6075
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 6078
    :cond_5
    const/4 p3, 0x1

    if-eqz p4, :cond_c

    .line 6081
    iget-object p4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean p3, p4, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    .line 6083
    :cond_c
    invoke-direct {p0, p1, p2, p6, p5}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    .line 6086
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 6087
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 6089
    :cond_18
    iput-boolean p3, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 6090
    return-void
.end method

.method public blacklist handlePictureInPictureRequested(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 3

    .line 5001
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onPictureInPictureRequested()Z

    move-result v0

    .line 5002
    if-nez v0, :cond_b

    .line 5008
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->schedulePauseWithUserLeaveHintAndReturnToCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5010
    :cond_b
    return-void
.end method

.method public blacklist handlePictureInPictureStateChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/PictureInPictureUiState;)V
    .registers 3

    .line 5015
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V

    .line 5016
    return-void
.end method

.method greylist-max-o handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V
    .registers 6

    .line 7467
    const-string v0, "Low overhead tracing feature is not enabled"

    const-string v1, "ActivityThread"

    if-eqz p1, :cond_5e

    .line 7468
    packed-switch p3, :pswitch_data_8c

    .line 7485
    :try_start_9
    iget-object p1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_b} :catch_37
    .catchall {:try_start_9 .. :try_end_b} :catchall_35

    goto :goto_29

    .line 7470
    :pswitch_c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->alwaysEnableProfileCode()Z

    move-result p1

    if-nez p1, :cond_17

    .line 7471
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7472
    goto/16 :goto_8a

    .line 7475
    :cond_17
    iget-boolean p1, p2, Landroid/app/ProfilerInfo;->profileLongRunningMethods:Z

    if-eqz p1, :cond_25

    .line 7476
    nop

    .line 7477
    iget-wide p1, p2, Landroid/app/ProfilerInfo;->durationMicros:J

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    invoke-static {p1, p2}, Ldalvik/system/VMDebug;->startLowOverheadTraceForLongRunningMethods(J)V

    .line 7479
    goto :goto_8a

    .line 7480
    :cond_25
    invoke-static {}, Ldalvik/system/VMDebug;->startLowOverheadTraceForAllMethods()V

    .line 7482
    goto :goto_8a

    .line 7485
    :goto_29
    :try_start_29
    invoke-virtual {p1, p2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 7486
    iget-object p1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {p1}, Landroid/app/ActivityThread$Profiler;->startProfiling()V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_31} :catch_37
    .catchall {:try_start_29 .. :try_end_31} :catchall_35

    .line 7492
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 7487
    goto :goto_8a

    .line 7492
    :catchall_35
    move-exception p1

    goto :goto_5a

    .line 7488
    :catch_37
    move-exception p1

    .line 7489
    :try_start_38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Profiling failed on path "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p2, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " -- can the process access this path?"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_38 .. :try_end_56} :catchall_35

    .line 7492
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 7493
    goto :goto_8a

    .line 7492
    :goto_5a
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 7493
    throw p1

    .line 7496
    :cond_5e
    packed-switch p3, :pswitch_data_92

    .line 7514
    iget-object p1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {p1}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    goto :goto_8a

    .line 7498
    :pswitch_67
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->alwaysEnableProfileCode()Z

    move-result p1

    if-nez p1, :cond_76

    .line 7499
    if-eqz p2, :cond_72

    .line 7500
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 7502
    :cond_72
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7503
    goto :goto_8a

    .line 7505
    :cond_76
    if-eqz p2, :cond_86

    .line 7506
    iget-object p1, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 7507
    nop

    .line 7508
    invoke-static {p1}, Ldalvik/system/VMDebug$TraceDestination;->fromFileDescriptor(Ljava/io/FileDescriptor;)Ldalvik/system/VMDebug$TraceDestination;

    move-result-object p1

    .line 7509
    invoke-static {p1}, Ldalvik/system/VMDebug;->dumpLowOverheadTrace(Ldalvik/system/VMDebug$TraceDestination;)V

    .line 7511
    :cond_86
    invoke-static {}, Ldalvik/system/VMDebug;->stopLowOverheadTrace()V

    .line 7512
    nop

    .line 7518
    :goto_8a
    return-void

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_67
    .end packed-switch
.end method

.method public greylist-max-o handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 15

    .line 6692
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 6693
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 6695
    nop

    .line 6700
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 6701
    :try_start_a
    iget-object v3, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6702
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 6703
    nop

    .line 6704
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v8, v5

    move v7, v6

    move v9, v7

    :goto_18
    if-ge v7, v3, :cond_36

    .line 6705
    iget-object v10, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6706
    iget-object v11, v10, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v11, v4, :cond_34

    .line 6707
    nop

    .line 6708
    iget v8, v10, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v9, v8

    .line 6709
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6710
    add-int/lit8 v7, v7, -0x1

    .line 6711
    add-int/lit8 v3, v3, -0x1

    move-object v8, v10

    .line 6704
    :cond_34
    add-int/2addr v7, v1

    goto :goto_18

    .line 6715
    :cond_36
    if-nez v8, :cond_3a

    .line 6717
    monitor-exit v2

    return-void

    .line 6723
    :cond_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_c3

    .line 6725
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v2, v1}, Landroid/app/ConfigurationController;->getPendingConfiguration(Z)Landroid/content/res/Configuration;

    move-result-object v2

    .line 6727
    iput-object v5, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 6729
    iget-object v3, v8, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_6b

    .line 6733
    iget-object v3, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v3}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 6734
    if-eqz v3, :cond_5f

    iget-object v4, v8, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 6735
    invoke-virtual {v4, v3}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_6b

    iget-object v4, v8, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 6736
    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    if-eqz v3, :cond_6b

    .line 6737
    :cond_5f
    if-eqz v2, :cond_69

    iget-object v3, v8, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 6738
    invoke-virtual {v3, v2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 6739
    :cond_69
    iget-object v2, v8, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 6748
    :cond_6b
    if-eqz v2, :cond_89

    .line 6749
    iget-object v3, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget v4, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v3, v4}, Landroid/app/ConfigurationController;->updateDefaultDensity(I)V

    .line 6750
    iget-object v3, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v3, v2, v5}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 6753
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v2}, Landroid/app/ConfigurationController;->getCurDefaultDisplayDpi()I

    move-result v2

    iput v2, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 6754
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v2}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 6757
    :cond_89
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v3, v8, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6759
    if-nez v2, :cond_96

    .line 6760
    return-void

    .line 6763
    :cond_96
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v4, v3, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v4, v9

    iput v4, v3, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 6764
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mWindowAdded:Z

    if-eqz v3, :cond_a8

    iget-boolean v3, v8, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v3, :cond_a8

    move v6, v1

    :cond_a8
    iput-boolean v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 6766
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, v3, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 6768
    move-object v1, v2

    iget-object v2, v8, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iget-object v3, v8, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iget-boolean v5, v8, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    iget-object v6, v8, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v8}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object v7

    const-string v8, "handleRelaunchActivity"

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Landroid/app/ActivityThread;->handleRelaunchActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/util/List;Landroid/app/servertransaction/PendingTransactionActions;ZLandroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;Ljava/lang/String;)V

    .line 6771
    return-void

    .line 6723
    :catchall_c3
    move-exception v0

    :try_start_c4
    monitor-exit v2
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v0
.end method

.method public greylist-max-o handleRelaunchActivityLocally(Landroid/os/IBinder;)V
    .registers 13

    .line 6803
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6804
    const-string v0, "ActivityThread"

    if-nez p1, :cond_12

    .line 6805
    const-string p1, "Activity to relaunch no longer exists"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6806
    return-void

    .line 6809
    :cond_12
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v1

    .line 6811
    const/4 v2, 0x2

    if-lt v1, v2, :cond_66

    const/4 v2, 0x5

    if-le v1, v2, :cond_1d

    goto :goto_66

    .line 6817
    :cond_1d
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->activityLocalRelaunch(Landroid/os/IBinder;)V

    .line 6819
    new-instance v7, Landroid/util/MergedConfiguration;

    .line 6820
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_2f

    .line 6821
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    goto :goto_35

    :cond_2f
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :goto_35
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v7, v0, v1}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 6823
    new-instance v2, Landroid/app/servertransaction/ActivityRelaunchItem;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-boolean v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 6826
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getActivityWindowInfo()Landroid/window/ActivityWindowInfo;

    move-result-object v9

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplayId()I

    move-result v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/app/servertransaction/ActivityRelaunchItem;-><init>(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;ZLandroid/window/ActivityWindowInfo;I)V

    .line 6828
    nop

    .line 6829
    invoke-static {p1}, Landroid/app/servertransaction/TransactionExecutorHelper;->getLifecycleRequestForCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object p1

    .line 6831
    new-instance v0, Landroid/app/servertransaction/ClientTransaction;

    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-direct {v0, v1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/app/IApplicationThread;)V

    .line 6832
    invoke-virtual {v0, v2}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 6833
    invoke-virtual {v0, p1}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 6834
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 6835
    return-void

    .line 6812
    :cond_66
    :goto_66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity state must be in [ON_START..ON_STOP] in order to be relaunched,current state is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6814
    return-void
.end method

.method public greylist-max-o handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V
    .registers 15

    .line 4788
    iget v0, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_9

    move v0, v3

    goto :goto_a

    :cond_9
    move v0, v2

    .line 4790
    :goto_a
    iget v1, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_11

    move v1, v3

    goto :goto_12

    :cond_11
    move v1, v2

    .line 4793
    :goto_12
    iget v4, p0, Landroid/app/ActivityThread;->mLastSessionId:I

    iget v5, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    if-eq v4, v5, :cond_40

    .line 4795
    iget v4, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    iput v4, p0, Landroid/app/ActivityThread;->mLastSessionId:I

    .line 4796
    iget-object v4, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_23
    if-ltz v4, :cond_40

    .line 4797
    iget-object v5, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/assist/AssistStructure;

    .line 4798
    if-eqz v5, :cond_38

    .line 4799
    invoke-virtual {v5}, Landroid/app/assist/AssistStructure;->clearSendChannel()V

    .line 4801
    :cond_38
    iget-object v5, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4796
    add-int/lit8 v4, v4, -0x1

    goto :goto_23

    .line 4805
    :cond_40
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 4806
    nop

    .line 4807
    const/4 v4, 0x0

    if-eqz v0, :cond_4b

    move-object v9, v4

    goto :goto_51

    :cond_4b
    new-instance v5, Landroid/app/assist/AssistContent;

    invoke-direct {v5}, Landroid/app/assist/AssistContent;-><init>()V

    move-object v9, v5

    .line 4808
    :goto_51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 4809
    iget-object v8, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v10, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4810
    nop

    .line 4811
    if-eqz v8, :cond_d0

    .line 4812
    if-nez v0, :cond_7b

    .line 4813
    iget-object v10, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v10

    iget-object v11, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v10, v11, v7}, Landroid/app/Application;->dispatchOnProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 4814
    iget-object v10, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v10, v7}, Landroid/app/Activity;->onProvideAssistData(Landroid/os/Bundle;)V

    .line 4815
    iget-object v10, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v10

    goto :goto_7c

    .line 4812
    :cond_7b
    move-object v10, v4

    .line 4817
    :goto_7c
    iget v11, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    if-eq v11, v3, :cond_84

    if-nez v0, :cond_84

    if-eqz v1, :cond_d1

    .line 4819
    :cond_84
    if-nez v1, :cond_8f

    .line 4820
    new-instance v4, Landroid/app/assist/AssistStructure;

    iget-object v11, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v12, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->flags:I

    invoke-direct {v4, v11, v0, v12}, Landroid/app/assist/AssistStructure;-><init>(Landroid/app/Activity;ZI)V

    .line 4822
    :cond_8f
    iget-object v11, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 4823
    iget-object v12, v8, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v12, :cond_a5

    iget-object v12, v8, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 4824
    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v12, v12, 0x2000

    if-nez v12, :cond_a6

    :cond_a5
    move v2, v3

    .line 4826
    :cond_a6
    if-eqz v11, :cond_be

    if-eqz v2, :cond_be

    .line 4827
    if-nez v0, :cond_c8

    .line 4828
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4829
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, -0x43

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4831
    invoke-virtual {v9, v2}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 4832
    goto :goto_c8

    .line 4834
    :cond_be
    if-nez v0, :cond_c8

    .line 4835
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v9, v2}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 4838
    :cond_c8
    :goto_c8
    if-nez v0, :cond_d1

    .line 4839
    iget-object v0, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v9}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    goto :goto_d1

    .line 4811
    :cond_d0
    move-object v10, v4

    .line 4844
    :cond_d1
    :goto_d1
    if-nez v1, :cond_f0

    .line 4845
    if-nez v4, :cond_da

    .line 4846
    new-instance v4, Landroid/app/assist/AssistStructure;

    invoke-direct {v4}, Landroid/app/assist/AssistStructure;-><init>()V

    .line 4851
    :cond_da
    invoke-virtual {v4, v5, v6}, Landroid/app/assist/AssistStructure;->setAcquisitionStartTime(J)V

    .line 4852
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Landroid/app/assist/AssistStructure;->setAcquisitionEndTime(J)V

    .line 4854
    iget-object v0, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v8, v4

    goto :goto_f1

    .line 4844
    :cond_f0
    move-object v8, v4

    .line 4857
    :goto_f1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    .line 4859
    :try_start_f5
    iget-object v6, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    invoke-interface/range {v5 .. v10}, Landroid/app/IActivityTaskManager;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    :try_end_fa
    .catch Landroid/os/RemoteException; {:try_start_f5 .. :try_end_fa} :catch_fc

    .line 4862
    nop

    .line 4863
    return-void

    .line 4860
    :catch_fc
    move-exception v0

    move-object p1, v0

    .line 4861
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist handleResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZZLjava/lang/String;)V
    .registers 13

    .line 5909
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 5910
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5914
    invoke-virtual {p0, p1, p2, p5}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_d

    .line 5915
    return-void

    .line 5917
    :cond_d
    iget-object p2, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    iget-object p5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {p2, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 5922
    return-void

    .line 5925
    :cond_18
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5932
    const/16 p5, 0x100

    const/4 v1, 0x0

    if-eqz p3, :cond_21

    .line 5933
    move p3, p5

    goto :goto_22

    :cond_21
    move p3, v1

    .line 5938
    :goto_22
    iget-boolean v2, p2, Landroid/app/Activity;->mStartedActivity:Z

    .line 5939
    xor-int/lit8 v3, v2, 0x1

    if-eqz v2, :cond_34

    .line 5940
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v2

    .line 5941
    invoke-virtual {p2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    .line 5940
    invoke-virtual {v2, v3}, Landroid/app/ActivityClient;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v3

    .line 5943
    :cond_34
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-nez v2, :cond_86

    iget-boolean v2, p2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_86

    if-eqz v3, :cond_86

    .line 5944
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 5945
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 5946
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5947
    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 5948
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 5949
    iput-object v2, p2, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 5950
    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5951
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/2addr v6, p3

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 5952
    iget-boolean v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v6, :cond_74

    .line 5953
    iput-boolean v0, p2, Landroid/app/Activity;->mWindowAdded:Z

    .line 5954
    iput-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 5959
    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    .line 5960
    if-eqz v6, :cond_74

    .line 5961
    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->notifyChildRebuilt()V

    .line 5964
    :cond_74
    iget-boolean v6, p2, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v6, :cond_8b

    .line 5965
    iget-boolean v6, p2, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v6, :cond_82

    .line 5966
    iput-boolean v0, p2, Landroid/app/Activity;->mWindowAdded:Z

    .line 5967
    invoke-interface {v4, v2, v5}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8b

    .line 5973
    :cond_82
    invoke-virtual {p2, v5}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_8b

    .line 5980
    :cond_86
    if-nez v3, :cond_8b

    .line 5982
    iput-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    goto :goto_8c

    .line 5980
    :cond_8b
    :goto_8b
    nop

    .line 5986
    :goto_8c
    invoke-static {p1, v1}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 5990
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-nez v1, :cond_fa

    if-eqz v3, :cond_fa

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_fa

    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-nez v1, :cond_fa

    .line 5992
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 5993
    if-eqz v1, :cond_b0

    .line 5994
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    goto :goto_b6

    :cond_b0
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 5995
    :goto_b6
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/2addr p5, v3

    if-eq p5, p3, :cond_d5

    .line 5998
    iget p5, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 p5, p5, -0x101

    or-int/2addr p3, p5

    iput p3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 6001
    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean p3, p3, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz p3, :cond_d5

    .line 6002
    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    .line 6003
    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    .line 6004
    invoke-interface {p2, p3, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6008
    :cond_d5
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, p2, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 6009
    iget p2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/2addr p2, v0

    iput p2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 6010
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean p2, p2, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz p2, :cond_e9

    .line 6011
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->makeVisible()V

    .line 6014
    :cond_e9
    if-eqz p4, :cond_fa

    .line 6017
    if-eqz v1, :cond_f1

    .line 6018
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->dispatchCompatFakeFocus()V

    goto :goto_fa

    .line 6020
    :cond_f1
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->fakeFocusAfterAttachingToWindow()V

    .line 6025
    :cond_fa
    :goto_fa
    iget-object p2, p0, Landroid/app/ActivityThread;->mNewActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6027
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p1

    new-instance p2, Landroid/app/ActivityThread$Idler;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread-IA;)V

    invoke-virtual {p1, p2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 6028
    return-void
.end method

.method public blacklist handleSendResult(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6461
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 6462
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-nez v1, :cond_18

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_18

    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-eqz v1, :cond_18

    if-nez v0, :cond_18

    .line 6467
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 6469
    :cond_18
    const/4 v1, 0x0

    if-nez v0, :cond_87

    .line 6472
    :try_start_1b
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, v2, Landroid/app/Activity;->mCalled:Z

    .line 6473
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 6474
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    if-eqz v2, :cond_2d

    .line 6487
    goto :goto_87

    .line 6475
    :cond_2d
    new-instance v2, Landroid/util/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6476
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onPause()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_56
    .catch Landroid/util/SuperNotCalledException; {:try_start_1b .. :try_end_56} :catch_85
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_56} :catch_56

    .line 6481
    :catch_56
    move-exception v2

    .line 6482
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_62

    goto :goto_87

    .line 6483
    :cond_62
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to pause activity "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6485
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 6479
    :catch_85
    move-exception p1

    .line 6480
    throw p1

    .line 6489
    :cond_87
    :goto_87
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 6490
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V

    .line 6491
    if-nez v0, :cond_94

    .line 6492
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v1, p3}, Landroid/app/Activity;->performResume(ZLjava/lang/String;)V

    .line 6494
    :cond_94
    return-void
.end method

.method public blacklist handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    .registers 8

    .line 4507
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4508
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_a9

    .line 4511
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-eqz v1, :cond_d

    .line 4513
    return-void

    .line 4516
    :cond_d
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4517
    if-eqz p3, :cond_14

    .line 4518
    iput-object p3, v0, Landroid/app/Activity;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 4522
    :cond_14
    const-string p3, "handleStartActivity"

    invoke-virtual {v0, p3}, Landroid/app/Activity;->performStart(Ljava/lang/String;)V

    .line 4523
    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 4525
    if-nez p2, :cond_20

    .line 4527
    return-void

    .line 4531
    :cond_20
    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldRestoreInstanceState()Z

    move-result p3

    if-eqz p3, :cond_49

    .line 4532
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result p3

    if-eqz p3, :cond_3e

    .line 4533
    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez p3, :cond_34

    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    if-eqz p3, :cond_49

    .line 4534
    :cond_34
    iget-object p3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {p3, v0, v1, v2}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_49

    .line 4537
    :cond_3e
    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz p3, :cond_49

    .line 4538
    iget-object p3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {p3, v0, v1}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 4543
    :cond_49
    :goto_49
    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldCallOnPostCreate()Z

    move-result p2

    if-eqz p2, :cond_a2

    .line 4544
    const/4 p2, 0x0

    iput-boolean p2, v0, Landroid/app/Activity;->mCalled:Z

    .line 4545
    const-string/jumbo p2, "onPostCreate"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4546
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result p2

    if-eqz p2, :cond_6a

    .line 4547
    iget-object p2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {p2, v0, p3, v3}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_71

    .line 4550
    :cond_6a
    iget-object p2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {p2, v0, p3}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 4552
    :goto_71
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4553
    iget-boolean p2, v0, Landroid/app/Activity;->mCalled:Z

    if-eqz p2, :cond_79

    goto :goto_a2

    .line 4554
    :cond_79
    new-instance p2, Landroid/util/SuperNotCalledException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4555
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " did not call through to super.onPostCreate()"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4560
    :cond_a2
    :goto_a2
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 4561
    iput-boolean p2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4562
    return-void

    .line 4509
    :cond_a9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t start activity that is not stopped."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist handleStopActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V
    .registers 11

    .line 6327
    new-instance v2, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    invoke-direct {v2}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;-><init>()V

    .line 6328
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZLjava/lang/String;)V

    .line 6334
    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 6337
    invoke-static {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 6338
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 6341
    :cond_1a
    invoke-virtual {v2, v1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 6342
    iget-object p1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setState(Landroid/os/Bundle;)V

    .line 6343
    iget-object p1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v2, p1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setPersistentState(Landroid/os/PersistableBundle;)V

    .line 6344
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->enableTaskContinuity()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 6345
    iget-object p1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->handoffActivityData:Landroid/app/HandoffActivityData;

    invoke-virtual {v2, p1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setHandoffActivityData(Landroid/app/HandoffActivityData;)V

    .line 6348
    :cond_32
    invoke-virtual {p2, v2}, Landroid/app/servertransaction/PendingTransactionActions;->setStopInfo(Landroid/app/servertransaction/PendingTransactionActions$StopInfo;)V

    .line 6349
    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 6350
    return-void
.end method

.method public blacklist handleSystemApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 4

    .line 7247
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    const-string v1, "Must only be called in the system process"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 7248
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 7249
    return-void
.end method

.method public blacklist handleTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    .registers 6

    .line 6038
    iget-boolean p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isTopResumedActivity:Z

    if-ne p3, p2, :cond_35

    .line 6039
    sget-boolean p3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v0, "Activity top position already set to onTop="

    const-string v1, "ActivityThread"

    if-nez p3, :cond_21

    .line 6040
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6041
    return-void

    .line 6044
    :cond_21
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6047
    :cond_35
    iput-boolean p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isTopResumedActivity:Z

    .line 6049
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result p3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_44

    .line 6050
    const-string/jumbo p3, "topStateChangedWhenResumed"

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 6056
    :cond_44
    return-void
.end method

.method public greylist-max-o handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .registers 4

    .line 4956
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4957
    if-eqz p1, :cond_f

    .line 4958
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->onTranslucentConversionComplete(Z)V

    .line 4960
    :cond_f
    return-void
.end method

.method greylist handleUnstableProviderDied(Landroid/os/IBinder;Z)V
    .registers 4

    .line 8805
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8806
    :try_start_3
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    .line 8807
    monitor-exit v0

    .line 8808
    return-void

    .line 8807
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method greylist-max-o handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    .registers 8

    .line 8811
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    .line 8812
    if-eqz v0, :cond_60

    .line 8815
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8816
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_51

    .line 8817
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 8818
    if-eqz v2, :cond_4e

    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v3}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_4e

    .line 8819
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing dead content provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityThread"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8820
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 8816
    :cond_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 8824
    :cond_51
    if-eqz p2, :cond_60

    .line 8831
    :try_start_53
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object p2, v0, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object p2, p2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {p1, p2}, Landroid/app/IActivityManager;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5e} :catch_5f

    .line 8835
    goto :goto_60

    .line 8833
    :catch_5f
    move-exception p1

    .line 8838
    :cond_60
    :goto_60
    return-void
.end method

.method public blacklist handleWindowContextInfoChanged(Landroid/os/IBinder;Landroid/window/WindowContextInfo;)V
    .registers 4

    .line 7194
    invoke-static {}, Landroid/window/WindowTokenClientController;->getInstance()Landroid/window/WindowTokenClientController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowTokenClientController;->onWindowContextInfoChanged(Landroid/os/IBinder;Landroid/window/WindowContextInfo;)V

    .line 7195
    return-void
.end method

.method public blacklist handleWindowContextWindowRemoval(Landroid/os/IBinder;)V
    .registers 3

    .line 7199
    invoke-static {}, Landroid/window/WindowTokenClientController;->getInstance()Landroid/window/WindowTokenClientController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/window/WindowTokenClientController;->onWindowContextWindowRemoved(Landroid/os/IBinder;)V

    .line 7200
    return-void
.end method

.method public greylist-max-o installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .registers 4

    .line 3530
    monitor-enter p0

    .line 3531
    :try_start_1
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 3532
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 3533
    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 3536
    new-instance p1, Landroid/app/ActivityThread$Profiler;

    invoke-direct {p1}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 3537
    monitor-exit p0

    .line 3538
    return-void

    .line 3537
    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public greylist installSystemProviders(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 9163
    if-eqz p1, :cond_7

    .line 9164
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 9166
    :cond_7
    return-void
.end method

.method public blacklist isHandleSplashScreenExit(Landroid/os/IBinder;)Z
    .registers 3

    .line 5030
    monitor-enter p0

    .line 5031
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->containsExitListener(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    monitor-exit p0

    return p1

    .line 5032
    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public blacklist isInDensityCompatMode()Z
    .registers 2

    .line 9385
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    return v0
.end method

.method public greylist-max-o isProfiling()Z
    .registers 2

    .line 3415
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist onNewSceneTransitionInfo(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    .registers 4

    .line 4963
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4964
    if-eqz p1, :cond_f

    .line 4965
    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->onNewSceneTransitionInfo(Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 4967
    :cond_f
    return-void
.end method

.method blacklist onSystemUiContextCleanup(Landroid/app/ContextImpl;)V
    .registers 4

    .line 3522
    monitor-enter p0

    .line 3523
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 3524
    :cond_7
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/ActivityThread$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Landroid/app/ActivityThread$$ExternalSyntheticLambda4;-><init>(Landroid/app/ContextImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 3526
    monitor-exit p0

    .line 3527
    return-void

    .line 3526
    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public greylist-max-p peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;
    .registers 4

    .line 3257
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 3259
    if-eqz p2, :cond_e

    .line 3260
    :try_start_5
    iget-object p2, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    goto :goto_16

    .line 3262
    :cond_e
    iget-object p2, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 3264
    :goto_16
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/LoadedApk;

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    monitor-exit v0

    return-object p1

    .line 3265
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw p1
.end method

.method blacklist performDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)V
    .registers 7

    .line 6501
    iget-object p4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 6502
    if-eqz p2, :cond_d

    .line 6503
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/app/Activity;->mFinished:Z

    .line 6506
    :cond_d
    const-string p2, "destroy"

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 6508
    iget-boolean p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    const/4 v0, 0x0

    if-nez p2, :cond_1c

    .line 6509
    const-string p2, "destroy"

    invoke-direct {p0, p1, v0, p2}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 6511
    :cond_1c
    if-eqz p3, :cond_56

    .line 6513
    :try_start_1e
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;

    move-result-object p2

    iput-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_26} :catch_27

    .line 6519
    goto :goto_56

    .line 6514
    :catch_27
    move-exception p2

    .line 6515
    iget-object p3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p3, v1, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result p3

    if-eqz p3, :cond_33

    goto :goto_56

    .line 6516
    :cond_33
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to retain activity "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6517
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 6522
    :cond_56
    :goto_56
    :try_start_56
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, p2, Landroid/app/Activity;->mCalled:Z

    .line 6523
    iget-object p2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p3}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 6524
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean p2, p2, Landroid/app/Activity;->mCalled:Z

    if-eqz p2, :cond_71

    .line 6528
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz p2, :cond_70

    .line 6529
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->closeAllPanels()V

    .line 6538
    :cond_70
    goto :goto_a1

    .line 6525
    :cond_71
    new-instance p2, Landroid/util/SuperNotCalledException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v0}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " did not call through to super.onDestroy()"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_96
    .catch Landroid/util/SuperNotCalledException; {:try_start_56 .. :try_end_96} :catch_e9
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_96} :catch_96

    .line 6533
    :catch_96
    move-exception p2

    .line 6534
    iget-object p3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p3, v0, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result p3

    if-eqz p3, :cond_ca

    .line 6539
    :goto_a1
    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 6540
    invoke-virtual {p0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 6541
    monitor-enter p0

    .line 6542
    :try_start_a9
    iget-object p2, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    if-eqz p2, :cond_b4

    .line 6543
    iget-object p2, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    iget-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {p2, p3}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->tokenDestroyed(Landroid/os/IBinder;)V

    .line 6545
    :cond_b4
    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_a9 .. :try_end_b5} :catchall_c7

    .line 6549
    iget-object p2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter p2

    .line 6550
    :try_start_b8
    iget-object p3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6551
    monitor-exit p2
    :try_end_c0
    .catchall {:try_start_b8 .. :try_end_c0} :catchall_c4

    .line 6552
    invoke-static {p4}, Landroid/os/StrictMode;->decrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 6553
    return-void

    .line 6551
    :catchall_c4
    move-exception p1

    :try_start_c5
    monitor-exit p2
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw p1

    .line 6545
    :catchall_c7
    move-exception p1

    :try_start_c8
    monitor-exit p0
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw p1

    .line 6535
    :cond_ca
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to destroy activity "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6536
    invoke-static {p1}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 6531
    :catch_e9
    move-exception p1

    .line 6532
    throw p1
.end method

.method final greylist-max-o performPauseActivity(Landroid/os/IBinder;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;
    .registers 6

    .line 6099
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6100
    if-eqz p1, :cond_f

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return-object p1
.end method

.method public blacklist performRestartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .registers 4

    .line 6365
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v0, :cond_f

    .line 6366
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->performRestart(Z)V

    .line 6367
    if-eqz p2, :cond_f

    .line 6368
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 6371
    :cond_f
    return-void
.end method

.method public blacklist performResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)Z
    .registers 7

    .line 5838
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 5839
    return v1

    .line 5841
    :cond_8
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_29

    .line 5842
    if-nez p2, :cond_28

    .line 5843
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Trying to resume activity which is already resumed"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 5845
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ActivityThread"

    invoke-static {v0, p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5846
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getStateString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5853
    :cond_28
    return v1

    .line 5855
    :cond_29
    if-eqz p2, :cond_31

    .line 5856
    iput-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 5857
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, p2, Landroid/app/Activity;->mStartedActivity:Z

    .line 5860
    :cond_31
    :try_start_31
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->onStateNotSaved()V

    .line 5861
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object p2, p2, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p2}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 5862
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 5863
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p2, :cond_4c

    .line 5864
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 5865
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 5867
    :cond_4c
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz p2, :cond_57

    .line 5868
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V

    .line 5869
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 5871
    :cond_57
    iget-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    invoke-virtual {p2, v1, p3}, Landroid/app/Activity;->performResume(ZLjava/lang/String;)V

    .line 5873
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 5874
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 5875
    invoke-virtual {p1, v2}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 5877
    iget-boolean p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isTopResumedActivity:Z

    const-string/jumbo p3, "topWhenResuming"

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_6d} :catch_6e

    .line 5883
    goto :goto_79

    .line 5878
    :catch_6e
    move-exception p2

    .line 5879
    iget-object p3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {p3, v0, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result p3

    if-eqz p3, :cond_7b

    .line 5884
    :goto_79
    const/4 p1, 0x1

    return p1

    .line 5880
    :cond_7b
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to resume activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5881
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method final greylist-max-r performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V
    .registers 10

    .line 6192
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6193
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZLjava/lang/String;)V

    .line 6195
    return-void
.end method

.method final greylist-max-o performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 4

    .line 6093
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnPictureInPictureRequested(Landroid/app/Activity;)V

    .line 6094
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 6095
    return-void
.end method

.method public blacklist prepareRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;ZLandroid/window/ActivityWindowInfo;)Landroid/app/ActivityThread$ActivityClientRecord;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;I",
            "Landroid/util/MergedConfiguration;",
            "Z",
            "Landroid/window/ActivityWindowInfo;",
            ")",
            "Landroid/app/ActivityThread$ActivityClientRecord;"
        }
    .end annotation

    .line 6641
    nop

    .line 6642
    nop

    .line 6644
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 6645
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    :try_start_7
    iget-object v3, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_3d

    .line 6646
    iget-object v3, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6648
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v5, p1, :cond_3a

    .line 6649
    nop

    .line 6650
    if-eqz p2, :cond_2b

    .line 6651
    iget-object v2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v2, :cond_29

    .line 6652
    iget-object v2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2b

    .line 6654
    :cond_29
    iput-object p2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 6657
    :cond_2b
    :goto_2b
    if-eqz p3, :cond_3e

    .line 6658
    iget-object v2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v2, :cond_37

    .line 6659
    iget-object v2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3e

    .line 6661
    :cond_37
    iput-object p3, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    goto :goto_3e

    .line 6645
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_3d
    move-object v3, v4

    .line 6668
    :cond_3e
    :goto_3e
    if-nez v3, :cond_53

    .line 6670
    new-instance v3, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v3}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 6671
    iput-object p1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 6672
    iput-object p2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 6673
    iput-object p3, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 6674
    iput-boolean p6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 6675
    iget-object p1, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6676
    const/4 v1, 0x1

    .line 6678
    :cond_53
    invoke-virtual {p5}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 6679
    invoke-virtual {p5}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 6680
    iget p1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr p1, p4

    iput p1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    .line 6681
    invoke-static {v3}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object p1

    invoke-virtual {p1, p7}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 6682
    monitor-exit v0

    .line 6684
    if-eqz v1, :cond_6f

    move-object v4, v3

    :cond_6f
    return-object v4

    .line 6682
    :catchall_70
    move-exception p1

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_7 .. :try_end_72} :catchall_70

    throw p1
.end method

.method public greylist-max-r registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .registers 6

    .line 4105
    iget-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4106
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/app/ActivityThread$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Landroid/app/ActivityThread$$ExternalSyntheticLambda6;-><init>()V

    .line 4107
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 4108
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4109
    monitor-exit v0

    .line 4110
    return-void

    .line 4109
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public blacklist registerSplashScreenManager(Landroid/window/SplashScreen$SplashScreenManagerGlobal;)V
    .registers 2

    .line 5023
    monitor-enter p0

    .line 5024
    :try_start_1
    iput-object p1, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    .line 5025
    monitor-exit p0

    .line 5026
    return-void

    .line 5025
    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public greylist releaseProvider(Landroid/content/IContentProvider;Z)Z
    .registers 9

    .line 8664
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 8665
    return v0

    .line 8668
    :cond_4
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 8669
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 8670
    :try_start_b
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityThread$ProviderRefCount;

    .line 8671
    if-nez p1, :cond_17

    .line 8673
    monitor-exit v1

    return v0

    .line 8676
    :cond_17
    nop

    .line 8677
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz p2, :cond_43

    .line 8678
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez p2, :cond_22

    .line 8681
    monitor-exit v1

    return v0

    .line 8683
    :cond_22
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    sub-int/2addr p2, v3

    iput p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 8684
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez p2, :cond_87

    .line 8691
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_bf

    if-nez p2, :cond_31

    move p2, v3

    goto :goto_32

    :cond_31
    move p2, v0

    .line 8697
    :goto_32
    :try_start_32
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v5, v5, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 8698
    if-eqz p2, :cond_3d

    move v0, v3

    .line 8697
    :cond_3d
    invoke-interface {v4, v5, v2, v0}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_40} :catch_41
    .catchall {:try_start_32 .. :try_end_40} :catchall_bf

    goto :goto_42

    .line 8699
    :catch_41
    move-exception v0

    .line 8701
    :goto_42
    goto :goto_86

    .line 8704
    :cond_43
    :try_start_43
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez p2, :cond_49

    .line 8707
    monitor-exit v1

    return v0

    .line 8709
    :cond_49
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    sub-int/2addr p2, v3

    iput p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 8710
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez p2, :cond_87

    .line 8714
    iget p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_bf

    if-nez p2, :cond_58

    move p2, v3

    goto :goto_59

    :cond_58
    move p2, v0

    .line 8715
    :goto_59
    if-nez p2, :cond_86

    .line 8721
    :try_start_5b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->skipRefContentProvider()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 8725
    if-eqz p1, :cond_84

    iget-object v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    if-eqz v4, :cond_84

    iget-object v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-boolean v4, v4, Landroid/app/ContentProviderHolder;->noReleaseNeededIfUnstable:Z

    if-nez v4, :cond_84

    .line 8727
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v5, v5, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v4, v5, v0, v2}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z

    goto :goto_84

    .line 8731
    :cond_79
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v5, v5, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v4, v5, v0, v2}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_84} :catch_85
    .catchall {:try_start_5b .. :try_end_84} :catchall_bf

    .line 8736
    :cond_84
    :goto_84
    goto :goto_86

    .line 8734
    :catch_85
    move-exception v0

    .line 8741
    :cond_86
    :goto_86
    move v0, p2

    :cond_87
    if-eqz v0, :cond_bd

    .line 8742
    :try_start_89
    iget-boolean p2, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez p2, :cond_9f

    .line 8749
    iput-boolean v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 8750
    iget-object p2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v0, 0x83

    invoke-virtual {p2, v0, p1}, Landroid/app/ActivityThread$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 8751
    iget-object p2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const-wide/16 v4, 0x3e8

    invoke-virtual {p2, p1, v4, v5}, Landroid/app/ActivityThread$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8752
    goto :goto_bd

    .line 8753
    :cond_9f
    const-string p2, "ActivityThread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate remove pending of provider "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object p1, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8756
    :cond_bd
    :goto_bd
    monitor-exit v1

    return v3

    .line 8757
    :catchall_bf
    move-exception p1

    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_89 .. :try_end_c1} :catchall_bf

    throw p1
.end method

.method public blacklist removeConfigurationChangedListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 4209
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationChangedListenerController:Landroid/app/ConfigurationChangedListenerController;

    invoke-virtual {v0, p1}, Landroid/app/ConfigurationChangedListenerController;->removeListener(Ljava/util/function/Consumer;)V

    .line 4210
    return-void
.end method

.method public blacklist reportRefresh(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 3

    .line 6375
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Landroid/app/ActivityClient;->activityRefreshed(Landroid/os/IBinder;)V

    .line 6376
    return-void
.end method

.method public blacklist reportRelaunch(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 3

    .line 6882
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object p1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Landroid/app/ActivityClient;->activityRelaunched(Landroid/os/IBinder;)V

    .line 6883
    return-void
.end method

.method public greylist-max-o reportStop(Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 3

    .line 6360
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {p1}, Landroid/app/servertransaction/PendingTransactionActions;->getStopInfo()Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 6361
    return-void
.end method

.method public greylist-max-o resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 4

    .line 4124
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 4125
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4124
    const/16 v1, 0x400

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 4126
    if-nez v0, :cond_13

    .line 4128
    const/16 v1, -0x5c

    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 4131
    :cond_13
    return-object v0
.end method

.method final greylist-max-o scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 4327
    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>()V

    .line 4328
    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    .line 4329
    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    .line 4330
    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    .line 4331
    const/16 p1, 0x77

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 4332
    return-void
.end method

.method greylist scheduleGcIdler()V
    .registers 3

    .line 3542
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-nez v0, :cond_10

    .line 3543
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 3544
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3546
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 3547
    return-void
.end method

.method blacklist schedulePurgeIdler()V
    .registers 3

    .line 3558
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    if-nez v0, :cond_10

    .line 3559
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 3560
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3562
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 3563
    return-void
.end method

.method greylist-max-o scheduleRelaunchActivity(Landroid/os/IBinder;)V
    .registers 4

    .line 6774
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6775
    if-eqz p1, :cond_2d

    .line 6776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Schedule relaunch activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6777
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/ActivityThread;->scheduleRelaunchActivityIfPossible(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 6779
    :cond_2d
    return-void
.end method

.method public greylist sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 13

    .line 4279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4280
    new-instance v1, Landroid/app/ResultInfo;

    move-object v6, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4281
    new-instance p1, Landroid/app/servertransaction/ClientTransaction;

    iget-object p2, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-direct {p1, p2}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/app/IApplicationThread;)V

    .line 4282
    new-instance p2, Landroid/app/servertransaction/ActivityResultItem;

    invoke-direct {p2, v6, v0}, Landroid/app/servertransaction/ActivityResultItem;-><init>(Landroid/os/IBinder;Ljava/util/List;)V

    .line 4283
    invoke-virtual {p1, p2}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 4285
    :try_start_21
    iget-object p2, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {p2, p1}, Landroid/app/ActivityThread$ApplicationThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_27

    .line 4288
    goto :goto_28

    .line 4286
    :catch_27
    move-exception v0

    .line 4289
    :goto_28
    return-void
.end method

.method greylist-max-o sendMessage(ILjava/lang/Object;)V
    .registers 9

    .line 4298
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 4299
    return-void
.end method

.method public final greylist-max-p startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/app/Activity;
    .registers 11

    .line 4139
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 4140
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 4141
    iput-object p8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->assistToken:Landroid/os/IBinder;

    .line 4142
    iput-object p9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->shareableActivityToken:Landroid/os/IBinder;

    .line 4143
    const/4 p5, 0x0

    iput p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 4144
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4145
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 4146
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 4147
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    .line 4148
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4149
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 4165
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o stopProfiling()V
    .registers 2

    .line 7527
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_9

    .line 7528
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 7530
    :cond_9
    return-void
.end method

.method public greylist-max-r unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .registers 5

    .line 4115
    iget-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4116
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 4117
    if-eqz p1, :cond_10

    .line 4118
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4120
    :cond_10
    monitor-exit v0

    .line 4121
    return-void

    .line 4120
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method greylist-max-o unscheduleGcIdler()V
    .registers 3

    .line 3550
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-eqz v0, :cond_10

    .line 3551
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 3552
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3554
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 3555
    return-void
.end method

.method blacklist unschedulePurgeIdler()V
    .registers 3

    .line 3566
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    if-eqz v0, :cond_10

    .line 3567
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 3568
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3570
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 3571
    return-void
.end method

.method public blacklist updatePendingActivityConfiguration(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .registers 5

    .line 7339
    iget-object v0, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7340
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 7341
    if-eqz v1, :cond_15

    .line 7342
    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 7348
    monitor-exit v0

    return-void

    .line 7350
    :cond_15
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7351
    monitor-exit v0

    .line 7352
    return-void

    .line 7351
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public greylist-max-o updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    .line 4214
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 4215
    invoke-virtual {v0, p1}, Landroid/app/ConfigurationController;->updatePendingConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object p1

    .line 4217
    if-eqz p1, :cond_a

    .line 4218
    iput-object p1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 4220
    :cond_a
    return-void
.end method

.method public greylist-max-o updateProcessState(IZ)V
    .registers 6

    .line 4224
    iget-object p2, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    monitor-enter p2

    .line 4225
    :try_start_3
    iget v0, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    if-ne v0, p1, :cond_9

    .line 4226
    monitor-exit p2

    return-void

    .line 4228
    :cond_9
    iget v0, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->updateVmProcessState(II)V

    .line 4229
    iput p1, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    .line 4234
    monitor-exit p2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_31

    .line 4235
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 4236
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateProcessState: processState="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 4239
    :cond_30
    return-void

    .line 4234
    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit p2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method
