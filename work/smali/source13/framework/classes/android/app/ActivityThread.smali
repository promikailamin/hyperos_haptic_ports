.class public final Landroid/app/ActivityThread;
.super Landroid/app/ClientTransactionHandler;
.source "ActivityThread.java"

# interfaces
.implements Landroid/app/ActivityThreadInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$AndroidOs;,
        Landroid/app/ActivityThread$MiuiEmbeddingHandler;,
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$PurgeIdler;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$SafeCancellationTransport;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$RequestAssistContextExtras;,
        Landroid/app/ActivityThread$UpdateCompatibilityData;,
        Landroid/app/ActivityThread$DumpResourcesData;,
        Landroid/app/ActivityThread$DumpHeapData;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$DumpComponentInfo;,
        Landroid/app/ActivityThread$Profiler;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$ProviderClientRecord;,
        Landroid/app/ActivityThread$ActivityClientRecord;,
        Landroid/app/ActivityThread$ProviderKey;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x4

.field private static final blacklist CONTENT_PROVIDER_RETAIN_TIME:J = 0x3e8L

.field static greylist-max-o DEBUG_BACKUP:Z = false

.field public static greylist-max-o DEBUG_BROADCAST:Z = false

.field public static greylist-max-o DEBUG_CONFIGURATION:Z = false

.field public static greylist-max-o DEBUG_MEMORY_TRIM:Z = false

.field static greylist-max-o DEBUG_MESSAGES:Z = false

.field public static greylist-max-o DEBUG_ORDER:Z = false

.field static greylist-max-o DEBUG_PROVIDER:Z = false

.field static greylist-max-o DEBUG_RESULTS:Z = false

.field static greylist-max-o DEBUG_SERVICE:Z = false

.field private static final blacklist DEFAULT_FULL_BACKUP_AGENT:Ljava/lang/String; = "android.app.backup.FullBackupAgent"

.field private static final greylist-max-o HEAP_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s"

.field private static final greylist-max-o HEAP_FULL_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

.field public static final greylist-max-o INVALID_PROC_STATE_SEQ:J = -0x1L

.field private static final blacklist LOG_AM_ON_CONFIGURATION_CHANGED_CALLED:I = 0x75f7

.field private static final blacklist LOG_WM_ON_IDLE_CALLED:I = 0xfb7d1

.field private static final greylist-max-o MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final blacklist ONE_ALT_COUNT_COLUMN:Ljava/lang/String; = "%21s %8s %21s %8d"

.field private static final greylist-max-o ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field public static final greylist-max-o PROC_START_SEQ_IDENT:Ljava/lang/String; = "seq="

.field private static final blacklist REQUEST_DIRECT_ACTIONS_RETRY_MAX_COUNT:I = 0x7

.field private static final blacklist REQUEST_DIRECT_ACTIONS_RETRY_TIME_MS:J = 0xc8L

.field public static final greylist-max-o SERVICE_DONE_EXECUTING_ANON:I = 0x0

.field public static final greylist-max-o SERVICE_DONE_EXECUTING_START:I = 0x1

.field public static final greylist-max-o SERVICE_DONE_EXECUTING_STOP:I = 0x2

.field private static final greylist-max-o SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field public static final greylist-max-o TAG:Ljava/lang/String; = "ActivityThread"

.field private static final blacklist THREE_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8s %21s %8d"

.field private static final greylist-max-o THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

.field private static final greylist-max-o TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"

.field private static final blacklist TWO_COUNT_COLUMN_HEADER:Ljava/lang/String; = "%21s %8s %21s %8s"

.field private static final blacklist VM_PROCESS_STATE_JANK_IMPERCEPTIBLE:I = 0x1

.field private static final blacklist VM_PROCESS_STATE_JANK_PERCEPTIBLE:I

.field static greylist-max-o localLOGV:Z

.field private static blacklist mMiuiEmbeddingHandler:Landroid/app/ActivityThread$MiuiEmbeddingHandler;

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
.field private blacklist mActiveRotationAdjustments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/DisplayAdjustments;",
            ">;>;>;"
        }
    .end annotation
.end field

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
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mActivityThreadStub:Landroid/app/ActivityThreadStub;

.field private blacklist mAdaptCutoutMode:I

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

.field greylist mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.field greylist-max-r mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mConfigurationController:Landroid/app/ConfigurationController;

.field private blacklist mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

.field greylist-max-o mCoreSettings:Landroid/os/Bundle;

.field private final blacklist mCoreSettingsLock:Ljava/lang/Object;

.field greylist-max-r mCurDefaultDisplayDpi:I

.field blacklist mCurrentActivity:Ljava/lang/String;

.field greylist mDensityCompatMode:Z

.field private blacklist mDisplaySystemUiContexts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/ContextImpl;",
            ">;"
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

.field blacklist mHasImeComponent:Z

.field greylist-max-o mHiddenApiWarningShown:Z

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

.field private blacklist mIsEmbedded:Z

.field private blacklist mIsHomeProcess:Z

.field greylist-max-o mLastAssistStructures:Ljava/util/ArrayList;
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

.field private final blacklist mLastReportedWindowingMode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private blacklist mNeedDisableAccSensor:Z

.field private greylist-max-o mNetworkBlockSeq:J

.field private final greylist-max-o mNetworkPolicyLock:Ljava/lang/Object;

.field greylist-max-o mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

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

.field blacklist mSetFootprint:Z

.field greylist-max-o mSomeActivitiesChanged:Z

.field private blacklist mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

.field private blacklist mSupportSmartOrient:Z

.field private greylist mSystemContext:Landroid/app/ContextImpl;

.field greylist-max-o mSystemThread:Z

.field private final greylist-max-o mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

.field private blacklist mUpdateHttpProxyOnBind:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$ndFjmKeZ5VqdkKp_jop654cr0J0(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handleRequestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V

    return-void
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

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 296
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    .line 298
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityThread;->localLOGV:Z

    .line 299
    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    .line 301
    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    .line 302
    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_RESULTS:Z

    .line 303
    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_BACKUP:Z

    .line 304
    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    .line 305
    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_SERVICE:Z

    .line 306
    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_MEMORY_TRIM:Z

    .line 307
    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    .line 308
    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_ORDER:Z

    .line 4532
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor greylist <init>()V
    .registers 5

    .line 2799
    invoke-direct {p0}, Landroid/app/ClientTransactionHandler;-><init>()V

    .line 351
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    .line 361
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    .line 373
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ApplicationThread-IA;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 375
    nop

    .line 376
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    .line 377
    new-instance v0, Landroid/app/ActivityThread$H;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 379
    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mExecutor:Ljava/util/concurrent/Executor;

    .line 387
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 390
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    .line 393
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 394
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    .line 397
    iput-object v1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 399
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 401
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mNumLaunchingActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 402
    const/4 v2, -0x1

    iput v2, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    .line 404
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    .line 406
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    .line 407
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 421
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mUpdateHttpProxyOnBind:Z

    .line 425
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    .line 433
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/app/ActivityThread;->mBackupAgentsByUser:Landroid/util/SparseArray;

    .line 440
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 441
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 443
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 444
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 445
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 447
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 448
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 450
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 451
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 452
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mHiddenApiWarningShown:Z

    .line 453
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSetFootprint:Z

    .line 456
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mIsEmbedded:Z

    .line 459
    iput v2, p0, Landroid/app/ActivityThread;->mAdaptCutoutMode:I

    .line 463
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mIsHomeProcess:Z

    .line 466
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mNeedDisableAccSensor:Z

    .line 467
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSupportSmartOrient:Z

    .line 479
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    .line 482
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    .line 485
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 487
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 492
    new-instance v2, Landroid/app/servertransaction/TransactionExecutor;

    invoke-direct {v2, p0}, Landroid/app/servertransaction/TransactionExecutor;-><init>(Landroid/app/ClientTransactionHandler;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    .line 504
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityThread;->mLastReportedWindowingMode:Ljava/util/Map;

    .line 508
    iput-object v1, p0, Landroid/app/ActivityThread;->mActivityThreadStub:Landroid/app/ActivityThreadStub;

    .line 546
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 549
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 552
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    .line 555
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    .line 562
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    .line 565
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    .line 570
    new-instance v2, Landroid/app/ActivityThread$GcIdler;

    invoke-direct {v2, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    .line 571
    new-instance v2, Landroid/app/ActivityThread$PurgeIdler;

    invoke-direct {v2, p0}, Landroid/app/ActivityThread$PurgeIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    .line 573
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 574
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 579
    iput-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 584
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    .line 586
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mHasImeComponent:Z

    .line 588
    iput-object v1, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    .line 2800
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2802
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivityThreadStub:Landroid/app/ActivityThreadStub;

    .line 2804
    iput-object v1, p0, Landroid/app/ActivityThread;->mCurrentActivity:Ljava/lang/String;

    .line 2805
    return-void
.end method

.method private greylist attach(ZJ)V
    .registers 8
    .param p1, "system"    # Z
    .param p2, "startSeq"    # J

    .line 8163
    sput-object p0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    .line 8164
    new-instance v0, Landroid/app/ConfigurationController;

    invoke-direct {v0, p0}, Landroid/app/ConfigurationController;-><init>(Landroid/app/ActivityThreadInternal;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 8165
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 8166
    if-nez p1, :cond_39

    .line 8167
    nop

    .line 8168
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 8167
    const-string v1, "<pre-initialized>"

    invoke-static {v1, v0}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 8169
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    .line 8170
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 8172
    .local v0, "mgr":Landroid/app/IActivityManager;
    :try_start_24
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p2, p3}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;J)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_33

    .line 8175
    nop

    .line 8177
    new-instance v1, Landroid/app/ActivityThread$3;

    invoke-direct {v1, p0}, Landroid/app/ActivityThread$3;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->addGcWatcher(Ljava/lang/Runnable;)V

    .line 8198
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    goto :goto_67

    .line 8173
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    :catch_33
    move-exception v1

    .line 8174
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 8201
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_39
    nop

    .line 8202
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 8201
    const-string/jumbo v1, "system_process"

    invoke-static {v1, v0}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 8204
    :try_start_44
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 8205
    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->basicInit(Landroid/app/ActivityThread;)V

    .line 8206
    nop

    .line 8207
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 8206
    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 8208
    .local v0, "context":Landroid/app/ContextImpl;
    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 8209
    invoke-virtual {v1}, Landroid/app/Application;->onCreate()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_66} :catch_7b

    .line 8213
    .end local v0    # "context":Landroid/app/ContextImpl;
    nop

    .line 8216
    :goto_67
    new-instance v0, Landroid/app/ActivityThread$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityThread;)V

    .line 8242
    .local v0, "configChangedCallback":Landroid/view/ViewRootImpl$ConfigChangedCallback;
    invoke-static {v0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 8244
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/ActivityThreadStub;->registerApplicationScoutThread(I)V

    .line 8245
    return-void

    .line 8210
    .end local v0    # "configChangedCallback":Landroid/view/ViewRootImpl$ConfigChangedCallback;
    :catch_7b
    move-exception v0

    .line 8211
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate Application():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8212
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .registers 5
    .param p0, "agent"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 4481
    :try_start_0
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->attachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 4482
    const/4 v0, 0x1

    return v0

    .line 4483
    :catch_5
    move-exception v0

    .line 4484
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching agent with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4485
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 6118
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 6119
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 6120
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 6121
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_2f

    .line 6124
    :cond_26
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 6126
    :goto_2f
    return-void
.end method

.method private greylist-max-o callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "saveState"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5488
    if-eqz p2, :cond_14

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-nez v0, :cond_14

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v0, :cond_14

    .line 5489
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 5490
    .local v0, "shouldSaveState":Z
    :goto_15
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreP(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    .line 5491
    .local v1, "isPreP":Z
    if-eqz v0, :cond_20

    if-eqz v1, :cond_20

    .line 5492
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5496
    :cond_20
    :try_start_20
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    invoke-virtual {v2, v3, p3}, Landroid/app/Activity;->performStop(ZLjava/lang/String;)V
    :try_end_27
    .catch Landroid/util/SuperNotCalledException; {:try_start_20 .. :try_end_27} :catch_70
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_28

    .line 5506
    goto :goto_33

    .line 5499
    :catch_28
    move-exception v2

    .line 5500
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 5507
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_33
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 5509
    if-eqz v0, :cond_3e

    if-nez v1, :cond_3e

    .line 5510
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5512
    :cond_3e
    return-void

    .line 5501
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_3f
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to stop activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5503
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5504
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 5497
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_70
    move-exception v2

    .line 5498
    .local v2, "e":Landroid/util/SuperNotCalledException;
    throw v2
.end method

.method private greylist-max-o checkAndBlockForNetworkAccess()V
    .registers 8

    .line 3991
    iget-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3992
    :try_start_3
    iget-wide v1, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1a

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_18

    .line 3994
    :try_start_b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-wide v5, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    invoke-interface {v1, v5, v6}, Landroid/app/IActivityManager;->waitForNetworkStateUpdate(J)V

    .line 3995
    iput-wide v3, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_17
    .catchall {:try_start_b .. :try_end_16} :catchall_1a

    goto :goto_18

    .line 3996
    :catch_17
    move-exception v1

    .line 3998
    :cond_18
    :goto_18
    :try_start_18
    monitor-exit v0

    .line 3999
    return-void

    .line 3998
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method static final greylist-max-o cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .registers 6
    .param p0, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p1, "force"    # Z

    .line 5096
    iget-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    .line 5097
    return-void

    .line 5099
    :cond_7
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz v0, :cond_35

    .line 5100
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 5101
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 5100
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 5102
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 5103
    .local v0, "wtoken":Landroid/os/IBinder;
    if-eqz v0, :cond_35

    .line 5104
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5105
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5104
    const-string v3, "Activity"

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5108
    .end local v0    # "wtoken":Landroid/os/IBinder;
    :cond_35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 5109
    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 5110
    return-void
.end method

.method private greylist-max-o createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4002
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getDisplayId(Landroid/os/IBinder;)I

    move-result v0

    .line 4005
    .local v0, "displayId":I
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 4006
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 4005
    invoke-static {v1, v2, v3}, Landroid/util/MiuiFreeformUtils;->updateFreeformConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;Landroid/app/Application;)V

    .line 4008
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    move-object v2, p0

    move v6, v0

    invoke-static/range {v2 .. v7}, Landroid/app/ContextImpl;->createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;

    move-result-object v1

    .line 4012
    .local v1, "appContext":Landroid/app/ContextImpl;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v1, v2, v3}, Landroid/util/MiuiFreeformUtils;->updateApplicationContext(Landroid/content/Context;Landroid/app/Application;Landroid/content/res/Configuration;)V

    .line 4015
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    .line 4019
    .local v2, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    const-string v3, "debug.second-display.pkg"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4020
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_68

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_68

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v4, v4, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 4021
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 4022
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_4e
    if-ge v6, v5, :cond_68

    aget v7, v4, v6

    .line 4023
    .local v7, "id":I
    if-eqz v7, :cond_65

    .line 4024
    nop

    .line 4025
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v4

    .line 4026
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v1, v4}, Landroid/app/ContextImpl;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroid/app/ContextImpl;

    .line 4027
    goto :goto_68

    .line 4022
    .end local v4    # "display":Landroid/view/Display;
    .end local v7    # "id":I
    :cond_65
    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    .line 4031
    :cond_68
    :goto_68
    return-object v1
.end method

.method private blacklist createSafeCancellationTransport(Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;
    .registers 4
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 2051
    monitor-enter p0

    .line 2052
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 2053
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    .line 2055
    :cond_c
    new-instance v0, Landroid/app/ActivityThread$SafeCancellationTransport;

    invoke-direct {v0, p0, p1}, Landroid/app/ActivityThread$SafeCancellationTransport;-><init>(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)V

    .line 2057
    .local v0, "transport":Landroid/app/ActivityThread$SafeCancellationTransport;
    iget-object v1, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    monitor-exit p0

    return-object v0

    .line 2059
    .end local v0    # "transport":Landroid/app/ActivityThread$SafeCancellationTransport;
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private blacklist createSplashScreen(Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V
    .registers 15
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p3, "parcelable"    # Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    .param p4, "startingWindowLeash"    # Landroid/view/SurfaceControl;

    .line 4378
    new-instance v0, Landroid/window/SplashScreenView$Builder;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/window/SplashScreenView$Builder;-><init>(Landroid/content/Context;)V

    .line 4379
    .local v0, "builder":Landroid/window/SplashScreenView$Builder;
    invoke-virtual {v0, p3}, Landroid/window/SplashScreenView$Builder;->createFromParcel(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/window/SplashScreenView$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/SplashScreenView$Builder;->build()Landroid/window/SplashScreenView;

    move-result-object v1

    .line 4380
    .local v1, "view":Landroid/window/SplashScreenView;
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v1, v2}, Landroid/window/SplashScreenView;->attachHostWindow(Landroid/view/Window;)V

    .line 4381
    invoke-virtual {p2, v1}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;)V

    .line 4382
    invoke-virtual {v1}, Landroid/window/SplashScreenView;->requestLayout()V

    .line 4384
    invoke-virtual {v1}, Landroid/window/SplashScreenView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    new-instance v9, Landroid/app/ActivityThread$1;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Landroid/app/ActivityThread$1;-><init>(Landroid/app/ActivityThread;Landroid/window/SplashScreenView;Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/view/SurfaceControl;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 4401
    return-void
.end method

.method public static blacklist currentActivityName()Ljava/lang/String;
    .registers 1

    .line 2558
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mCurrentActivity:Ljava/lang/String;

    :goto_a
    return-object v0
.end method

.method public static greylist currentActivityThread()Landroid/app/ActivityThread;
    .registers 1

    .line 2523
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    return-object v0
.end method

.method public static greylist currentApplication()Landroid/app/Application;
    .registers 2

    .line 2564
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2565
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_9

    iget-object v1, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1
.end method

.method public static blacklist currentAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    .line 2537
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2538
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 2539
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 2538
    :goto_16
    return-object v1
.end method

.method public static greylist-max-o currentOpPackageName()Ljava/lang/String;
    .registers 2

    .line 2531
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2532
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 2533
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 2532
    :goto_16
    return-object v1
.end method

.method public static greylist currentPackageName()Ljava/lang/String;
    .registers 2

    .line 2544
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2545
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_f

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_f

    .line 2546
    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 2545
    :goto_10
    return-object v1
.end method

.method public static greylist currentProcessName()Ljava/lang/String;
    .registers 2

    .line 2551
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2552
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_d

    .line 2553
    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 2552
    :goto_e
    return-object v1
.end method

.method private greylist-max-o deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .registers 8
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .line 4106
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 4107
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_36

    .line 4108
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/content/ReferrerIntent;

    .line 4109
    .local v2, "intent":Lcom/android/internal/content/ReferrerIntent;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/content/ReferrerIntent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4110
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4111
    invoke-virtual {v4}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 4110
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/content/ReferrerIntent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 4112
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 4113
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V

    .line 4107
    .end local v2    # "intent":Lcom/android/internal/content/ReferrerIntent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4115
    .end local v1    # "i":I
    :cond_36
    return-void
.end method

.method private greylist-max-o deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V
    .registers 14
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "reason"    # Ljava/lang/String;
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

    .line 5631
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 5632
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_ab

    .line 5633
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ResultInfo;

    .line 5635
    .local v2, "ri":Landroid/app/ResultInfo;
    :try_start_d
    iget-object v3, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v3, :cond_2d

    .line 5636
    iget-object v3, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 5637
    iget-object v3, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v4}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5638
    invoke-virtual {v5}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v5

    .line 5637
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 5640
    :cond_2d
    sget-boolean v3, Landroid/app/ActivityThread;->DEBUG_RESULTS:Z

    if-eqz v3, :cond_53

    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delivering result to activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5642
    :cond_53
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v5, v2, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget v6, v2, Landroid/app/ResultInfo;->mRequestCode:I

    iget v7, v2, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v8, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_61} :catch_62

    .line 5651
    goto :goto_6d

    .line 5644
    :catch_62
    move-exception v3

    .line 5645
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v3}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 5632
    .end local v2    # "ri":Landroid/app/ResultInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 5646
    .restart local v2    # "ri":Landroid/app/ResultInfo;
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_70
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure delivering result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5648
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5649
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 5653
    .end local v1    # "i":I
    .end local v2    # "ri":Landroid/app/ResultInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_ab
    return-void
.end method

.method public static greylist-max-o dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V
    .registers 62
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p2, "dumpDalvik"    # Z
    .param p3, "dumpSummaryOnly"    # Z
    .param p4, "nativeMax"    # J
    .param p6, "nativeAllocated"    # J
    .param p8, "nativeFree"    # J
    .param p10, "dalvikMax"    # J
    .param p12, "dalvikAllocated"    # J
    .param p14, "dalvikFree"    # J

    .line 3365
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v12, p4

    move-wide/from16 v10, p6

    move-wide/from16 v8, p8

    move-wide/from16 v6, p10

    move-wide/from16 v4, p12

    move-wide/from16 v1, p14

    if-nez p3, :cond_2e0

    .line 3366
    const-wide v1, 0x10b00000003L

    invoke-virtual {v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 3367
    .local v1, "nhToken":J
    const-wide v22, 0x10b00000001L

    iget v3, v15, Landroid/os/Debug$MemoryInfo;->nativePss:I

    iget v0, v15, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    move-wide/from16 v24, v1

    .end local v1    # "nhToken":J
    .local v24, "nhToken":J
    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    iget v2, v15, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v26, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    move/from16 v27, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    move/from16 v28, v1

    iget-boolean v1, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v29, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    move/from16 v30, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    move/from16 v31, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    const-string v32, "Native Heap"

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v17, v2

    move-wide/from16 v34, v24

    move/from16 v16, v26

    move/from16 v18, v27

    move/from16 v19, v28

    move/from16 v20, v29

    move/from16 v21, v30

    move/from16 v24, v31

    move/from16 v25, v1

    .end local v24    # "nhToken":J
    .local v34, "nhToken":J
    move-wide/from16 v1, v22

    move/from16 v22, v3

    move-object/from16 v3, v32

    move/from16 v4, v22

    move/from16 v5, v33

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v12, v24

    move/from16 v13, v25

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3373
    move-wide/from16 v12, p4

    const-wide v10, 0x10500000002L

    invoke-virtual {v14, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3374
    move-wide/from16 v8, p6

    const-wide v6, 0x10500000003L

    invoke-virtual {v14, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3375
    move-wide/from16 v4, p8

    const-wide v1, 0x10500000004L

    invoke-virtual {v14, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3376
    move-wide/from16 v1, v34

    .end local v34    # "nhToken":J
    .restart local v1    # "nhToken":J
    invoke-virtual {v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3378
    const-wide v6, 0x10b00000004L

    invoke-virtual {v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 3379
    .local v6, "dvToken":J
    const-wide v16, 0x10b00000001L

    iget v3, v15, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iget v0, v15, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    iget v10, v15, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    iget v11, v15, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .end local v1    # "nhToken":J
    .restart local v34    # "nhToken":J
    iget v1, v15, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    iget v2, v15, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    move/from16 v18, v1

    iget-boolean v1, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v19, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    move/from16 v20, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    move/from16 v21, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    const-string v22, "Dalvik Heap"

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v27, v1

    move/from16 v24, v19

    move/from16 v25, v20

    move/from16 v26, v21

    move/from16 v21, v2

    move/from16 v20, v18

    move-wide/from16 v18, v34

    .end local v34    # "nhToken":J
    .local v18, "nhToken":J
    move-wide/from16 v1, v16

    move/from16 v16, v3

    move-object/from16 v3, v22

    move/from16 v4, v16

    move/from16 v5, v23

    move-wide/from16 v42, v6

    .end local v6    # "dvToken":J
    .local v42, "dvToken":J
    move v6, v10

    move v7, v11

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v10, v24

    move/from16 v11, v25

    move/from16 v12, v26

    move/from16 v13, v27

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3385
    move-wide/from16 v12, p10

    const-wide v10, 0x10500000002L

    invoke-virtual {v14, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3386
    move-wide/from16 v8, p12

    const-wide v6, 0x10500000003L

    invoke-virtual {v14, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3387
    move-wide/from16 v4, p14

    const-wide v1, 0x10500000004L

    invoke-virtual {v14, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3388
    move-wide/from16 v1, v42

    .end local v42    # "dvToken":J
    .local v1, "dvToken":J
    invoke-virtual {v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3390
    iget v0, v15, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 3391
    .local v0, "otherPss":I
    iget v3, v15, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 3392
    .local v3, "otherSwappablePss":I
    iget v6, v15, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 3393
    .local v6, "otherSharedDirty":I
    iget v7, v15, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 3394
    .local v7, "otherPrivateDirty":I
    iget v10, v15, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 3395
    .local v10, "otherSharedClean":I
    iget v11, v15, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 3396
    .local v11, "otherPrivateClean":I
    move/from16 v16, v0

    .end local v0    # "otherPss":I
    .local v16, "otherPss":I
    iget v0, v15, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 3397
    .local v0, "otherSwappedOut":I
    move/from16 v17, v0

    .end local v0    # "otherSwappedOut":I
    .local v17, "otherSwappedOut":I
    iget v0, v15, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 3398
    .local v0, "otherSwappedOutPss":I
    move/from16 v20, v0

    .end local v0    # "otherSwappedOutPss":I
    .local v20, "otherSwappedOutPss":I
    iget v0, v15, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 3400
    .local v0, "otherRss":I
    const/16 v21, 0x0

    move/from16 v22, v3

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v11, v21

    move/from16 v21, v0

    .end local v0    # "otherRss":I
    .end local v3    # "otherSwappablePss":I
    .end local v6    # "otherSharedDirty":I
    .end local v7    # "otherPrivateDirty":I
    .end local v10    # "otherSharedClean":I
    .local v11, "i":I
    .local v21, "otherRss":I
    .local v22, "otherSwappablePss":I
    .local v23, "otherSharedDirty":I
    .local v24, "otherPrivateDirty":I
    .local v25, "otherSharedClean":I
    .local v26, "otherPrivateClean":I
    :goto_140
    const/16 v0, 0x11

    if-ge v11, v0, :cond_1ca

    .line 3401
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v27

    .line 3402
    .local v27, "myPss":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v28

    .line 3403
    .local v28, "mySwappablePss":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v29

    .line 3404
    .local v29, "mySharedDirty":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v30

    .line 3405
    .local v30, "myPrivateDirty":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v31

    .line 3406
    .local v31, "mySharedClean":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v32

    .line 3407
    .local v32, "myPrivateClean":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v33

    .line 3408
    .local v33, "mySwappedOut":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v34

    .line 3409
    .local v34, "mySwappedOutPss":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v35

    .line 3410
    .local v35, "myRss":I
    if-nez v27, :cond_185

    if-nez v29, :cond_185

    if-nez v30, :cond_185

    if-nez v31, :cond_185

    if-nez v32, :cond_185

    if-nez v35, :cond_185

    .line 3412
    iget-boolean v0, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v0, :cond_17b

    move/from16 v0, v34

    goto :goto_17d

    :cond_17b
    move/from16 v0, v33

    :goto_17d
    if-eqz v0, :cond_180

    goto :goto_185

    :cond_180
    move-wide/from16 v36, v1

    move/from16 v38, v11

    goto :goto_1be

    .line 3413
    :cond_185
    :goto_185
    const-wide v6, 0x20b00000005L

    .line 3414
    invoke-static {v11}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v10, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 3413
    move-object/from16 v0, p0

    move-wide/from16 v36, v1

    .end local v1    # "dvToken":J
    .local v36, "dvToken":J
    move-wide v1, v6

    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v6, v29

    move/from16 v7, v30

    move/from16 v8, v31

    move/from16 v9, v32

    move/from16 v38, v11

    .end local v11    # "i":I
    .local v38, "i":I
    move/from16 v11, v33

    move/from16 v12, v34

    move/from16 v13, v35

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3419
    sub-int v16, v16, v27

    .line 3420
    sub-int v22, v22, v28

    .line 3421
    sub-int v23, v23, v29

    .line 3422
    sub-int v24, v24, v30

    .line 3423
    sub-int v25, v25, v31

    .line 3424
    sub-int v26, v26, v32

    .line 3425
    sub-int v17, v17, v33

    .line 3426
    sub-int v20, v20, v34

    .line 3427
    sub-int v21, v21, v35

    .line 3400
    .end local v27    # "myPss":I
    .end local v28    # "mySwappablePss":I
    .end local v29    # "mySharedDirty":I
    .end local v30    # "myPrivateDirty":I
    .end local v31    # "mySharedClean":I
    .end local v32    # "myPrivateClean":I
    .end local v33    # "mySwappedOut":I
    .end local v34    # "mySwappedOutPss":I
    .end local v35    # "myRss":I
    :goto_1be
    add-int/lit8 v11, v38, 0x1

    move-wide/from16 v12, p10

    move-wide/from16 v8, p12

    move-wide/from16 v4, p14

    move-wide/from16 v1, v36

    .end local v38    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_140

    .end local v36    # "dvToken":J
    .restart local v1    # "dvToken":J
    :cond_1ca
    move-wide/from16 v36, v1

    move/from16 v38, v11

    .line 3431
    .end local v1    # "dvToken":J
    .end local v11    # "i":I
    .restart local v36    # "dvToken":J
    const-wide v1, 0x10b00000006L

    iget-boolean v10, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    const-string v3, "Unknown"

    move-object/from16 v0, p0

    move/from16 v4, v16

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v8, v25

    move/from16 v9, v26

    move/from16 v11, v17

    move/from16 v12, v20

    move/from16 v13, v21

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3435
    const-wide v0, 0x10b00000007L

    invoke-virtual {v14, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 3436
    .local v12, "tToken":J
    const-wide v1, 0x10b00000001L

    .line 3437
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v5

    .line 3438
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v7

    .line 3439
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v9

    iget-boolean v10, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 3440
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v11

    .line 3441
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v28

    .line 3436
    const-string v3, "TOTAL"

    move-object/from16 v0, p0

    move-wide/from16 v44, v12

    .end local v12    # "tToken":J
    .local v44, "tToken":J
    move/from16 v12, v27

    move/from16 v13, v28

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3442
    add-long v0, p4, p10

    const-wide v12, 0x10500000002L

    invoke-virtual {v14, v12, v13, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3444
    add-long v0, p6, p12

    const-wide v10, 0x10500000003L

    invoke-virtual {v14, v10, v11, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3446
    add-long v0, p8, p14

    const-wide v8, 0x10500000004L

    invoke-virtual {v14, v8, v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3448
    move-wide/from16 v6, v44

    .end local v44    # "tToken":J
    .local v6, "tToken":J
    invoke-virtual {v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3450
    if-eqz p2, :cond_2de

    .line 3451
    const/16 v0, 0x11

    move v5, v0

    .line 3452
    .local v5, "i":I
    :goto_257
    const/16 v0, 0x20

    if-ge v5, v0, :cond_2d9

    .line 3454
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v27

    .line 3455
    .restart local v27    # "myPss":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v28

    .line 3456
    .restart local v28    # "mySwappablePss":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v29

    .line 3457
    .restart local v29    # "mySharedDirty":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v30

    .line 3458
    .restart local v30    # "myPrivateDirty":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v31

    .line 3459
    .restart local v31    # "mySharedClean":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v32

    .line 3460
    .restart local v32    # "myPrivateClean":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v33

    .line 3461
    .restart local v33    # "mySwappedOut":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v34

    .line 3462
    .restart local v34    # "mySwappedOutPss":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v35

    .line 3463
    .restart local v35    # "myRss":I
    if-nez v27, :cond_29a

    if-nez v29, :cond_29a

    if-nez v30, :cond_29a

    if-nez v31, :cond_29a

    if-nez v32, :cond_29a

    .line 3465
    iget-boolean v0, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v0, :cond_290

    move/from16 v0, v34

    goto :goto_292

    :cond_290
    move/from16 v0, v33

    :goto_292
    if-eqz v0, :cond_295

    goto :goto_29a

    :cond_295
    move/from16 v39, v5

    move-wide/from16 v40, v6

    goto :goto_2c4

    .line 3466
    :cond_29a
    :goto_29a
    const-wide v1, 0x20b00000008L

    .line 3467
    invoke-static {v5}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 3466
    move-object/from16 v0, p0

    move/from16 v38, v4

    move/from16 v4, v27

    move/from16 v39, v5

    .end local v5    # "i":I
    .local v39, "i":I
    move/from16 v5, v28

    move-wide/from16 v40, v6

    .end local v6    # "tToken":J
    .local v40, "tToken":J
    move/from16 v6, v29

    move/from16 v7, v30

    move/from16 v8, v31

    move/from16 v9, v32

    move/from16 v10, v38

    move/from16 v11, v33

    move/from16 v12, v34

    move/from16 v13, v35

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3453
    .end local v27    # "myPss":I
    .end local v28    # "mySwappablePss":I
    .end local v29    # "mySharedDirty":I
    .end local v30    # "myPrivateDirty":I
    .end local v31    # "mySharedClean":I
    .end local v32    # "myPrivateClean":I
    .end local v33    # "mySwappedOut":I
    .end local v34    # "mySwappedOutPss":I
    .end local v35    # "myRss":I
    :goto_2c4
    add-int/lit8 v5, v39, 0x1

    move-wide/from16 v6, v40

    const-wide v8, 0x10500000004L

    const-wide v10, 0x10500000003L

    const-wide v12, 0x10500000002L

    .end local v39    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_257

    .line 3452
    .end local v40    # "tToken":J
    .restart local v6    # "tToken":J
    :cond_2d9
    move/from16 v39, v5

    move-wide/from16 v40, v6

    .end local v5    # "i":I
    .end local v6    # "tToken":J
    .restart local v39    # "i":I
    .restart local v40    # "tToken":J
    goto :goto_2e0

    .line 3450
    .end local v39    # "i":I
    .end local v40    # "tToken":J
    .restart local v6    # "tToken":J
    :cond_2de
    move-wide/from16 v40, v6

    .line 3476
    .end local v6    # "tToken":J
    .end local v16    # "otherPss":I
    .end local v17    # "otherSwappedOut":I
    .end local v18    # "nhToken":J
    .end local v20    # "otherSwappedOutPss":I
    .end local v21    # "otherRss":I
    .end local v22    # "otherSwappablePss":I
    .end local v23    # "otherSharedDirty":I
    .end local v24    # "otherPrivateDirty":I
    .end local v25    # "otherSharedClean":I
    .end local v26    # "otherPrivateClean":I
    .end local v36    # "dvToken":J
    :cond_2e0
    :goto_2e0
    const-wide v0, 0x10b00000009L

    invoke-virtual {v14, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3477
    .local v0, "asToken":J
    const-wide v2, 0x10500000001L

    .line 3478
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v4

    .line 3477
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3479
    nop

    .line 3480
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v2

    .line 3479
    const-wide v3, 0x10500000002L

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3481
    nop

    .line 3482
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v2

    .line 3481
    const-wide v3, 0x10500000003L

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3483
    nop

    .line 3484
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v2

    .line 3483
    const-wide v3, 0x10500000004L

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3485
    const-wide v2, 0x10500000005L

    .line 3486
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v4

    .line 3485
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3487
    const-wide v2, 0x10500000006L

    .line 3488
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v4

    .line 3487
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3489
    const-wide v2, 0x10500000007L

    .line 3490
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v4

    .line 3489
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3491
    iget-boolean v2, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    const-wide v3, 0x10500000008L

    if-eqz v2, :cond_352

    .line 3492
    nop

    .line 3493
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v2

    .line 3492
    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_35a

    .line 3495
    :cond_352
    nop

    .line 3496
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v2

    .line 3495
    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3498
    :goto_35a
    const-wide v2, 0x1050000000aL

    .line 3499
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeapRss()I

    move-result v4

    .line 3498
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3500
    const-wide v2, 0x1050000000bL

    .line 3501
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeapRss()I

    move-result v4

    .line 3500
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3502
    const-wide v2, 0x1050000000cL

    .line 3503
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCodeRss()I

    move-result v4

    .line 3502
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3504
    const-wide v2, 0x1050000000dL

    .line 3505
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStackRss()I

    move-result v4

    .line 3504
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3506
    const-wide v2, 0x1050000000eL

    .line 3507
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphicsRss()I

    move-result v4

    .line 3506
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3508
    const-wide v2, 0x1050000000fL

    .line 3509
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryUnknownRss()I

    move-result v4

    .line 3508
    invoke-virtual {v14, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3511
    invoke-virtual {v14, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3512
    return-void
.end method

.method public static blacklist dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZILjava/lang/String;JJJJJJ)V
    .registers 67
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p2, "checkin"    # Z
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpUnknown"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "pid"    # I
    .param p8, "processName"    # Ljava/lang/String;
    .param p9, "nativeMax"    # J
    .param p11, "nativeAllocated"    # J
    .param p13, "nativeFree"    # J
    .param p15, "dalvikMax"    # J
    .param p17, "dalvikAllocated"    # J
    .param p19, "dalvikFree"    # J

    .line 3002
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p9

    move-wide/from16 v4, p11

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    move-wide/from16 v10, p17

    move-wide/from16 v12, p19

    const/4 v14, 0x4

    if-eqz p2, :cond_204

    .line 3007
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    const/16 v14, 0x2c

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3008
    move/from16 v15, p7

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3009
    move-object/from16 v15, p8

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3012
    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3013
    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3014
    const-string v14, "N/A,"

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3015
    add-long v12, v2, v8

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    const/16 v12, 0x2c

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3018
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3019
    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3020
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3021
    add-long v2, v4, v10

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3024
    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3025
    move-wide/from16 v2, p19

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3026
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3027
    add-long v4, v6, v2

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3030
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3031
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3032
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3033
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3036
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3037
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3038
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3039
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3042
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3043
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3044
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3045
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3048
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3049
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3050
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3051
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3054
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3055
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3056
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3057
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3060
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3061
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3062
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3063
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3066
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3067
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3068
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3069
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3072
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_18b

    .line 3073
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3074
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3075
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3076
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_197

    .line 3078
    :cond_18b
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3079
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3080
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3081
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3085
    :goto_197
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_198
    const/16 v5, 0x11

    if-ge v4, v5, :cond_203

    .line 3086
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3087
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3088
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3089
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3090
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3091
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3092
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3093
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3094
    iget-boolean v12, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v12, :cond_1fd

    .line 3095
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_200

    .line 3097
    :cond_1fd
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3085
    :goto_200
    add-int/lit8 v4, v4, 0x1

    goto :goto_198

    .line 3100
    .end local v4    # "i":I
    :cond_203
    return-void

    .line 3103
    :cond_204
    move-object/from16 v15, p8

    move-wide v2, v12

    const-string v12, "------"

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string v19, ""

    if-nez p6, :cond_96c

    .line 3104
    const-string v20, "Dirty"

    const-string v21, "Heap"

    const/16 v22, 0xb

    const/16 v4, 0xc

    const-string v14, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const-string v13, "%13s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v27, 0x8

    const/16 v28, 0x7

    if-eqz p3, :cond_3ae

    .line 3105
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v19, v5, v17

    const-string v31, "Pss"

    aput-object v31, v5, v18

    const-string v31, "Pss"

    const/16 v26, 0x2

    aput-object v31, v5, v26

    const-string v31, "Shared"

    const/16 v25, 0x3

    aput-object v31, v5, v25

    const-string v31, "Private"

    const/16 v24, 0x4

    aput-object v31, v5, v24

    const-string v31, "Shared"

    const/16 v23, 0x5

    aput-object v31, v5, v23

    const-string v31, "Private"

    const/16 v16, 0x6

    aput-object v31, v5, v16

    .line 3106
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_250

    const-string v4, "SwapPss"

    goto :goto_252

    :cond_250
    const-string v4, "Swap"

    :goto_252
    aput-object v4, v5, v28

    const-string v4, "Rss"

    aput-object v4, v5, v27

    const/16 v4, 0x9

    aput-object v21, v5, v4

    const/16 v4, 0xa

    aput-object v21, v5, v4

    aput-object v21, v5, v22

    .line 3105
    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3108
    const/16 v4, 0xc

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v19, v5, v17

    const-string v4, "Total"

    aput-object v4, v5, v18

    const-string v4, "Clean"

    const/16 v21, 0x2

    aput-object v4, v5, v21

    const/4 v4, 0x3

    aput-object v20, v5, v4

    const/4 v4, 0x4

    aput-object v20, v5, v4

    const-string v4, "Clean"

    const/16 v21, 0x5

    aput-object v4, v5, v21

    const-string v4, "Clean"

    const/16 v16, 0x6

    aput-object v4, v5, v16

    aput-object v20, v5, v28

    const-string v4, "Total"

    aput-object v4, v5, v27

    const-string v4, "Size"

    const/16 v20, 0x9

    aput-object v4, v5, v20

    const-string v4, "Alloc"

    const/16 v20, 0xa

    aput-object v4, v5, v20

    const-string v4, "Free"

    aput-object v4, v5, v22

    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3111
    const/16 v4, 0xc

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v19, v5, v17

    aput-object v12, v5, v18

    const/4 v4, 0x2

    aput-object v12, v5, v4

    const/4 v4, 0x3

    aput-object v12, v5, v4

    const/4 v4, 0x4

    aput-object v12, v5, v4

    const/4 v4, 0x5

    aput-object v12, v5, v4

    const/4 v4, 0x6

    aput-object v12, v5, v4

    aput-object v12, v5, v28

    aput-object v12, v5, v27

    const/16 v4, 0x9

    aput-object v12, v5, v4

    const/16 v4, 0xa

    aput-object v12, v5, v4

    aput-object v12, v5, v22

    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3113
    const/16 v4, 0xc

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "Native Heap"

    aput-object v4, v5, v17

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v18

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    .line 3114
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x2

    aput-object v4, v5, v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x3

    aput-object v4, v5, v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 3115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x4

    aput-object v4, v5, v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x5

    aput-object v4, v5, v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 3116
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0x6

    aput-object v4, v5, v16

    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_311

    .line 3117
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    goto :goto_313

    :cond_311
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 3116
    :goto_313
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v28

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 3118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v27

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v20, 0x9

    aput-object v4, v5, v20

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v20, 0xa

    aput-object v4, v5, v20

    invoke-static/range {p13 .. p14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v22

    .line 3113
    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3119
    const/16 v4, 0xc

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "Dalvik Heap"

    aput-object v4, v5, v17

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v18

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    .line 3120
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x2

    aput-object v4, v5, v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x3

    aput-object v4, v5, v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 3121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x4

    aput-object v4, v5, v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x5

    aput-object v4, v5, v20

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 3122
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0x6

    aput-object v4, v5, v16

    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_383

    .line 3123
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    goto :goto_385

    :cond_383
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 3122
    :goto_385
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v28

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 3124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v27

    invoke-static/range {p15 .. p16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v15, 0x9

    aput-object v4, v5, v15

    invoke-static/range {p17 .. p18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v20, 0xa

    aput-object v4, v5, v20

    invoke-static/range {p19 .. p20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v22

    .line 3119
    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4c9

    .line 3126
    :cond_3ae
    const/16 v15, 0x9

    new-array v4, v15, [Ljava/lang/Object;

    aput-object v19, v4, v17

    const-string v5, "Pss"

    aput-object v5, v4, v18

    const-string v5, "Private"

    const/4 v15, 0x2

    aput-object v5, v4, v15

    const-string v5, "Private"

    const/4 v15, 0x3

    aput-object v5, v4, v15

    .line 3127
    iget-boolean v5, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v5, :cond_3c9

    const-string v5, "SwapPss"

    goto :goto_3cb

    :cond_3c9
    const-string v5, "Swap"

    :goto_3cb
    const/4 v15, 0x4

    aput-object v5, v4, v15

    const-string v5, "Rss"

    const/4 v15, 0x5

    aput-object v5, v4, v15

    const/4 v5, 0x6

    aput-object v21, v4, v5

    aput-object v21, v4, v28

    aput-object v21, v4, v27

    .line 3126
    invoke-static {v0, v13, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3129
    const/16 v4, 0x9

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v19, v5, v17

    const-string v4, "Total"

    aput-object v4, v5, v18

    const/4 v4, 0x2

    aput-object v20, v5, v4

    const-string v4, "Clean"

    const/4 v15, 0x3

    aput-object v4, v5, v15

    const/4 v4, 0x4

    aput-object v20, v5, v4

    const-string v4, "Total"

    const/4 v15, 0x5

    aput-object v4, v5, v15

    const-string v4, "Size"

    const/4 v15, 0x6

    aput-object v4, v5, v15

    const-string v4, "Alloc"

    aput-object v4, v5, v28

    const-string v4, "Free"

    aput-object v4, v5, v27

    invoke-static {v0, v13, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3131
    const/16 v4, 0xa

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v19, v5, v17

    aput-object v12, v5, v18

    const/4 v4, 0x2

    aput-object v12, v5, v4

    const/4 v4, 0x3

    aput-object v12, v5, v4

    const/4 v4, 0x4

    aput-object v12, v5, v4

    const/4 v4, 0x5

    aput-object v12, v5, v4

    const/4 v4, 0x6

    aput-object v12, v5, v4

    aput-object v12, v5, v28

    aput-object v12, v5, v27

    const/16 v4, 0x9

    aput-object v12, v5, v4

    invoke-static {v0, v13, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3133
    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "Native Heap"

    aput-object v4, v5, v17

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v18

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 3134
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x2

    aput-object v4, v5, v15

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 3135
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x3

    aput-object v4, v5, v15

    .line 3136
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_450

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    goto :goto_452

    .line 3137
    :cond_450
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 3136
    :goto_452
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x4

    aput-object v4, v5, v15

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 3137
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x5

    aput-object v4, v5, v15

    .line 3138
    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v15, 0x6

    aput-object v4, v5, v15

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v28

    invoke-static/range {p13 .. p14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v27

    .line 3133
    invoke-static {v0, v13, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3139
    const/16 v4, 0x9

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "Dalvik Heap"

    aput-object v4, v5, v17

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v18

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 3140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x2

    aput-object v4, v5, v15

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 3141
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x3

    aput-object v4, v5, v15

    .line 3142
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_4a1

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    goto :goto_4a3

    .line 3143
    :cond_4a1
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 3142
    :goto_4a3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x4

    aput-object v4, v5, v15

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 3143
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x5

    aput-object v4, v5, v15

    .line 3144
    invoke-static/range {p15 .. p16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v15, 0x6

    aput-object v4, v5, v15

    invoke-static/range {p17 .. p18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v28

    invoke-static/range {p19 .. p20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v27

    .line 3139
    invoke-static {v0, v13, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3147
    :goto_4c9
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 3148
    .local v4, "otherPss":I
    iget v5, v1, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 3149
    .local v5, "otherSwappablePss":I
    iget v15, v1, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 3150
    .local v15, "otherSharedDirty":I
    move/from16 v20, v4

    .end local v4    # "otherPss":I
    .local v20, "otherPss":I
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 3151
    .local v4, "otherPrivateDirty":I
    move/from16 v21, v4

    .end local v4    # "otherPrivateDirty":I
    .local v21, "otherPrivateDirty":I
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 3152
    .local v4, "otherSharedClean":I
    move/from16 v32, v4

    .end local v4    # "otherSharedClean":I
    .local v32, "otherSharedClean":I
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 3153
    .local v4, "otherPrivateClean":I
    move/from16 v33, v4

    .end local v4    # "otherPrivateClean":I
    .local v33, "otherPrivateClean":I
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 3154
    .local v4, "otherSwappedOut":I
    move/from16 v34, v4

    .end local v4    # "otherSwappedOut":I
    .local v34, "otherSwappedOut":I
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 3155
    .local v4, "otherSwappedOutPss":I
    move/from16 v35, v4

    .end local v4    # "otherSwappedOutPss":I
    .local v35, "otherSwappedOutPss":I
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 3157
    .local v4, "otherRss":I
    const/16 v36, 0x0

    move/from16 v44, v5

    move v5, v4

    move/from16 v4, v20

    move/from16 v20, v15

    move/from16 v15, v44

    move/from16 v45, v36

    move-object/from16 v36, v12

    move/from16 v12, v45

    .local v4, "otherPss":I
    .local v5, "otherRss":I
    .local v12, "i":I
    .local v15, "otherSwappablePss":I
    .local v20, "otherSharedDirty":I
    :goto_4f8
    const/16 v2, 0x11

    if-ge v12, v2, :cond_5ef

    .line 3158
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v2

    .line 3159
    .local v2, "myPss":I
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v3

    .line 3160
    .local v3, "mySwappablePss":I
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v37

    .line 3161
    .local v37, "mySharedDirty":I
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v38

    .line 3162
    .local v38, "myPrivateDirty":I
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v39

    .line 3163
    .local v39, "mySharedClean":I
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v40

    .line 3164
    .local v40, "myPrivateClean":I
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v41

    .line 3165
    .local v41, "mySwappedOut":I
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v42

    .line 3166
    .local v42, "mySwappedOutPss":I
    invoke-virtual {v1, v12}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v43

    .line 3167
    .local v43, "myRss":I
    if-nez v2, :cond_537

    if-nez v37, :cond_537

    if-nez v38, :cond_537

    if-nez v39, :cond_537

    if-nez v40, :cond_537

    if-nez v43, :cond_537

    .line 3169
    iget-boolean v6, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v6, :cond_533

    move/from16 v6, v42

    goto :goto_535

    :cond_533
    move/from16 v6, v41

    :goto_535
    if-eqz v6, :cond_5e7

    .line 3170
    :cond_537
    if-eqz p3, :cond_594

    .line 3171
    const/16 v6, 0xc

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v12}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v17

    .line 3172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v26, 0x2

    aput-object v6, v7, v26

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v25, 0x3

    aput-object v6, v7, v25

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v24, 0x4

    aput-object v6, v7, v24

    .line 3173
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v23, 0x5

    aput-object v6, v7, v23

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v16, 0x6

    aput-object v6, v7, v16

    .line 3174
    iget-boolean v6, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v6, :cond_578

    move/from16 v6, v42

    goto :goto_57a

    :cond_578
    move/from16 v6, v41

    :goto_57a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v28

    .line 3175
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v27

    const/16 v6, 0x9

    aput-object v19, v7, v6

    const/16 v29, 0xa

    aput-object v19, v7, v29

    aput-object v19, v7, v22

    .line 3171
    invoke-static {v0, v14, v7}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5d7

    .line 3177
    :cond_594
    const/16 v6, 0x9

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v12}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v17

    .line 3178
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v18

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v26, 0x2

    aput-object v6, v7, v26

    .line 3179
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v25, 0x3

    aput-object v6, v7, v25

    .line 3180
    iget-boolean v6, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v6, :cond_5bb

    move/from16 v6, v42

    goto :goto_5bd

    :cond_5bb
    move/from16 v6, v41

    :goto_5bd
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v24, 0x4

    aput-object v6, v7, v24

    .line 3181
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v23, 0x5

    aput-object v6, v7, v23

    const/4 v6, 0x6

    aput-object v19, v7, v6

    aput-object v19, v7, v28

    aput-object v19, v7, v27

    .line 3177
    invoke-static {v0, v13, v7}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3183
    :goto_5d7
    sub-int/2addr v4, v2

    .line 3184
    sub-int/2addr v15, v3

    .line 3185
    sub-int v20, v20, v37

    .line 3186
    sub-int v21, v21, v38

    .line 3187
    sub-int v32, v32, v39

    .line 3188
    sub-int v33, v33, v40

    .line 3189
    sub-int v34, v34, v41

    .line 3190
    sub-int v35, v35, v42

    .line 3191
    sub-int v5, v5, v43

    .line 3157
    .end local v2    # "myPss":I
    .end local v3    # "mySwappablePss":I
    .end local v37    # "mySharedDirty":I
    .end local v38    # "myPrivateDirty":I
    .end local v39    # "mySharedClean":I
    .end local v40    # "myPrivateClean":I
    .end local v41    # "mySwappedOut":I
    .end local v42    # "mySwappedOutPss":I
    .end local v43    # "myRss":I
    :cond_5e7
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v6, p13

    move-wide/from16 v2, p19

    goto/16 :goto_4f8

    .line 3195
    .end local v12    # "i":I
    :cond_5ef
    if-eqz p3, :cond_6cb

    .line 3196
    const/16 v2, 0xc

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "Unknown"

    aput-object v2, v3, v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v3, v6

    .line 3197
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v3, v6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v3, v6

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v3, v6

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v3, v6

    .line 3198
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_629

    move/from16 v2, v35

    goto :goto_62b

    :cond_629
    move/from16 v2, v34

    :goto_62b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v28

    .line 3199
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v27

    const/16 v2, 0x9

    aput-object v19, v3, v2

    const/16 v2, 0xa

    aput-object v19, v3, v2

    aput-object v19, v3, v22

    .line 3196
    invoke-static {v0, v14, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3200
    const/16 v2, 0xc

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "TOTAL"

    aput-object v2, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v18

    .line 3201
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v3, v6

    .line 3202
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v3, v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v3, v6

    .line 3203
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v3, v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v3, v6

    .line 3204
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_696

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v2

    goto :goto_69a

    .line 3205
    :cond_696
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v2

    .line 3204
    :goto_69a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v28

    .line 3205
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v27

    add-long v6, p9, v8

    .line 3206
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v6, 0x9

    aput-object v2, v3, v6

    add-long v6, p11, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v6, 0xa

    aput-object v2, v3, v6

    add-long v6, p13, p19

    .line 3207
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v22

    .line 3200
    invoke-static {v0, v14, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_76b

    .line 3209
    :cond_6cb
    const/16 v2, 0x9

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "Unknown"

    aput-object v2, v3, v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v18

    .line 3210
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v3, v6

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v3, v6

    .line 3211
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_6ee

    move/from16 v2, v35

    goto :goto_6f0

    :cond_6ee
    move/from16 v2, v34

    :goto_6f0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v3, v6

    .line 3212
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v3, v6

    const/4 v2, 0x6

    aput-object v19, v3, v2

    aput-object v19, v3, v28

    aput-object v19, v3, v27

    .line 3209
    invoke-static {v0, v13, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3213
    const/16 v2, 0x9

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "TOTAL"

    aput-object v2, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v18

    .line 3214
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v3, v6

    .line 3215
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v3, v6

    .line 3216
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_739

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v2

    goto :goto_73d

    .line 3217
    :cond_739
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v2

    .line 3216
    :goto_73d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v3, v6

    .line 3217
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v3, v6

    add-long v6, p9, v8

    .line 3218
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v3, v6

    add-long v6, p11, v10

    .line 3219
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v28

    add-long v6, p13, p19

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v27

    .line 3213
    invoke-static {v0, v13, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3223
    :goto_76b
    if-eqz p5, :cond_870

    .line 3224
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3225
    const-string v2, " Unknown Details"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3226
    const/16 v2, 0x20

    .line 3227
    .local v2, "i":I
    :goto_779
    const/16 v3, 0x27

    if-ge v2, v3, :cond_86b

    .line 3228
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v3

    .line 3229
    .local v3, "myPss":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v6

    .line 3230
    .local v6, "mySwappablePss":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v7

    .line 3231
    .local v7, "mySharedDirty":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v12

    .line 3232
    .local v12, "myPrivateDirty":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v37

    .line 3233
    .local v37, "mySharedClean":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v38

    .line 3234
    .local v38, "myPrivateClean":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v39

    .line 3235
    .local v39, "mySwappedOut":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v40

    .line 3236
    .local v40, "mySwappedOutPss":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v41

    .line 3237
    .local v41, "myRss":I
    if-nez v3, :cond_7bd

    if-nez v7, :cond_7bd

    if-nez v12, :cond_7bd

    if-nez v37, :cond_7bd

    if-nez v38, :cond_7bd

    .line 3239
    move/from16 v42, v4

    .end local v4    # "otherPss":I
    .local v42, "otherPss":I
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_7b4

    move/from16 v4, v40

    goto :goto_7b6

    :cond_7b4
    move/from16 v4, v39

    :goto_7b6
    if-eqz v4, :cond_7b9

    goto :goto_7bf

    :cond_7b9
    move/from16 v43, v5

    goto/16 :goto_863

    .line 3237
    .end local v42    # "otherPss":I
    .restart local v4    # "otherPss":I
    :cond_7bd
    move/from16 v42, v4

    .line 3240
    .end local v4    # "otherPss":I
    .restart local v42    # "otherPss":I
    :goto_7bf
    if-eqz p3, :cond_81e

    .line 3241
    move/from16 v43, v5

    const/16 v4, 0xc

    .end local v5    # "otherRss":I
    .local v43, "otherRss":I
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v17

    .line 3242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v26, 0x2

    aput-object v4, v5, v26

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v25, 0x3

    aput-object v4, v5, v25

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v24, 0x4

    aput-object v4, v5, v24

    .line 3243
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v23, 0x5

    aput-object v4, v5, v23

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0x6

    aput-object v4, v5, v16

    .line 3244
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_802

    move/from16 v4, v40

    goto :goto_804

    :cond_802
    move/from16 v4, v39

    :goto_804
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v28

    .line 3245
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v27

    const/16 v4, 0x9

    aput-object v19, v5, v4

    const/16 v29, 0xa

    aput-object v19, v5, v29

    aput-object v19, v5, v22

    .line 3241
    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_863

    .line 3247
    .end local v43    # "otherRss":I
    .restart local v5    # "otherRss":I
    :cond_81e
    move/from16 v43, v5

    const/16 v4, 0x9

    .end local v5    # "otherRss":I
    .restart local v43    # "otherRss":I
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v17

    .line 3248
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v18

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v26, 0x2

    aput-object v4, v5, v26

    .line 3249
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v25, 0x3

    aput-object v4, v5, v25

    .line 3250
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_847

    move/from16 v4, v40

    goto :goto_849

    :cond_847
    move/from16 v4, v39

    :goto_849
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v24, 0x4

    aput-object v4, v5, v24

    .line 3251
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v23, 0x5

    aput-object v4, v5, v23

    const/4 v4, 0x6

    aput-object v19, v5, v4

    aput-object v19, v5, v28

    aput-object v19, v5, v27

    .line 3247
    invoke-static {v0, v13, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3227
    .end local v3    # "myPss":I
    .end local v6    # "mySwappablePss":I
    .end local v7    # "mySharedDirty":I
    .end local v12    # "myPrivateDirty":I
    .end local v37    # "mySharedClean":I
    .end local v38    # "myPrivateClean":I
    .end local v39    # "mySwappedOut":I
    .end local v40    # "mySwappedOutPss":I
    .end local v41    # "myRss":I
    :goto_863
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v42

    move/from16 v5, v43

    goto/16 :goto_779

    .end local v42    # "otherPss":I
    .end local v43    # "otherRss":I
    .restart local v4    # "otherPss":I
    .restart local v5    # "otherRss":I
    :cond_86b
    move/from16 v42, v4

    move/from16 v43, v5

    .end local v4    # "otherPss":I
    .end local v5    # "otherRss":I
    .restart local v42    # "otherPss":I
    .restart local v43    # "otherRss":I
    goto :goto_874

    .line 3223
    .end local v2    # "i":I
    .end local v42    # "otherPss":I
    .end local v43    # "otherRss":I
    .restart local v4    # "otherPss":I
    .restart local v5    # "otherRss":I
    :cond_870
    move/from16 v42, v4

    move/from16 v43, v5

    .line 3258
    .end local v4    # "otherPss":I
    .end local v5    # "otherRss":I
    .restart local v42    # "otherPss":I
    .restart local v43    # "otherRss":I
    :goto_874
    if-eqz p4, :cond_96e

    .line 3259
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3260
    const-string v2, " Dalvik Details"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3262
    const/16 v2, 0x11

    .line 3263
    .restart local v2    # "i":I
    :goto_882
    const/16 v3, 0x20

    if-ge v2, v3, :cond_96e

    .line 3264
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v3

    .line 3265
    .restart local v3    # "myPss":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v4

    .line 3266
    .local v4, "mySwappablePss":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v5

    .line 3267
    .local v5, "mySharedDirty":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v6

    .line 3268
    .local v6, "myPrivateDirty":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v7

    .line 3269
    .local v7, "mySharedClean":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v12

    .line 3270
    .local v12, "myPrivateClean":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v37

    .line 3271
    .local v37, "mySwappedOut":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v38

    .line 3272
    .local v38, "mySwappedOutPss":I
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v39

    .line 3273
    .local v39, "myRss":I
    if-nez v3, :cond_8c4

    if-nez v5, :cond_8c4

    if-nez v6, :cond_8c4

    if-nez v7, :cond_8c4

    if-nez v12, :cond_8c4

    .line 3275
    iget-boolean v8, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v8, :cond_8bb

    move/from16 v8, v38

    goto :goto_8bd

    :cond_8bb
    move/from16 v8, v37

    :goto_8bd
    if-eqz v8, :cond_8c0

    goto :goto_8c4

    :cond_8c0
    const/16 v29, 0xa

    goto/16 :goto_966

    .line 3276
    :cond_8c4
    :goto_8c4
    if-eqz p3, :cond_921

    .line 3277
    const/16 v8, 0xc

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v2}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v9, v17

    .line 3278
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v9, v18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v26, 0x2

    aput-object v31, v9, v26

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v25, 0x3

    aput-object v31, v9, v25

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v24, 0x4

    aput-object v31, v9, v24

    .line 3279
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v23, 0x5

    aput-object v31, v9, v23

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v16, 0x6

    aput-object v31, v9, v16

    .line 3280
    iget-boolean v8, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v8, :cond_905

    move/from16 v8, v38

    goto :goto_907

    :cond_905
    move/from16 v8, v37

    :goto_907
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v28

    .line 3281
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v27

    const/16 v8, 0x9

    aput-object v19, v9, v8

    const/16 v29, 0xa

    aput-object v19, v9, v29

    aput-object v19, v9, v22

    .line 3277
    invoke-static {v0, v14, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_966

    .line 3283
    :cond_921
    const/16 v8, 0x9

    const/16 v29, 0xa

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v2}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v9, v17

    .line 3284
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v9, v18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v26, 0x2

    aput-object v30, v9, v26

    .line 3285
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v25, 0x3

    aput-object v30, v9, v25

    .line 3286
    iget-boolean v8, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v8, :cond_94a

    move/from16 v8, v38

    goto :goto_94c

    :cond_94a
    move/from16 v8, v37

    :goto_94c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v24, 0x4

    aput-object v8, v9, v24

    .line 3287
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v23, 0x5

    aput-object v8, v9, v23

    const/4 v8, 0x6

    aput-object v19, v9, v8

    aput-object v19, v9, v28

    aput-object v19, v9, v27

    .line 3283
    invoke-static {v0, v13, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3263
    .end local v3    # "myPss":I
    .end local v4    # "mySwappablePss":I
    .end local v5    # "mySharedDirty":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "mySharedClean":I
    .end local v12    # "myPrivateClean":I
    .end local v37    # "mySwappedOut":I
    .end local v38    # "mySwappedOutPss":I
    .end local v39    # "myRss":I
    :goto_966
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v8, p15

    goto/16 :goto_882

    .line 3103
    .end local v2    # "i":I
    .end local v15    # "otherSwappablePss":I
    .end local v20    # "otherSharedDirty":I
    .end local v21    # "otherPrivateDirty":I
    .end local v32    # "otherSharedClean":I
    .end local v33    # "otherPrivateClean":I
    .end local v34    # "otherSwappedOut":I
    .end local v35    # "otherSwappedOutPss":I
    .end local v42    # "otherPss":I
    .end local v43    # "otherRss":I
    :cond_96c
    move-object/from16 v36, v12

    .line 3294
    :cond_96e
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3295
    const-string v2, " App Summary"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3296
    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v19, v3, v17

    const-string v4, "Pss(KB)"

    aput-object v4, v3, v18

    const/4 v4, 0x2

    aput-object v19, v3, v4

    const-string v5, "Rss(KB)"

    const/4 v6, 0x3

    aput-object v5, v3, v6

    const-string v5, "%21s %8s %21s %8s"

    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3297
    new-array v3, v2, [Ljava/lang/Object;

    aput-object v19, v3, v17

    aput-object v36, v3, v18

    aput-object v19, v3, v4

    aput-object v36, v3, v6

    const-string v4, "%21s %8s %21s %8s"

    invoke-static {v0, v4, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3298
    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "Java Heap:"

    aput-object v2, v3, v17

    .line 3299
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v18

    const/4 v2, 0x2

    aput-object v19, v3, v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeapRss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    .line 3298
    const-string v2, "%21s %8d %21s %8d"

    invoke-static {v0, v2, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3300
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "Native Heap:"

    aput-object v3, v4, v17

    .line 3301
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v18

    const/4 v3, 0x2

    aput-object v19, v4, v3

    .line 3302
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeapRss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v4, v5

    .line 3300
    invoke-static {v0, v2, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3303
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "Code:"

    aput-object v3, v4, v17

    .line 3304
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v18

    const/4 v3, 0x2

    aput-object v19, v4, v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCodeRss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v4, v5

    .line 3303
    invoke-static {v0, v2, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3305
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "Stack:"

    aput-object v3, v4, v17

    .line 3306
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v18

    const/4 v3, 0x2

    aput-object v19, v4, v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStackRss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v4, v5

    .line 3305
    invoke-static {v0, v2, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3307
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "Graphics:"

    aput-object v3, v4, v17

    .line 3308
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v18

    const/4 v3, 0x2

    aput-object v19, v4, v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphicsRss()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 3307
    invoke-static {v0, v2, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3309
    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "Private Other:"

    aput-object v4, v2, v17

    .line 3310
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v18

    .line 3309
    const-string v4, "%21s %8d"

    invoke-static {v0, v4, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3311
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "System:"

    aput-object v3, v2, v17

    .line 3312
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v18

    .line 3311
    const-string v3, "%21s %8d"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3313
    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "Unknown:"

    aput-object v2, v3, v17

    aput-object v19, v3, v18

    const/4 v2, 0x2

    aput-object v19, v3, v2

    .line 3314
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryUnknownRss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    .line 3313
    const-string v2, "%21s %8s %21s %8d"

    invoke-static {v0, v2, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3315
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3316
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_ace

    .line 3317
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "TOTAL PSS:"

    aput-object v3, v2, v17

    .line 3318
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v18

    const-string v3, "TOTAL RSS:"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 3319
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string v3, "TOTAL SWAP PSS:"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 3320
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 3317
    const-string v3, "%21s %8d %21s %8s %21s %8d"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b04

    .line 3322
    :cond_ace
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "TOTAL PSS:"

    aput-object v3, v2, v17

    .line 3323
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v18

    const-string v3, "TOTAL RSS:"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 3324
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string v3, "TOTAL SWAP (KB):"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 3325
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 3322
    const-string v3, "%21s %8d %21s %8s %21s %8d"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3327
    :goto_b04
    return-void
.end method

.method private static blacklist dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V
    .registers 29
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "pss"    # I
    .param p5, "cleanPss"    # I
    .param p6, "sharedDirty"    # I
    .param p7, "privateDirty"    # I
    .param p8, "sharedClean"    # I
    .param p9, "privateClean"    # I
    .param p10, "hasSwappedOutPss"    # Z
    .param p11, "dirtySwap"    # I
    .param p12, "dirtySwapPss"    # I
    .param p13, "rss"    # I

    .line 3338
    move-object v0, p0

    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 3340
    .local v1, "token":J
    const-wide v3, 0x10900000001L

    move-object/from16 v5, p3

    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3341
    const-wide v3, 0x10500000002L

    move/from16 v6, p4

    invoke-virtual {p0, v3, v4, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3342
    const-wide v3, 0x10500000003L

    move/from16 v7, p5

    invoke-virtual {p0, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3343
    const-wide v3, 0x10500000004L

    move/from16 v8, p6

    invoke-virtual {p0, v3, v4, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3344
    const-wide v3, 0x10500000005L

    move/from16 v9, p7

    invoke-virtual {p0, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3345
    const-wide v3, 0x10500000006L

    move/from16 v10, p8

    invoke-virtual {p0, v3, v4, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3346
    const-wide v3, 0x10500000007L

    move/from16 v11, p9

    invoke-virtual {p0, v3, v4, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3347
    if-eqz p10, :cond_5a

    .line 3348
    const-wide v3, 0x10500000009L

    move/from16 v12, p12

    invoke-virtual {p0, v3, v4, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move/from16 v13, p11

    goto :goto_66

    .line 3350
    :cond_5a
    move/from16 v12, p12

    const-wide v3, 0x10500000008L

    move/from16 v13, p11

    invoke-virtual {p0, v3, v4, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3352
    :goto_66
    const-wide v3, 0x1050000000aL

    move/from16 v14, p13

    invoke-virtual {p0, v3, v4, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3354
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3355
    return-void
.end method

.method private blacklist generateForegroundServiceDidNotStartInTimeException(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2120
    nop

    .line 2121
    invoke-static {p2}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;->getServiceClassNameFromExtras(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 2122
    .local v0, "serviceClassName":Ljava/lang/String;
    if-nez v0, :cond_9

    const/4 v1, 0x0

    goto :goto_d

    .line 2123
    :cond_9
    invoke-static {v0}, Landroid/app/Service;->getStartForegroundServiceStackTrace(Ljava/lang/String;)Landroid/app/StackTrace;

    move-result-object v1

    :goto_d
    nop

    .line 2124
    .local v1, "inner":Ljava/lang/Exception;
    new-instance v2, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;

    invoke-direct {v2, p1, v1}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private blacklist getBackupAgentName(Landroid/app/ActivityThread$CreateBackupAgentData;)Ljava/lang/String;
    .registers 5
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 4703
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 4705
    .local v0, "agentName":Ljava/lang/String;
    if-nez v0, :cond_12

    iget v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    iget v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    .line 4707
    :cond_10
    const-string v0, "android.app.backup.FullBackupAgent"

    .line 4709
    :cond_12
    return-object v0
.end method

.method private blacklist getBackupAgentsForUser(I)Landroid/util/ArrayMap;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;"
        }
    .end annotation

    .line 4734
    iget-object v0, p0, Landroid/app/ActivityThread;->mBackupAgentsByUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 4735
    .local v0, "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    if-nez v0, :cond_15

    .line 4736
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 4737
    iget-object v1, p0, Landroid/app/ActivityThread;->mBackupAgentsByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4739
    :cond_15
    return-object v0
.end method

.method private blacklist getGetProviderKey(Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;
    .registers 7
    .param p1, "auth"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 7667
    new-instance v0, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v0, p1, p2}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 7668
    .local v0, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v1, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 7669
    :try_start_8
    iget-object v2, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderKey;

    .line 7670
    .local v2, "lock":Landroid/app/ActivityThread$ProviderKey;
    if-nez v2, :cond_18

    .line 7671
    move-object v2, v0

    .line 7672
    iget-object v3, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7674
    :cond_18
    monitor-exit v1

    return-object v2

    .line 7675
    .end local v2    # "lock":Landroid/app/ActivityThread$ProviderKey;
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method private greylist-max-o getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;
    .registers 7
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "insInfo"    # Landroid/content/pm/InstrumentationInfo;

    .line 6951
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 6952
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 6955
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 6956
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6957
    .local v0, "secondaryIsa":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ro.dalvik.vm.isa."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6958
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6959
    .local v1, "secondaryDexCodeIsa":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_38

    move-object v2, v0

    goto :goto_39

    :cond_38
    move-object v2, v1

    :goto_39
    move-object v0, v2

    .line 6961
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v2

    .line 6962
    .local v2, "runtimeIsa":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 6963
    iget-object v3, p2, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object v3

    .line 6966
    .end local v0    # "secondaryIsa":Ljava/lang/String;
    .end local v1    # "secondaryDexCodeIsa":Ljava/lang/String;
    .end local v2    # "runtimeIsa":Ljava/lang/String;
    :cond_4b
    iget-object v0, p2, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public static greylist-max-o getIntentBeingBroadcast()Landroid/content/Intent;
    .registers 1

    .line 4540
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private greylist-max-o getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;
    .registers 15
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "securityViolation"    # Z
    .param p5, "includeCode"    # Z
    .param p6, "registerPackage"    # Z

    .line 2712
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZ)Landroid/app/LoadedApk;
    .registers 23
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "securityViolation"    # Z
    .param p5, "includeCode"    # Z
    .param p6, "registerPackage"    # Z
    .param p7, "isSdkSandbox"    # Z

    .line 2719
    move-object v9, p0

    move-object/from16 v10, p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget v1, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v3

    :goto_14
    move v11, v0

    .line 2720
    .local v11, "differentUser":Z
    iget-object v12, v9, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v12

    .line 2722
    if-nez v11, :cond_35

    if-eqz p7, :cond_1d

    goto :goto_35

    .line 2725
    :cond_1d
    if-eqz p5, :cond_2a

    .line 2726
    :try_start_1f
    iget-object v0, v9, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_36

    .line 2728
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2a
    iget-object v0, v9, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .restart local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_36

    .line 2724
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_35
    :goto_35
    const/4 v0, 0x0

    .line 2731
    .restart local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_36
    const/4 v1, 0x0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk;

    goto :goto_44

    .line 2781
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_40
    move-exception v0

    goto/16 :goto_131

    .line 2731
    .restart local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_43
    move-object v4, v1

    :goto_44
    move-object v13, v4

    .line 2733
    .local v13, "packageInfo":Landroid/app/LoadedApk;
    if-eqz v13, :cond_9b

    .line 2734
    invoke-static {v13, v10}, Landroid/app/ActivityThread;->isLoadedApkResourceDirsUpToDate(Landroid/app/LoadedApk;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_99

    .line 2735
    invoke-virtual {v13}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    iget-wide v3, v10, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_74

    .line 2738
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageInfo() called with an older ApplicationInfo than the cached version for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 2741
    :cond_74
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageInfo() caused update to cached ApplicationInfo for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2744
    .local v1, "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, v10, v1}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 2745
    invoke-virtual {v13, v10, v1}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 2749
    .end local v1    # "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_99
    :goto_99
    monitor-exit v12

    return-object v13

    .line 2752
    :cond_9b
    sget-boolean v4, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v4, :cond_d6

    .line 2753
    const-string v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_ab

    const-string v6, "Loading code package "

    goto :goto_ad

    .line 2754
    :cond_ab
    const-string v6, "Loading resource-only package "

    :goto_ad
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2755
    iget-object v6, v9, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v6, :cond_c4

    .line 2756
    iget-object v1, v6, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_c5

    :cond_c4
    nop

    :goto_c5
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2753
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    :cond_d6
    new-instance v14, Landroid/app/LoadedApk;

    if-eqz p5, :cond_e2

    iget v1, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_e2

    move v7, v2

    goto :goto_e3

    :cond_e2
    move v7, v3

    :goto_e3
    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V

    move-object v1, v14

    .line 2765
    .end local v13    # "packageInfo":Landroid/app/LoadedApk;
    .local v1, "packageInfo":Landroid/app/LoadedApk;
    iget-boolean v2, v9, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v2, :cond_10f

    const-string v2, "android"

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 2766
    nop

    .line 2767
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 2766
    invoke-virtual {v1, v10, v2}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 2770
    :cond_10f
    if-nez v11, :cond_12f

    if-eqz p7, :cond_114

    goto :goto_12f

    .line 2772
    :cond_114
    if-eqz p5, :cond_123

    .line 2773
    iget-object v2, v9, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12f

    .line 2776
    :cond_123
    iget-object v2, v9, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2780
    :cond_12f
    :goto_12f
    monitor-exit v12

    return-object v1

    .line 2781
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v1    # "packageInfo":Landroid/app/LoadedApk;
    :goto_131
    monitor-exit v12
    :try_end_132
    .catchall {:try_start_1f .. :try_end_132} :catchall_40

    throw v0
.end method

.method private blacklist getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Z)Landroid/app/LoadedApk;
    .registers 12
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "isSdkSandbox"    # Z

    .line 2693
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 2570
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v0, :cond_7

    .line 2571
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0

    .line 2573
    :cond_7
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2574
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 2575
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v1
.end method

.method public static blacklist getPermissionManager()Landroid/permission/IPermissionManager;
    .registers 2

    .line 2580
    sget-object v0, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    if-eqz v0, :cond_7

    .line 2581
    sget-object v0, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    return-object v0

    .line 2583
    :cond_7
    const-string/jumbo v0, "permissionmgr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2584
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    .line 2585
    sget-object v1, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    return-object v1
.end method

.method static greylist-max-o handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V
    .registers 5
    .param p0, "agent"    # Ljava/lang/String;
    .param p1, "loadedApk"    # Landroid/app/LoadedApk;

    .line 4490
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    .line 4491
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    :goto_9
    invoke-static {p0, v1}, Landroid/app/ActivityThread;->attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4492
    return-void

    .line 4494
    :cond_10
    if-eqz v1, :cond_15

    .line 4495
    invoke-static {p0, v0}, Landroid/app/ActivityThread;->attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    .line 4497
    :cond_15
    return-void
.end method

.method static blacklist handleAttachStartupAgents(Ljava/lang/String;)V
    .registers 7
    .param p0, "dataDir"    # Ljava/lang/String;

    .line 4501
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/app/ContextImpl;->getCodeCacheDirBeforeBind(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 4502
    .local v0, "code_cache":Ljava/nio/file/Path;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 4503
    return-void

    .line 4505
    :cond_17
    const-string/jumbo v2, "startup_agents"

    invoke-interface {v0, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 4506
    .local v2, "startup_path":Ljava/nio/file/Path;
    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 4507
    invoke-static {v2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    .line 4508
    .local v3, "p":Ljava/nio/file/Path;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4509
    invoke-interface {v3}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 4508
    invoke-static {v4, v5}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_5f

    .line 4513
    .end local v3    # "p":Ljava/nio/file/Path;
    goto :goto_2e

    .line 4517
    .end local v0    # "code_cache":Ljava/nio/file/Path;
    .end local v2    # "startup_path":Ljava/nio/file/Path;
    :cond_5e
    goto :goto_60

    .line 4515
    :catch_5f
    move-exception v0

    .line 4518
    :goto_60
    return-void
.end method

.method private greylist handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .registers 35
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .line 6971
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 6972
    .local v3, "st_bindApp":J
    const/4 v5, 0x0

    .line 6974
    .local v5, "ux_perf":Landroid/util/BoostFramework;
    invoke-static {}, Ldalvik/system/VMRuntime;->registerSensitiveThread()V

    .line 6976
    const-string v0, "debug.allocTracker.stackDepth"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6977
    .local v6, "property":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 6978
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ldalvik/system/VMDebug;->setAllocTrackerStackDepth(I)V

    .line 6980
    :cond_1f
    iget-boolean v0, v2, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_27

    .line 6981
    invoke-static {v7}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->setRecentAllocationsTrackingEnabled(Z)V

    .line 6984
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, v2, Landroid/app/ActivityThread$AppBindData;->startRequestedElapsedTime:J

    iget-wide v14, v2, Landroid/app/ActivityThread$AppBindData;->startRequestedUptime:J

    invoke-static/range {v8 .. v15}, Landroid/os/Process;->setStartTimes(JJJJ)V

    .line 6988
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getAdaptCutoutMode()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->setAdaptCutoutMode(I)V

    .line 6992
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isEmbeddingWindowApp()Z

    move-result v0

    invoke-direct {v1, v0}, Landroid/app/ActivityThread;->setEmbeddedParam(Z)V

    .line 6995
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v0}, Landroid/app/ActivityThread;->setLandscapeParam(Landroid/content/pm/ApplicationInfo;)V

    .line 6997
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->disabledCompatChanges:[J

    invoke-static {v0}, Landroid/app/AppCompatCallbacks;->install([J)V

    .line 6999
    invoke-static {}, Ldalvik/system/AppSpecializationHooks;->handleCompatChangesBeforeBindingApplication()V

    .line 7001
    iput-object v2, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 7003
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->miuiDownscaleRequired()Z

    move-result v0

    sput-boolean v0, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    .line 7005
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v0

    iget-object v8, v2, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v8}, Landroid/util/GMSDownscaleStub;->setCompatInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 7006
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v0

    iget-object v8, v2, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0, v8}, Landroid/util/GMSDownscaleStub;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 7007
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v0

    iget-object v8, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/util/GMSDownscaleStub;->setPackageName(Ljava/lang/String;)V

    .line 7009
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v8, v2, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0, v8}, Landroid/app/ConfigurationController;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 7010
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v8, v2, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0, v8}, Landroid/app/ConfigurationController;->setCompatConfiguration(Landroid/content/res/Configuration;)V

    .line 7011
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, v1, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 7013
    new-instance v0, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v0, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 7014
    const/4 v0, 0x0

    .line 7015
    .local v0, "agent":Ljava/lang/String;
    iget-object v8, v2, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v8, :cond_d2

    .line 7016
    iget-object v8, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v9, v2, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v9, v9, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v9, v8, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 7017
    iget-object v8, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v9, v2, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v9, v9, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v9, v8, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 7018
    iget-object v8, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v9, v2, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget v9, v9, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v9, v8, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 7019
    iget-object v8, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v9, v2, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v9, v9, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v9, v8, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 7020
    iget-object v8, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v9, v2, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v9, v9, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v9, v8, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    .line 7021
    iget-object v8, v2, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v8, v8, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    if-eqz v8, :cond_d2

    .line 7022
    iget-object v8, v2, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v0, v8, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    move-object v8, v0

    goto :goto_d3

    .line 7027
    :cond_d2
    move-object v8, v0

    .end local v0    # "agent":Ljava/lang/String;
    .local v8, "agent":Ljava/lang/String;
    :goto_d3
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 7028
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    iget-object v9, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 7030
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 7028
    invoke-static {v0, v9, v10}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7031
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->setProcessPackageName(Ljava/lang/String;)V

    .line 7034
    const-string v0, "com.miui.home"

    iget-object v9, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/app/ActivityThread;->mIsHomeProcess:Z

    .line 7038
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->setProcessDataDirectory(Ljava/lang/String;)V

    .line 7040
    iget-object v0, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_10a

    .line 7041
    iget-object v0, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 7048
    :cond_10a
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0xc

    if-gt v0, v9, :cond_117

    .line 7049
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 7053
    :cond_117
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x1d

    const/4 v10, 0x0

    if-lt v0, v9, :cond_122

    move v0, v7

    goto :goto_123

    :cond_122
    move v0, v10

    :goto_123
    invoke-static {v0}, Landroid/util/UtilConfig;->setThrowExceptionForUpperArrayOutOfBounds(Z)V

    .line 7056
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Landroid/os/Message;->updateCheckRecycle(I)V

    .line 7060
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Landroid/graphics/Compatibility;->setTargetSdkVersion(I)V

    .line 7068
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 7073
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 7077
    :try_start_141
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->mSerializedSystemFontMap:Landroid/os/SharedMemory;

    invoke-static {v0}, Landroid/graphics/Typeface;->setSystemFontMap(Landroid/os/SharedMemory;)V
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_146} :catch_147
    .catch Landroid/system/ErrnoException; {:try_start_141 .. :try_end_146} :catch_147

    .line 7081
    goto :goto_152

    .line 7078
    :catch_147
    move-exception v0

    .line 7079
    .local v0, "e":Ljava/lang/Exception;
    const-string v11, "ActivityThread"

    const-string v12, "Failed to parse serialized system font map"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7080
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    .line 7084
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_152
    iget-object v11, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v11

    .line 7090
    :try_start_155
    iget-object v0, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v12, v2, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget-object v13, v2, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v12, v13}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 7091
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, v1, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 7094
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->applyCompatConfiguration()Landroid/content/res/Configuration;

    .line 7095
    monitor-exit v11
    :try_end_16a
    .catchall {:try_start_155 .. :try_end_16a} :catchall_65f

    .line 7097
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppPackage:Ljava/lang/String;

    if-eqz v0, :cond_170

    move v0, v7

    goto :goto_171

    :cond_170
    move v0, v10

    :goto_171
    move v11, v0

    .line 7098
    .local v11, "isSdkSandbox":Z
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v2, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {v1, v0, v12, v11}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Z)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 7099
    if-eqz v11, :cond_187

    .line 7100
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v12, v2, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    iget-object v13, v2, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppPackage:Ljava/lang/String;

    invoke-virtual {v0, v12, v13}, Landroid/app/LoadedApk;->setSdkSandboxStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 7104
    :cond_187
    if-eqz v8, :cond_18e

    .line 7105
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-static {v8, v0}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V

    .line 7111
    :cond_18e
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_19e

    .line 7113
    iput-boolean v7, v1, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    .line 7114
    const/16 v0, 0xa0

    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    goto :goto_1d0

    .line 7116
    :cond_19e
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v0

    .line 7117
    .local v0, "overrideDensity":I
    if-eqz v0, :cond_1d0

    .line 7118
    const-string v12, "ActivityThread"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "override app density from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7119
    iput-boolean v7, v1, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    .line 7120
    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 7123
    .end local v0    # "overrideDensity":I
    :cond_1d0
    :goto_1d0
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v12, v2, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v12}, Landroid/app/ConfigurationController;->updateDefaultDensity(I)V

    .line 7127
    iget-object v0, v1, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string/jumbo v12, "time_12_24"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 7128
    .local v12, "use24HourSetting":Ljava/lang/String;
    const/4 v0, 0x0

    .line 7129
    .local v0, "is24Hr":Ljava/lang/Boolean;
    if-eqz v12, :cond_1f4

    .line 7130
    const-string v13, "24"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f0

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1f2

    :cond_1f0
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1f2
    move-object v0, v13

    goto :goto_1f5

    .line 7129
    :cond_1f4
    move-object v13, v0

    .line 7135
    .end local v0    # "is24Hr":Ljava/lang/Boolean;
    .local v13, "is24Hr":Ljava/lang/Boolean;
    :goto_1f5
    invoke-static {v13}, Ljava/text/DateFormat;->set24HourTimePref(Ljava/lang/Boolean;)V

    .line 7137
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->updateDebugViewAttributeState()Z

    .line 7139
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/os/StrictMode;->initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 7140
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 7142
    iget v0, v2, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    const/4 v14, 0x2

    if-eqz v0, :cond_27b

    .line 7144
    const/16 v0, 0x1fa4

    invoke-static {v0}, Landroid/os/Debug;->changeDebugPort(I)V

    .line 7145
    iget v0, v2, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    if-ne v0, v14, :cond_257

    .line 7146
    const-string v0, "ActivityThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v15, v2, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v15}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, " is waiting for the debugger on port 8100..."

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7149
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v9

    .line 7151
    .local v9, "mgr":Landroid/app/IActivityManager;
    :try_start_23b
    iget-object v0, v1, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v9, v0, v7}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_240
    .catch Landroid/os/RemoteException; {:try_start_23b .. :try_end_240} :catch_251

    .line 7154
    nop

    .line 7156
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 7159
    :try_start_244
    iget-object v0, v1, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v9, v0, v10}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_249
    .catch Landroid/os/RemoteException; {:try_start_244 .. :try_end_249} :catch_24b

    .line 7162
    nop

    .line 7164
    .end local v9    # "mgr":Landroid/app/IActivityManager;
    goto :goto_27b

    .line 7160
    .restart local v9    # "mgr":Landroid/app/IActivityManager;
    :catch_24b
    move-exception v0

    .line 7161
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 7152
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_251
    move-exception v0

    .line 7153
    .restart local v0    # "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 7165
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v9    # "mgr":Landroid/app/IActivityManager;
    :cond_257
    const-string v0, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Application "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v15, v2, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v15}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, " can be debugged on port 8100..."

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7171
    :cond_27b
    :goto_27b
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v14

    if-eqz v0, :cond_284

    move v0, v7

    goto :goto_285

    :cond_284
    move v0, v10

    :goto_285
    move v9, v0

    .line 7172
    .local v9, "isAppDebuggable":Z
    if-nez v9, :cond_293

    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v0

    if-eqz v0, :cond_291

    goto :goto_293

    :cond_291
    move v0, v10

    goto :goto_294

    :cond_293
    :goto_293
    move v0, v7

    :goto_294
    move v15, v0

    .line 7173
    .local v15, "isAppProfileable":Z
    invoke-static {v15}, Landroid/os/Trace;->setAppTracingAllowed(Z)V

    .line 7174
    if-nez v15, :cond_29e

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2a5

    :cond_29e
    iget-boolean v0, v2, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    if-eqz v0, :cond_2a5

    .line 7175
    invoke-static {}, Landroid/os/Binder;->enableStackTracking()V

    .line 7179
    :cond_2a5
    if-nez v15, :cond_2ab

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2ae

    .line 7180
    :cond_2ab
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->nInitZygoteChildHeapProfiling()V

    .line 7184
    :cond_2ae
    if-nez v9, :cond_2b7

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2b5

    goto :goto_2b7

    :cond_2b5
    move v0, v10

    goto :goto_2b8

    :cond_2b7
    :goto_2b7
    move v0, v7

    :goto_2b8
    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->setDebuggingEnabled(Z)V

    .line 7185
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->setPackageName(Ljava/lang/String;)V

    .line 7188
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->setContextForInit(Landroid/content/Context;)V

    .line 7193
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    if-eqz v0, :cond_2d3

    .line 7194
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->prepareInstrumentation(Landroid/app/ActivityThread$AppBindData;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    move-object v14, v0

    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    goto :goto_2d5

    .line 7196
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    :cond_2d3
    const/4 v0, 0x0

    move-object v14, v0

    .line 7199
    .local v14, "ii":Landroid/content/pm/InstrumentationInfo;
    :goto_2d5
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-static {v1, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v10

    .line 7200
    .local v10, "appContext":Landroid/app/ContextImpl;
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0, v10}, Landroid/app/ConfigurationController;->updateLocaleListFromAppContext(Landroid/content/Context;)V

    .line 7203
    const-string v0, "Setup proxies"

    move-object/from16 v18, v8

    .end local v8    # "agent":Ljava/lang/String;
    .local v18, "agent":Ljava/lang/String;
    const-wide/16 v7, 0x40

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7209
    :try_start_2e9
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_2ef
    .catchall {:try_start_2e9 .. :try_end_2ef} :catchall_64a

    .line 7210
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_312

    .line 7211
    :try_start_2f1
    const-class v7, Landroid/net/ConnectivityManager;

    .line 7212
    invoke-virtual {v10, v7}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 7213
    .local v7, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Proxy;->setHttpProxyConfiguration(Landroid/net/ProxyInfo;)V
    :try_end_300
    .catchall {:try_start_2f1 .. :try_end_300} :catchall_301

    goto :goto_312

    .line 7216
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v7    # "cm":Landroid/net/ConnectivityManager;
    :catchall_301
    move-exception v0

    move-wide/from16 v30, v3

    move-object/from16 v25, v6

    move/from16 v26, v9

    move/from16 v32, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_659

    :cond_312
    :goto_312
    const-wide/16 v7, 0x40

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 7217
    nop

    .line 7219
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_331

    .line 7220
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v7

    .line 7222
    .local v7, "old_mask":I
    :try_start_322
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0, v10}, Landroid/util/BoostFramework;-><init>(Landroid/content/Context;)V
    :try_end_327
    .catchall {:try_start_322 .. :try_end_327} :catchall_32c

    move-object v5, v0

    .line 7224
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 7225
    goto :goto_331

    .line 7224
    :catchall_32c
    move-exception v0

    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 7225
    throw v0

    .line 7228
    .end local v7    # "old_mask":I
    :cond_331
    :goto_331
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_349

    .line 7229
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v7

    .line 7231
    .local v7, "oldMask":I
    :try_start_33b
    invoke-direct {v1, v10}, Landroid/app/ActivityThread;->setupGraphicsSupport(Landroid/content/Context;)V
    :try_end_33e
    .catchall {:try_start_33b .. :try_end_33e} :catchall_343

    .line 7233
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 7234
    nop

    .line 7235
    .end local v7    # "oldMask":I
    goto :goto_34d

    .line 7233
    .restart local v7    # "oldMask":I
    :catchall_343
    move-exception v0

    move-object v8, v0

    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 7234
    throw v8

    .line 7236
    .end local v7    # "oldMask":I
    :cond_349
    const/4 v7, 0x1

    invoke-static {v7}, Landroid/graphics/HardwareRenderer;->setIsolatedProcess(Z)V

    .line 7242
    :goto_34d
    const-string v0, "NetworkSecurityConfigProvider.install"

    const-wide/16 v7, 0x40

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7243
    invoke-static {v10}, Landroid/security/net/config/NetworkSecurityConfigProvider;->install(Landroid/content/Context;)V

    .line 7244
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 7249
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_363

    .line 7250
    invoke-static {v10}, Landroid/net/TrafficStats;->init(Landroid/content/Context;)V

    .line 7254
    :cond_363
    if-eqz v14, :cond_369

    .line 7255
    invoke-direct {v1, v14, v2, v10}, Landroid/app/ActivityThread;->initInstrumentation(Landroid/content/pm/InstrumentationInfo;Landroid/app/ActivityThread$AppBindData;Landroid/app/ContextImpl;)V

    goto :goto_373

    .line 7257
    :cond_369
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 7258
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->basicInit(Landroid/app/ActivityThread;)V

    .line 7261
    :goto_373
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x100000

    and-int/2addr v0, v7

    if-eqz v0, :cond_384

    .line 7262
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    goto :goto_38b

    .line 7266
    :cond_384
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clampGrowthLimit()V

    .line 7270
    :goto_38b
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v0

    iget-object v7, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v10, v7}, Landroid/app/ActivityThreadStub;->judgeSystemApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    .line 7271
    invoke-static {}, Landroid/content/pm/PackageParserStub;->get()Landroid/content/pm/PackageParserStub;

    move-result-object v0

    invoke-virtual {v10}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/content/pm/PackageParserStub;->isWcgWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b3

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_3b3

    .line 7272
    invoke-static {}, Landroid/view/ScreenOptimizeObserverProxyStub;->get()Landroid/view/ScreenOptimizeObserverProxyStub;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-interface {v0, v10, v7}, Landroid/view/ScreenOptimizeObserverProxyStub;->createObserver(Landroid/content/Context;Landroid/os/Handler;)V

    .line 7274
    :cond_3b3
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/ForceDarkHelperStub;->initialize(Landroid/content/Context;)V

    .line 7275
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-nez v0, :cond_3d6

    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/app/ActivityThreadStub;->checkScoutPersistentPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d6

    .line 7276
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v0

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/app/ActivityThreadStub;->updateAppScoutStateMachineState(I)V

    .line 7284
    :cond_3d6
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v7

    .line 7285
    .local v7, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v8

    .line 7289
    .local v8, "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    move-object/from16 v25, v6

    .end local v6    # "property":Ljava/lang/String;
    .local v25, "property":Ljava/lang/String;
    :try_start_3e0
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-boolean v6, v2, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z
    :try_end_3e4
    .catchall {:try_start_3e0 .. :try_end_3e4} :catchall_627

    move/from16 v26, v9

    const/4 v9, 0x0

    .end local v9    # "isAppDebuggable":Z
    .local v26, "isAppDebuggable":Z
    :try_start_3e7
    invoke-virtual {v0, v6, v9}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    move-object v6, v0

    .line 7292
    .local v6, "app":Landroid/app/Application;
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->autofillOptions:Landroid/content/AutofillOptions;

    invoke-virtual {v6, v0}, Landroid/app/Application;->setAutofillOptions(Landroid/content/AutofillOptions;)V

    .line 7295
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->contentCaptureOptions:Landroid/content/ContentCaptureOptions;

    invoke-virtual {v6, v0}, Landroid/app/Application;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 7296
    const/16 v0, 0xa4

    iget-object v9, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v9}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 7298
    iput-object v6, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 7300
    monitor-enter p0
    :try_end_402
    .catchall {:try_start_3e7 .. :try_end_402} :catchall_61b

    .line 7301
    :try_start_402
    iget-boolean v0, v1, Landroid/app/ActivityThread;->mUpdateHttpProxyOnBind:Z

    move v9, v0

    .line 7304
    .local v9, "updateHttpProxy":Z
    monitor-exit p0
    :try_end_406
    .catchall {:try_start_402 .. :try_end_406} :catchall_60a

    .line 7305
    if-eqz v9, :cond_419

    .line 7306
    :try_start_408
    invoke-static {v6}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V
    :try_end_40b
    .catchall {:try_start_408 .. :try_end_40b} :catchall_40c

    goto :goto_419

    .line 7352
    .end local v6    # "app":Landroid/app/Application;
    .end local v9    # "updateHttpProxy":Z
    :catchall_40c
    move-exception v0

    move-wide/from16 v30, v3

    move/from16 v32, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_634

    .line 7311
    .restart local v6    # "app":Landroid/app/Application;
    .restart local v9    # "updateHttpProxy":Z
    :cond_419
    :goto_419
    :try_start_419
    iget-boolean v0, v2, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z
    :try_end_41b
    .catchall {:try_start_419 .. :try_end_41b} :catchall_61b

    if-nez v0, :cond_42a

    .line 7312
    :try_start_41d
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_42a

    .line 7313
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-direct {v1, v6, v0}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    :try_end_42a
    .catchall {:try_start_41d .. :try_end_42a} :catchall_40c

    .line 7321
    :cond_42a
    :try_start_42a
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    sget-boolean v0, Lcom/miui/autoui/MIUIAutoUIManagerStub;->IS_AUTO_UI_ENABLED:Z
    :try_end_42f
    .catch Ljava/lang/Exception; {:try_start_42a .. :try_end_42f} :catch_5d4
    .catchall {:try_start_42a .. :try_end_42f} :catchall_61b

    if-eqz v0, :cond_448

    .line 7322
    :try_start_431
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->init(Landroid/content/Context;)V
    :try_end_438
    .catch Ljava/lang/Exception; {:try_start_431 .. :try_end_438} :catch_439
    .catchall {:try_start_431 .. :try_end_438} :catchall_40c

    goto :goto_448

    .line 7327
    :catch_439
    move-exception v0

    move-wide/from16 v30, v3

    move/from16 v16, v9

    move/from16 v32, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_5e1

    .line 7325
    :cond_448
    :goto_448
    :try_start_448
    iget-object v0, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_44a
    .catch Ljava/lang/Exception; {:try_start_448 .. :try_end_44a} :catch_5d4
    .catchall {:try_start_448 .. :try_end_44a} :catchall_61b

    move/from16 v16, v9

    .end local v9    # "updateHttpProxy":Z
    .local v16, "updateHttpProxy":Z
    :try_start_44c
    iget-object v9, v2, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v9}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_451
    .catch Ljava/lang/Exception; {:try_start_44c .. :try_end_451} :catch_5c8
    .catchall {:try_start_44c .. :try_end_451} :catchall_61b

    .line 7331
    nop

    .line 7333
    :try_start_452
    const-string v0, "app.onCreate"
    :try_end_454
    .catch Ljava/lang/Exception; {:try_start_452 .. :try_end_454} :catch_47f
    .catchall {:try_start_452 .. :try_end_454} :catchall_472

    move v9, v11

    move-object/from16 v27, v12

    const-wide/16 v11, 0x40

    .end local v11    # "isSdkSandbox":Z
    .end local v12    # "use24HourSetting":Ljava/lang/String;
    .local v9, "isSdkSandbox":Z
    .local v27, "use24HourSetting":Ljava/lang/String;
    :try_start_459
    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7334
    iget-object v0, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, v6}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 7335
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_464
    .catch Ljava/lang/Exception; {:try_start_459 .. :try_end_464} :catch_470
    .catchall {:try_start_459 .. :try_end_464} :catchall_465

    .line 7342
    goto :goto_48b

    .line 7352
    .end local v6    # "app":Landroid/app/Application;
    .end local v16    # "updateHttpProxy":Z
    :catchall_465
    move-exception v0

    move-wide/from16 v30, v3

    move/from16 v32, v9

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_634

    .line 7336
    .restart local v6    # "app":Landroid/app/Application;
    .restart local v16    # "updateHttpProxy":Z
    :catch_470
    move-exception v0

    goto :goto_483

    .line 7352
    .end local v6    # "app":Landroid/app/Application;
    .end local v9    # "isSdkSandbox":Z
    .end local v16    # "updateHttpProxy":Z
    .end local v27    # "use24HourSetting":Ljava/lang/String;
    .restart local v11    # "isSdkSandbox":Z
    .restart local v12    # "use24HourSetting":Ljava/lang/String;
    :catchall_472
    move-exception v0

    move-object/from16 v27, v12

    move-wide/from16 v30, v3

    move/from16 v32, v11

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    .end local v11    # "isSdkSandbox":Z
    .end local v12    # "use24HourSetting":Ljava/lang/String;
    .restart local v9    # "isSdkSandbox":Z
    .restart local v27    # "use24HourSetting":Ljava/lang/String;
    goto/16 :goto_634

    .line 7336
    .end local v9    # "isSdkSandbox":Z
    .end local v27    # "use24HourSetting":Ljava/lang/String;
    .restart local v6    # "app":Landroid/app/Application;
    .restart local v11    # "isSdkSandbox":Z
    .restart local v12    # "use24HourSetting":Ljava/lang/String;
    .restart local v16    # "updateHttpProxy":Z
    :catch_47f
    move-exception v0

    move v9, v11

    move-object/from16 v27, v12

    .line 7337
    .end local v11    # "isSdkSandbox":Z
    .end local v12    # "use24HourSetting":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v9    # "isSdkSandbox":Z
    .restart local v27    # "use24HourSetting":Ljava/lang/String;
    :goto_483
    :try_start_483
    iget-object v11, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v11, v6, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v11

    if-eqz v11, :cond_586

    .line 7345
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_48b
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0
    :try_end_48f
    .catchall {:try_start_483 .. :try_end_48f} :catchall_5bd

    if-nez v0, :cond_49c

    :try_start_491
    iget-boolean v0, v1, Landroid/app/ActivityThread;->mIsEmbedded:Z

    if-eqz v0, :cond_49c

    .line 7346
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v0

    invoke-interface {v0}, Lmiui/window/MiuiEmbeddingWindowStub;->initSystemRules()V
    :try_end_49c
    .catchall {:try_start_491 .. :try_end_49c} :catchall_465

    .line 7352
    .end local v16    # "updateHttpProxy":Z
    :cond_49c
    iget-object v0, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0x1b

    if-lt v0, v11, :cond_4ae

    .line 7353
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b1

    .line 7354
    :cond_4ae
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 7359
    :cond_4b1
    invoke-static {v10}, Landroid/provider/FontsContract;->setApplicationContextForResources(Landroid/content/Context;)V

    .line 7360
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_4fa

    .line 7363
    :try_start_4ba
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v11, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_4c2
    .catch Landroid/os/RemoteException; {:try_start_4ba .. :try_end_4c2} :catch_4f0

    move-object/from16 v28, v13

    .line 7366
    .end local v13    # "is24Hr":Ljava/lang/Boolean;
    .local v28, "is24Hr":Ljava/lang/Boolean;
    :try_start_4c4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12
    :try_end_4c8
    .catch Landroid/os/RemoteException; {:try_start_4c4 .. :try_end_4c8} :catch_4ec

    .line 7363
    move-object/from16 v29, v14

    const-wide/16 v13, 0x80

    .end local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    .local v29, "ii":Landroid/content/pm/InstrumentationInfo;
    :try_start_4cc
    invoke-interface {v0, v11, v13, v14, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 7367
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v11, :cond_4e9

    .line 7368
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v12, "preloaded_fonts"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 7370
    .local v11, "preloadedFontsResource":I
    if-eqz v11, :cond_4e9

    .line 7371
    iget-object v12, v2, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v12}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->preloadFonts(I)V
    :try_end_4e9
    .catch Landroid/os/RemoteException; {:try_start_4cc .. :try_end_4e9} :catch_4ea

    .line 7376
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "preloadedFontsResource":I
    :cond_4e9
    goto :goto_4fe

    .line 7374
    :catch_4ea
    move-exception v0

    goto :goto_4f5

    .end local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    :catch_4ec
    move-exception v0

    move-object/from16 v29, v14

    .end local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    goto :goto_4f5

    .end local v28    # "is24Hr":Ljava/lang/Boolean;
    .end local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v13    # "is24Hr":Ljava/lang/Boolean;
    .restart local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    :catch_4f0
    move-exception v0

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    .line 7375
    .end local v13    # "is24Hr":Ljava/lang/Boolean;
    .end local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v28    # "is24Hr":Ljava/lang/Boolean;
    .restart local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    :goto_4f5
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v11

    throw v11

    .line 7360
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v28    # "is24Hr":Ljava/lang/Boolean;
    .end local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v13    # "is24Hr":Ljava/lang/Boolean;
    .restart local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    :cond_4fa
    move-object/from16 v28, v13

    move-object/from16 v29, v14

    .line 7378
    .end local v13    # "is24Hr":Ljava/lang/Boolean;
    .end local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v28    # "is24Hr":Ljava/lang/Boolean;
    .restart local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    :goto_4fe
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 7379
    .local v11, "end_bindApp":J
    sub-long v13, v11, v3

    long-to-int v13, v13

    .line 7380
    .local v13, "bindApp_dur":I
    const/4 v0, 0x0

    .line 7381
    .local v0, "pkg_name":Ljava/lang/String;
    if-eqz v10, :cond_50e

    .line 7382
    invoke-virtual {v10}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_50f

    .line 7381
    :cond_50e
    move-object v14, v0

    .line 7384
    .end local v0    # "pkg_name":Ljava/lang/String;
    .local v14, "pkg_name":Ljava/lang/String;
    :goto_50f
    if-eqz v5, :cond_57a

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_57a

    if-eqz v14, :cond_57a

    .line 7385
    const/16 v16, 0x0

    .line 7388
    .local v16, "pkgDir":Ljava/lang/String;
    :try_start_51b
    invoke-virtual {v10}, Landroid/app/ContextImpl;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0
    :try_end_51f
    .catch Ljava/lang/Exception; {:try_start_51b .. :try_end_51f} :catch_533

    .line 7389
    .local v0, "codePath":Ljava/lang/String;
    move-wide/from16 v30, v3

    .end local v3    # "st_bindApp":J
    .local v30, "st_bindApp":J
    const/16 v3, 0x2f

    :try_start_523
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_52c
    .catch Ljava/lang/Exception; {:try_start_523 .. :try_end_52c} :catch_531

    move-object/from16 v16, v3

    .line 7394
    .end local v0    # "codePath":Ljava/lang/String;
    move/from16 v32, v9

    goto :goto_550

    .line 7391
    :catch_531
    move-exception v0

    goto :goto_536

    .end local v30    # "st_bindApp":J
    .restart local v3    # "st_bindApp":J
    :catch_533
    move-exception v0

    move-wide/from16 v30, v3

    .line 7393
    .end local v3    # "st_bindApp":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v30    # "st_bindApp":J
    :goto_536
    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v32, v9

    .end local v9    # "isSdkSandbox":Z
    .local v32, "isSdkSandbox":Z
    const-string v9, "HeavyGameThread () : Exception_1 = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7395
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_550
    iget v0, v5, Landroid/util/BoostFramework;->board_first_api_lvl:I

    const/16 v3, 0x21

    if-ge v0, v3, :cond_56a

    iget v0, v5, Landroid/util/BoostFramework;->board_api_lvl:I

    if-ge v0, v3, :cond_56a

    .line 7397
    const/16 v20, 0x2

    const/16 v21, 0x0

    move-object/from16 v19, v5

    move-object/from16 v22, v14

    move/from16 v23, v13

    move-object/from16 v24, v16

    invoke-virtual/range {v19 .. v24}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;ILjava/lang/String;)I

    goto :goto_57e

    .line 7402
    :cond_56a
    const/16 v0, 0x10a0

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v9, 0x0

    aput v13, v4, v9

    const/16 v17, 0x1

    aput v9, v4, v17

    invoke-virtual {v5, v0, v14, v3, v4}, Landroid/util/BoostFramework;->perfEvent(ILjava/lang/String;I[I)V

    goto :goto_57e

    .line 7384
    .end local v16    # "pkgDir":Ljava/lang/String;
    .end local v30    # "st_bindApp":J
    .end local v32    # "isSdkSandbox":Z
    .restart local v3    # "st_bindApp":J
    .restart local v9    # "isSdkSandbox":Z
    :cond_57a
    move-wide/from16 v30, v3

    move/from16 v32, v9

    .line 7407
    .end local v3    # "st_bindApp":J
    .end local v9    # "isSdkSandbox":Z
    .restart local v30    # "st_bindApp":J
    .restart local v32    # "isSdkSandbox":Z
    :goto_57e
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/app/ActivityThreadStub;->initMiuiFreeDrag(Landroid/content/Context;)V

    .line 7408
    return-void

    .line 7338
    .end local v11    # "end_bindApp":J
    .end local v28    # "is24Hr":Ljava/lang/Boolean;
    .end local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v30    # "st_bindApp":J
    .end local v32    # "isSdkSandbox":Z
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "st_bindApp":J
    .restart local v9    # "isSdkSandbox":Z
    .local v13, "is24Hr":Ljava/lang/Boolean;
    .local v14, "ii":Landroid/content/pm/InstrumentationInfo;
    .local v16, "updateHttpProxy":Z
    :cond_586
    move-wide/from16 v30, v3

    move/from16 v32, v9

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    .end local v3    # "st_bindApp":J
    .end local v9    # "isSdkSandbox":Z
    .end local v13    # "is24Hr":Ljava/lang/Boolean;
    .end local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v28    # "is24Hr":Ljava/lang/Boolean;
    .restart local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v30    # "st_bindApp":J
    .restart local v32    # "isSdkSandbox":Z
    :try_start_58e
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to create application "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 7339
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ": "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 7340
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "ux_perf":Landroid/util/BoostFramework;
    .end local v7    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v8    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v10    # "appContext":Landroid/app/ContextImpl;
    .end local v15    # "isAppProfileable":Z
    .end local v18    # "agent":Ljava/lang/String;
    .end local v25    # "property":Ljava/lang/String;
    .end local v26    # "isAppDebuggable":Z
    .end local v27    # "use24HourSetting":Ljava/lang/String;
    .end local v28    # "is24Hr":Ljava/lang/Boolean;
    .end local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v30    # "st_bindApp":J
    .end local v32    # "isSdkSandbox":Z
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    throw v3

    .line 7352
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "app":Landroid/app/Application;
    .end local v16    # "updateHttpProxy":Z
    .restart local v3    # "st_bindApp":J
    .restart local v5    # "ux_perf":Landroid/util/BoostFramework;
    .restart local v7    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v8    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v9    # "isSdkSandbox":Z
    .restart local v10    # "appContext":Landroid/app/ContextImpl;
    .restart local v13    # "is24Hr":Ljava/lang/Boolean;
    .restart local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v15    # "isAppProfileable":Z
    .restart local v18    # "agent":Ljava/lang/String;
    .restart local v25    # "property":Ljava/lang/String;
    .restart local v26    # "isAppDebuggable":Z
    .restart local v27    # "use24HourSetting":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :catchall_5bd
    move-exception v0

    move-wide/from16 v30, v3

    move/from16 v32, v9

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    .end local v3    # "st_bindApp":J
    .end local v9    # "isSdkSandbox":Z
    .end local v13    # "is24Hr":Ljava/lang/Boolean;
    .end local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v28    # "is24Hr":Ljava/lang/Boolean;
    .restart local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v30    # "st_bindApp":J
    .restart local v32    # "isSdkSandbox":Z
    goto/16 :goto_634

    .line 7327
    .end local v27    # "use24HourSetting":Ljava/lang/String;
    .end local v28    # "is24Hr":Ljava/lang/Boolean;
    .end local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v30    # "st_bindApp":J
    .end local v32    # "isSdkSandbox":Z
    .restart local v3    # "st_bindApp":J
    .restart local v6    # "app":Landroid/app/Application;
    .local v11, "isSdkSandbox":Z
    .restart local v12    # "use24HourSetting":Ljava/lang/String;
    .restart local v13    # "is24Hr":Ljava/lang/Boolean;
    .restart local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v16    # "updateHttpProxy":Z
    :catch_5c8
    move-exception v0

    move-wide/from16 v30, v3

    move/from16 v32, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    .end local v3    # "st_bindApp":J
    .end local v11    # "isSdkSandbox":Z
    .end local v12    # "use24HourSetting":Ljava/lang/String;
    .end local v13    # "is24Hr":Ljava/lang/Boolean;
    .end local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v27    # "use24HourSetting":Ljava/lang/String;
    .restart local v28    # "is24Hr":Ljava/lang/Boolean;
    .restart local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v30    # "st_bindApp":J
    .restart local v32    # "isSdkSandbox":Z
    goto :goto_5e1

    .end local v16    # "updateHttpProxy":Z
    .end local v27    # "use24HourSetting":Ljava/lang/String;
    .end local v28    # "is24Hr":Ljava/lang/Boolean;
    .end local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v30    # "st_bindApp":J
    .end local v32    # "isSdkSandbox":Z
    .restart local v3    # "st_bindApp":J
    .local v9, "updateHttpProxy":Z
    .restart local v11    # "isSdkSandbox":Z
    .restart local v12    # "use24HourSetting":Ljava/lang/String;
    .restart local v13    # "is24Hr":Ljava/lang/Boolean;
    .restart local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    :catch_5d4
    move-exception v0

    move-wide/from16 v30, v3

    move/from16 v16, v9

    move/from16 v32, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    .line 7328
    .end local v3    # "st_bindApp":J
    .end local v9    # "updateHttpProxy":Z
    .end local v11    # "isSdkSandbox":Z
    .end local v12    # "use24HourSetting":Ljava/lang/String;
    .end local v13    # "is24Hr":Ljava/lang/Boolean;
    .end local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v16    # "updateHttpProxy":Z
    .restart local v27    # "use24HourSetting":Ljava/lang/String;
    .restart local v28    # "is24Hr":Ljava/lang/Boolean;
    .restart local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v30    # "st_bindApp":J
    .restart local v32    # "isSdkSandbox":Z
    :goto_5e1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception thrown in onCreate() of "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v2, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ": "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 7330
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "ux_perf":Landroid/util/BoostFramework;
    .end local v7    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v8    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v10    # "appContext":Landroid/app/ContextImpl;
    .end local v15    # "isAppProfileable":Z
    .end local v18    # "agent":Ljava/lang/String;
    .end local v25    # "property":Ljava/lang/String;
    .end local v26    # "isAppDebuggable":Z
    .end local v27    # "use24HourSetting":Ljava/lang/String;
    .end local v28    # "is24Hr":Ljava/lang/Boolean;
    .end local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v30    # "st_bindApp":J
    .end local v32    # "isSdkSandbox":Z
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    throw v3
    :try_end_60a
    .catchall {:try_start_58e .. :try_end_60a} :catchall_617

    .line 7304
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "updateHttpProxy":Z
    .restart local v3    # "st_bindApp":J
    .restart local v5    # "ux_perf":Landroid/util/BoostFramework;
    .restart local v7    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v8    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v10    # "appContext":Landroid/app/ContextImpl;
    .restart local v11    # "isSdkSandbox":Z
    .restart local v12    # "use24HourSetting":Ljava/lang/String;
    .restart local v13    # "is24Hr":Ljava/lang/Boolean;
    .restart local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v15    # "isAppProfileable":Z
    .restart local v18    # "agent":Ljava/lang/String;
    .restart local v25    # "property":Ljava/lang/String;
    .restart local v26    # "isAppDebuggable":Z
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :catchall_60a
    move-exception v0

    move-wide/from16 v30, v3

    move/from16 v32, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    .end local v3    # "st_bindApp":J
    .end local v11    # "isSdkSandbox":Z
    .end local v12    # "use24HourSetting":Ljava/lang/String;
    .end local v13    # "is24Hr":Ljava/lang/Boolean;
    .end local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v27    # "use24HourSetting":Ljava/lang/String;
    .restart local v28    # "is24Hr":Ljava/lang/Boolean;
    .restart local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v30    # "st_bindApp":J
    .restart local v32    # "isSdkSandbox":Z
    :goto_615
    :try_start_615
    monitor-exit p0
    :try_end_616
    .catchall {:try_start_615 .. :try_end_616} :catchall_619

    .end local v5    # "ux_perf":Landroid/util/BoostFramework;
    .end local v7    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v8    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v10    # "appContext":Landroid/app/ContextImpl;
    .end local v15    # "isAppProfileable":Z
    .end local v18    # "agent":Ljava/lang/String;
    .end local v25    # "property":Ljava/lang/String;
    .end local v26    # "isAppDebuggable":Z
    .end local v27    # "use24HourSetting":Ljava/lang/String;
    .end local v28    # "is24Hr":Ljava/lang/Boolean;
    .end local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v30    # "st_bindApp":J
    .end local v32    # "isSdkSandbox":Z
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :try_start_616
    throw v0
    :try_end_617
    .catchall {:try_start_616 .. :try_end_617} :catchall_617

    .line 7352
    .end local v6    # "app":Landroid/app/Application;
    .restart local v5    # "ux_perf":Landroid/util/BoostFramework;
    .restart local v7    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v8    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v10    # "appContext":Landroid/app/ContextImpl;
    .restart local v15    # "isAppProfileable":Z
    .restart local v18    # "agent":Ljava/lang/String;
    .restart local v25    # "property":Ljava/lang/String;
    .restart local v26    # "isAppDebuggable":Z
    .restart local v27    # "use24HourSetting":Ljava/lang/String;
    .restart local v28    # "is24Hr":Ljava/lang/Boolean;
    .restart local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v30    # "st_bindApp":J
    .restart local v32    # "isSdkSandbox":Z
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :catchall_617
    move-exception v0

    goto :goto_634

    .line 7304
    .restart local v6    # "app":Landroid/app/Application;
    :catchall_619
    move-exception v0

    goto :goto_615

    .line 7352
    .end local v6    # "app":Landroid/app/Application;
    .end local v27    # "use24HourSetting":Ljava/lang/String;
    .end local v28    # "is24Hr":Ljava/lang/Boolean;
    .end local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v30    # "st_bindApp":J
    .end local v32    # "isSdkSandbox":Z
    .restart local v3    # "st_bindApp":J
    .restart local v11    # "isSdkSandbox":Z
    .restart local v12    # "use24HourSetting":Ljava/lang/String;
    .restart local v13    # "is24Hr":Ljava/lang/Boolean;
    .restart local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    :catchall_61b
    move-exception v0

    move-wide/from16 v30, v3

    move/from16 v32, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    .end local v3    # "st_bindApp":J
    .end local v11    # "isSdkSandbox":Z
    .end local v12    # "use24HourSetting":Ljava/lang/String;
    .end local v13    # "is24Hr":Ljava/lang/Boolean;
    .end local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v27    # "use24HourSetting":Ljava/lang/String;
    .restart local v28    # "is24Hr":Ljava/lang/Boolean;
    .restart local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v30    # "st_bindApp":J
    .restart local v32    # "isSdkSandbox":Z
    goto :goto_634

    .end local v26    # "isAppDebuggable":Z
    .end local v27    # "use24HourSetting":Ljava/lang/String;
    .end local v28    # "is24Hr":Ljava/lang/Boolean;
    .end local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v30    # "st_bindApp":J
    .end local v32    # "isSdkSandbox":Z
    .restart local v3    # "st_bindApp":J
    .local v9, "isAppDebuggable":Z
    .restart local v11    # "isSdkSandbox":Z
    .restart local v12    # "use24HourSetting":Ljava/lang/String;
    .restart local v13    # "is24Hr":Ljava/lang/Boolean;
    .restart local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    :catchall_627
    move-exception v0

    move-wide/from16 v30, v3

    move/from16 v26, v9

    move/from16 v32, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    .end local v3    # "st_bindApp":J
    .end local v9    # "isAppDebuggable":Z
    .end local v11    # "isSdkSandbox":Z
    .end local v12    # "use24HourSetting":Ljava/lang/String;
    .end local v13    # "is24Hr":Ljava/lang/Boolean;
    .end local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v26    # "isAppDebuggable":Z
    .restart local v27    # "use24HourSetting":Ljava/lang/String;
    .restart local v28    # "is24Hr":Ljava/lang/Boolean;
    .restart local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v30    # "st_bindApp":J
    .restart local v32    # "isSdkSandbox":Z
    :goto_634
    iget-object v3, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_646

    .line 7353
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_649

    .line 7354
    :cond_646
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 7356
    :cond_649
    throw v0

    .line 7216
    .end local v7    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v8    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v25    # "property":Ljava/lang/String;
    .end local v26    # "isAppDebuggable":Z
    .end local v27    # "use24HourSetting":Ljava/lang/String;
    .end local v28    # "is24Hr":Ljava/lang/Boolean;
    .end local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v30    # "st_bindApp":J
    .end local v32    # "isSdkSandbox":Z
    .restart local v3    # "st_bindApp":J
    .local v6, "property":Ljava/lang/String;
    .restart local v9    # "isAppDebuggable":Z
    .restart local v11    # "isSdkSandbox":Z
    .restart local v12    # "use24HourSetting":Ljava/lang/String;
    .restart local v13    # "is24Hr":Ljava/lang/Boolean;
    .restart local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    :catchall_64a
    move-exception v0

    move-wide/from16 v30, v3

    move-object/from16 v25, v6

    move/from16 v26, v9

    move/from16 v32, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    .end local v3    # "st_bindApp":J
    .end local v6    # "property":Ljava/lang/String;
    .end local v9    # "isAppDebuggable":Z
    .end local v11    # "isSdkSandbox":Z
    .end local v12    # "use24HourSetting":Ljava/lang/String;
    .end local v13    # "is24Hr":Ljava/lang/Boolean;
    .end local v14    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v25    # "property":Ljava/lang/String;
    .restart local v26    # "isAppDebuggable":Z
    .restart local v27    # "use24HourSetting":Ljava/lang/String;
    .restart local v28    # "is24Hr":Ljava/lang/Boolean;
    .restart local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v30    # "st_bindApp":J
    .restart local v32    # "isSdkSandbox":Z
    :goto_659
    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 7217
    throw v0

    .line 7095
    .end local v10    # "appContext":Landroid/app/ContextImpl;
    .end local v15    # "isAppProfileable":Z
    .end local v18    # "agent":Ljava/lang/String;
    .end local v25    # "property":Ljava/lang/String;
    .end local v26    # "isAppDebuggable":Z
    .end local v27    # "use24HourSetting":Ljava/lang/String;
    .end local v28    # "is24Hr":Ljava/lang/Boolean;
    .end local v29    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v30    # "st_bindApp":J
    .end local v32    # "isSdkSandbox":Z
    .restart local v3    # "st_bindApp":J
    .restart local v6    # "property":Ljava/lang/String;
    .local v8, "agent":Ljava/lang/String;
    :catchall_65f
    move-exception v0

    move-wide/from16 v30, v3

    move-object/from16 v25, v6

    move-object/from16 v18, v8

    .end local v3    # "st_bindApp":J
    .end local v6    # "property":Ljava/lang/String;
    .end local v8    # "agent":Ljava/lang/String;
    .restart local v18    # "agent":Ljava/lang/String;
    .restart local v25    # "property":Ljava/lang/String;
    .restart local v30    # "st_bindApp":J
    :goto_666
    :try_start_666
    monitor-exit v11
    :try_end_667
    .catchall {:try_start_666 .. :try_end_667} :catchall_668

    throw v0

    :catchall_668
    move-exception v0

    goto :goto_666
.end method

.method private greylist-max-o handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .registers 8
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .line 4800
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    .line 4801
    .local v0, "createData":Landroid/app/ActivityThread$CreateServiceData;
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 4802
    .local v1, "s":Landroid/app/Service;
    sget-boolean v2, Landroid/app/ActivityThread;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_3c

    .line 4803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBindService s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rebind="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityThread"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4804
    :cond_3c
    if-eqz v1, :cond_c0

    .line 4806
    :try_start_3e
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4807
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    .line 4808
    invoke-virtual {v1}, Landroid/app/Service;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 4807
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_56} :catch_83

    .line 4810
    :try_start_56
    iget-boolean v2, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    if-nez v2, :cond_6c

    .line 4811
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v2

    .line 4812
    .local v2, "binder":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v2}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 4814
    .end local v2    # "binder":Landroid/os/IBinder;
    goto :goto_7b

    .line 4815
    :cond_6c
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 4816
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v4, v4}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_7b} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_7b} :catch_83

    .line 4821
    :goto_7b
    nop

    .line 4828
    goto :goto_c0

    .line 4819
    :catch_7d
    move-exception v2

    .line 4820
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_7e
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .end local v1    # "s":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$BindServiceData;
    throw v3
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_83} :catch_83

    .line 4822
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .restart local v1    # "s":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$BindServiceData;
    :catch_83
    move-exception v2

    .line 4823
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_8d

    goto :goto_c0

    .line 4824
    :cond_8d
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4826
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 4830
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_c0
    :goto_c0
    return-void
.end method

.method private greylist-max-o handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 13
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 4624
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BACKUP:Z

    const-string v1, "ActivityThread"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCreateBackupAgent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4628
    :cond_1c
    :try_start_1c
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 4629
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 4628
    invoke-interface {v0, v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4630
    .local v0, "requestedPackage":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v2, v3, :cond_53

    .line 4631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asked to instantiate non-matching package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_52} :catch_131

    .line 4633
    return-void

    .line 4637
    .end local v0    # "requestedPackage":Landroid/content/pm/PackageInfo;
    :cond_53
    nop

    .line 4640
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4643
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0, v2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 4644
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    iget-object v2, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 4645
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_69

    .line 4646
    const-string v3, "Asked to create backup agent for nonexistent package"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    return-void

    .line 4650
    :cond_69
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->getBackupAgentName(Landroid/app/ActivityThread$CreateBackupAgentData;)Ljava/lang/String;

    move-result-object v3

    .line 4653
    .local v3, "classname":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4654
    .local v4, "binder":Landroid/os/IBinder;
    :try_start_6e
    iget v5, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-direct {p0, v5}, Landroid/app/ActivityThread;->getBackupAgentsForUser(I)Landroid/util/ArrayMap;

    move-result-object v5

    .line 4655
    .local v5, "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/backup/BackupAgent;

    .line 4656
    .local v6, "agent":Landroid/app/backup/BackupAgent;
    if-eqz v6, :cond_8a

    .line 4658
    sget-boolean v7, Landroid/app/ActivityThread;->DEBUG_BACKUP:Z

    if-eqz v7, :cond_85

    .line 4659
    const-string v7, "Reusing existing agent instance"

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    :cond_85
    invoke-virtual {v6}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v1
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_89} :catch_109

    .end local v4    # "binder":Landroid/os/IBinder;
    .local v1, "binder":Landroid/os/IBinder;
    goto :goto_f7

    .line 4664
    .end local v1    # "binder":Landroid/os/IBinder;
    .restart local v4    # "binder":Landroid/os/IBinder;
    :cond_8a
    :try_start_8a
    sget-boolean v7, Landroid/app/ActivityThread;->DEBUG_BACKUP:Z

    if-eqz v7, :cond_a4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initializing agent class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4666
    :cond_a4
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 4667
    .local v7, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v7, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/backup/BackupAgent;

    move-object v6, v8

    .line 4670
    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v8

    .line 4671
    .local v8, "context":Landroid/app/ContextImpl;
    invoke-virtual {v8, v6}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 4672
    invoke-virtual {v6, v8}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 4674
    iget v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    iget v10, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->operationType:I

    invoke-virtual {v6, v9, v10}, Landroid/app/backup/BackupAgent;->onCreate(Landroid/os/UserHandle;I)V

    .line 4675
    invoke-virtual {v6}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v9

    move-object v4, v9

    .line 4676
    invoke-virtual {v5, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_d0} :catch_d2

    .line 4687
    .end local v7    # "cl":Ljava/lang/ClassLoader;
    .end local v8    # "context":Landroid/app/ContextImpl;
    move-object v1, v4

    goto :goto_f7

    .line 4677
    :catch_d2
    move-exception v7

    .line 4680
    .local v7, "e":Ljava/lang/Exception;
    :try_start_d3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Agent threw during creation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4681
    iget v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v8, 0x2

    if-eq v1, v8, :cond_f6

    iget v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v8, 0x3

    if-ne v1, v8, :cond_f4

    goto :goto_f6

    .line 4684
    :cond_f4
    nop

    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "classname":Ljava/lang/String;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$CreateBackupAgentData;
    throw v7
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_f6} :catch_109

    .line 4692
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "classname":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$CreateBackupAgentData;
    :cond_f6
    :goto_f6
    move-object v1, v4

    .end local v4    # "binder":Landroid/os/IBinder;
    .restart local v1    # "binder":Landroid/os/IBinder;
    :goto_f7
    :try_start_f7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget v7, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-interface {v4, v2, v1, v7}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_100
    .catch Landroid/os/RemoteException; {:try_start_f7 .. :try_end_100} :catch_103
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_100} :catch_109

    .line 4695
    nop

    .line 4699
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v5    # "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    .end local v6    # "agent":Landroid/app/backup/BackupAgent;
    nop

    .line 4700
    return-void

    .line 4693
    .restart local v1    # "binder":Landroid/os/IBinder;
    .restart local v5    # "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    .restart local v6    # "agent":Landroid/app/backup/BackupAgent;
    :catch_103
    move-exception v4

    .line 4694
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_104
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "classname":Ljava/lang/String;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$CreateBackupAgentData;
    throw v7
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_109} :catch_109

    .line 4696
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    .end local v6    # "agent":Landroid/app/backup/BackupAgent;
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "classname":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$CreateBackupAgentData;
    :catch_109
    move-exception v1

    .line 4697
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create BackupAgent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4698
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4635
    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "classname":Ljava/lang/String;
    :catch_131
    move-exception v0

    .line 4636
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .registers 14
    .param p1, "data"    # Landroid/app/ActivityThread$CreateServiceData;

    .line 4746
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4748
    iget-object v0, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 4750
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    const/4 v1, 0x0

    .line 4752
    .local v1, "service":Landroid/app/Service;
    :try_start_e
    sget-boolean v2, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v2, :cond_2e

    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    :cond_2e
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v9

    .line 4757
    .local v9, "app":Landroid/app/Application;
    iget-object v2, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v2, :cond_44

    .line 4758
    iget-object v2, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/LoadedApk;->getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v2

    .local v2, "cl":Ljava/lang/ClassLoader;
    goto :goto_48

    .line 4760
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    :cond_44
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 4762
    .restart local v2    # "cl":Ljava/lang/ClassLoader;
    :goto_48
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/ActivityThread$CreateServiceData;->intent:Landroid/content/Intent;

    .line 4763
    invoke-virtual {v4, v2, v5, v6}, Landroid/app/AppComponentFactory;->instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;

    move-result-object v4

    move-object v1, v4

    .line 4764
    nop

    .line 4765
    invoke-virtual {v1, p0, v0}, Landroid/app/Service;->createServiceBaseContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/content/Context;

    move-result-object v4

    .line 4764
    invoke-static {v4}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    move-result-object v4

    .line 4766
    .local v4, "context":Landroid/app/ContextImpl;
    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v5, :cond_71

    .line 4767
    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/ContextImpl;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/ContextImpl;

    move-object v4, v5

    .line 4769
    :cond_71
    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->attributionTags:[Ljava/lang/String;

    if-eqz v5, :cond_8d

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->attributionTags:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_8d

    .line 4770
    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->attributionTags:[Ljava/lang/String;

    aget-object v5, v5, v3

    .line 4771
    .local v5, "attributionTag":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/app/ContextImpl;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/ContextImpl;

    move-object v4, v6

    move-object v11, v4

    goto :goto_8e

    .line 4775
    .end local v5    # "attributionTag":Ljava/lang/String;
    :cond_8d
    move-object v11, v4

    .end local v4    # "context":Landroid/app/ContextImpl;
    .local v11, "context":Landroid/app/ContextImpl;
    :goto_8e
    invoke-virtual {v11}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 4776
    invoke-virtual {v9}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v5

    new-array v6, v3, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/res/loader/ResourcesLoader;

    .line 4775
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 4778
    invoke-virtual {v11, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 4779
    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v8, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 4780
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v10

    .line 4779
    move-object v4, v1

    move-object v5, v11

    move-object v6, p0

    invoke-virtual/range {v4 .. v10}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 4781
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    .line 4782
    iget-object v4, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4783
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_c9} :catch_da

    .line 4785
    :try_start_c9
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-interface {v4, v5, v3, v3, v3}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_c9 .. :try_end_d2} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d2} :catch_da

    .line 4789
    nop

    .line 4796
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v9    # "app":Landroid/app/Application;
    .end local v11    # "context":Landroid/app/ContextImpl;
    goto :goto_e3

    .line 4787
    .restart local v2    # "cl":Ljava/lang/ClassLoader;
    .restart local v9    # "app":Landroid/app/Application;
    .restart local v11    # "context":Landroid/app/ContextImpl;
    :catch_d4
    move-exception v3

    .line 4788
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_d5
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v1    # "service":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$CreateServiceData;
    throw v4
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_da} :catch_da

    .line 4790
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "app":Landroid/app/Application;
    .end local v11    # "context":Landroid/app/ContextImpl;
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v1    # "service":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$CreateServiceData;
    :catch_da
    move-exception v2

    .line 4791
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 4797
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_e3
    return-void

    .line 4792
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_e4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4794
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private greylist-max-o handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 10
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 4714
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BACKUP:Z

    const-string v1, "ActivityThread"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDestroyBackupAgent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4716
    :cond_1c
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0, v2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 4717
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    iget-object v2, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 4718
    .local v2, "packageName":Ljava/lang/String;
    iget v3, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-direct {p0, v3}, Landroid/app/ActivityThread;->getBackupAgentsForUser(I)Landroid/util/ArrayMap;

    move-result-object v3

    .line 4719
    .local v3, "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/backup/BackupAgent;

    .line 4720
    .local v4, "agent":Landroid/app/backup/BackupAgent;
    if-eqz v4, :cond_58

    .line 4722
    :try_start_34
    invoke-virtual {v4}, Landroid/app/backup/BackupAgent;->onDestroy()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38

    .line 4726
    goto :goto_54

    .line 4723
    :catch_38
    move-exception v5

    .line 4724
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown in onDestroy by backup agent of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 4727
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_54
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6e

    .line 4729
    :cond_58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to destroy unknown backup agent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4731
    :goto_6e
    return-void
.end method

.method private greylist-max-o handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 9
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 4908
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4911
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    invoke-static {}, Landroid/util/MiuiAppSizeCompatModeStub;->get()Landroid/util/MiuiAppSizeCompatModeStub;

    move-result-object v1

    invoke-interface {v1}, Landroid/util/MiuiAppSizeCompatModeStub;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4912
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivityThreadStub:Landroid/app/ActivityThreadStub;

    invoke-interface {v1, p1, p0}, Landroid/app/ActivityThreadStub;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;Landroid/app/ActivityThread;)V

    .line 4915
    :cond_13
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4916
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_45

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_45

    .line 4917
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 4918
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 4919
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/app/Activity;->dumpInternal(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4920
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_4f

    .line 4923
    .end local v1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_45
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4924
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4925
    nop

    .line 4926
    return-void

    .line 4923
    :catchall_4f
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4924
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4925
    throw v1
.end method

.method private blacklist handleDumpGfxInfo(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 4863
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4865
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/view/ThreadedRenderer;->handleDumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_1b
    .catchall {:try_start_4 .. :try_end_f} :catchall_19

    .line 4869
    nop

    :goto_10
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4870
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4871
    goto :goto_25

    .line 4869
    :catchall_19
    move-exception v1

    goto :goto_26

    .line 4866
    :catch_1b
    move-exception v1

    .line 4867
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1c
    const-string v2, "ActivityThread"

    const-string v3, "Caught exception from dumpGfxInfo()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 4869
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_10

    .line 4872
    :goto_25
    return-void

    .line 4869
    :goto_26
    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4870
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4871
    throw v1
.end method

.method static greylist-max-o handleDumpHeap(Landroid/app/ActivityThread$DumpHeapData;)V
    .registers 5
    .param p0, "dhd"    # Landroid/app/ActivityThread$DumpHeapData;

    .line 6627
    const-string v0, "ActivityThread"

    iget-boolean v1, p0, Landroid/app/ActivityThread$DumpHeapData;->runGc:Z

    if-eqz v1, :cond_f

    .line 6628
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 6629
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 6630
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 6632
    :cond_f
    :try_start_f
    iget-object v1, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_11} :catch_4b
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_11} :catch_44

    .line 6633
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_11
    iget-boolean v2, p0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    if-eqz v2, :cond_1f

    .line 6634
    iget-object v2, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    goto :goto_32

    .line 6635
    :cond_1f
    iget-boolean v2, p0, Landroid/app/ActivityThread$DumpHeapData;->mallocInfo:Z

    if-eqz v2, :cond_2b

    .line 6636
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Debug;->dumpNativeMallocInfo(Ljava/io/FileDescriptor;)V

    goto :goto_32

    .line 6638
    :cond_2b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_38

    .line 6640
    :goto_32
    if-eqz v1, :cond_74

    :try_start_34
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_4b
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_37} :catch_44

    goto :goto_74

    .line 6632
    :catchall_38
    move-exception v2

    if-eqz v1, :cond_43

    :try_start_3b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v3

    :try_start_40
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "dhd":Landroid/app/ActivityThread$DumpHeapData;
    :cond_43
    :goto_43
    throw v2
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_4b
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_44} :catch_44

    .line 6647
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "dhd":Landroid/app/ActivityThread$DumpHeapData;
    :catch_44
    move-exception v1

    .line 6649
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Heap dumper threw a runtime exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75

    .line 6640
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_4b
    move-exception v1

    .line 6641
    .local v1, "e":Ljava/io/IOException;
    iget-boolean v2, p0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    if-eqz v2, :cond_6f

    .line 6642
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

    goto :goto_74

    .line 6645
    :cond_6f
    const-string v2, "Failed to dump heap"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6650
    .end local v1    # "e":Ljava/io/IOException;
    :cond_74
    :goto_74
    nop

    .line 6652
    :goto_75
    :try_start_75
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->dumpHeapFinished(Ljava/lang/String;)V
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_7e} :catch_8a

    .line 6655
    nop

    .line 6656
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->finishCallback:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_89

    .line 6657
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->finishCallback:Landroid/os/RemoteCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 6659
    :cond_89
    return-void

    .line 6653
    :catch_8a
    move-exception v0

    .line 6654
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 8
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 4929
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4931
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 4932
    .local v1, "r":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v1, :cond_34

    iget-object v2, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    if-eqz v2, :cond_34

    .line 4933
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 4934
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 4935
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4936
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_3e

    .line 4939
    .end local v1    # "r":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_34
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4940
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4941
    nop

    .line 4942
    return-void

    .line 4939
    :catchall_3e
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4940
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4941
    throw v1
.end method

.method private blacklist handleDumpResources(Landroid/app/ActivityThread$DumpResourcesData;)V
    .registers 6
    .param p1, "info"    # Landroid/app/ActivityThread$DumpResourcesData;

    .line 4891
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4893
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 4894
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 4896
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, ""

    invoke-static {v1, v2}, Landroid/content/res/Resources;->dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4897
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 4898
    iget-object v2, p1, Landroid/app/ActivityThread$DumpResourcesData;->finishCallback:Landroid/os/RemoteCallback;

    if-eqz v2, :cond_26

    .line 4899
    iget-object v2, p1, Landroid/app/ActivityThread$DumpResourcesData;->finishCallback:Landroid/os/RemoteCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_30

    .line 4902
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_26
    iget-object v1, p1, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4903
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4904
    nop

    .line 4905
    return-void

    .line 4902
    :catchall_30
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4903
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4904
    throw v1
.end method

.method private greylist-max-o handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 4875
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4877
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 4878
    .local v1, "s":Landroid/app/Service;
    if-eqz v1, :cond_2e

    .line 4879
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 4880
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 4881
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4882
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_38

    .line 4885
    .end local v1    # "s":Landroid/app/Service;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_2e
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4886
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4887
    nop

    .line 4888
    return-void

    .line 4885
    :catchall_38
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4886
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4887
    throw v1
.end method

.method private greylist-max-o handleEnterAnimationComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4306
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4307
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_f

    .line 4308
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->dispatchEnterAnimationComplete()V

    .line 4310
    :cond_f
    return-void
.end method

.method private blacklist handleFinishInstrumentationWithoutRestart()V
    .registers 2

    .line 7542
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onDestroy()V

    .line 7543
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 7544
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 7545
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 7546
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 7547
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 7548
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 7549
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 7550
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mInstrumentingWithoutRestart:Z

    .line 7551
    return-void
.end method

.method private blacklist handleInstrumentWithoutRestart(Landroid/app/ActivityThread$AppBindData;)V
    .registers 8
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .line 7442
    :try_start_0
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 7443
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 7444
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mInstrumentingWithoutRestart:Z

    .line 7445
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->prepareInstrumentation(Landroid/app/ActivityThread$AppBindData;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    .line 7446
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 7447
    invoke-static {p0, v1}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v1

    .line 7449
    .local v1, "appContext":Landroid/app/ContextImpl;
    invoke-direct {p0, v0, p1, v1}, Landroid/app/ActivityThread;->initInstrumentation(Landroid/content/pm/InstrumentationInfo;Landroid/app/ActivityThread$AppBindData;Landroid/app/ContextImpl;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_51

    .line 7452
    :try_start_1e
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_27

    .line 7457
    nop

    .line 7461
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v1    # "appContext":Landroid/app/ContextImpl;
    goto :goto_59

    .line 7453
    .restart local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v1    # "appContext":Landroid/app/ContextImpl;
    :catch_27
    move-exception v2

    .line 7454
    .local v2, "e":Ljava/lang/Exception;
    :try_start_28
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown in onCreate() of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 7456
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    throw v3
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_51} :catch_51

    .line 7459
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v1    # "appContext":Landroid/app/ContextImpl;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :catch_51
    move-exception v0

    .line 7460
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    const-string v2, "Error in handleInstrumentWithoutRestart"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7462
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_59
    return-void
.end method

.method private greylist-max-o handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 4467
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4468
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1e

    .line 4469
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 4470
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)V

    .line 4471
    if-nez p2, :cond_19

    .line 4472
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onLocalVoiceInteractionStopped()V

    goto :goto_1e

    .line 4474
    :cond_19
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onLocalVoiceInteractionStarted()V

    .line 4477
    :cond_1e
    :goto_1e
    return-void
.end method

.method private blacklist handlePerformDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V
    .registers 11
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "actionId"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p5, "resultCallback"    # Landroid/os/RemoteCallback;

    .line 4267
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4268
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 4269
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v2

    .line 4270
    .local v2, "lifecycleState":I
    const/4 v3, 0x2

    if-lt v2, v3, :cond_2a

    const/4 v3, 0x5

    if-lt v2, v3, :cond_16

    goto :goto_2a

    .line 4274
    :cond_16
    if-eqz p3, :cond_1a

    move-object v1, p3

    goto :goto_1c

    :cond_1a
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 4275
    .local v1, "nonNullArguments":Landroid/os/Bundle;
    :goto_1c
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4276
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/app/ActivityThread$$ExternalSyntheticLambda4;

    invoke-direct {v4, p5}, Landroid/app/ActivityThread$$ExternalSyntheticLambda4;-><init>(Landroid/os/RemoteCallback;)V

    .line 4275
    invoke-virtual {v3, p2, v1, p4, v4}, Landroid/app/Activity;->onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    .line 4277
    .end local v1    # "nonNullArguments":Landroid/os/Bundle;
    .end local v2    # "lifecycleState":I
    goto :goto_31

    .line 4271
    .restart local v2    # "lifecycleState":I
    :cond_2a
    :goto_2a
    invoke-virtual {p5, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4272
    return-void

    .line 4278
    .end local v2    # "lifecycleState":I
    :cond_2e
    invoke-virtual {p5, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4280
    :goto_31
    return-void
.end method

.method private greylist-max-p handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .registers 16
    .param p1, "data"    # Landroid/app/ActivityThread$ReceiverData;

    .line 4547
    const-string v0, "Finishing failed broadcast to "

    const-string v1, ": "

    const-string v2, "ActivityThread"

    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4549
    iget-object v3, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 4551
    .local v3, "component":Ljava/lang/String;
    iget-object v4, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v4

    .line 4554
    .local v4, "packageInfo":Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    .line 4560
    .local v5, "mgr":Landroid/app/IActivityManager;
    :try_start_21
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v6

    .line 4561
    .local v6, "app":Landroid/app/Application;
    invoke-virtual {v6}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/ContextImpl;

    .line 4562
    .local v8, "context":Landroid/app/ContextImpl;
    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v9, :cond_3f

    .line 4563
    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/ContextImpl;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/ContextImpl;

    move-object v8, v9

    .line 4565
    :cond_3f
    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    if-eqz v9, :cond_59

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_59

    .line 4566
    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    aget-object v9, v9, v7

    .line 4567
    .local v9, "attributionTag":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/app/ContextImpl;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v10

    check-cast v10, Landroid/app/ContextImpl;

    move-object v8, v10

    .line 4569
    .end local v9    # "attributionTag":Ljava/lang/String;
    :cond_59
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 4570
    .local v9, "cl":Ljava/lang/ClassLoader;
    iget-object v10, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v10, v9}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4571
    iget-object v10, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    iget-object v11, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 4572
    invoke-static {v11}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v11

    const/4 v12, 0x1

    if-nez v11, :cond_75

    iget-object v11, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-static {v11}, Landroid/app/ActivityThread;->isProtectedBroadcast(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_76

    :cond_75
    move v7, v12

    .line 4573
    :cond_76
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v11

    .line 4571
    invoke-virtual {v10, v7, v11}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 4574
    invoke-virtual {p1, v9}, Landroid/app/ActivityThread$ReceiverData;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4575
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v7

    iget-object v10, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v11, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 4576
    invoke-virtual {v7, v9, v10, v11}, Landroid/app/AppComponentFactory;->instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    move-result-object v7
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_8e} :catch_182

    .line 4584
    .end local v9    # "cl":Ljava/lang/ClassLoader;
    .local v7, "receiver":Landroid/content/BroadcastReceiver;
    nop

    .line 4587
    const/4 v9, 0x0

    :try_start_90
    sget-boolean v10, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v10, :cond_f4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Performing receive of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": app="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", appName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4590
    invoke-virtual {v6}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4591
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", comp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 4592
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", dir="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4593
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4587
    invoke-static {v2, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4595
    :cond_f4
    sget-object v10, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    iget-object v11, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v10, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4596
    invoke-virtual {v7, p1}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 4598
    invoke-virtual {v7}, Landroid/content/BroadcastReceiver;->getMonitor()Landroid/os/perfdebug/BroadcastMonitor;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/perfdebug/BroadcastMonitor;->monitorReceiveBegin()V

    .line 4599
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getReceiverRestrictedContext()Landroid/content/Context;

    move-result-object v11

    iget-object v13, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v11, v13}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4602
    invoke-virtual {v7}, Landroid/content/BroadcastReceiver;->getMonitor()Landroid/os/perfdebug/BroadcastMonitor;

    move-result-object v11

    iget-object v13, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v12, v13, v7}, Landroid/os/perfdebug/BroadcastMonitor;->monitorReceiveEnd(ZLandroid/content/Intent;Landroid/content/BroadcastReceiver;)V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_117} :catch_11d
    .catchall {:try_start_90 .. :try_end_117} :catchall_11b

    .line 4614
    invoke-virtual {v10, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_14c

    :catchall_11b
    move-exception v0

    goto :goto_17c

    .line 4604
    :catch_11d
    move-exception v10

    .line 4605
    .local v10, "e":Ljava/lang/Exception;
    :try_start_11e
    sget-boolean v11, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v11, :cond_13c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v11, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 4606
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4605
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4607
    :cond_13c
    invoke-virtual {p1, v5}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 4608
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, v7, v10}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0
    :try_end_145
    .catchall {:try_start_11e .. :try_end_145} :catchall_11b

    if-eqz v0, :cond_157

    .line 4614
    .end local v10    # "e":Ljava/lang/Exception;
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4615
    :goto_14c
    nop

    .line 4617
    invoke-virtual {v7}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    if-eqz v0, :cond_156

    .line 4618
    invoke-virtual {p1}, Landroid/app/ActivityThread$ReceiverData;->finish()V

    .line 4620
    :cond_156
    return-void

    .line 4609
    .restart local v10    # "e":Ljava/lang/Exception;
    :cond_157
    :try_start_157
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to start receiver "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4611
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "component":Ljava/lang/String;
    .end local v4    # "packageInfo":Landroid/app/LoadedApk;
    .end local v5    # "mgr":Landroid/app/IActivityManager;
    .end local v6    # "app":Landroid/app/Application;
    .end local v7    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v8    # "context":Landroid/app/ContextImpl;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$ReceiverData;
    throw v0
    :try_end_17c
    .catchall {:try_start_157 .. :try_end_17c} :catchall_11b

    .line 4614
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v3    # "component":Ljava/lang/String;
    .restart local v4    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v5    # "mgr":Landroid/app/IActivityManager;
    .restart local v6    # "app":Landroid/app/Application;
    .restart local v7    # "receiver":Landroid/content/BroadcastReceiver;
    .restart local v8    # "context":Landroid/app/ContextImpl;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$ReceiverData;
    :goto_17c
    sget-object v1, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4615
    throw v0

    .line 4577
    .end local v6    # "app":Landroid/app/Application;
    .end local v7    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v8    # "context":Landroid/app/ContextImpl;
    :catch_182
    move-exception v6

    .line 4578
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v7, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v7, :cond_1a1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 4579
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4578
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4580
    :cond_1a1
    invoke-virtual {p1, v5}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 4581
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate receiver "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4583
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private greylist-max-o handleRelaunchActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;ILjava/util/List;Ljava/util/List;Landroid/app/servertransaction/PendingTransactionActions;ZLandroid/content/res/Configuration;Ljava/lang/String;)V
    .registers 23
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "configChanges"    # I
    .param p5, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p6, "startsNotResumed"    # Z
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "I",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/app/servertransaction/PendingTransactionActions;",
            "Z",
            "Landroid/content/res/Configuration;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6072
    .local p3, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p4, "pendingIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p8

    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v11, v0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 6074
    .local v11, "customIntent":Landroid/content/Intent;
    iget-boolean v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v0, :cond_15

    .line 6075
    invoke-direct {p0, p1, v12, v10, v13}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    .line 6077
    :cond_15
    iget-boolean v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v0, :cond_1d

    .line 6078
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v10}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 6081
    :cond_1d
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p2

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZIZLjava/lang/String;)V

    .line 6083
    iput-object v13, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6084
    iput-object v13, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 6085
    iput-boolean v12, v7, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 6086
    iput-object v13, v7, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6088
    if-eqz v8, :cond_3e

    .line 6089
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-nez v0, :cond_39

    .line 6090
    iput-object v8, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    goto :goto_3e

    .line 6092
    :cond_39
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6095
    :cond_3e
    :goto_3e
    if-eqz v9, :cond_4c

    .line 6096
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-nez v0, :cond_47

    .line 6097
    iput-object v9, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    goto :goto_4c

    .line 6099
    :cond_47
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6102
    :cond_4c
    :goto_4c
    move/from16 v0, p6

    iput-boolean v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 6103
    move-object/from16 v1, p7

    iput-object v1, v7, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 6105
    move-object/from16 v2, p5

    invoke-virtual {p0, p1, v2, v11}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;

    .line 6106
    return-void
.end method

.method private blacklist handleRequestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .registers 19
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/os/RemoteCallback;
    .param p5, "retryCount"    # I

    .line 4209
    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p4

    iget-object v0, v7, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4210
    .local v10, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v0, 0x0

    const-string v1, "ActivityThread"

    if-nez v10, :cond_2d

    .line 4211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestDirectActions(): no activity for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4212
    invoke-virtual {v9, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4213
    return-void

    .line 4215
    :cond_2d
    invoke-virtual {v10}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v11

    .line 4216
    .local v11, "lifecycleState":I
    const/4 v2, 0x2

    const-string v3, "): wrong lifecycle: "

    const-string/jumbo v4, "requestDirectActions("

    if-ge v11, v2, :cond_79

    .line 4218
    if-lez p5, :cond_59

    .line 4219
    iget-object v12, v7, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    new-instance v0, Landroid/app/ActivityThread$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/ActivityThread$$ExternalSyntheticLambda1;-><init>()V

    add-int/lit8 v1, p5, -0x1

    .line 4222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4220
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 4219
    invoke-virtual {v12, v0, v1, v2}, Landroid/app/ActivityThread$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4223
    return-void

    .line 4225
    :cond_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4226
    invoke-virtual {v9, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4227
    return-void

    .line 4229
    :cond_79
    const/4 v2, 0x5

    if-lt v11, v2, :cond_9c

    .line 4230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4231
    invoke-virtual {v9, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4232
    return-void

    .line 4234
    :cond_9c
    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_b5

    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 4235
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4236
    invoke-interface {p2}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_b3

    goto :goto_b5

    :cond_b3
    move-object v5, p2

    goto :goto_d4

    .line 4237
    :cond_b5
    :goto_b5
    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_c2

    .line 4238
    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->destroy()V

    .line 4240
    :cond_c2
    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/app/VoiceInteractor;

    iget-object v2, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4241
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v5, p2

    invoke-direct {v1, p2, v2, v3, v4}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v1, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 4243
    :goto_d4
    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/app/ActivityThread$$ExternalSyntheticLambda2;

    invoke-direct {v1, v10, v9}, Landroid/app/ActivityThread$$ExternalSyntheticLambda2;-><init>(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/os/RemoteCallback;)V

    move-object/from16 v2, p3

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    .line 4260
    return-void
.end method

.method private greylist-max-o handleRunIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;

    .line 8152
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "main"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 8153
    .local v0, "main":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_1b} :catch_20

    .line 8156
    nop

    .line 8158
    .end local v0    # "main":Ljava/lang/reflect/Method;
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 8159
    return-void

    .line 8154
    :catch_20
    move-exception v0

    .line 8155
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v2, "runIsolatedEntryPoint failed"

    invoke-direct {v1, v2, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .registers 9
    .param p1, "data"    # Landroid/app/ActivityThread$ServiceArgsData;

    .line 4945
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    .line 4946
    .local v0, "createData":Landroid/app/ActivityThread$CreateServiceData;
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 4947
    .local v1, "s":Landroid/app/Service;
    if-eqz v1, :cond_9c

    .line 4949
    :try_start_16
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    if-eqz v2, :cond_32

    .line 4950
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4951
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget-object v3, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    .line 4952
    invoke-virtual {v1}, Landroid/app/Service;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 4951
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 4955
    :cond_32
    iget-boolean v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    if-nez v2, :cond_41

    .line 4956
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iget v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    .local v2, "res":I
    goto :goto_48

    .line 4958
    .end local v2    # "res":I
    :cond_41
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 4959
    const/16 v2, 0x3e8

    .line 4962
    .restart local v2    # "res":I
    :goto_48
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4b} :catch_5f

    .line 4965
    :try_start_4b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    const/4 v5, 0x1

    iget v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-interface {v3, v4, v5, v6, v2}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_57} :catch_59
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_57} :catch_5f

    .line 4969
    nop

    .line 4976
    .end local v2    # "res":I
    goto :goto_9c

    .line 4967
    .restart local v2    # "res":I
    :catch_59
    move-exception v3

    .line 4968
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_5a
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .end local v1    # "s":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$ServiceArgsData;
    throw v4
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_5f

    .line 4970
    .end local v2    # "res":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .restart local v1    # "s":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$ServiceArgsData;
    :catch_5f
    move-exception v2

    .line 4971
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_69

    goto :goto_9c

    .line 4972
    :cond_69
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4974
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 4978
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9c
    :goto_9c
    return-void
.end method

.method private blacklist handleSetContentCaptureOptionsCallback(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 7411
    iget-object v0, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    if-eqz v0, :cond_5

    .line 7412
    return-void

    .line 7415
    :cond_5
    const-string v0, "content_capture"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 7416
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_e

    .line 7417
    return-void

    .line 7420
    :cond_e
    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v1

    .line 7421
    .local v1, "service":Landroid/view/contentcapture/IContentCaptureManager;
    new-instance v2, Landroid/app/ActivityThread$2;

    invoke-direct {v2, p0}, Landroid/app/ActivityThread$2;-><init>(Landroid/app/ActivityThread;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    .line 7431
    :try_start_19
    invoke-interface {v1, p1, v2}, Landroid/view/contentcapture/IContentCaptureManager;->registerContentCaptureOptionsCallback(Ljava/lang/String;Landroid/view/contentcapture/IContentCaptureOptionsCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 7437
    goto :goto_3a

    .line 7433
    :catch_1d
    move-exception v2

    .line 7434
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerContentCaptureOptionsCallback() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityThread"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7436
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    .line 7438
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3a
    return-void
.end method

.method private greylist-max-o handleSetCoreSettings(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .line 5583
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5584
    :try_start_3
    iput-object p1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 5585
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 5586
    invoke-direct {p0}, Landroid/app/ActivityThread;->onCoreSettingsChange()V

    .line 5587
    return-void

    .line 5585
    :catchall_a
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v1
.end method

.method private greylist-max-o handleStartBinderTracking()V
    .registers 1

    .line 4313
    invoke-static {}, Landroid/os/Binder;->enableStackTracking()V

    .line 4314
    return-void
.end method

.method private greylist-max-o handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 4318
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->disableStackTracking()V

    .line 4319
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/TransactionTracker;->writeTracesToFile(Landroid/os/ParcelFileDescriptor;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_16

    .line 4321
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4322
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 4323
    nop

    .line 4324
    return-void

    .line 4321
    :catchall_16
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4322
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 4323
    throw v0
.end method

.method private greylist-max-o handleStopService(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4981
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4982
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 4983
    .local v0, "s":Landroid/app/Service;
    const-string v1, "ActivityThread"

    if-eqz v0, :cond_9f

    .line 4985
    :try_start_11
    sget-boolean v2, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v2, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4986
    :cond_2b
    invoke-virtual {v0}, Landroid/app/Service;->onDestroy()V

    .line 4987
    invoke-virtual {v0}, Landroid/app/Service;->detachAndCleanUp()V

    .line 4988
    invoke-virtual {v0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 4989
    .local v2, "context":Landroid/content/Context;
    instance-of v3, v2, Landroid/app/ContextImpl;

    if-eqz v3, :cond_45

    .line 4990
    invoke-virtual {v0}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 4991
    .local v3, "who":Ljava/lang/String;
    move-object v4, v2

    check-cast v4, Landroid/app/ContextImpl;

    const-string v5, "Service"

    invoke-virtual {v4, v3, v5}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 4994
    .end local v3    # "who":Ljava/lang/String;
    :cond_45
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_48} :catch_58

    .line 4997
    :try_start_48
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, p1, v4, v5, v5}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_51} :catch_52
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_51} :catch_58

    .line 5001
    goto :goto_77

    .line 4999
    :catch_52
    move-exception v3

    .line 5000
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_53
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "s":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v4
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_58

    .line 5002
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "s":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catch_58
    move-exception v2

    .line 5003
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v0, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 5008
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStopService: exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5009
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_77
    goto :goto_bb

    .line 5004
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_78
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to stop service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5006
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5011
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStopService: token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5014
    :goto_bb
    return-void
.end method

.method private greylist-max-o handleTrimMemory(I)V
    .registers 8
    .param p1, "level"    # I

    .line 6792
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "trimMemory"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6793
    sget-boolean v2, Landroid/app/ActivityThread;->DEBUG_MEMORY_TRIM:Z

    if-eqz v2, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trimming memory to level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityThread"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6795
    :cond_24
    const/16 v2, 0x50

    if-lt p1, v2, :cond_2b

    .line 6796
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->onTrimMemory()V

    .line 6799
    :cond_2b
    nop

    .line 6800
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/ActivityThread;->collectComponentCallbacks(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 6802
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6803
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_36
    if-ge v4, v3, :cond_44

    .line 6804
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentCallbacks2;

    invoke-interface {v5, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    .line 6803
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 6807
    .end local v4    # "i":I
    :cond_44
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 6808
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 6810
    const-string v0, "debug.am.run_gc_trim_level"

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gt v0, p1, :cond_62

    .line 6811
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 6812
    const-string/jumbo v0, "tm"

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->doGcIfNeeded(Ljava/lang/String;)V

    .line 6814
    :cond_62
    const-string v0, "debug.am.run_mallopt_trim_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gt v0, p1, :cond_70

    .line 6816
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unschedulePurgeIdler()V

    .line 6817
    invoke-direct {p0}, Landroid/app/ActivityThread;->purgePendingResources()V

    .line 6819
    :cond_70
    return-void
.end method

.method private greylist-max-o handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .registers 8
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .line 4833
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    .line 4834
    .local v0, "createData":Landroid/app/ActivityThread$CreateServiceData;
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 4835
    .local v1, "s":Landroid/app/Service;
    if-eqz v1, :cond_91

    .line 4837
    :try_start_16
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4838
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    .line 4839
    invoke-virtual {v1}, Landroid/app/Service;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 4838
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 4840
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_34} :catch_54

    .line 4842
    .local v2, "doRebind":Z
    if-eqz v2, :cond_42

    .line 4843
    :try_start_36
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v2}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    goto :goto_4c

    .line 4846
    :cond_42
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v5, v5}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_4c} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4c} :catch_54

    .line 4851
    :goto_4c
    nop

    .line 4858
    .end local v2    # "doRebind":Z
    goto :goto_91

    .line 4849
    .restart local v2    # "doRebind":Z
    :catch_4e
    move-exception v3

    .line 4850
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_4f
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .end local v1    # "s":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$BindServiceData;
    throw v4
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_54} :catch_54

    .line 4852
    .end local v2    # "doRebind":Z
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .restart local v1    # "s":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$BindServiceData;
    :catch_54
    move-exception v2

    .line 4853
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_91

    .line 4854
    :cond_5e
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to unbind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4856
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 4860
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_91
    :goto_91
    return-void
.end method

.method private greylist-max-o handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .registers 5
    .param p1, "data"    # Landroid/app/ActivityThread$UpdateCompatibilityData;

    .line 5619
    iget-object v0, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 5620
    .local v0, "apk":Landroid/app/LoadedApk;
    if-eqz v0, :cond_e

    .line 5621
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 5623
    :cond_e
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 5624
    if-eqz v0, :cond_1c

    .line 5625
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 5627
    :cond_1c
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v2, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v2}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/CompatibilityInfo;)V

    .line 5628
    return-void
.end method

.method private blacklist handleWindowingModeChangeIfNeeded(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfiguration"    # Landroid/content/res/Configuration;

    .line 6430
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 6431
    .local v0, "newWindowingMode":I
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 6432
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/app/ActivityThread;->mLastReportedWindowingMode:Ljava/util/Map;

    .line 6433
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 6432
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6434
    .local v2, "oldWindowingMode":I
    if-ne v2, v0, :cond_1e

    return-void

    .line 6436
    :cond_1e
    const/4 v4, 0x2

    if-ne v0, v4, :cond_26

    .line 6437
    const/4 v3, 0x1

    invoke-virtual {p1, v3, p2}, Landroid/app/Activity;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    goto :goto_2b

    .line 6438
    :cond_26
    if-ne v2, v4, :cond_2b

    .line 6439
    invoke-virtual {p1, v3, p2}, Landroid/app/Activity;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 6441
    :cond_2b
    :goto_2b
    invoke-static {v2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v3

    .line 6443
    .local v3, "wasInMultiWindowMode":Z
    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v4

    .line 6445
    .local v4, "nowInMultiWindowMode":Z
    if-eq v3, v4, :cond_38

    .line 6446
    invoke-virtual {p1, v4, p2}, Landroid/app/Activity;->dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 6448
    :cond_38
    iget-object v5, p0, Landroid/app/ActivityThread;->mLastReportedWindowingMode:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6449
    return-void
.end method

.method private final greylist-max-o incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    .registers 9
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;
    .param p2, "stable"    # Z

    .line 7679
    const/16 v0, 0x83

    const/4 v1, 0x0

    const-string v2, "ActivityThread"

    const/4 v3, 0x1

    if-eqz p2, :cond_60

    .line 7680
    iget v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 7681
    iget v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-ne v4, v3, :cond_ab

    .line 7684
    iget-boolean v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v4, :cond_27

    .line 7688
    const/4 v4, -0x1

    .line 7690
    .local v4, "unstableDelta":I
    sget-boolean v5, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v5, :cond_1f

    .line 7691
    const-string v5, "incProviderRef: stable snatched provider from the jaws of death"

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7694
    :cond_1f
    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 7697
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_28

    .line 7699
    .end local v4    # "unstableDelta":I
    :cond_27
    const/4 v4, 0x0

    .line 7702
    .restart local v4    # "unstableDelta":I
    :goto_28
    :try_start_28
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v0, :cond_52

    .line 7703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "incProviderRef Now stable - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v1, v1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": unstableDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7707
    :cond_52
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v1, v1, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v1, v3, v4}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_5d} :catch_5e

    .line 7711
    goto :goto_5f

    .line 7709
    :catch_5e
    move-exception v0

    .line 7712
    .end local v4    # "unstableDelta":I
    :goto_5f
    goto :goto_ab

    .line 7714
    :cond_60
    iget v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 7715
    iget v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-ne v4, v3, :cond_ab

    .line 7717
    iget-boolean v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v4, :cond_7e

    .line 7722
    sget-boolean v3, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v3, :cond_76

    .line 7723
    const-string v3, "incProviderRef: unstable snatched provider from the jaws of death"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7726
    :cond_76
    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 7727
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_ab

    .line 7732
    :cond_7e
    :try_start_7e
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v0, :cond_9e

    .line 7733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incProviderRef: Now unstable - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v4, v4, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7736
    :cond_9e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v2, v1, v3}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_a9} :catch_aa

    .line 7740
    goto :goto_ab

    .line 7738
    :catch_aa
    move-exception v0

    .line 7744
    :cond_ab
    :goto_ab
    return-void
.end method

.method private blacklist initAutoUIConfig(Landroid/content/pm/ActivityInfo;Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 8595
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    .line 8597
    if-nez p3, :cond_10

    const/4 v0, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 8598
    .local v0, "className":Ljava/lang/String;
    :goto_14
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getMIUIAutoUI()Lcom/miui/autoui/MIUIAutoUIStub;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lcom/miui/autoui/MIUIAutoUIStub;->initAutoUIConfig(Landroid/content/Context;Ljava/lang/String;)V

    .line 8600
    .end local v0    # "className":Ljava/lang/String;
    :cond_1f
    return-void
.end method

.method private blacklist initInstrumentation(Landroid/content/pm/InstrumentationInfo;Landroid/app/ActivityThread$AppBindData;Landroid/app/ContextImpl;)V
    .registers 14
    .param p1, "ii"    # Landroid/content/pm/InstrumentationInfo;
    .param p2, "data"    # Landroid/app/ActivityThread$AppBindData;
    .param p3, "appContext"    # Landroid/app/ContextImpl;

    .line 7499
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 7500
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 7499
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 7503
    .local v0, "instrApp":Landroid/content/pm/ApplicationInfo;
    goto :goto_14

    .line 7501
    .end local v0    # "instrApp":Landroid/content/pm/ApplicationInfo;
    :catch_11
    move-exception v0

    .line 7502
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 7504
    .local v0, "instrApp":Landroid/content/pm/ApplicationInfo;
    :goto_14
    if-nez v0, :cond_1c

    .line 7505
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    move-object v0, v1

    .line 7507
    :cond_1c
    invoke-virtual {p1, v0}, Landroid/content/pm/InstrumentationInfo;->copyTo(Landroid/content/pm/ApplicationInfo;)V

    .line 7508
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 7509
    iget-object v3, p2, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 7510
    invoke-virtual {p3}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 7509
    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v1

    .line 7515
    .local v1, "pi":Landroid/app/LoadedApk;
    nop

    .line 7516
    invoke-virtual {p3}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7515
    invoke-static {p0, v1, v2}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Ljava/lang/String;)Landroid/app/ContextImpl;

    move-result-object v2

    .line 7519
    .local v2, "instrContext":Landroid/app/ContextImpl;
    :try_start_3e
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 7520
    .local v3, "cl":Ljava/lang/ClassLoader;
    iget-object v4, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 7521
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Instrumentation;

    iput-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_54} :catch_99

    .line 7526
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    nop

    .line 7528
    new-instance v7, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7529
    .local v7, "component":Landroid/content/ComponentName;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v8, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v9, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    move-object v4, p0

    move-object v5, v2

    move-object v6, p3

    invoke-virtual/range {v3 .. v9}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V

    .line 7532
    iget-object v3, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v3, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v3, :cond_98

    iget-boolean v3, p1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    if-nez v3, :cond_98

    iget-object v3, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v3, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_98

    .line 7534
    iget-object v3, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    .line 7535
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v4, v4, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7536
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 7537
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x800000

    invoke-static {v4, v5}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 7539
    .end local v3    # "file":Ljava/io/File;
    :cond_98
    return-void

    .line 7522
    .end local v7    # "component":Landroid/content/ComponentName;
    :catch_99
    move-exception v3

    .line 7523
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate instrumentation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 7525
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static blacklist initializeMainlineModules()V
    .registers 1

    .line 8513
    new-instance v0, Landroid/os/TelephonyServiceManager;

    invoke-direct {v0}, Landroid/os/TelephonyServiceManager;-><init>()V

    invoke-static {v0}, Landroid/telephony/TelephonyFrameworkInitializer;->setTelephonyServiceManager(Landroid/os/TelephonyServiceManager;)V

    .line 8514
    new-instance v0, Landroid/os/StatsServiceManager;

    invoke-direct {v0}, Landroid/os/StatsServiceManager;-><init>()V

    invoke-static {v0}, Landroid/os/StatsFrameworkInitializer;->setStatsServiceManager(Landroid/os/StatsServiceManager;)V

    .line 8515
    new-instance v0, Landroid/media/MediaServiceManager;

    invoke-direct {v0}, Landroid/media/MediaServiceManager;-><init>()V

    invoke-static {v0}, Landroid/media/MediaFrameworkPlatformInitializer;->setMediaServiceManager(Landroid/media/MediaServiceManager;)V

    .line 8516
    new-instance v0, Landroid/media/MediaServiceManager;

    invoke-direct {v0}, Landroid/media/MediaServiceManager;-><init>()V

    invoke-static {v0}, Landroid/media/MediaFrameworkInitializer;->setMediaServiceManager(Landroid/media/MediaServiceManager;)V

    .line 8517
    new-instance v0, Landroid/os/BluetoothServiceManager;

    invoke-direct {v0}, Landroid/os/BluetoothServiceManager;-><init>()V

    invoke-static {v0}, Landroid/bluetooth/BluetoothFrameworkInitializer;->setBluetoothServiceManager(Landroid/os/BluetoothServiceManager;)V

    .line 8518
    new-instance v0, Landroid/app/ActivityThread$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/app/ActivityThread$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Landroid/bluetooth/BluetoothFrameworkInitializer;->setBinderCallsStatsInitializer(Ljava/util/function/Consumer;)V

    .line 8520
    return-void
.end method

.method private greylist installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 7574
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7576
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ContentProviderHolder;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ProviderInfo;

    .line 7577
    .local v2, "cpi":Landroid/content/pm/ProviderInfo;
    sget-boolean v3, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v3, :cond_3d

    .line 7578
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7579
    .local v3, "buf":Ljava/lang/StringBuilder;
    const-string v4, "Pub "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7580
    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7581
    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7582
    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7583
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityThread"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7585
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    :cond_3d
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, v2

    invoke-direct/range {v3 .. v9}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;

    move-result-object v3

    .line 7587
    .local v3, "cph":Landroid/app/ContentProviderHolder;
    if-eqz v3, :cond_50

    .line 7588
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 7589
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7591
    .end local v2    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v3    # "cph":Landroid/app/ContentProviderHolder;
    :cond_50
    goto :goto_9

    .line 7594
    :cond_51
    :try_start_51
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 7595
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    .line 7594
    invoke-interface {v1, v2, v0}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_5c} :catch_5e

    .line 7598
    nop

    .line 7599
    return-void

    .line 7596
    :catch_5e
    move-exception v1

    .line 7597
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private greylist installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "holder"    # Landroid/app/ContentProviderHolder;
    .param p3, "info"    # Landroid/content/pm/ProviderInfo;
    .param p4, "noisy"    # Z
    .param p5, "noReleaseNeeded"    # Z
    .param p6, "stable"    # Z

    .line 8013
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    const/4 v5, 0x0

    .line 8015
    .local v5, "localProvider":Landroid/content/ContentProvider;
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_44

    iget-object v0, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v0, :cond_12

    goto :goto_44

    .line 8084
    :cond_12
    iget-object v0, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 8085
    .local v0, "provider":Landroid/content/IContentProvider;
    sget-boolean v8, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v8, :cond_3e

    const-string v8, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Installing external provider "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8091
    :cond_3e
    move-object/from16 v10, p1

    move-object v13, v0

    move-object v11, v5

    goto/16 :goto_166

    .line 8016
    .end local v0    # "provider":Landroid/content/IContentProvider;
    :cond_44
    :goto_44
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-nez v0, :cond_4a

    if-eqz p4, :cond_70

    .line 8017
    :cond_4a
    const-string v0, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loading provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8020
    :cond_70
    const/4 v8, 0x0

    .line 8021
    .local v8, "c":Landroid/content/Context;
    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8022
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 8023
    move-object/from16 v8, p1

    move-object/from16 v10, p1

    goto :goto_a8

    .line 8024
    :cond_84
    iget-object v0, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_99

    .line 8025
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 8026
    iget-object v8, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object/from16 v10, p1

    goto :goto_a8

    .line 8029
    :cond_99
    :try_start_99
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_9b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_99 .. :try_end_9b} :catch_a5

    move-object/from16 v10, p1

    :try_start_9d
    invoke-virtual {v10, v0, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_a1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9d .. :try_end_a1} :catch_a3

    move-object v8, v0

    .line 8033
    goto :goto_a8

    .line 8031
    :catch_a3
    move-exception v0

    goto :goto_a8

    :catch_a5
    move-exception v0

    move-object/from16 v10, p1

    .line 8035
    :goto_a8
    const/4 v11, 0x0

    if-nez v8, :cond_d2

    .line 8036
    const-string v0, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to get context for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " while loading content provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8040
    return-object v11

    .line 8043
    :cond_d2
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v0, :cond_e5

    .line 8045
    :try_start_d6
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/content/Context;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0
    :try_end_dc
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d6 .. :try_end_dc} :catch_de

    move-object v8, v0

    .line 8048
    goto :goto_e5

    .line 8046
    :catch_de
    move-exception v0

    .line 8047
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 8050
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_e5
    :goto_e5
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->attributionTags:[Ljava/lang/String;

    if-eqz v0, :cond_f6

    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->attributionTags:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_f6

    .line 8051
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->attributionTags:[Ljava/lang/String;

    aget-object v0, v0, v6

    .line 8052
    .local v0, "attributionTag":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v8

    .line 8056
    .end local v0    # "attributionTag":Ljava/lang/String;
    :cond_f6
    :try_start_f6
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 8057
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v12, v7}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v12

    .line 8058
    .local v12, "packageInfo":Landroid/app/LoadedApk;
    if-nez v12, :cond_109

    .line 8060
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v13

    iget-object v13, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    move-object v12, v13

    .line 8062
    :cond_109
    invoke-virtual {v12}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v13

    iget-object v14, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 8063
    invoke-virtual {v13, v0, v14}, Landroid/app/AppComponentFactory;->instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object v13

    move-object v5, v13

    .line 8064
    invoke-virtual {v5}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v13

    .line 8065
    .local v13, "provider":Landroid/content/IContentProvider;
    if-nez v13, :cond_143

    .line 8066
    const-string v6, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to instantiate class "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v14, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, " from sourceDir "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v14, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8069
    return-object v11

    .line 8071
    :cond_143
    sget-boolean v14, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v14, :cond_161

    const-string v14, "ActivityThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Instantiating local provider "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v15, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8074
    :cond_161
    invoke-virtual {v5, v8, v3}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_164} :catch_22a

    .line 8082
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v12    # "packageInfo":Landroid/app/LoadedApk;
    nop

    .line 8083
    .end local v8    # "c":Landroid/content/Context;
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    move-object v11, v5

    .line 8091
    .end local v5    # "localProvider":Landroid/content/ContentProvider;
    .local v11, "localProvider":Landroid/content/ContentProvider;
    :goto_166
    iget-object v12, v1, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 8092
    :try_start_169
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v0, :cond_191

    const-string v0, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking to add "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " / "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8094
    :cond_191
    invoke-interface {v13}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v5, v0

    .line 8095
    .local v5, "jBinder":Landroid/os/IBinder;
    if-eqz v11, :cond_1d7

    .line 8096
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8097
    .local v0, "cname":Landroid/content/ComponentName;
    iget-object v6, v1, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 8098
    .local v6, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v6, :cond_1ba

    .line 8099
    sget-boolean v7, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v7, :cond_1b6

    .line 8100
    const-string v7, "ActivityThread"

    const-string v8, "installProvider: lost the race, using existing local provider"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8103
    :cond_1b6
    iget-object v7, v6, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    move-object v13, v7

    .end local v13    # "provider":Landroid/content/IContentProvider;
    .local v7, "provider":Landroid/content/IContentProvider;
    goto :goto_1d3

    .line 8105
    .end local v7    # "provider":Landroid/content/IContentProvider;
    .restart local v13    # "provider":Landroid/content/IContentProvider;
    :cond_1ba
    new-instance v8, Landroid/app/ContentProviderHolder;

    invoke-direct {v8, v3}, Landroid/app/ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V
    :try_end_1bf
    .catchall {:try_start_169 .. :try_end_1bf} :catchall_225

    move-object v2, v8

    .line 8106
    .end local p2    # "holder":Landroid/app/ContentProviderHolder;
    .local v2, "holder":Landroid/app/ContentProviderHolder;
    :try_start_1c0
    iput-object v13, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 8107
    iput-boolean v7, v2, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 8108
    invoke-direct {v1, v13, v11, v2}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v7

    move-object v6, v7

    .line 8109
    iget-object v7, v1, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8110
    iget-object v7, v1, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8112
    :goto_1d3
    iget-object v7, v6, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;
    :try_end_1d5
    .catchall {:try_start_1c0 .. :try_end_1d5} :catchall_228

    move-object v0, v7

    .line 8113
    .end local v6    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .local v0, "retHolder":Landroid/app/ContentProviderHolder;
    goto :goto_223

    .line 8114
    .end local v0    # "retHolder":Landroid/app/ContentProviderHolder;
    .end local v2    # "holder":Landroid/app/ContentProviderHolder;
    .restart local p2    # "holder":Landroid/app/ContentProviderHolder;
    :cond_1d7
    :try_start_1d7
    iget-object v0, v1, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    move-object v8, v0

    .line 8115
    .local v8, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v8, :cond_1fe

    .line 8116
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v0, :cond_1ed

    .line 8117
    const-string v0, "ActivityThread"

    const-string v6, "installProvider: lost the race, updating ref count"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8123
    :cond_1ed
    if-nez p5, :cond_221

    .line 8124
    invoke-direct {v1, v8, v4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_1f2
    .catchall {:try_start_1d7 .. :try_end_1f2} :catchall_225

    .line 8126
    :try_start_1f2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v6, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v6, v4}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_1fb
    .catch Landroid/os/RemoteException; {:try_start_1f2 .. :try_end_1fb} :catch_1fc
    .catchall {:try_start_1f2 .. :try_end_1fb} :catchall_225

    goto :goto_1fd

    .line 8128
    :catch_1fc
    move-exception v0

    .line 8130
    :goto_1fd
    goto :goto_221

    .line 8133
    :cond_1fe
    :try_start_1fe
    invoke-direct {v1, v13, v11, v2}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v0

    .line 8135
    .local v0, "client":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz p5, :cond_20d

    .line 8136
    new-instance v6, Landroid/app/ActivityThread$ProviderRefCount;

    const/16 v7, 0x3e8

    invoke-direct {v6, v2, v0, v7, v7}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    move-object v8, v6

    .end local v8    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .local v6, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    goto :goto_21c

    .line 8138
    .end local v6    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .restart local v8    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :cond_20d
    if-eqz v4, :cond_215

    .line 8139
    new-instance v9, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-direct {v9, v2, v0, v7, v6}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    goto :goto_21a

    .line 8140
    :cond_215
    new-instance v9, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-direct {v9, v2, v0, v6, v7}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    :goto_21a
    move-object v6, v9

    move-object v8, v6

    .line 8142
    :goto_21c
    iget-object v6, v1, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8144
    .end local v0    # "client":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_221
    :goto_221
    iget-object v0, v8, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;
    :try_end_223
    .catchall {:try_start_1fe .. :try_end_223} :catchall_225

    .line 8146
    .end local v5    # "jBinder":Landroid/os/IBinder;
    .end local v8    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local p2    # "holder":Landroid/app/ContentProviderHolder;
    .local v0, "retHolder":Landroid/app/ContentProviderHolder;
    .restart local v2    # "holder":Landroid/app/ContentProviderHolder;
    :goto_223
    :try_start_223
    monitor-exit v12

    .line 8147
    return-object v0

    .line 8146
    .end local v0    # "retHolder":Landroid/app/ContentProviderHolder;
    .end local v2    # "holder":Landroid/app/ContentProviderHolder;
    .restart local p2    # "holder":Landroid/app/ContentProviderHolder;
    :catchall_225
    move-exception v0

    .end local p2    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v2    # "holder":Landroid/app/ContentProviderHolder;
    :goto_226
    monitor-exit v12
    :try_end_227
    .catchall {:try_start_223 .. :try_end_227} :catchall_228

    throw v0

    :catchall_228
    move-exception v0

    goto :goto_226

    .line 8075
    .end local v2    # "holder":Landroid/app/ContentProviderHolder;
    .end local v11    # "localProvider":Landroid/content/ContentProvider;
    .end local v13    # "provider":Landroid/content/IContentProvider;
    .local v5, "localProvider":Landroid/content/ContentProvider;
    .local v8, "c":Landroid/content/Context;
    .restart local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "holder":Landroid/app/ContentProviderHolder;
    :catch_22a
    move-exception v0

    .line 8076
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_235

    .line 8081
    return-object v7

    .line 8077
    :cond_235
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get provider "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ": "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 8079
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private greylist-max-o installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;
    .registers 14
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "localProvider"    # Landroid/content/ContentProvider;
    .param p3, "holder"    # Landroid/app/ContentProviderHolder;

    .line 7960
    iget-object v0, p3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7961
    .local v0, "auths":[Ljava/lang/String;
    iget-object v1, p3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 7963
    .local v1, "userId":I
    const/4 v8, 0x0

    if-eqz p1, :cond_7a

    .line 7966
    array-length v2, v0

    move v3, v8

    :goto_19
    if-ge v3, v2, :cond_7a

    aget-object v4, v0, v3

    .line 7967
    .local v4, "auth":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_cc

    :cond_25
    goto :goto_6c

    :sswitch_26
    const-string v6, "com.android.blockednumber"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    const/4 v5, 0x3

    goto :goto_6c

    :sswitch_30
    const-string v6, "downloads"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    const/4 v5, 0x5

    goto :goto_6c

    :sswitch_3a
    const-string/jumbo v6, "telephony"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    const/4 v5, 0x6

    goto :goto_6c

    :sswitch_45
    const-string v6, "call_log_shadow"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    const/4 v5, 0x2

    goto :goto_6c

    :sswitch_4f
    const-string v6, "call_log"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    const/4 v5, 0x1

    goto :goto_6c

    :sswitch_59
    const-string v6, "com.android.calendar"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    const/4 v5, 0x4

    goto :goto_6c

    :sswitch_63
    const-string v6, "com.android.contacts"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    move v5, v8

    :goto_6c
    packed-switch v5, :pswitch_data_ea

    goto :goto_77

    .line 7975
    :pswitch_70
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 7966
    .end local v4    # "auth":Ljava/lang/String;
    :goto_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 7980
    :cond_7a
    new-instance v9, Landroid/app/ActivityThread$ProviderClientRecord;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>(Landroid/app/ActivityThread;[Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)V

    .line 7982
    .local v2, "pcr":Landroid/app/ActivityThread$ProviderClientRecord;
    array-length v3, v0

    :goto_86
    if-ge v8, v3, :cond_ca

    aget-object v4, v0, v8

    .line 7983
    .restart local v4    # "auth":Ljava/lang/String;
    new-instance v5, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v5, v4, v1}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 7984
    .local v5, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 7985
    .local v6, "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v6, :cond_c2

    .line 7986
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content provider "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;

    iget-object v9, v9, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " already published as "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "ActivityThread"

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    .line 7989
    :cond_c2
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7982
    .end local v4    # "auth":Ljava/lang/String;
    .end local v5    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local v6    # "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    :goto_c7
    add-int/lit8 v8, v8, 0x1

    goto :goto_86

    .line 7992
    :cond_ca
    return-object v2

    nop

    :sswitch_data_cc
    .sparse-switch
        -0x3260a241 -> :sswitch_63
        -0x1b2f0756 -> :sswitch_59
        -0xa45121d -> :sswitch_4f
        0x3cfb2fc -> :sswitch_45
        0x2eaeb418 -> :sswitch_3a
        0x4e3e48eb -> :sswitch_30
        0x76f32249 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_70
    .end packed-switch
.end method

.method public static blacklist interceptBackPressedForEmbedding(Landroid/app/Activity;Z)Z
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isUpAction"    # Z

    .line 6878
    sget-object v0, Landroid/app/ActivityThread;->mMiuiEmbeddingHandler:Landroid/app/ActivityThread$MiuiEmbeddingHandler;

    if-eqz v0, :cond_9

    .line 6879
    invoke-interface {v0, p0, p1}, Landroid/app/ActivityThread$MiuiEmbeddingHandler;->interceptBackPressedForEmbedding(Landroid/app/Activity;Z)Z

    move-result v0

    return v0

    .line 6882
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isAdaptCutout()I
    .registers 1

    .line 6823
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    iget v0, v0, Landroid/app/ActivityThread;->mAdaptCutoutMode:I

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method public static blacklist isEmbedded()Z
    .registers 1

    .line 6833
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mIsEmbedded:Z

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static blacklist isLoadedApkResourceDirsUpToDate(Landroid/app/LoadedApk;Landroid/content/pm/ApplicationInfo;)Z
    .registers 6
    .param p0, "loadedApk"    # Landroid/app/LoadedApk;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 2786
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 2787
    .local v0, "packageResources":Landroid/content/res/Resources;
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 2788
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2789
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2787
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 2790
    .local v1, "resourceDirsUpToDate":Z
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 2791
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2792
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2790
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    .line 2794
    .local v2, "overlayPathsUpToDate":Z
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_38

    :cond_32
    if-eqz v1, :cond_38

    if-eqz v2, :cond_38

    const/4 v3, 0x1

    goto :goto_39

    :cond_38
    const/4 v3, 0x0

    :goto_39
    return v3
.end method

.method public static blacklist isNameMirror(Landroid/app/Activity;)Z
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 6418
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.mirror"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public static blacklist isNeedDisableAccSensor()Z
    .registers 1

    .line 6871
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_9

    .line 6872
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mNeedDisableAccSensor:Z

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 6871
    :goto_a
    return v0
.end method

.method public static blacklist isProtectedBroadcast(Landroid/content/Intent;)Z
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 8578
    invoke-static {}, Landroid/os/StrictMode;->vmUnsafeIntentLaunchEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 8582
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    return v0

    .line 8583
    :catch_15
    move-exception v0

    .line 8585
    return v1
.end method

.method public static blacklist isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z
    .registers 2
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;

    .line 8534
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isProtectedComponent(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z
    .registers 7
    .param p0, "ci"    # Landroid/content/pm/ComponentInfo;
    .param p1, "permission"    # Ljava/lang/String;

    .line 8556
    invoke-static {}, Landroid/os/StrictMode;->vmUnsafeIntentLaunchEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 8559
    :cond_8
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    const/4 v2, 0x1

    if-nez v0, :cond_e

    .line 8560
    return v2

    .line 8562
    :cond_e
    if-eqz p1, :cond_28

    .line 8564
    :try_start_10
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    .line 8565
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 8564
    invoke-interface {v0, p1, v3, v1}, Landroid/permission/IPermissionManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 8566
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_22} :catch_27

    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    move v1, v2

    :cond_26
    return v1

    .line 8567
    .end local v0    # "pi":Landroid/content/pm/PermissionInfo;
    :catch_27
    move-exception v0

    .line 8570
    :cond_28
    return v1
.end method

.method public static blacklist isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z
    .registers 2
    .param p0, "si"    # Landroid/content/pm/ServiceInfo;

    .line 8543
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSupportSmartOrient()Z
    .registers 1

    .line 6866
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_9

    .line 6867
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSupportSmartOrient:Z

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 6866
    :goto_a
    return v0
.end method

.method public static greylist-max-o isSystem()Z
    .registers 1

    .line 2527
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

.method static synthetic blacklist lambda$handleRequestDirectActions$0(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/os/RemoteCallback;Ljava/util/List;)V
    .registers 8
    .param p0, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .param p2, "actions"    # Ljava/util/List;

    .line 4244
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4245
    const-string v0, "actions"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 4246
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 4247
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 4248
    .local v0, "actionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_2d

    .line 4249
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DirectAction;

    .line 4250
    .local v2, "action":Landroid/app/DirectAction;
    iget-object v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    iget-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getAssistToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/DirectAction;->setSource(ILandroid/os/IBinder;)V

    .line 4248
    .end local v2    # "action":Landroid/app/DirectAction;
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 4252
    .end local v1    # "i":I
    :cond_2d
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4253
    .local v1, "result":Landroid/os/Bundle;
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const-string v3, "actions_list"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4255
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4256
    .end local v0    # "actionCount":I
    .end local v1    # "result":Landroid/os/Bundle;
    goto :goto_44

    .line 4257
    :cond_40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4259
    :goto_44
    return-void
.end method

.method static synthetic blacklist lambda$initializeMainlineModules$3(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 8519
    invoke-static {p0}, Lcom/android/internal/os/BinderCallsStats;->startForBluetooth(Landroid/content/Context;)V

    return-void
.end method

.method public static greylist-max-o main([Ljava/lang/String;)V
    .registers 11
    .param p0, "args"    # [Ljava/lang/String;

    .line 8447
    const-wide/16 v0, 0x40

    const-string v2, "ActivityThreadMain"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8450
    invoke-static {}, Landroid/app/ActivityThread$AndroidOs;->install()V

    .line 8455
    const/4 v2, 0x0

    invoke-static {v2}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 8457
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    .line 8460
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    move-result-object v3

    .line 8461
    .local v3, "configDir":Ljava/io/File;
    invoke-static {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    .line 8464
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 8466
    const-string v4, "<pre-initialized>"

    invoke-static {v4}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 8468
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->get()Landroid/os/perfdebug/PerfDebugMonitor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/perfdebug/PerfDebugMonitor;->prepareMonitor()V

    .line 8469
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 8472
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8476
    .local v4, "displayArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v5, 0x0

    .line 8477
    .local v5, "startSeq":J
    if-eqz p0, :cond_66

    .line 8478
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_3a
    if-ltz v7, :cond_66

    .line 8479
    aget-object v8, p0, v7

    if-eqz v8, :cond_5a

    aget-object v8, p0, v7

    const-string/jumbo v9, "seq="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 8480
    aget-object v8, p0, v7

    .line 8481
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 8480
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_63

    .line 8483
    :cond_5a
    aget-object v8, p0, v7

    if-eqz v8, :cond_63

    .line 8484
    aget-object v8, p0, v7

    invoke-virtual {v4, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 8478
    :cond_63
    :goto_63
    add-int/lit8 v7, v7, -0x1

    goto :goto_3a

    .line 8489
    .end local v7    # "i":I
    :cond_66
    new-instance v7, Landroid/app/ActivityThread;

    invoke-direct {v7}, Landroid/app/ActivityThread;-><init>()V

    .line 8490
    .local v7, "thread":Landroid/app/ActivityThread;
    invoke-direct {v7, v2, v5, v6}, Landroid/app/ActivityThread;->attach(ZJ)V

    .line 8492
    sget-object v2, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_78

    .line 8493
    invoke-virtual {v7}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    sput-object v2, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    .line 8502
    :cond_78
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 8503
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 8505
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native blacklist nInitZygoteChildHeapProfiling()V
.end method

.method private native blacklist nPurgePendingResources()V
.end method

.method private greylist-max-o onCoreSettingsChange()V
    .registers 3

    .line 5590
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDebugViewAttributeState()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5592
    const/4 v0, 0x0

    const-string/jumbo v1, "onCoreSettingsChange"

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->relaunchAllActivities(ZLjava/lang/String;)V

    .line 5594
    :cond_d
    return-void
.end method

.method private blacklist performActivityConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .registers 29
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "amOverrideConfig"    # Landroid/content/res/Configuration;
    .param p4, "displayId"    # I

    .line 6201
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v10

    .line 6206
    .local v10, "activityToken":Landroid/os/IBinder;
    invoke-direct/range {p0 .. p2}, Landroid/app/ActivityThread;->handleWindowingModeChangeIfNeeded(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 6208
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getDisplayId()I

    move-result v2

    invoke-static {v2, v9}, Landroid/window/ConfigurationHelper;->isDifferentDisplay(II)Z

    move-result v11

    .line 6210
    .local v11, "movedToDifferentDisplay":Z
    iget-object v12, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 6211
    .local v12, "currentConfig":Landroid/content/res/Configuration;
    invoke-virtual {v12, v8}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v13

    .line 6212
    .local v13, "diff":I
    const/4 v15, 0x0

    if-eqz v13, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    move v2, v15

    :goto_23
    move/from16 v16, v2

    .line 6213
    .local v16, "hasPublicConfigChange":Z
    invoke-virtual {v0, v10}, Landroid/app/ActivityThread;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v7

    .line 6216
    .local v7, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v16, :cond_42

    .line 6218
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 6217
    move-object v2, v10

    move-object v3, v12

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move v6, v11

    move-object v14, v7

    .end local v7    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v14, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Landroid/window/ConfigurationHelper;->shouldUpdateResources(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZLjava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_43

    :cond_40
    move v2, v15

    goto :goto_44

    .line 6216
    .end local v14    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v7    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_42
    move-object v14, v7

    .line 6217
    .end local v7    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v14    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_43
    const/4 v2, 0x1

    .line 6223
    .local v2, "shouldUpdateResources":Z
    :goto_44
    nop

    .line 6224
    const/4 v3, 0x0

    if-eqz v14, :cond_4d

    invoke-static {v14}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/SizeConfigurationBuckets;

    move-result-object v4

    goto :goto_4e

    :cond_4d
    move-object v4, v3

    :goto_4e
    iget-object v5, v1, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 6225
    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v5

    .line 6223
    invoke-static {v13, v12, v8, v4, v5}, Landroid/app/ActivityThread;->shouldReportChange(ILandroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;I)Z

    move-result v4

    .line 6226
    .local v4, "shouldReportChange":Z
    iget-object v5, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-static {v1, v5, v8, v13}, Landroid/util/MiuiFreeformUtils;->shouldReportChange(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 6227
    const/4 v4, 0x1

    goto/16 :goto_d3

    .line 6230
    :cond_63
    invoke-static {}, Landroid/util/MiuiAppSizeCompatModeStub;->get()Landroid/util/MiuiAppSizeCompatModeStub;

    move-result-object v5

    invoke-interface {v5}, Landroid/util/MiuiAppSizeCompatModeStub;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_82

    if-eqz v13, :cond_82

    iget-object v5, v1, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 6232
    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v5

    iget-object v6, v0, Landroid/app/ActivityThread;->mActivityThreadStub:Landroid/app/ActivityThreadStub;

    invoke-interface {v6, v14}, Landroid/app/ActivityThreadStub;->ignoreChangeForMiuiCompat(Landroid/app/ActivityThread$ActivityClientRecord;)I

    move-result v6

    or-int/2addr v5, v6

    not-int v5, v5

    and-int/2addr v5, v13

    if-nez v5, :cond_82

    .line 6234
    const/4 v4, 0x1

    goto :goto_d3

    .line 6236
    :cond_82
    if-nez v4, :cond_a8

    iget-object v5, v12, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    if-eqz v5, :cond_a8

    iget-object v5, v12, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    iget-object v6, v8, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    invoke-interface {v5, v6}, Landroid/content/res/IMiuiConfiguration;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-eqz v5, :cond_a8

    .line 6237
    iget-object v5, v1, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/content/res/ThemeManagerStub;->clearThemeRelunchFlag(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_9e

    const/4 v5, 0x1

    goto :goto_9f

    :cond_9e
    move v5, v15

    :goto_9f
    move v4, v5

    .line 6239
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->isSettingsInSplit()Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 6240
    const/4 v4, 0x1

    goto :goto_d3

    .line 6244
    :cond_a8
    invoke-static/range {p1 .. p1}, Landroid/app/ActivityThread;->isNameMirror(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_b6

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getDisplayId()I

    move-result v5

    if-lez v5, :cond_b6

    .line 6245
    const/4 v4, 0x1

    goto :goto_d3

    .line 6249
    :cond_b6
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v5

    .line 6250
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 6249
    invoke-interface {v5, v6, v13, v8, v7}, Landroid/view/ForceDarkHelperStub;->shouldInterceptUiModeRelaunch(Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 6251
    const/4 v4, 0x1

    goto :goto_d3

    .line 6253
    :cond_c8
    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v5

    invoke-interface {v5, v1, v8, v12}, Lmiui/window/MiuiEmbeddingWindowStub;->shouldReportConfigChange(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 6254
    const/4 v4, 0x1

    .line 6258
    :cond_d3
    :goto_d3
    if-nez v2, :cond_d6

    .line 6259
    return-object v3

    .line 6266
    :cond_d6
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 6274
    .local v3, "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    move-object/from16 v5, p3

    invoke-static {v5, v3}, Landroid/app/ConfigurationController;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v6

    .line 6276
    .local v6, "finalOverrideConfig":Landroid/content/res/Configuration;
    iget-object v7, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v7, v10, v6, v9}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 6279
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v7

    invoke-interface {v7}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAutoUIEnable()Z

    move-result v7

    if-eqz v7, :cond_f6

    .line 6280
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v7

    invoke-interface {v7, v6, v1}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    .line 6284
    :cond_f6
    iput v15, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 6285
    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v7, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 6290
    invoke-static {v8, v3}, Landroid/app/ConfigurationController;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v7

    .line 6293
    .local v7, "configToReport":Landroid/content/res/Configuration;
    if-eqz v11, :cond_108

    .line 6294
    invoke-virtual {v1, v9, v7}, Landroid/app/Activity;->dispatchMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 6297
    :cond_108
    if-eqz v4, :cond_17b

    .line 6298
    iput-boolean v15, v1, Landroid/app/Activity;->mCalled:Z

    .line 6300
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 6302
    .local v19, "startTime":J
    invoke-virtual {v1, v7}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6304
    invoke-static {}, Landroid/appcompat/ApplicationCompatUtilsStub;->get()Landroid/appcompat/ApplicationCompatUtilsStub;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/appcompat/ApplicationCompatUtilsStub;->isContinuityEnabled()Z

    move-result v17

    if-eqz v17, :cond_153

    .line 6305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v19

    .line 6306
    .local v21, "took":J
    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v17, 0x0

    aput-object v23, v15, v17

    .line 6307
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v15, v18

    const/16 v17, 0x2

    invoke-virtual {v7}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x3

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v15, v17

    .line 6306
    const/16 v0, 0x75f7

    invoke-static {v0, v15}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6310
    .end local v21    # "took":J
    :cond_153
    iget-boolean v0, v1, Landroid/app/Activity;->mCalled:Z

    if-eqz v0, :cond_158

    goto :goto_17b

    .line 6311
    :cond_158
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " did not call through to super.onConfigurationChanged()"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6316
    .end local v19    # "startTime":J
    :cond_17b
    :goto_17b
    return-object v7
.end method

.method private blacklist performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .registers 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "newBaseConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I

    .line 6179
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6180
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_14

    .line 6181
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 6183
    :cond_14
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v0, v1, v2, p3}, Landroid/app/ActivityThread;->performActivityConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v0

    .line 6185
    .local v0, "reportedConfig":Landroid/content/res/Configuration;
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-static {v1}, Landroid/window/ConfigurationHelper;->freeTextLayoutCachesIfNeeded(I)V

    .line 6186
    return-object v0
.end method

.method private greylist-max-o performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 34
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;

    .line 3781
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    iget-object v12, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3782
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    const/4 v11, 0x1

    if-nez v0, :cond_17

    .line 3783
    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v15, v0, v1, v11}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 3787
    :cond_17
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v0

    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v1}, Landroid/util/GMSDownscaleStub;->setFixedOrientationPortraitAndShowLandScape(Landroid/content/pm/ActivityInfo;)V

    .line 3789
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3790
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_39

    .line 3791
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v2, v15, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 3792
    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3791
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3793
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3796
    :cond_39
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_4f

    .line 3797
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    move-object v9, v0

    goto :goto_50

    .line 3796
    :cond_4f
    move-object v9, v0

    .line 3802
    .end local v0    # "component":Landroid/content/ComponentName;
    .local v9, "component":Landroid/content/ComponentName;
    :goto_50
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-direct {v15, v0, v1, v9}, Landroid/app/ActivityThread;->initAutoUIConfig(Landroid/content/pm/ActivityInfo;Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 3804
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;

    move-result-object v8

    .line 3805
    .local v8, "appContext":Landroid/app/ContextImpl;
    const/4 v1, 0x0

    .line 3807
    .local v1, "activity":Landroid/app/Activity;
    :try_start_5c
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3808
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v2, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 3809
    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 3808
    invoke-virtual {v2, v0, v3, v4}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v2

    move-object v1, v2

    .line 3811
    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Landroid/app/ActivityThread;->mCurrentActivity:Ljava/lang/String;

    .line 3812
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->incrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 3813
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3814
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    .line 3815
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 3814
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 3816
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v2, :cond_97

    .line 3817
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_97} :catch_99

    .line 3825
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_97
    move-object v7, v1

    goto :goto_a3

    .line 3819
    :catch_99
    move-exception v0

    .line 3820
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_3ab

    move-object v7, v1

    .line 3828
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "activity":Landroid/app/Activity;
    .local v7, "activity":Landroid/app/Activity;
    :goto_a3
    :try_start_a3
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;
    :try_end_a5
    .catch Landroid/util/SuperNotCalledException; {:try_start_a3 .. :try_end_a5} :catch_3a0
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a5} :catch_363

    :try_start_a5
    iget-object v1, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v1}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    move-object v5, v0

    .line 3830
    .local v5, "app":Landroid/app/Application;
    sget-boolean v0, Landroid/app/ActivityThread;->localLOGV:Z
    :try_end_af
    .catch Landroid/util/SuperNotCalledException; {:try_start_a5 .. :try_end_af} :catch_358
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_af} :catch_363

    if-eqz v0, :cond_e3

    :try_start_b1
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing launch of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catch Landroid/util/SuperNotCalledException; {:try_start_b1 .. :try_end_c9} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_c9} :catch_ca

    goto :goto_e3

    .line 3916
    .end local v5    # "app":Landroid/app/Application;
    :catch_ca
    move-exception v0

    move-object v3, v7

    move-object/from16 v26, v8

    move-object/from16 v30, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v4, v14

    move-object v5, v15

    goto/16 :goto_36e

    .line 3913
    :catch_d7
    move-exception v0

    move-object v3, v7

    move-object/from16 v26, v8

    move-object v7, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v4, v14

    move-object v5, v15

    goto/16 :goto_3aa

    .line 3831
    .restart local v5    # "app":Landroid/app/Application;
    :cond_e3
    :goto_e3
    :try_start_e3
    sget-boolean v0, Landroid/app/ActivityThread;->localLOGV:Z
    :try_end_e5
    .catch Landroid/util/SuperNotCalledException; {:try_start_e3 .. :try_end_e5} :catch_358
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e5} :catch_363

    if-eqz v0, :cond_145

    :try_start_e7
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3833
    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 3834
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", comp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 3835
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 3836
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3831
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_145
    .catch Landroid/util/SuperNotCalledException; {:try_start_e7 .. :try_end_145} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_145} :catch_ca

    .line 3841
    :cond_145
    :try_start_145
    iget-object v1, v15, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1
    :try_end_148
    .catch Landroid/util/SuperNotCalledException; {:try_start_145 .. :try_end_148} :catch_358
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_148} :catch_363

    .line 3843
    :try_start_148
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v0

    iget-object v2, v15, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-interface {v0, v2}, Landroid/app/ActivityThreadStub;->checkActivityLeak(Landroid/util/ArrayMap;)V

    .line 3845
    iget-object v0, v15, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3846
    monitor-exit v1
    :try_end_159
    .catchall {:try_start_148 .. :try_end_159} :catchall_340

    .line 3848
    if-eqz v7, :cond_32f

    .line 3849
    :try_start_15b
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 3850
    .local v10, "title":Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, v15, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 3851
    invoke-virtual {v1}, Landroid/app/ConfigurationController;->getCompatConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 3852
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;
    :try_end_172
    .catch Landroid/util/SuperNotCalledException; {:try_start_15b .. :try_end_172} :catch_358
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_172} :catch_363

    if-eqz v1, :cond_179

    .line 3853
    :try_start_174
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_179
    .catch Landroid/util/SuperNotCalledException; {:try_start_174 .. :try_end_179} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_179} :catch_ca

    .line 3855
    :cond_179
    :try_start_179
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z
    :try_end_17b
    .catch Landroid/util/SuperNotCalledException; {:try_start_179 .. :try_end_17b} :catch_358
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_17b} :catch_363

    if-eqz v1, :cond_1a3

    :try_start_17d
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a3
    .catch Landroid/util/SuperNotCalledException; {:try_start_17d .. :try_end_1a3} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_1a3} :catch_ca

    .line 3857
    :cond_1a3
    const/4 v1, 0x0

    .line 3858
    .local v1, "window":Landroid/view/Window;
    :try_start_1a4
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;
    :try_end_1a6
    .catch Landroid/util/SuperNotCalledException; {:try_start_1a4 .. :try_end_1a6} :catch_358
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1a6} :catch_363

    const/4 v4, 0x0

    if-eqz v2, :cond_1b7

    :try_start_1a9
    iget-boolean v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v2, :cond_1b7

    .line 3859
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    move-object v1, v2

    .line 3860
    iput-object v4, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 3861
    iput-object v4, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;
    :try_end_1b4
    .catch Landroid/util/SuperNotCalledException; {:try_start_1a9 .. :try_end_1b4} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1b4} :catch_ca

    move-object/from16 v21, v1

    goto :goto_1b9

    .line 3866
    :cond_1b7
    move-object/from16 v21, v1

    .end local v1    # "window":Landroid/view/Window;
    .local v21, "window":Landroid/view/Window;
    :goto_1b9
    :try_start_1b9
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3867
    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v2

    new-array v3, v6, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/res/loader/ResourcesLoader;

    .line 3866
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 3869
    invoke-virtual {v8, v7}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 3870
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v16

    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v11, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_1df
    .catch Landroid/util/SuperNotCalledException; {:try_start_1b9 .. :try_end_1df} :catch_358
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_1df} :catch_363

    move-object/from16 v18, v12

    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v18, "aInfo":Landroid/content/pm/ActivityInfo;
    :try_start_1e1
    iget-object v12, v14, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;
    :try_end_1e3
    .catch Landroid/util/SuperNotCalledException; {:try_start_1e1 .. :try_end_1e3} :catch_323
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_1e3} :catch_316

    :try_start_1e3
    iget-object v13, v14, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;
    :try_end_1e5
    .catch Landroid/util/SuperNotCalledException; {:try_start_1e3 .. :try_end_1e5} :catch_30f
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_1e5} :catch_306

    :try_start_1e5
    iget-object v15, v14, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    move-object/from16 v22, v10

    .end local v10    # "title":Ljava/lang/CharSequence;
    .local v22, "title":Ljava/lang/CharSequence;
    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    move-object/from16 v19, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v20, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    move-object/from16 v23, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->assistToken:Landroid/os/IBinder;

    move-object/from16 v24, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->shareableActivityToken:Landroid/os/IBinder;
    :try_end_1fb
    .catch Landroid/util/SuperNotCalledException; {:try_start_1e5 .. :try_end_1fb} :catch_2fc
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_1fb} :catch_2f0

    move-object/from16 v25, v1

    move-object v1, v7

    move/from16 v26, v2

    move-object v2, v8

    move-object/from16 v27, v3

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    move-object/from16 v28, v5

    .end local v5    # "app":Landroid/app/Application;
    .local v28, "app":Landroid/app/Application;
    move-object/from16 v5, v27

    move/from16 v6, v26

    move-object/from16 v29, v7

    .end local v7    # "activity":Landroid/app/Activity;
    .local v29, "activity":Landroid/app/Activity;
    move-object/from16 v7, v28

    move-object/from16 v26, v8

    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .local v26, "appContext":Landroid/app/ContextImpl;
    move-object/from16 v8, v25

    move-object/from16 v30, v9

    .end local v9    # "component":Landroid/content/ComponentName;
    .local v30, "component":Landroid/content/ComponentName;
    move-object v9, v11

    move-object v11, v12

    move-object/from16 v25, v18

    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v25, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object v12, v13

    move-object v13, v15

    move-object v15, v14

    move-object v14, v0

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v10

    move-object/from16 v10, v22

    .end local v22    # "title":Ljava/lang/CharSequence;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :try_start_22d
    invoke-virtual/range {v1 .. v20}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_230
    .catch Landroid/util/SuperNotCalledException; {:try_start_22d .. :try_end_230} :catch_2e3
    .catch Ljava/lang/Exception; {:try_start_22d .. :try_end_230} :catch_2d8

    .line 3876
    move-object/from16 v2, p2

    if-eqz v2, :cond_247

    .line 3877
    move-object/from16 v3, v29

    .end local v29    # "activity":Landroid/app/Activity;
    .local v3, "activity":Landroid/app/Activity;
    :try_start_236
    iput-object v2, v3, Landroid/app/Activity;->mIntent:Landroid/content/Intent;
    :try_end_238
    .catch Landroid/util/SuperNotCalledException; {:try_start_236 .. :try_end_238} :catch_240
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_238} :catch_239

    goto :goto_249

    .line 3916
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v21    # "window":Landroid/view/Window;
    .end local v28    # "app":Landroid/app/Application;
    :catch_239
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v4, p1

    goto/16 :goto_36e

    .line 3913
    :catch_240
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v4, p1

    goto/16 :goto_352

    .line 3876
    .end local v3    # "activity":Landroid/app/Activity;
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    .restart local v21    # "window":Landroid/view/Window;
    .restart local v28    # "app":Landroid/app/Application;
    .restart local v29    # "activity":Landroid/app/Activity;
    :cond_247
    move-object/from16 v3, v29

    .line 3879
    .end local v29    # "activity":Landroid/app/Activity;
    .restart local v3    # "activity":Landroid/app/Activity;
    :goto_249
    move-object/from16 v4, p1

    const/4 v1, 0x0

    :try_start_24c
    iput-object v1, v4, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 3880
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 3881
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/app/Activity;->mStartedActivity:Z

    .line 3882
    iget-object v6, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v6

    .line 3883
    .local v6, "theme":I
    if-eqz v6, :cond_25f

    .line 3884
    invoke-virtual {v3, v6}, Landroid/app/Activity;->setTheme(I)V

    .line 3887
    :cond_25f
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v7, :cond_269

    .line 3888
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityOptions:Landroid/app/ActivityOptions;

    iput-object v7, v3, Landroid/app/Activity;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 3889
    iput-object v1, v4, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 3891
    :cond_269
    iget-boolean v1, v4, Landroid/app/ActivityThread$ActivityClientRecord;->mLaunchedFromBubble:Z

    iput-boolean v1, v3, Landroid/app/Activity;->mLaunchedFromBubble:Z

    .line 3892
    iput-boolean v5, v3, Landroid/app/Activity;->mCalled:Z

    .line 3897
    iput-object v3, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 3898
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v1
    :try_end_275
    .catch Landroid/util/SuperNotCalledException; {:try_start_24c .. :try_end_275} :catch_2d3
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_275} :catch_2ce

    if-eqz v1, :cond_283

    .line 3899
    move-object/from16 v5, p0

    :try_start_279
    iget-object v1, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v8, v4, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v3, v7, v8}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_28c

    .line 3901
    :cond_283
    move-object/from16 v5, p0

    iget-object v1, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v7}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3903
    :goto_28c
    iget-boolean v1, v3, Landroid/app/Activity;->mCalled:Z

    if-eqz v1, :cond_2a5

    .line 3908
    iget-object v1, v5, Landroid/app/ActivityThread;->mLastReportedWindowingMode:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 3909
    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 3908
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_33b

    .line 3904
    :cond_2a5
    new-instance v1, Landroid/util/SuperNotCalledException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 3905
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not call through to super.onCreate()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .end local v3    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v30    # "component":Landroid/content/ComponentName;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "customIntent":Landroid/content/Intent;
    throw v1

    .line 3916
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v6    # "theme":I
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v21    # "window":Landroid/view/Window;
    .end local v28    # "app":Landroid/app/Application;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v30    # "component":Landroid/content/ComponentName;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "customIntent":Landroid/content/Intent;
    :catch_2ce
    move-exception v0

    move-object/from16 v5, p0

    goto/16 :goto_36e

    .line 3913
    :catch_2d3
    move-exception v0

    move-object/from16 v5, p0

    goto/16 :goto_352

    .line 3916
    .end local v3    # "activity":Landroid/app/Activity;
    .restart local v29    # "activity":Landroid/app/Activity;
    :catch_2d8
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v4, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v29

    .end local v29    # "activity":Landroid/app/Activity;
    .restart local v3    # "activity":Landroid/app/Activity;
    goto/16 :goto_36e

    .line 3913
    .end local v3    # "activity":Landroid/app/Activity;
    .restart local v29    # "activity":Landroid/app/Activity;
    :catch_2e3
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v4, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v29

    move-object/from16 v7, v30

    .end local v29    # "activity":Landroid/app/Activity;
    .restart local v3    # "activity":Landroid/app/Activity;
    goto/16 :goto_3aa

    .line 3916
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v30    # "component":Landroid/content/ComponentName;
    .restart local v7    # "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_2f0
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v2, p2

    move-object v3, v7

    move-object/from16 v26, v8

    move-object/from16 v30, v9

    move-object v4, v14

    goto :goto_31f

    .line 3913
    :catch_2fc
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v2, p2

    move-object v3, v7

    move-object/from16 v26, v8

    move-object v4, v14

    goto :goto_32a

    .line 3916
    :catch_306
    move-exception v0

    move-object/from16 v2, p2

    move-object v3, v7

    move-object/from16 v26, v8

    move-object/from16 v30, v9

    goto :goto_31d

    .line 3913
    :catch_30f
    move-exception v0

    move-object/from16 v2, p2

    move-object v3, v7

    move-object/from16 v26, v8

    goto :goto_328

    .line 3916
    :catch_316
    move-exception v0

    move-object v3, v7

    move-object/from16 v26, v8

    move-object/from16 v30, v9

    move-object v2, v13

    :goto_31d
    move-object v4, v14

    move-object v5, v15

    :goto_31f
    move-object/from16 v25, v18

    .end local v7    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v30    # "component":Landroid/content/ComponentName;
    goto/16 :goto_36e

    .line 3913
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v30    # "component":Landroid/content/ComponentName;
    .restart local v7    # "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_323
    move-exception v0

    move-object v3, v7

    move-object/from16 v26, v8

    move-object v2, v13

    :goto_328
    move-object v4, v14

    move-object v5, v15

    :goto_32a
    move-object/from16 v25, v18

    move-object v7, v9

    .end local v7    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v30    # "component":Landroid/content/ComponentName;
    goto/16 :goto_3aa

    .line 3848
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v30    # "component":Landroid/content/ComponentName;
    .restart local v5    # "app":Landroid/app/Application;
    .restart local v7    # "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_32f
    move-object/from16 v28, v5

    move-object v3, v7

    move-object/from16 v26, v8

    move-object/from16 v30, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v4, v14

    move-object v5, v15

    .line 3911
    .end local v5    # "app":Landroid/app/Application;
    .end local v7    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v28    # "app":Landroid/app/Application;
    .restart local v30    # "component":Landroid/content/ComponentName;
    :goto_33b
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V
    :try_end_33f
    .catch Landroid/util/SuperNotCalledException; {:try_start_279 .. :try_end_33f} :catch_351
    .catch Ljava/lang/Exception; {:try_start_279 .. :try_end_33f} :catch_34f

    .line 3922
    .end local v28    # "app":Landroid/app/Application;
    goto :goto_376

    .line 3846
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v30    # "component":Landroid/content/ComponentName;
    .restart local v5    # "app":Landroid/app/Application;
    .restart local v7    # "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_340
    move-exception v0

    move-object/from16 v28, v5

    move-object v3, v7

    move-object/from16 v26, v8

    move-object/from16 v30, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v4, v14

    move-object v5, v15

    .end local v5    # "app":Landroid/app/Application;
    .end local v7    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v28    # "app":Landroid/app/Application;
    .restart local v30    # "component":Landroid/content/ComponentName;
    :goto_34d
    :try_start_34d
    monitor-exit v1
    :try_end_34e
    .catchall {:try_start_34d .. :try_end_34e} :catchall_356

    .end local v3    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v30    # "component":Landroid/content/ComponentName;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "customIntent":Landroid/content/Intent;
    :try_start_34e
    throw v0
    :try_end_34f
    .catch Landroid/util/SuperNotCalledException; {:try_start_34e .. :try_end_34f} :catch_351
    .catch Ljava/lang/Exception; {:try_start_34e .. :try_end_34f} :catch_34f

    .line 3916
    .end local v28    # "app":Landroid/app/Application;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v30    # "component":Landroid/content/ComponentName;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "customIntent":Landroid/content/Intent;
    :catch_34f
    move-exception v0

    goto :goto_36e

    .line 3913
    :catch_351
    move-exception v0

    :goto_352
    move-object/from16 v7, v30

    goto/16 :goto_3aa

    .line 3846
    .restart local v28    # "app":Landroid/app/Application;
    :catchall_356
    move-exception v0

    goto :goto_34d

    .line 3913
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v28    # "app":Landroid/app/Application;
    .end local v30    # "component":Landroid/content/ComponentName;
    .restart local v7    # "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_358
    move-exception v0

    move-object v3, v7

    move-object/from16 v26, v8

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v4, v14

    move-object v5, v15

    move-object v7, v9

    .end local v7    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v30    # "component":Landroid/content/ComponentName;
    goto :goto_3aa

    .line 3916
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v30    # "component":Landroid/content/ComponentName;
    .restart local v7    # "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_363
    move-exception v0

    move-object v3, v7

    move-object/from16 v26, v8

    move-object/from16 v30, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v4, v14

    move-object v5, v15

    .line 3917
    .end local v7    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v30    # "component":Landroid/content/ComponentName;
    :goto_36e
    iget-object v1, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_377

    .line 3924
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_376
    return-object v3

    .line 3918
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_377
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v7, v30

    .end local v30    # "component":Landroid/content/ComponentName;
    .local v7, "component":Landroid/content/ComponentName;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3920
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3913
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .local v7, "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_3a0
    move-exception v0

    move-object v3, v7

    move-object/from16 v26, v8

    move-object v7, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v4, v14

    move-object v5, v15

    .line 3914
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "e":Landroid/util/SuperNotCalledException;
    .restart local v3    # "activity":Landroid/app/Activity;
    .local v7, "component":Landroid/content/ComponentName;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    :goto_3aa
    throw v0

    .line 3821
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .local v0, "e":Ljava/lang/Exception;
    .local v1, "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_3ab
    move-object/from16 v26, v8

    move-object v7, v9

    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .restart local v7    # "component":Landroid/content/ComponentName;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to instantiate activity "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3823
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private greylist-max-o performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;
    .registers 12
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finished"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 5319
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 5320
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_c

    .line 5324
    return-object v1

    .line 5326
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing pause of activity that is not resumed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5328
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 5329
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5331
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_37
    const/4 v0, 0x1

    if-eqz p2, :cond_3e

    .line 5332
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v2, Landroid/app/Activity;->mFinished:Z

    .line 5336
    :cond_3e
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    const/4 v3, 0x0

    if-nez v2, :cond_4c

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v2

    if-eqz v2, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v3

    .line 5337
    .local v0, "shouldSaveState":Z
    :goto_4d
    if-eqz v0, :cond_52

    .line 5338
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5341
    :cond_52
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 5345
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 5346
    :try_start_58
    iget-object v4, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 5347
    .local v4, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_92

    .line 5348
    if-eqz v4, :cond_69

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_69
    move v2, v3

    .line 5349
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6b
    if-ge v3, v2, :cond_7b

    .line 5350
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/OnActivityPausedListener;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-interface {v5, v6}, Landroid/app/OnActivityPausedListener;->onPaused(Landroid/app/Activity;)V

    .line 5349
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 5353
    .end local v3    # "i":I
    :cond_7b
    if-eqz p4, :cond_82

    invoke-virtual {p4}, Landroid/app/servertransaction/PendingTransactionActions;->getOldState()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_83

    :cond_82
    move-object v3, v1

    .line 5354
    .local v3, "oldState":Landroid/os/Bundle;
    :goto_83
    if-eqz v3, :cond_8d

    .line 5360
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 5361
    iput-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 5365
    :cond_8d
    if-eqz v0, :cond_91

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    :cond_91
    return-object v1

    .line 5347
    .end local v2    # "size":I
    .end local v3    # "oldState":Landroid/os/Bundle;
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_92
    move-exception v1

    :try_start_93
    monitor-exit v2
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw v1
.end method

.method private greylist-max-o performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V
    .registers 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 5369
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v0, :cond_5

    .line 5371
    return-void

    .line 5376
    :cond_5
    const/4 v0, 0x0

    const-string/jumbo v1, "pausing"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/ActivityThread;->reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 5379
    :try_start_c
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v1, Landroid/app/Activity;->mCalled:Z

    .line 5380
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 5381
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mCalled:Z

    if-eqz v0, :cond_1e

    .line 5392
    goto :goto_4e

    .line 5382
    :cond_1e
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v2}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "reason":Ljava/lang/String;
    throw v0
    :try_end_43
    .catch Landroid/util/SuperNotCalledException; {:try_start_c .. :try_end_43} :catch_80
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_43} :catch_43

    .line 5387
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "reason":Ljava/lang/String;
    :catch_43
    move-exception v0

    .line 5388
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 5393
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4e
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 5394
    return-void

    .line 5389
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_53
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to pause activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5390
    invoke-static {v3}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5385
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_80
    move-exception v0

    .line 5386
    .local v0, "e":Landroid/util/SuperNotCalledException;
    throw v0
.end method

.method private blacklist performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZLjava/lang/String;)V
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "info"    # Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
    .param p3, "saveState"    # Z
    .param p4, "finalStateRequest"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5440
    sget-boolean v0, Landroid/app/ActivityThread;->localLOGV:Z

    const-string v1, "ActivityThread"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing stop of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5441
    :cond_1c
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v0, :cond_59

    .line 5442
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_27

    .line 5446
    return-void

    .line 5448
    :cond_27
    if-nez p4, :cond_59

    .line 5449
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing stop of activity that is already stopped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5451
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 5452
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5453
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getStateString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5458
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_59
    invoke-direct {p0, p1, p5}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 5460
    if-eqz p2, :cond_a5

    .line 5465
    :try_start_5e
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setDescription(Ljava/lang/CharSequence;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_67} :catch_68

    .line 5473
    goto :goto_a5

    .line 5466
    :catch_68
    move-exception v0

    .line 5467
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_74

    goto :goto_a5

    .line 5468
    :cond_74
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save state of activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5470
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5471
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5476
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a5
    :goto_a5
    invoke-direct {p0, p1, p3, p5}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 5477
    return-void
.end method

.method private blacklist prepareInstrumentation(Landroid/app/ActivityThread$AppBindData;)Landroid/content/pm/InstrumentationInfo;
    .registers 7
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .line 7467
    :try_start_0
    new-instance v0, Landroid/app/ApplicationPackageManager;

    const/4 v1, 0x0

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    const/4 v2, 0x0

    .line 7468
    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationPackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_11} :catch_af

    .line 7472
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    nop

    .line 7475
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 7476
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 7477
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

    .line 7484
    :cond_82
    iget-object v1, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 7485
    iget-object v1, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 7486
    iget-object v1, v0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 7487
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityThread;->getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 7488
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 7489
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getSplitAppDirs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 7490
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getLibDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 7492
    return-object v0

    .line 7469
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    :catch_af
    move-exception v0

    .line 7470
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find instrumentation info for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static varargs blacklist printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objs"    # [Ljava/lang/Object;

    .line 2987
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2988
    return-void
.end method

.method private blacklist purgePendingResources()V
    .registers 4

    .line 8523
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "purgePendingResources"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8524
    invoke-direct {p0}, Landroid/app/ActivityThread;->nPurgePendingResources()V

    .line 8525
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 8526
    return-void
.end method

.method private blacklist relaunchAllActivities(ZLjava/lang/String;)V
    .registers 5
    .param p1, "preserveWindows"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 5612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Relaunch all activities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5613
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_30

    .line 5614
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {p0, v1, p1}, Landroid/app/ActivityThread;->scheduleRelaunchActivityIfPossible(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 5613
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 5616
    .end local v0    # "i":I
    :cond_30
    return-void
.end method

.method private blacklist removeSafeCancellationTransport(Landroid/app/ActivityThread$SafeCancellationTransport;)Landroid/os/CancellationSignal;
    .registers 4
    .param p1, "transport"    # Landroid/app/ActivityThread$SafeCancellationTransport;

    .line 2064
    monitor-enter p0

    .line 2065
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CancellationSignal;

    .line 2066
    .local v0, "cancellation":Landroid/os/CancellationSignal;
    iget-object v1, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2067
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    .line 2069
    :cond_14
    monitor-exit p0

    return-object v0

    .line 2070
    .end local v0    # "cancellation":Landroid/os/CancellationSignal;
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private greylist-max-o reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4093
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4095
    return-void

    .line 4097
    :cond_b
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    .line 4098
    .local v0, "configurations":[Landroid/content/res/Configuration;
    if-nez v0, :cond_18

    .line 4099
    return-void

    .line 4101
    :cond_18
    new-instance v1, Landroid/window/SizeConfigurationBuckets;

    invoke-direct {v1, v0}, Landroid/window/SizeConfigurationBuckets;-><init>([Landroid/content/res/Configuration;)V

    invoke-static {p1, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fputmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SizeConfigurationBuckets;)V

    .line 4102
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/SizeConfigurationBuckets;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityClient;->reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V

    .line 4103
    return-void
.end method

.method private blacklist reportSplashscreenViewShown(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "view"    # Landroid/window/SplashScreenView;

    .line 4404
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityClient;->reportSplashScreenAttached(Landroid/os/IBinder;)V

    .line 4405
    monitor-enter p0

    .line 4406
    :try_start_8
    iget-object v0, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    if-eqz v0, :cond_f

    .line 4407
    invoke-virtual {v0, p1, p2}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->handOverSplashScreenView(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    .line 4409
    :cond_f
    monitor-exit p0

    .line 4410
    return-void

    .line 4409
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private blacklist reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    .registers 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "onTop"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5273
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastReportedTopResumedState:Z

    if-eq v0, p2, :cond_b

    .line 5274
    iput-boolean p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastReportedTopResumedState:Z

    .line 5275
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->performTopResumedActivityChanged(ZLjava/lang/String;)V

    .line 5277
    :cond_b
    return-void
.end method

.method private static greylist-max-o safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 5768
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 5769
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_9

    const-string v1, "[Unknown]"

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    :goto_d
    return-object v1
.end method

.method private blacklist schedulePauseWithUserLeaveHintAndReturnToCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4433
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    .line 4434
    .local v0, "prevState":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    .line 4435
    return-void

    .line 4438
    :cond_b
    packed-switch v0, :pswitch_data_1e

    goto :goto_1d

    .line 4446
    :pswitch_f
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->scheduleResume(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4447
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->schedulePauseWithUserLeavingHint(Landroid/app/ActivityThread$ActivityClientRecord;)V

    goto :goto_1d

    .line 4441
    :pswitch_16
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->schedulePauseWithUserLeavingHint(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4442
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->scheduleResume(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4443
    nop

    .line 4450
    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x3
        :pswitch_16
        :pswitch_f
    .end packed-switch
.end method

.method private blacklist schedulePauseWithUserLeavingHint(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4453
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 4454
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4, v4}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 4457
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 4458
    return-void
.end method

.method private blacklist scheduleRelaunchActivityIfPossible(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .registers 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "preserveWindow"    # Z

    .line 6020
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-nez v0, :cond_10

    :cond_a
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_11

    .line 6023
    :cond_10
    return-void

    .line 6025
    :cond_11
    if-eqz p2, :cond_1a

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v0, :cond_1a

    .line 6026
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 6028
    :cond_1a
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/16 v2, 0xa0

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    .line 6029
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 6030
    return-void
.end method

.method private blacklist scheduleResume(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4461
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 4462
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 4463
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 4464
    return-void
.end method

.method private greylist-max-o sendMessage(ILjava/lang/Object;I)V
    .registers 10
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .line 3736
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 3737
    return-void
.end method

.method private greylist-max-o sendMessage(ILjava/lang/Object;II)V
    .registers 11
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .line 3740
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 3741
    return-void
.end method

.method private greylist-max-o sendMessage(ILjava/lang/Object;IIZ)V
    .registers 8
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "async"    # Z

    .line 3744
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    if-eqz v0, :cond_40

    .line 3745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCHEDULE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 3746
    invoke-virtual {v1, p1}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3745
    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    :cond_40
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3749
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3750
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3751
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 3752
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 3753
    if-eqz p5, :cond_52

    .line 3754
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3756
    :cond_52
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 3757
    return-void
.end method

.method private blacklist sendMessageToFront(ILjava/lang/Object;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 3761
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCHEDULE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 3762
    invoke-virtual {v1, p1}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3761
    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    :cond_22
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3764
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3765
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3766
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3767
    return-void
.end method

.method private blacklist setEmbeddedParam(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 6837
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mIsEmbedded:Z

    .line 6838
    if-eqz p1, :cond_20

    .line 6840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable embedding window stub="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6842
    :cond_20
    return-void
.end method

.method private blacklist setLandscapeParam(Landroid/content/pm/ApplicationInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 6861
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSupportSmartOrient()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSupportSmartOrient:Z

    .line 6862
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isNeedDisableAccSensor()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mNeedDisableAccSensor:Z

    .line 6863
    return-void
.end method

.method private greylist-max-o setupGraphicsSupport(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 6895
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "setupGraphicsSupport"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6898
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 6902
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 6903
    .local v2, "cacheDir":Ljava/io/File;
    const-string v3, "ActivityThread"

    if-eqz v2, :cond_33

    .line 6905
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 6906
    .local v4, "tmpdir":Ljava/lang/String;
    const-string v5, "java.io.tmpdir"

    invoke-static {v5, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6908
    :try_start_25
    const-string v5, "TMPDIR"

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2b
    .catch Landroid/system/ErrnoException; {:try_start_25 .. :try_end_2b} :catch_2c

    .line 6911
    goto :goto_32

    .line 6909
    :catch_2c
    move-exception v5

    .line 6910
    .local v5, "ex":Landroid/system/ErrnoException;
    const-string v6, "Unable to initialize $TMPDIR"

    invoke-static {v3, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6912
    .end local v4    # "tmpdir":Ljava/lang/String;
    .end local v5    # "ex":Landroid/system/ErrnoException;
    :goto_32
    goto :goto_38

    .line 6913
    :cond_33
    const-string v4, "Unable to initialize \"java.io.tmpdir\" property due to missing cache directory"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6918
    :goto_38
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v4

    .line 6919
    .local v4, "deviceContext":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v5

    .line 6920
    .local v5, "codeCacheDir":Ljava/io/File;
    if-eqz v5, :cond_60

    .line 6922
    :try_start_42
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 6923
    .local v3, "uid":I
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 6924
    .local v6, "packages":[Ljava/lang/String;
    if-eqz v6, :cond_56

    .line 6925
    invoke-static {v5}, Landroid/graphics/HardwareRenderer;->setupDiskCache(Ljava/io/File;)V

    .line 6926
    invoke-static {v5}, Landroid/renderscript/RenderScriptCacheDir;->setupDiskCache(Ljava/io/File;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_56} :catch_57

    .line 6931
    .end local v3    # "uid":I
    .end local v6    # "packages":[Ljava/lang/String;
    :cond_56
    goto :goto_65

    .line 6928
    :catch_57
    move-exception v3

    .line 6929
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 6930
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 6933
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_60
    const-string v6, "Unable to use shader/script cache: missing code-cache directory"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6939
    .end local v2    # "cacheDir":Ljava/io/File;
    .end local v4    # "deviceContext":Landroid/content/Context;
    .end local v5    # "codeCacheDir":Ljava/io/File;
    :cond_65
    :goto_65
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v2, p1, v3}, Landroid/os/GraphicsEnvironment;->setup(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 6940
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 6941
    return-void
.end method

.method public static blacklist shouldReportChange(ILandroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;I)Z
    .registers 10
    .param p0, "publicDiff"    # I
    .param p1, "currentConfig"    # Landroid/content/res/Configuration;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "sizeBuckets"    # Landroid/window/SizeConfigurationBuckets;
    .param p4, "handledConfigChanges"    # I

    .line 6337
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 6338
    return v0

    .line 6340
    :cond_4
    invoke-static {p0, p1, p2, p3}, Landroid/window/SizeConfigurationBuckets;->filterDiff(ILandroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;)I

    move-result v1

    .line 6346
    .local v1, "diffWithBucket":I
    if-eqz v1, :cond_c

    move v2, v1

    goto :goto_d

    :cond_c
    move v2, p0

    .line 6351
    .local v2, "diff":I
    :goto_d
    and-int/lit8 v3, v2, 0x30

    const/4 v4, 0x1

    if-eqz v3, :cond_18

    .line 6352
    and-int v3, p4, v2

    if-eqz v3, :cond_17

    move v0, v4

    :cond_17
    return v0

    .line 6355
    :cond_18
    not-int v3, p4

    and-int/2addr v3, v2

    if-nez v3, :cond_1d

    move v0, v4

    :cond_1d
    return v0
.end method

.method private blacklist syncTransferSplashscreenViewTransaction(Landroid/window/SplashScreenView;Landroid/os/IBinder;Landroid/view/View;Landroid/view/SurfaceControl;)V
    .registers 7
    .param p1, "view"    # Landroid/window/SplashScreenView;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "decorView"    # Landroid/view/View;
    .param p4, "startingWindowLeash"    # Landroid/view/SurfaceControl;

    .line 4418
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4419
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v0, p4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4421
    invoke-virtual {p3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 4422
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->syncTransferSurfaceOnDraw()V

    .line 4424
    new-instance v1, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p1}, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;-><init>(Landroid/app/ActivityThread;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4425
    return-void
.end method

.method public static greylist systemMain()Landroid/app/ActivityThread;
    .registers 4

    .line 8249
    invoke-static {}, Landroid/view/ThreadedRenderer;->initForSystemProcess()V

    .line 8251
    invoke-static {}, Landroid/os/perfdebug/PerfDebugMonitor;->get()Landroid/os/perfdebug/PerfDebugMonitor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/perfdebug/PerfDebugMonitor;->prepareMonitor()V

    .line 8252
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 8253
    .local v0, "thread":Landroid/app/ActivityThread;
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread;->attach(ZJ)V

    .line 8254
    return-object v0
.end method

.method private blacklist throwRemoteServiceException(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "typeId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2096
    packed-switch p2, :pswitch_data_44

    .line 2113
    new-instance v0, Landroid/app/RemoteServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (with unwknown typeId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2110
    :pswitch_26
    new-instance v0, Landroid/app/RemoteServiceException$CrashedByAdbException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$CrashedByAdbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2107
    :pswitch_2c
    new-instance v0, Landroid/app/RemoteServiceException$MissingRequestPasswordComplexityPermissionException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$MissingRequestPasswordComplexityPermissionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2104
    :pswitch_32
    new-instance v0, Landroid/app/RemoteServiceException$BadForegroundServiceNotificationException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$BadForegroundServiceNotificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2101
    :pswitch_38
    new-instance v0, Landroid/app/RemoteServiceException$CannotPostForegroundServiceNotificationException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$CannotPostForegroundServiceNotificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2098
    :pswitch_3e
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->generateForegroundServiceDidNotStartInTimeException(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
    .end packed-switch
.end method

.method private blacklist updateDebugViewAttributeState()Z
    .registers 6

    .line 5597
    sget-boolean v0, Landroid/view/View;->sDebugViewAttributes:Z

    .line 5601
    .local v0, "previousState":Z
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string v2, "debug_view_attributes_application_package"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/View;->sDebugViewAttributesApplicationPackage:Ljava/lang/String;

    .line 5603
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_1d

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1d

    .line 5604
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1f

    :cond_1d
    const-string v1, "<unknown-app>"

    .line 5605
    .local v1, "currentPackage":Ljava/lang/String;
    :goto_1f
    iget-object v2, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 5606
    const-string v3, "debug_view_attributes"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_36

    sget-object v2, Landroid/view/View;->sDebugViewAttributesApplicationPackage:Ljava/lang/String;

    .line 5607
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_36

    :cond_34
    move v2, v4

    goto :goto_37

    :cond_36
    :goto_36
    move v2, v3

    :goto_37
    sput-boolean v2, Landroid/view/View;->sDebugViewAttributes:Z

    .line 5608
    sget-boolean v2, Landroid/view/View;->sDebugViewAttributes:Z

    if-eq v0, v2, :cond_3e

    move v4, v3

    :cond_3e
    return v4
.end method

.method public static blacklist updateHttpProxy(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 8258
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8259
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Proxy;->setHttpProxyConfiguration(Landroid/net/ProxyInfo;)V

    .line 8260
    return-void
.end method

.method private blacklist updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 16
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "state"    # I
    .param p3, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p4, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p6, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
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

    .line 4523
    .local p5, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4524
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v0, :cond_24

    .line 4525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUiTranslationState(): no activity for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4526
    return-void

    .line 4528
    :cond_24
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/app/Activity;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 4530
    return-void
.end method

.method private greylist-max-o updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .registers 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "show"    # Z

    .line 5515
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 5516
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_38

    .line 5517
    const/4 v1, 0x1

    if-eqz p2, :cond_24

    .line 5518
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-nez v2, :cond_38

    .line 5519
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 5520
    iget v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 5521
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v1, :cond_38

    .line 5522
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->makeVisible()V

    goto :goto_38

    .line 5526
    :cond_24
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v2, :cond_38

    .line 5527
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 5528
    iget v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 5529
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5533
    :cond_38
    :goto_38
    return-void
.end method

.method private blacklist updateVmProcessState(I)V
    .registers 5
    .param p1, "processState"    # I

    .line 3691
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mIsHomeProcess:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    .line 3692
    const/4 v0, 0x2

    if-gt p1, v0, :cond_a

    .line 3693
    goto :goto_b

    .line 3694
    :cond_a
    move v1, v2

    :goto_b
    move v0, v1

    .local v0, "state":I
    goto :goto_13

    .line 3696
    .end local v0    # "state":I
    :cond_d
    const/4 v0, 0x6

    if-gt p1, v0, :cond_11

    .line 3697
    goto :goto_12

    .line 3698
    :cond_11
    move v1, v2

    :goto_12
    move v0, v1

    .line 3701
    .restart local v0    # "state":I
    :goto_13
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldalvik/system/VMRuntime;->updateProcessState(I)V

    .line 3702
    return-void
.end method


# virtual methods
.method public final greylist acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .registers 14
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    .line 7749
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7750
    :try_start_3
    new-instance v1, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v1, p2, p3}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 7751
    .local v1, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 7752
    .local v2, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    const/4 v3, 0x0

    if-nez v2, :cond_15

    .line 7753
    monitor-exit v0

    return-object v3

    .line 7756
    :cond_15
    iget-object v4, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 7757
    .local v4, "provider":Landroid/content/IContentProvider;
    invoke-interface {v4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 7758
    .local v5, "jBinder":Landroid/os/IBinder;
    invoke-interface {v5}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v6

    if-nez v6, :cond_4f

    .line 7761
    const-string v6, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Acquiring provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": existing object\'s process dead"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7763
    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    .line 7764
    monitor-exit v0

    return-object v3

    .line 7769
    :cond_4f
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 7770
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v3, :cond_5c

    .line 7771
    invoke-direct {p0, v3, p4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V

    .line 7773
    :cond_5c
    monitor-exit v0

    return-object v4

    .line 7774
    .end local v1    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local v2    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v3    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "provider":Landroid/content/IContentProvider;
    .end local v5    # "jBinder":Landroid/os/IBinder;
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public final greylist acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .registers 23
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    .line 7604
    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {p0 .. p4}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v9

    .line 7605
    .local v9, "provider":Landroid/content/IContentProvider;
    if-eqz v9, :cond_b

    .line 7606
    return-object v9

    .line 7615
    :cond_b
    const/4 v10, 0x0

    .line 7616
    .local v10, "holder":Landroid/app/ContentProviderHolder;
    move-object/from16 v15, p0

    invoke-direct {v15, v7, v8}, Landroid/app/ActivityThread;->getGetProviderKey(Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;

    move-result-object v14

    .line 7618
    .local v14, "key":Landroid/app/ActivityThread$ProviderKey;
    const/4 v11, 0x0

    :try_start_13
    monitor-enter v14
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_14} :catch_f4
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_14} :catch_89
    .catchall {:try_start_13 .. :try_end_14} :catchall_85

    .line 7619
    :try_start_14
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 7620
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 7619
    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_7e

    move-object v1, v0

    .line 7623
    .end local v10    # "holder":Landroid/app/ContentProviderHolder;
    .local v1, "holder":Landroid/app/ContentProviderHolder;
    if-eqz v1, :cond_70

    :try_start_2d
    iget-object v0, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v0, :cond_70

    iget-boolean v0, v1, Landroid/app/ContentProviderHolder;->mLocal:Z

    if-nez v0, :cond_70

    .line 7624
    iget-object v2, v14, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_7b

    .line 7625
    :try_start_38
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    if-eqz v0, :cond_59

    .line 7626
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v0, :cond_61

    .line 7627
    const-string v0, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "already received provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 7630
    :cond_59
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    sget v3, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 7632
    :cond_61
    :goto_61
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    move-object v1, v0

    .line 7633
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_38 .. :try_end_65} :catchall_6d

    .line 7634
    if-eqz v1, :cond_70

    :try_start_67
    iget-object v0, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;
    :try_end_69
    .catchall {:try_start_67 .. :try_end_69} :catchall_7b

    if-nez v0, :cond_70

    .line 7636
    const/4 v1, 0x0

    goto :goto_70

    .line 7633
    :catchall_6d
    move-exception v0

    :try_start_6e
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .end local v9    # "provider":Landroid/content/IContentProvider;
    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "c":Landroid/content/Context;
    .end local p2    # "auth":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "stable":Z
    :try_start_6f
    throw v0

    .line 7639
    .restart local v1    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v9    # "provider":Landroid/content/IContentProvider;
    .restart local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "c":Landroid/content/Context;
    .restart local p2    # "auth":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "stable":Z
    :cond_70
    :goto_70
    monitor-exit v14
    :try_end_71
    .catchall {:try_start_6f .. :try_end_71} :catchall_7b

    .line 7646
    iget-object v2, v14, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7647
    :try_start_74
    iput-object v11, v14, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 7648
    monitor-exit v2

    goto :goto_91

    :catchall_78
    move-exception v0

    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_78

    throw v0

    .line 7639
    :catchall_7b
    move-exception v0

    move-object v10, v1

    goto :goto_7f

    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v10    # "holder":Landroid/app/ContentProviderHolder;
    :catchall_7e
    move-exception v0

    :goto_7f
    :try_start_7f
    monitor-exit v14
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    .end local v9    # "provider":Landroid/content/IContentProvider;
    .end local v10    # "holder":Landroid/app/ContentProviderHolder;
    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "c":Landroid/content/Context;
    .end local p2    # "auth":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "stable":Z
    :try_start_80
    throw v0
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_81} :catch_81
    .catch Ljava/lang/InterruptedException; {:try_start_80 .. :try_end_81} :catch_89
    .catchall {:try_start_80 .. :try_end_81} :catchall_85

    .line 7640
    .restart local v9    # "provider":Landroid/content/IContentProvider;
    .restart local v10    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "c":Landroid/content/Context;
    .restart local p2    # "auth":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "stable":Z
    :catch_81
    move-exception v0

    move-object v4, v14

    goto/16 :goto_f6

    .line 7646
    :catchall_85
    move-exception v0

    move-object v4, v14

    goto/16 :goto_fc

    .line 7642
    :catch_89
    move-exception v0

    .line 7643
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    .line 7646
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v10    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v1    # "holder":Landroid/app/ContentProviderHolder;
    iget-object v2, v14, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7647
    :try_start_8e
    iput-object v11, v14, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 7648
    monitor-exit v2
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_ee

    .line 7649
    :goto_91
    nop

    .line 7650
    if-nez v1, :cond_d6

    .line 7651
    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 7652
    const-string v0, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find provider info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    .line 7654
    :cond_b7
    const-string v0, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find provider info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (user not unlocked)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7656
    :goto_d5
    return-object v11

    .line 7661
    :cond_d6
    iget-object v0, v1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    const/4 v2, 0x1

    iget-boolean v3, v1, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v1

    move-object v4, v14

    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .local v4, "key":Landroid/app/ActivityThread$ProviderKey;
    move-object v14, v0

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, p4

    invoke-direct/range {v11 .. v17}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;

    move-result-object v0

    .line 7663
    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .local v0, "holder":Landroid/app/ContentProviderHolder;
    iget-object v1, v0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    return-object v1

    .line 7648
    .end local v0    # "holder":Landroid/app/ContentProviderHolder;
    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local v1    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    :catchall_ee
    move-exception v0

    move-object v4, v14

    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    :goto_f0
    :try_start_f0
    monitor-exit v2
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_f2

    throw v0

    :catchall_f2
    move-exception v0

    goto :goto_f0

    .line 7640
    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local v10    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    :catch_f4
    move-exception v0

    move-object v4, v14

    .line 7641
    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .local v0, "ex":Landroid/os/RemoteException;
    .restart local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    :goto_f6
    :try_start_f6
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local v9    # "provider":Landroid/content/IContentProvider;
    .end local v10    # "holder":Landroid/app/ContentProviderHolder;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "c":Landroid/content/Context;
    .end local p2    # "auth":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "stable":Z
    throw v1
    :try_end_fb
    .catchall {:try_start_f6 .. :try_end_fb} :catchall_fb

    .line 7646
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local v9    # "provider":Landroid/content/IContentProvider;
    .restart local v10    # "holder":Landroid/app/ContentProviderHolder;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "c":Landroid/content/Context;
    .restart local p2    # "auth":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "stable":Z
    :catchall_fb
    move-exception v0

    :goto_fc
    iget-object v1, v4, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7647
    :try_start_ff
    iput-object v11, v4, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 7648
    monitor-exit v1
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_103

    .line 7649
    throw v0

    .line 7648
    :catchall_103
    move-exception v0

    :try_start_104
    monitor-exit v1
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_103

    throw v0
.end method

.method final greylist-max-o appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "provider"    # Landroid/os/IBinder;

    .line 7945
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7946
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_21

    .line 7947
    .local v1, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v1, :cond_1f

    .line 7949
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v3, v3, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 7950
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->appNotRespondingViaProvider(Landroid/os/IBinder;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19
    .catchall {:try_start_d .. :try_end_18} :catchall_21

    .line 7953
    goto :goto_1f

    .line 7951
    :catch_19
    move-exception v2

    .line 7952
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1a
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "provider":Landroid/os/IBinder;
    throw v3

    .line 7955
    .end local v1    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "provider":Landroid/os/IBinder;
    :cond_1f
    :goto_1f
    monitor-exit v0

    .line 7956
    return-void

    .line 7955
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw v1
.end method

.method public blacklist applyBoundsCompatIfNeeded(Landroid/view/DisplayInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 6387
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivityThreadStub:Landroid/app/ActivityThreadStub;

    invoke-interface {v0, p1, p0}, Landroid/app/ActivityThreadStub;->applyBoundsCompatIfNeeded(Landroid/view/DisplayInfo;Landroid/app/ActivityThread;)V

    .line 6388
    return-void
.end method

.method public final greylist-max-o applyConfigurationToResources(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 6359
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 6360
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 6361
    monitor-exit v0

    .line 6362
    return-void

    .line 6361
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist collectComponentCallbacks(Z)Ljava/util/ArrayList;
    .registers 9
    .param p1, "includeUiContexts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentCallbacks2;",
            ">;"
        }
    .end annotation

    .line 6130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6133
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 6134
    :try_start_8
    iget-object v2, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6135
    .local v2, "NAPP":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_1f

    .line 6136
    iget-object v4, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6135
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 6138
    .end local v3    # "i":I
    :cond_1f
    if-eqz p1, :cond_41

    .line 6139
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "i":I
    :goto_29
    if-ltz v3, :cond_41

    .line 6140
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v4, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6141
    .local v4, "a":Landroid/app/Activity;
    if-eqz v4, :cond_3e

    iget-boolean v5, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v5, :cond_3e

    .line 6142
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6139
    .end local v4    # "a":Landroid/app/Activity;
    :cond_3e
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    .line 6146
    .end local v3    # "i":I
    :cond_41
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 6147
    .local v3, "NSVC":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_48
    if-ge v4, v3, :cond_5e

    .line 6148
    iget-object v5, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Service;

    .line 6151
    .local v5, "service":Landroid/app/Service;
    if-nez p1, :cond_58

    instance-of v6, v5, Landroid/window/WindowProviderService;

    if-nez v6, :cond_5b

    .line 6152
    :cond_58
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6147
    .end local v5    # "service":Landroid/app/Service;
    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 6155
    .end local v2    # "NAPP":I
    .end local v3    # "NSVC":I
    .end local v4    # "i":I
    :cond_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_8 .. :try_end_5f} :catchall_80

    .line 6156
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 6157
    :try_start_62
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 6158
    .local v1, "NPRV":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_69
    if-ge v3, v1, :cond_7b

    .line 6159
    iget-object v4, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v4, v4, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6158
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    .line 6161
    .end local v1    # "NPRV":I
    .end local v3    # "i":I
    :cond_7b
    monitor-exit v2

    .line 6163
    return-object v0

    .line 6161
    :catchall_7d
    move-exception v1

    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_62 .. :try_end_7f} :catchall_7d

    throw v1

    .line 6155
    :catchall_80
    move-exception v2

    :try_start_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v2
.end method

.method final greylist-max-o completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V
    .registers 10
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;

    .line 7865
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7866
    :try_start_3
    iget-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v1, :cond_14

    .line 7870
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v1, :cond_12

    const-string v1, "ActivityThread"

    const-string v2, "completeRemoveProvider: lost the race, provider still in use"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7872
    :cond_12
    monitor-exit v0

    return-void

    .line 7878
    :cond_14
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 7880
    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 7881
    .local v2, "jBinder":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 7882
    .local v3, "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    if-ne v3, p1, :cond_2e

    .line 7883
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7886
    :cond_2e
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_36
    if-ltz v4, :cond_50

    .line 7887
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 7888
    .local v5, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v6, v5, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v6}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 7889
    .local v6, "myBinder":Landroid/os/IBinder;
    if-ne v6, v2, :cond_4d

    .line 7890
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 7886
    .end local v5    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v6    # "myBinder":Landroid/os/IBinder;
    :cond_4d
    add-int/lit8 v4, v4, -0x1

    goto :goto_36

    .line 7893
    .end local v2    # "jBinder":Landroid/os/IBinder;
    .end local v3    # "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "i":I
    :cond_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_88

    .line 7896
    :try_start_51
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v0, :cond_7a

    .line 7897
    const-string v0, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProvider: Invoking ActivityManagerService.removeContentProvider("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v3, v3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7900
    :cond_7a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_85} :catch_86

    .line 7904
    goto :goto_87

    .line 7902
    :catch_86
    move-exception v0

    .line 7905
    :goto_87
    return-void

    .line 7893
    :catchall_88
    move-exception v1

    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v1
.end method

.method public blacklist countLaunchingActivities(I)V
    .registers 3
    .param p1, "num"    # I

    .line 3706
    iget-object v0, p0, Landroid/app/ActivityThread;->mNumLaunchingActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 3707
    return-void
.end method

.method greylist-max-o doGcIfNeeded()V
    .registers 2

    .line 2959
    const-string v0, "bg"

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->doGcIfNeeded(Ljava/lang/String;)V

    .line 2960
    return-void
.end method

.method blacklist doGcIfNeeded(Ljava/lang/String;)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 2963
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2964
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2967
    .local v0, "now":J
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getLastGcTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_15

    .line 2969
    invoke-static {p1}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 2971
    :cond_15
    return-void
.end method

.method final greylist-max-o finishInstrumentation(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .line 7554
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 7555
    .local v0, "am":Landroid/app/IActivityManager;
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v1, v1, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_19

    .line 7557
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 7562
    :cond_19
    :try_start_19
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_2a

    .line 7565
    nop

    .line 7566
    iget-boolean v1, p0, Landroid/app/ActivityThread;->mInstrumentingWithoutRestart:Z

    if-eqz v1, :cond_29

    .line 7567
    const/16 v1, 0xab

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 7569
    :cond_29
    return-void

    .line 7563
    :catch_2a
    move-exception v1

    .line 7564
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getActivitiesToBeDestroyed()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation

    .line 5774
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    return-object v0
.end method

.method public final greylist getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3585
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3586
    .local v0, "activityRecord":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public greylist-max-o getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3591
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    return-object v0
.end method

.method public greylist getApplication()Landroid/app/Application;
    .registers 2

    .line 2840
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public greylist getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .registers 2

    .line 2810
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    return-object v0
.end method

.method public greylist getBaseClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 2852
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_11

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    if-eqz v0, :cond_11

    .line 2854
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 2856
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 3596
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method blacklist getCoreSettings()Landroid/os/Bundle;
    .registers 3

    .line 8273
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8274
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    monitor-exit v0

    return-object v1

    .line 8275
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public greylist-max-o getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 2834
    iget-object v0, p0, Landroid/app/ActivityThread;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist getFixedOrizationScale(Landroid/content/res/Configuration;F)F
    .registers 4
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "defScale"    # F

    .line 6408
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivityThreadStub:Landroid/app/ActivityThreadStub;

    invoke-interface {v0, p1, p2}, Landroid/app/ActivityThreadStub;->getFixedOrizationScale(Landroid/content/res/Configuration;F)F

    move-result v0

    return v0
.end method

.method blacklist getFloatCoreSetting(Ljava/lang/String;F)F
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 8300
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8301
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v1, :cond_d

    .line 8302
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    monitor-exit v0

    return v1

    .line 8304
    :cond_d
    monitor-exit v0

    return p2

    .line 8305
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public greylist getHandler()Landroid/os/Handler;
    .registers 2

    .line 2602
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    return-object v0
.end method

.method public greylist getInstrumentation()Landroid/app/Instrumentation;
    .registers 2

    .line 2816
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public greylist-max-o getIntCoreSetting(Ljava/lang/String;I)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 8279
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8280
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v1, :cond_d

    .line 8281
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 8283
    :cond_d
    monitor-exit v0

    return p2

    .line 8284
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public greylist getLooper()Landroid/os/Looper;
    .registers 2

    .line 2830
    iget-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public blacklist getMiuiSizeCompatScale(F)F
    .registers 3
    .param p1, "defScale"    # F

    .line 6403
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivityThreadStub:Landroid/app/ActivityThreadStub;

    invoke-interface {v0, p0, p1}, Landroid/app/ActivityThreadStub;->getMiuiSizeCompatScale(Landroid/app/ActivityThread;F)F

    move-result v0

    return v0
.end method

.method public final greylist getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .registers 15
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    .line 2660
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 2661
    .local v0, "includeCode":Z
    :goto_9
    if-eqz v0, :cond_29

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v3, :cond_29

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_29

    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v3, :cond_27

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2663
    invoke-static {v3, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_29

    :cond_27
    move v3, v2

    goto :goto_2a

    :cond_29
    move v3, v1

    :goto_2a
    move v10, v3

    .line 2665
    .local v10, "securityViolation":Z
    if-eqz v0, :cond_34

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p3

    if-eqz v3, :cond_34

    move v9, v2

    goto :goto_35

    :cond_34
    move v9, v1

    .line 2666
    .local v9, "registerPackage":Z
    :goto_35
    and-int/lit8 v1, p3, 0x3

    if-ne v1, v2, :cond_99

    .line 2669
    if-eqz v10, :cond_99

    .line 2670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting code from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (with uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2672
    .local v1, "msg":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v4, :cond_93

    .line 2673
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to be run in process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2677
    :cond_93
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2680
    .end local v1    # "msg":Ljava/lang/String;
    :cond_99
    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, v10

    move v8, v0

    invoke-direct/range {v3 .. v9}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v1

    return-object v1
.end method

.method public final greylist-max-p getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    .line 2608
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 2613
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq v0, p4, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2614
    .local v0, "differentUser":Z
    :goto_9
    const-wide/32 v1, 0x10000400

    .line 2618
    if-gez p4, :cond_13

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    goto :goto_14

    :cond_13
    move v3, p4

    .line 2614
    :goto_14
    invoke-static {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2619
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 2621
    if-eqz v0, :cond_1f

    .line 2623
    const/4 v3, 0x0

    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_34

    .line 2624
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_1f
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_2c

    .line 2625
    :try_start_23
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .restart local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_34

    .line 2627
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2c
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 2630
    .restart local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_34
    const/4 v4, 0x0

    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/LoadedApk;

    goto :goto_3f

    :cond_3e
    move-object v5, v4

    .line 2631
    .local v5, "packageInfo":Landroid/app/LoadedApk;
    :goto_3f
    if-eqz v1, :cond_98

    if-eqz v5, :cond_98

    .line 2632
    invoke-static {v5, v1}, Landroid/app/ActivityThread;->isLoadedApkResourceDirsUpToDate(Landroid/app/LoadedApk;Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 2633
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2634
    .local v4, "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, v1, v4}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 2635
    invoke-virtual {v5, v1, v4}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 2638
    .end local v4    # "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_54
    invoke-virtual {v5}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    move-result v4

    if-eqz v4, :cond_96

    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_5f

    goto :goto_96

    .line 2640
    :cond_5f
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting code from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to be run in process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v7, v7, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v7, v7, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "differentUser":Z
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local p3    # "flags":I
    .end local p4    # "userId":I
    throw v4

    .line 2646
    .restart local v0    # "differentUser":Z
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .restart local p3    # "flags":I
    .restart local p4    # "userId":I
    :cond_96
    :goto_96
    monitor-exit v2

    return-object v5

    .line 2648
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v5    # "packageInfo":Landroid/app/LoadedApk;
    :cond_98
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_23 .. :try_end_99} :catchall_a1

    .line 2650
    if-eqz v1, :cond_a0

    .line 2651
    invoke-virtual {p0, v1, p2, p3}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v2

    return-object v2

    .line 2654
    :cond_a0
    return-object v4

    .line 2648
    :catchall_a1
    move-exception v3

    :try_start_a2
    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw v3
.end method

.method public final greylist getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
    .registers 10
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 2688
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public greylist getProcessName()Ljava/lang/String;
    .registers 2

    .line 2845
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProcessState()I
    .registers 2

    .line 598
    iget v0, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    return v0
.end method

.method public greylist-max-o getProfileFilePath()Ljava/lang/String;
    .registers 2

    .line 2825
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStringCoreSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 8291
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8292
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v1, :cond_d

    .line 8293
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 8295
    :cond_d
    monitor-exit v0

    return-object p2

    .line 8296
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public greylist getSystemContext()Landroid/app/ContextImpl;
    .registers 2

    .line 2863
    monitor-enter p0

    .line 2864
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    if-nez v0, :cond_b

    .line 2865
    invoke-static {p0}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 2867
    :cond_b
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    monitor-exit p0

    return-object v0

    .line 2868
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public greylist-max-o getSystemUiContext()Landroid/app/ContextImpl;
    .registers 2

    .line 2873
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->getSystemUiContext(I)Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSystemUiContext(I)Landroid/app/ContextImpl;
    .registers 4
    .param p1, "displayId"    # I

    .line 2883
    monitor-enter p0

    .line 2884
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    if-nez v0, :cond_c

    .line 2885
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    .line 2887
    :cond_c
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ContextImpl;

    .line 2888
    .local v0, "systemUiContext":Landroid/app/ContextImpl;
    if-nez v0, :cond_24

    .line 2889
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/app/ContextImpl;->createSystemUiContext(Landroid/app/ContextImpl;I)Landroid/app/ContextImpl;

    move-result-object v1

    move-object v0, v1

    .line 2890
    iget-object v1, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2892
    :cond_24
    monitor-exit p0

    return-object v0

    .line 2893
    .end local v0    # "systemUiContext":Landroid/app/ContextImpl;
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public blacklist getSystemUiContextNoCreate()Landroid/app/ContextImpl;
    .registers 3

    .line 2899
    monitor-enter p0

    .line 2900
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2901
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ContextImpl;

    monitor-exit p0

    return-object v0

    .line 2902
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method blacklist getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/LoadedApk;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .registers 21
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p4, "overlayPaths"    # [Ljava/lang/String;
    .param p5, "libDirs"    # [Ljava/lang/String;
    .param p6, "pkgInfo"    # Landroid/app/LoadedApk;
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 2595
    move-object v0, p0

    iget-object v1, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2596
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    .line 2597
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 2595
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v12}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o getTransactionExecutor()Landroid/app/servertransaction/TransactionExecutor;
    .registers 2

    .line 3728
    iget-object v0, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    return-object v0
.end method

.method public blacklist growFootprint()V
    .registers 6

    .line 3633
    :try_start_0
    const-string v0, "dalvik.system.VMRuntime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3634
    .local v0, "vmRuntimeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getRuntime"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3635
    .local v1, "runtime":Ljava/lang/Object;
    const-string v3, "growFootprint"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3636
    .local v3, "growfootprint":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_23} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_23} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_23} :catch_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_23} :catch_25

    .line 3642
    nop

    .end local v0    # "vmRuntimeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "runtime":Ljava/lang/Object;
    .end local v3    # "growfootprint":Ljava/lang/reflect/Method;
    goto :goto_57

    .line 3640
    :catch_25
    move-exception v0

    goto :goto_57

    .line 3637
    :catch_27
    move-exception v0

    .line 3639
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "growFootprint failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3642
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    nop

    .line 3643
    :goto_57
    return-void
.end method

.method public blacklist handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;I)V
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I

    .line 6531
    iget-object v0, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 6532
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 6533
    .local v1, "pendingOverrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {p2, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 6534
    sget-boolean v2, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v2, :cond_39

    .line 6535
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity has newer configuration pending so drop this transaction. overrideConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pendingOverrideConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6539
    :cond_39
    monitor-exit v0

    return-void

    .line 6541
    :cond_3b
    iget-object v2, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6542
    nop

    .end local v1    # "pendingOverrideConfig":Landroid/content/res/Configuration;
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_123

    .line 6544
    const/4 v0, -0x1

    if-ne p3, v0, :cond_4d

    .line 6547
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplayId()I

    move-result p3

    .line 6549
    :cond_4d
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6550
    invoke-virtual {v0}, Landroid/app/Activity;->getDisplayId()I

    move-result v0

    .line 6549
    invoke-static {v0, p3}, Landroid/window/ConfigurationHelper;->isDifferentDisplay(II)Z

    move-result v0

    .line 6551
    .local v0, "movedToDifferentDisplay":Z
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_8e

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_8e

    if-nez v0, :cond_8e

    .line 6553
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_8d

    .line 6554
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity already handled newer configuration so drop this transaction. overrideConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " r.overrideConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6558
    :cond_8d
    return-void

    .line 6562
    :cond_8e
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 6563
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 6562
    invoke-static {p2, v1, v2}, Landroid/util/MiuiFreeformUtils;->updateFreeformConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;Landroid/app/Application;)V

    .line 6566
    iput-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 6567
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_aa

    .line 6568
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    goto :goto_ab

    :cond_aa
    const/4 v1, 0x0

    .line 6570
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    :goto_ab
    sget-boolean v2, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v2, :cond_101

    .line 6571
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle activity config changed, activity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6572
    invoke-virtual {v4}, Landroid/app/Activity;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6573
    if-eqz v0, :cond_ea

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", newDisplayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_ec

    :cond_ea
    const-string v4, ""

    :goto_ec
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6571
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6576
    :cond_101
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 6577
    invoke-virtual {v2}, Landroid/app/ConfigurationController;->getCompatConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 6578
    if-eqz v0, :cond_10b

    move v3, p3

    goto :goto_111

    :cond_10b
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getDisplayId()I

    move-result v3

    .line 6576
    :goto_111
    invoke-direct {p0, p1, v2, v3}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v2

    .line 6581
    .local v2, "reportedConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_11f

    .line 6582
    if-eqz v0, :cond_11c

    .line 6583
    invoke-virtual {v1, p3, v2}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 6585
    :cond_11c
    invoke-virtual {v1, p3}, Landroid/view/ViewRootImpl;->updateConfiguration(I)V

    .line 6587
    :cond_11f
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 6588
    return-void

    .line 6542
    .end local v0    # "movedToDifferentDisplay":Z
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v2    # "reportedConfig":Landroid/content/res/Configuration;
    :catchall_123
    move-exception v1

    :try_start_124
    monitor-exit v0
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_123

    throw v1
.end method

.method public greylist-max-o handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 8
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 6471
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 6472
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 6473
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk;

    goto :goto_18

    :cond_17
    move-object v3, v2

    .line 6474
    .local v3, "apk":Landroid/app/LoadedApk;
    :goto_18
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    move-object v1, v4

    .line 6475
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoadedApk;

    :cond_2b
    move-object v1, v2

    .line 6476
    .local v1, "resApk":Landroid/app/LoadedApk;
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_5c

    .line 6478
    if-eqz v3, :cond_3e

    .line 6479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6480
    .local v0, "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 6481
    invoke-virtual {v3, p1, v0}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 6483
    .end local v0    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3e
    if-eqz v1, :cond_4f

    .line 6484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6485
    .restart local v0    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 6486
    invoke-virtual {v1, p1, v0}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 6489
    .end local v0    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4f
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 6491
    :try_start_52
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v0}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 6492
    monitor-exit v2

    .line 6493
    return-void

    .line 6492
    :catchall_59
    move-exception v0

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_59

    throw v0

    .line 6476
    .end local v1    # "resApk":Landroid/app/LoadedApk;
    .end local v3    # "apk":Landroid/app/LoadedApk;
    :catchall_5c
    move-exception v1

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method public blacklist handleAttachSplashScreenView(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V
    .registers 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "parcelable"    # Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    .param p3, "startingWindowLeash"    # Landroid/view/SurfaceControl;

    .line 4366
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    .line 4367
    .local v0, "decorView":Lcom/android/internal/policy/DecorView;
    if-eqz p2, :cond_10

    if-eqz v0, :cond_10

    .line 4368
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/app/ActivityThread;->createSplashScreen(Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V

    goto :goto_17

    .line 4371
    :cond_10
    const-string v1, "ActivityThread"

    const-string v2, "handleAttachSplashScreenView failed, unable to attach"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4373
    :goto_17
    return-void
.end method

.method public blacklist handleBoundsCompatInfoChanged(Landroid/os/IBinder;ILandroid/graphics/Rect;F)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "state"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "scale"    # F

    .line 6413
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivityThreadStub:Landroid/app/ActivityThreadStub;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Landroid/app/ActivityThreadStub;->handleBoundsCompatInfoChanged(Landroid/os/IBinder;ILandroid/graphics/Rect;FLandroid/app/ActivityThread;)V

    .line 6414
    return-void
.end method

.method public greylist-max-o handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 6367
    sget-boolean v0, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    if-eqz v0, :cond_b

    .line 6368
    invoke-static {}, Landroid/util/GMSDownscaleStub;->getInstance()Landroid/util/GMSDownscaleStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/GMSDownscaleStub;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6372
    :cond_b
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6373
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    .line 6376
    :cond_1d
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0, p1}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6379
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getCurDefaultDisplayDpi()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 6380
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 6381
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ConfigurationController;->getPendingConfiguration(Z)Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 6383
    return-void
.end method

.method public blacklist handleDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZIZLjava/lang/String;)V
    .registers 15
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5780
    invoke-virtual/range {p0 .. p5}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZIZLjava/lang/String;)V

    .line 5781
    invoke-static {p1, p2}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 5782
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 5783
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 5784
    .local v1, "v":Landroid/view/View;
    const/4 v2, 0x1

    const-string v3, "Activity"

    if-eqz v1, :cond_7a

    .line 5785
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v4, :cond_20

    .line 5786
    iget v4, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    sub-int/2addr v4, v2

    iput v4, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 5788
    :cond_20
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 5789
    .local v4, "wtoken":Landroid/os/IBinder;
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mWindowAdded:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_47

    .line 5790
    iget-boolean v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v5, :cond_3b

    .line 5792
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    iput-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 5793
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 5797
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->clearContentView()V

    goto :goto_47

    .line 5799
    :cond_3b
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    .line 5800
    .local v5, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v5, :cond_44

    .line 5803
    invoke-virtual {v5, v6}, Landroid/view/ViewRootImpl;->setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    .line 5805
    :cond_44
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 5808
    .end local v5    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_47
    :goto_47
    if-eqz v4, :cond_5f

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-nez v5, :cond_5f

    .line 5809
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v5

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5810
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 5809
    invoke-virtual {v5, v4, v7, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    .line 5811
    :cond_5f
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz v5, :cond_76

    .line 5816
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v5

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5817
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 5816
    invoke-virtual {v5, v7, v1, v8, v3}, Landroid/view/WindowManagerGlobal;->closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 5819
    :cond_76
    :goto_76
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-object v6, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 5821
    .end local v4    # "wtoken":Landroid/os/IBinder;
    :cond_7a
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-nez v4, :cond_91

    .line 5828
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5829
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 5828
    invoke-virtual {v4, v5, v6, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5836
    :cond_91
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    .line 5837
    .local v4, "c":Landroid/content/Context;
    instance-of v5, v4, Landroid/app/ContextImpl;

    if-eqz v5, :cond_ab

    .line 5838
    move-object v5, v4

    check-cast v5, Landroid/app/ContextImpl;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 5840
    :cond_ab
    if-eqz p2, :cond_b6

    .line 5841
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v3

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Landroid/app/ActivityClient;->activityDestroyed(Landroid/os/IBinder;)V

    .line 5843
    :cond_b6
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5844
    return-void
.end method

.method final greylist-max-o handleDispatchPackageBroadcast(I[Ljava/lang/String;)V
    .registers 19
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 6662
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 6663
    .local v4, "hasPkgInfo":Z
    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_140

    :pswitch_c
    goto/16 :goto_13b

    .line 6694
    :pswitch_e
    if-nez v3, :cond_12

    .line 6695
    goto/16 :goto_13b

    .line 6698
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 6700
    .local v7, "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v8

    .line 6701
    :try_start_1b
    array-length v0, v3
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_e8

    sub-int/2addr v0, v6

    move v9, v4

    move v4, v0

    .local v4, "i":I
    .local v9, "hasPkgInfo":Z
    :goto_1f
    if-ltz v4, :cond_d0

    .line 6702
    :try_start_21
    aget-object v0, v3, v4

    move-object v10, v0

    .line 6703
    .local v10, "packageName":Ljava/lang/String;
    iget-object v0, v1, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 6704
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    const/4 v11, 0x0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/LoadedApk;

    goto :goto_37

    :cond_36
    move-object v12, v11

    .line 6705
    .local v12, "pkgInfo":Landroid/app/LoadedApk;
    :goto_37
    if-eqz v12, :cond_3d

    .line 6706
    const/4 v9, 0x1

    move v11, v9

    move-object v9, v0

    goto :goto_57

    .line 6708
    :cond_3d
    iget-object v13, v1, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/ref/WeakReference;

    move-object v0, v13

    .line 6709
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/LoadedApk;
    :try_end_4e
    .catchall {:try_start_21 .. :try_end_4e} :catchall_e5

    :cond_4e
    move-object v12, v11

    .line 6710
    if-eqz v12, :cond_55

    .line 6711
    const/4 v9, 0x1

    move v11, v9

    move-object v9, v0

    goto :goto_57

    .line 6710
    :cond_55
    move v11, v9

    move-object v9, v0

    .line 6718
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .local v9, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .local v11, "hasPkgInfo":Z
    :goto_57
    if-eqz v12, :cond_ca

    .line 6719
    :try_start_59
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_c7

    .line 6721
    :try_start_5c
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v13, 0x400

    .line 6725
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    .line 6722
    invoke-interface {v0, v10, v13, v14, v15}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v13, v0

    .line 6727
    .local v13, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_9a

    .line 6728
    iget-object v0, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6729
    .local v14, "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v15, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6730
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_99

    .line 6731
    iget-object v15, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v13, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6732
    iput-object v12, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 6734
    .end local v14    # "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_99
    goto :goto_7b

    .line 6737
    :cond_9a
    new-array v0, v6, [Ljava/lang/String;

    invoke-virtual {v12}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v0, v5

    move-object v14, v0

    .line 6739
    .local v14, "oldResDirs":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 6740
    .local v15, "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v1, v0, v15}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 6741
    invoke-virtual {v12, v13, v15}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 6743
    iget-object v6, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v6
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_b6} :catch_c5
    .catchall {:try_start_5c .. :try_end_b6} :catchall_c7

    .line 6745
    :try_start_b6
    iget-object v0, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v0, v14, v13}, Landroid/app/ResourcesManager;->appendPendingAppInfoUpdate([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 6747
    iget-object v0, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v0}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 6748
    monitor-exit v6

    .line 6750
    .end local v13    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "oldResDirs":[Ljava/lang/String;
    .end local v15    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_ca

    .line 6748
    .restart local v13    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "oldResDirs":[Ljava/lang/String;
    .restart local v15    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_c2
    move-exception v0

    monitor-exit v6
    :try_end_c4
    .catchall {:try_start_b6 .. :try_end_c4} :catchall_c2

    .end local v4    # "i":I
    .end local v7    # "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "hasPkgInfo":Z
    .end local v12    # "pkgInfo":Landroid/app/LoadedApk;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "cmd":I
    .end local p2    # "packages":[Ljava/lang/String;
    :try_start_c4
    throw v0
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_c5} :catch_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c7

    .line 6749
    .end local v13    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "oldResDirs":[Ljava/lang/String;
    .end local v15    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "i":I
    .restart local v7    # "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "hasPkgInfo":Z
    .restart local v12    # "pkgInfo":Landroid/app/LoadedApk;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "cmd":I
    .restart local p2    # "packages":[Ljava/lang/String;
    :catch_c5
    move-exception v0

    goto :goto_ca

    .line 6753
    .end local v4    # "i":I
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v12    # "pkgInfo":Landroid/app/LoadedApk;
    :catchall_c7
    move-exception v0

    move v4, v11

    goto :goto_e9

    .line 6701
    .restart local v4    # "i":I
    :cond_ca
    :goto_ca
    add-int/lit8 v4, v4, -0x1

    move v9, v11

    const/4 v6, 0x1

    goto/16 :goto_1f

    .line 6753
    .end local v4    # "i":I
    .end local v11    # "hasPkgInfo":Z
    .local v9, "hasPkgInfo":Z
    :cond_d0
    :try_start_d0
    monitor-exit v8
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_e5

    .line 6756
    :try_start_d1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/String;

    .line 6757
    invoke-interface {v7, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 6756
    invoke-interface {v0, v4}, Landroid/content/pm/IPackageManager;->notifyPackagesReplacedReceived([Ljava/lang/String;)V
    :try_end_e0
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_e0} :catch_e1

    .line 6759
    goto :goto_e3

    .line 6758
    :catch_e1
    move-exception v0

    .line 6761
    nop

    .line 6764
    .end local v7    # "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_e3
    move v4, v9

    goto :goto_13b

    .line 6753
    .restart local v7    # "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_e5
    move-exception v0

    move v4, v9

    goto :goto_e9

    .end local v9    # "hasPkgInfo":Z
    .local v4, "hasPkgInfo":Z
    :catchall_e8
    move-exception v0

    :goto_e9
    :try_start_e9
    monitor-exit v8
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw v0

    .line 6667
    .end local v7    # "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_eb
    if-nez v2, :cond_ee

    const/4 v5, 0x1

    .line 6668
    .local v5, "killApp":Z
    :cond_ee
    if-nez v3, :cond_f1

    .line 6669
    goto :goto_13b

    .line 6671
    :cond_f1
    iget-object v6, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v6

    .line 6672
    :try_start_f4
    array-length v0, v3

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    .local v0, "i":I
    :goto_f7
    if-ltz v0, :cond_136

    .line 6673
    if-nez v4, :cond_123

    .line 6674
    iget-object v7, v1, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v8, v3, v0

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 6675
    .local v7, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v7, :cond_10f

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_10f

    .line 6676
    const/4 v4, 0x1

    goto :goto_123

    .line 6678
    :cond_10f
    iget-object v8, v1, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v9, v3, v0

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    move-object v7, v8

    .line 6679
    if-eqz v7, :cond_123

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_123

    .line 6680
    const/4 v4, 0x1

    .line 6684
    .end local v7    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_123
    :goto_123
    if-eqz v5, :cond_133

    .line 6685
    iget-object v7, v1, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v8, v3, v0

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6686
    iget-object v7, v1, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v8, v3, v0

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6672
    :cond_133
    add-int/lit8 v0, v0, -0x1

    goto :goto_f7

    .line 6689
    .end local v0    # "i":I
    :cond_136
    monitor-exit v6

    .line 6690
    goto :goto_13b

    .line 6689
    :catchall_138
    move-exception v0

    monitor-exit v6
    :try_end_13a
    .catchall {:try_start_f4 .. :try_end_13a} :catchall_138

    throw v0

    .line 6764
    .end local v5    # "killApp":Z
    :goto_13b
    invoke-static {v2, v3, v4}, Landroid/app/ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    .line 6765
    return-void

    nop

    :pswitch_data_140
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_c
        :pswitch_eb
        :pswitch_e
    .end packed-switch
.end method

.method public greylist-max-o handleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/content/pm/ProviderInfo;

    .line 4297
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4299
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 4301
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4302
    nop

    .line 4303
    return-void

    .line 4301
    :catchall_18
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4302
    throw v1
.end method

.method public greylist-max-o handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p3, "customIntent"    # Landroid/content/Intent;

    .line 4042
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mSetFootprint:Z

    const-string v1, "ActivityThread"

    if-eqz v0, :cond_22

    .line 4043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSetFootprint: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/app/ActivityThread;->mSetFootprint:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4044
    invoke-virtual {p0}, Landroid/app/ActivityThread;->growFootprint()V

    .line 4049
    :cond_22
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4050
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4052
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v2, :cond_38

    .line 4053
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {v2, v3}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 4054
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v2}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 4058
    :cond_38
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 4060
    sget-boolean v2, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v2, :cond_58

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling launch of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4064
    :cond_58
    sget-boolean v1, Landroid/view/ThreadedRenderer;->sRendererEnabled:Z

    if-eqz v1, :cond_67

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_67

    .line 4066
    invoke-static {}, Landroid/graphics/HardwareRenderer;->preload()V

    .line 4068
    :cond_67
    invoke-static {}, Landroid/view/WindowManagerGlobal;->initialize()V

    .line 4071
    invoke-static {}, Landroid/os/GraphicsEnvironment;->hintActivityLaunch()V

    .line 4073
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    .line 4075
    .local v1, "a":Landroid/app/Activity;
    if-eqz v1, :cond_97

    .line 4076
    new-instance v2, Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v3}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 4077
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4078
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_a1

    if-eqz p2, :cond_a1

    .line 4079
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {p2, v2}, Landroid/app/servertransaction/PendingTransactionActions;->setOldState(Landroid/os/Bundle;)V

    .line 4080
    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setRestoreInstanceState(Z)V

    .line 4081
    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setCallOnPostCreate(Z)V

    goto :goto_a1

    .line 4085
    :cond_97
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/app/ActivityClient;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    .line 4089
    :cond_a1
    :goto_a1
    return-object v1
.end method

.method final greylist-max-o handleLowMemory()V
    .registers 5

    .line 6768
    nop

    .line 6769
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->collectComponentCallbacks(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 6771
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6772
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_19

    .line 6773
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks2;

    invoke-interface {v3}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    .line 6772
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6777
    .end local v2    # "i":I
    :cond_19
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_2b

    .line 6778
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    move-result v2

    .line 6779
    .local v2, "sqliteReleased":I
    const v3, 0x124fb

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 6783
    .end local v2    # "sqliteReleased":I
    :cond_2b
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 6786
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 6788
    const-string/jumbo v2, "mem"

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 6789
    return-void
.end method

.method public blacklist handleNewIntent(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .registers 3
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .line 4119
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 4120
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 4121
    return-void
.end method

.method public blacklist handlePauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZIZLandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "autoEnteringPip"    # Z
    .param p6, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p7, "reason"    # Ljava/lang/String;

    .line 5283
    if-eqz p3, :cond_5

    .line 5284
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5287
    :cond_5
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v1, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v1, p4

    iput v1, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 5288
    const/4 v0, 0x1

    if-eqz p5, :cond_13

    .line 5291
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v1, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    .line 5293
    :cond_13
    invoke-direct {p0, p1, p2, p7, p6}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    .line 5296
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 5297
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 5299
    :cond_1f
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5300
    return-void
.end method

.method public blacklist handlePictureInPictureRequested(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 3
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4328
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onPictureInPictureRequested()Z

    move-result v0

    .line 4329
    .local v0, "receivedByApp":Z
    if-nez v0, :cond_b

    .line 4335
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->schedulePauseWithUserLeaveHintAndReturnToCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4337
    :cond_b
    return-void
.end method

.method public blacklist handlePictureInPictureStateChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/PictureInPictureUiState;)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pipState"    # Landroid/app/PictureInPictureUiState;

    .line 4342
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V

    .line 4343
    return-void
.end method

.method final greylist-max-o handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V
    .registers 8
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .line 6591
    if-eqz p1, :cond_3b

    .line 6593
    nop

    .line 6595
    :try_start_3
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0, p2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 6596
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->startProfiling()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_d} :catch_14
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    .line 6603
    nop

    :goto_e
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 6604
    goto :goto_41

    .line 6603
    :catchall_12
    move-exception v0

    goto :goto_37

    .line 6599
    :catch_14
    move-exception v0

    .line 6600
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_15
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profiling failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_12

    .line 6603
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_e

    :goto_37
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 6604
    throw v0

    .line 6606
    :cond_3b
    nop

    .line 6608
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 6612
    :goto_41
    return-void
.end method

.method public greylist-max-o handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 19
    .param p1, "tmp"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 5900
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 5901
    const/4 v0, 0x1

    iput-boolean v0, v10, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5903
    const/4 v1, 0x0

    .line 5908
    .local v1, "configChanges":I
    iget-object v2, v10, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 5909
    :try_start_e
    iget-object v3, v10, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_168

    .line 5910
    .local v3, "N":I
    move-object/from16 v4, p1

    :try_start_16
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_166

    .line 5911
    .local v5, "token":Landroid/os/IBinder;
    const/4 v4, 0x0

    .line 5912
    .end local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v4, "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v6, 0x0

    move v13, v1

    move-object v12, v4

    .end local v1    # "configChanges":I
    .end local v4    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v6, "i":I
    .local v12, "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v13, "configChanges":I
    :goto_1c
    if-ge v6, v3, :cond_4a

    .line 5913
    :try_start_1e
    iget-object v1, v10, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5914
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_46

    if-ne v4, v5, :cond_44

    .line 5915
    move-object v4, v1

    .line 5916
    .end local v12    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :try_start_2b
    iget v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_3f

    or-int/2addr v7, v13

    .line 5917
    .end local v13    # "configChanges":I
    .local v7, "configChanges":I
    :try_start_2e
    iget-object v8, v10, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_3a

    .line 5918
    add-int/lit8 v6, v6, -0x1

    .line 5919
    add-int/lit8 v3, v3, -0x1

    move-object v12, v4

    move v13, v7

    goto :goto_44

    .line 5931
    .end local v1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v3    # "N":I
    .end local v5    # "token":Landroid/os/IBinder;
    .end local v6    # "i":I
    :catchall_3a
    move-exception v0

    move-object v12, v4

    move v1, v7

    goto/16 :goto_16c

    .end local v7    # "configChanges":I
    .restart local v13    # "configChanges":I
    :catchall_3f
    move-exception v0

    move-object v12, v4

    move v1, v13

    goto/16 :goto_16c

    .line 5912
    .end local v4    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v3    # "N":I
    .restart local v5    # "token":Landroid/os/IBinder;
    .restart local v6    # "i":I
    .restart local v12    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_44
    :goto_44
    add-int/2addr v6, v0

    goto :goto_1c

    .line 5931
    .end local v3    # "N":I
    .end local v5    # "token":Landroid/os/IBinder;
    .end local v6    # "i":I
    :catchall_46
    move-exception v0

    move v1, v13

    goto/16 :goto_16c

    .line 5923
    .restart local v3    # "N":I
    .restart local v5    # "token":Landroid/os/IBinder;
    :cond_4a
    if-nez v12, :cond_59

    .line 5924
    :try_start_4c
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_57

    const-string v0, "ActivityThread"

    const-string v1, "Abort, activity not relaunching!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5925
    :cond_57
    monitor-exit v2

    return-void

    .line 5928
    :cond_59
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_85

    const-string v1, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Relaunching activity "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " with configChanges=0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5930
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5928
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5931
    .end local v3    # "N":I
    .end local v5    # "token":Landroid/os/IBinder;
    :cond_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_4c .. :try_end_86} :catchall_46

    .line 5933
    iget-object v1, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v1, v0}, Landroid/app/ConfigurationController;->getPendingConfiguration(Z)Landroid/content/res/Configuration;

    move-result-object v1

    .line 5935
    .local v1, "changedConfig":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    iput-object v2, v10, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 5937
    iget-object v3, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_b9

    .line 5941
    iget-object v3, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v3}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 5942
    .local v3, "config":Landroid/content/res/Configuration;
    if-eqz v3, :cond_ab

    iget-object v4, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 5943
    invoke-virtual {v4, v3}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_b9

    iget-object v4, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 5944
    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-eqz v4, :cond_b9

    .line 5945
    :cond_ab
    if-eqz v1, :cond_b5

    iget-object v4, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 5946
    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 5947
    :cond_b5
    iget-object v1, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    move-object v14, v1

    goto :goto_ba

    .line 5952
    .end local v3    # "config":Landroid/content/res/Configuration;
    :cond_b9
    move-object v14, v1

    .end local v1    # "changedConfig":Landroid/content/res/Configuration;
    .local v14, "changedConfig":Landroid/content/res/Configuration;
    :goto_ba
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_e2

    const-string v1, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Relaunching activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": changedConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5956
    :cond_e2
    if-eqz v14, :cond_100

    .line 5957
    iget-object v1, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget v3, v14, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v3}, Landroid/app/ConfigurationController;->updateDefaultDensity(I)V

    .line 5958
    iget-object v1, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v1, v14, v2}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 5961
    iget-object v1, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v1}, Landroid/app/ConfigurationController;->getCurDefaultDisplayDpi()I

    move-result v1

    iput v1, v10, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 5962
    iget-object v1, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v1}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, v10, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 5965
    :cond_100
    iget-object v1, v10, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v2, v12, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5966
    .local v15, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_127

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling relaunch of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5967
    :cond_127
    if-nez v15, :cond_12a

    .line 5968
    return-void

    .line 5971
    :cond_12a
    iget-object v1, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v2, v13

    iput v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 5972
    iget-boolean v1, v12, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    iput-boolean v1, v15, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 5974
    iget-object v1, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v1, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 5988
    :try_start_139
    iget-boolean v1, v15, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v1, :cond_146

    .line 5989
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    iget-object v2, v15, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    :try_end_146
    .catch Landroid/os/RemoteException; {:try_start_139 .. :try_end_146} :catch_160

    .line 5994
    :cond_146
    nop

    .line 5996
    iget-object v4, v12, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iget-object v5, v12, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iget-boolean v7, v12, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    iget-object v8, v12, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    const-string v9, "handleRelaunchActivity"

    move-object/from16 v1, p0

    move-object v2, v15

    move v3, v13

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v9}, Landroid/app/ActivityThread;->handleRelaunchActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;ILjava/util/List;Ljava/util/List;Landroid/app/servertransaction/PendingTransactionActions;ZLandroid/content/res/Configuration;Ljava/lang/String;)V

    .line 5998
    if-eqz v11, :cond_15f

    .line 6000
    invoke-virtual {v11, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setReportRelaunchToWindowManager(Z)V

    .line 6002
    :cond_15f
    return-void

    .line 5992
    :catch_160
    move-exception v0

    .line 5993
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5931
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v12    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v13    # "configChanges":I
    .end local v14    # "changedConfig":Landroid/content/res/Configuration;
    .end local v15    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v1, "configChanges":I
    .restart local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_166
    move-exception v0

    goto :goto_16b

    :catchall_168
    move-exception v0

    move-object/from16 v4, p1

    :goto_16b
    move-object v12, v4

    .end local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v12    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_16c
    :try_start_16c
    monitor-exit v2
    :try_end_16d
    .catchall {:try_start_16c .. :try_end_16d} :catchall_16e

    throw v0

    :catchall_16e
    move-exception v0

    goto :goto_16c
.end method

.method public greylist-max-o handleRelaunchActivityLocally(Landroid/os/IBinder;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6034
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6035
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const-string v1, "ActivityThread"

    if-nez v0, :cond_12

    .line 6036
    const-string v2, "Activity to relaunch no longer exists"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6037
    return-void

    .line 6040
    :cond_12
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v2

    .line 6042
    .local v2, "prevState":I
    const/4 v3, 0x2

    if-lt v2, v3, :cond_59

    const/4 v3, 0x5

    if-le v2, v3, :cond_1d

    goto :goto_59

    .line 6048
    :cond_1d
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Landroid/app/ActivityClient;->activityLocalRelaunch(Landroid/os/IBinder;)V

    .line 6050
    new-instance v1, Landroid/util/MergedConfiguration;

    .line 6051
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_2f

    .line 6052
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    goto :goto_35

    :cond_2f
    iget-object v3, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v3}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    :goto_35
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v1, v3, v4}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 6054
    .local v1, "mergedConfiguration":Landroid/util/MergedConfiguration;
    const/4 v3, 0x0

    iget-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    const/4 v5, 0x0

    invoke-static {v5, v5, v3, v1, v4}, Landroid/app/servertransaction/ActivityRelaunchItem;->obtain(Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/servertransaction/ActivityRelaunchItem;

    move-result-object v3

    .line 6058
    .local v3, "activityRelaunchItem":Landroid/app/servertransaction/ActivityRelaunchItem;
    nop

    .line 6059
    invoke-static {v0}, Landroid/app/servertransaction/TransactionExecutorHelper;->getLifecycleRequestForCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v4

    .line 6061
    .local v4, "lifecycleRequest":Landroid/app/servertransaction/ActivityLifecycleItem;
    iget-object v5, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {v5, v6}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v5

    .line 6062
    .local v5, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v5, v3}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 6063
    invoke-virtual {v5, v4}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 6064
    invoke-virtual {p0, v5}, Landroid/app/ActivityThread;->executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 6065
    return-void

    .line 6043
    .end local v1    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v3    # "activityRelaunchItem":Landroid/app/servertransaction/ActivityRelaunchItem;
    .end local v4    # "lifecycleRequest":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v5    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    :cond_59
    :goto_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity state must be in [ON_START..ON_STOP] in order to be relaunched,current state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6045
    return-void
.end method

.method public greylist-max-o handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V
    .registers 21
    .param p1, "cmd"    # Landroid/app/ActivityThread$RequestAssistContextExtras;

    .line 4128
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_d

    move v0, v4

    goto :goto_e

    :cond_d
    move v0, v3

    :goto_e
    move v5, v0

    .line 4130
    .local v5, "forAutofill":Z
    iget v0, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_16

    move v0, v4

    goto :goto_17

    :cond_16
    move v0, v3

    :goto_17
    move v6, v0

    .line 4133
    .local v6, "requestedOnlyContent":Z
    iget v0, v1, Landroid/app/ActivityThread;->mLastSessionId:I

    iget v7, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    if-eq v0, v7, :cond_46

    .line 4135
    iget v0, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    iput v0, v1, Landroid/app/ActivityThread;->mLastSessionId:I

    .line 4136
    iget-object v0, v1, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_29
    if-ltz v0, :cond_46

    .line 4137
    iget-object v7, v1, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/assist/AssistStructure;

    .line 4138
    .local v7, "structure":Landroid/app/assist/AssistStructure;
    if-eqz v7, :cond_3e

    .line 4139
    invoke-virtual {v7}, Landroid/app/assist/AssistStructure;->clearSendChannel()V

    .line 4141
    :cond_3e
    iget-object v8, v1, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4136
    .end local v7    # "structure":Landroid/app/assist/AssistStructure;
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    .line 4145
    .end local v0    # "i":I
    :cond_46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v13, v0

    .line 4146
    .local v13, "data":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 4147
    .local v0, "structure":Landroid/app/assist/AssistStructure;
    if-eqz v5, :cond_51

    const/4 v7, 0x0

    goto :goto_56

    :cond_51
    new-instance v7, Landroid/app/assist/AssistContent;

    invoke-direct {v7}, Landroid/app/assist/AssistContent;-><init>()V

    :goto_56
    move-object v14, v7

    .line 4148
    .local v14, "content":Landroid/app/assist/AssistContent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 4149
    .local v11, "startTime":J
    iget-object v7, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v8, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4150
    .local v15, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v7, 0x0

    .line 4151
    .local v7, "referrer":Landroid/net/Uri;
    if-eqz v15, :cond_da

    .line 4152
    if-nez v5, :cond_81

    .line 4153
    iget-object v8, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v8

    iget-object v9, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v9, v13}, Landroid/app/Application;->dispatchOnProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 4154
    iget-object v8, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v13}, Landroid/app/Activity;->onProvideAssistData(Landroid/os/Bundle;)V

    .line 4155
    iget-object v8, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v7

    .line 4157
    :cond_81
    iget v8, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    if-eq v8, v4, :cond_8c

    if-nez v5, :cond_8c

    if-eqz v6, :cond_8a

    goto :goto_8c

    :cond_8a
    move-object v3, v7

    goto :goto_db

    .line 4159
    :cond_8c
    :goto_8c
    if-nez v6, :cond_98

    .line 4160
    new-instance v8, Landroid/app/assist/AssistStructure;

    iget-object v9, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v10, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->flags:I

    invoke-direct {v8, v9, v5, v10}, Landroid/app/assist/AssistStructure;-><init>(Landroid/app/Activity;ZI)V

    move-object v0, v8

    .line 4162
    :cond_98
    iget-object v8, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 4163
    .local v8, "activityIntent":Landroid/content/Intent;
    iget-object v9, v15, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v9, :cond_ae

    iget-object v9, v15, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 4164
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v9, v9, 0x2000

    if-nez v9, :cond_af

    :cond_ae
    move v3, v4

    .line 4166
    .local v3, "notSecure":Z
    :cond_af
    if-eqz v8, :cond_c7

    if-eqz v3, :cond_c7

    .line 4167
    if-nez v5, :cond_d1

    .line 4168
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4169
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v9

    and-int/lit8 v9, v9, -0x43

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4171
    invoke-virtual {v14, v4}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 4172
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_d1

    .line 4174
    :cond_c7
    if-nez v5, :cond_d1

    .line 4175
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v14, v4}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 4178
    :cond_d1
    :goto_d1
    if-nez v5, :cond_d8

    .line 4179
    iget-object v4, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v14}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    .line 4184
    .end local v3    # "notSecure":Z
    .end local v8    # "activityIntent":Landroid/content/Intent;
    :cond_d8
    move-object v3, v7

    goto :goto_db

    .line 4151
    :cond_da
    move-object v3, v7

    .line 4184
    .end local v7    # "referrer":Landroid/net/Uri;
    .local v3, "referrer":Landroid/net/Uri;
    :goto_db
    if-nez v6, :cond_fb

    .line 4185
    if-nez v0, :cond_e5

    .line 4186
    new-instance v4, Landroid/app/assist/AssistStructure;

    invoke-direct {v4}, Landroid/app/assist/AssistStructure;-><init>()V

    move-object v0, v4

    .line 4191
    :cond_e5
    invoke-virtual {v0, v11, v12}, Landroid/app/assist/AssistStructure;->setAcquisitionStartTime(J)V

    .line 4192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/app/assist/AssistStructure;->setAcquisitionEndTime(J)V

    .line 4194
    iget-object v4, v1, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v0

    goto :goto_fc

    .line 4184
    :cond_fb
    move-object v4, v0

    .line 4197
    .end local v0    # "structure":Landroid/app/assist/AssistStructure;
    .local v4, "structure":Landroid/app/assist/AssistStructure;
    :goto_fc
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v16

    .line 4199
    .local v16, "mgr":Landroid/app/IActivityTaskManager;
    :try_start_100
    iget-object v8, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;
    :try_end_102
    .catch Landroid/os/RemoteException; {:try_start_100 .. :try_end_102} :catch_111

    move-object/from16 v7, v16

    move-object v9, v13

    move-object v10, v4

    move-wide/from16 v17, v11

    .end local v11    # "startTime":J
    .local v17, "startTime":J
    move-object v11, v14

    move-object v12, v3

    :try_start_10a
    invoke-interface/range {v7 .. v12}, Landroid/app/IActivityTaskManager;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    :try_end_10d
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_10d} :catch_10f

    .line 4202
    nop

    .line 4203
    return-void

    .line 4200
    :catch_10f
    move-exception v0

    goto :goto_114

    .end local v17    # "startTime":J
    .restart local v11    # "startTime":J
    :catch_111
    move-exception v0

    move-wide/from16 v17, v11

    .line 4201
    .end local v11    # "startTime":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v17    # "startTime":J
    :goto_114
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7
.end method

.method public blacklist handleResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)V
    .registers 16
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finalStateRequest"    # Z
    .param p3, "isForward"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 5117
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 5118
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5122
    invoke-virtual {p0, p1, p2, p4}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 5123
    return-void

    .line 5125
    :cond_d
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 5130
    return-void

    .line 5133
    :cond_18
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5135
    .local v1, "a":Landroid/app/Activity;
    sget-boolean v2, Landroid/app/ActivityThread;->localLOGV:Z

    const-string v3, "ActivityThread"

    if-eqz v2, :cond_5a

    .line 5136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " started activity: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, v1, Landroid/app/Activity;->mStartedActivity:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", hideForNow: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", finished: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, v1, Landroid/app/Activity;->mFinished:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5140
    :cond_5a
    const/16 v2, 0x100

    const/4 v4, 0x0

    if-eqz p3, :cond_61

    .line 5141
    move v5, v2

    goto :goto_62

    :cond_61
    move v5, v4

    .line 5146
    .local v5, "forwardBit":I
    :goto_62
    iget-boolean v6, v1, Landroid/app/Activity;->mStartedActivity:Z

    xor-int/2addr v6, v0

    .line 5147
    .local v6, "willBeVisible":Z
    if-nez v6, :cond_73

    .line 5148
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v7

    .line 5149
    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v8

    .line 5148
    invoke-virtual {v7, v8}, Landroid/app/ActivityClient;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v6

    .line 5151
    :cond_73
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-nez v7, :cond_cc

    iget-boolean v7, v1, Landroid/app/Activity;->mFinished:Z

    if-nez v7, :cond_cc

    if-eqz v6, :cond_cc

    .line 5152
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    iput-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 5153
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 5154
    .local v7, "decor":Landroid/view/View;
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 5155
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    .line 5156
    .local v8, "wm":Landroid/view/ViewManager;
    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 5157
    .local v9, "l":Landroid/view/WindowManager$LayoutParams;
    iput-object v7, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 5158
    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5159
    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/2addr v10, v5

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 5160
    iget-boolean v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v10, :cond_b3

    .line 5161
    iput-boolean v0, v1, Landroid/app/Activity;->mWindowAdded:Z

    .line 5162
    iput-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 5167
    invoke-virtual {v7}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v10

    .line 5168
    .local v10, "impl":Landroid/view/ViewRootImpl;
    if-eqz v10, :cond_b3

    .line 5169
    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->notifyChildRebuilt()V

    .line 5172
    .end local v10    # "impl":Landroid/view/ViewRootImpl;
    :cond_b3
    iget-boolean v10, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v10, :cond_f1

    .line 5173
    iget-boolean v10, v1, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v10, :cond_c1

    .line 5174
    iput-boolean v0, v1, Landroid/app/Activity;->mWindowAdded:Z

    .line 5175
    invoke-interface {v8, v7, v9}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f1

    .line 5178
    :cond_c1
    invoke-static {}, Landroid/view/WindowManagerGlobalStub;->getInstance()Landroid/view/WindowManagerGlobalStub;

    move-result-object v10

    invoke-virtual {v10, v9, v7}, Landroid/view/WindowManagerGlobalStub;->adaptWindowCutout(Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V

    .line 5184
    invoke-virtual {v1, v9}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_f1

    .line 5191
    .end local v7    # "decor":Landroid/view/View;
    .end local v8    # "wm":Landroid/view/ViewManager;
    .end local v9    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_cc
    if-nez v6, :cond_f1

    .line 5192
    sget-boolean v7, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v7, :cond_ee

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Launch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mStartedActivity set"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5193
    :cond_ee
    iput-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    goto :goto_f2

    .line 5191
    :cond_f1
    :goto_f1
    nop

    .line 5197
    :goto_f2
    invoke-static {p1, v4}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 5201
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_173

    if-eqz v6, :cond_173

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v4, v4, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v4, :cond_173

    iget-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-nez v4, :cond_173

    .line 5202
    sget-boolean v4, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v4, :cond_12b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resuming "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " with isForward="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5203
    :cond_12b
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    .line 5204
    .local v4, "impl":Landroid/view/ViewRootImpl;
    if-eqz v4, :cond_13a

    .line 5205
    iget-object v7, v4, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    goto :goto_140

    :cond_13a
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 5206
    .local v7, "l":Landroid/view/WindowManager$LayoutParams;
    :goto_140
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/2addr v2, v8

    if-eq v2, v5, :cond_15f

    .line 5209
    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    or-int/2addr v2, v5

    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 5212
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v2, :cond_15f

    .line 5213
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 5214
    .local v2, "wm":Landroid/view/ViewManager;
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    .line 5215
    .local v8, "decor":Landroid/view/View;
    invoke-interface {v2, v8, v7}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5219
    .end local v2    # "wm":Landroid/view/ViewManager;
    .end local v8    # "decor":Landroid/view/View;
    :cond_15f
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 5220
    iget v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 5221
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v0, :cond_173

    .line 5222
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->makeVisible()V

    .line 5226
    .end local v4    # "impl":Landroid/view/ViewRootImpl;
    .end local v7    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_173
    iget-object v0, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5227
    iput-object p1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5228
    sget-boolean v0, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v0, :cond_193

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling idle handler for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5229
    :cond_193
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v2, Landroid/app/ActivityThread$Idler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$Idler-IA;)V

    invoke-virtual {v0, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 5230
    return-void
.end method

.method public blacklist handleSendResult(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "reason"    # Ljava/lang/String;
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

    .line 5657
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_RESULTS:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handling send result to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5658
    :cond_1c
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 5660
    .local v0, "resumed":Z
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v2

    invoke-interface {v2, p1, p2, v0}, Landroid/app/ActivityThreadStub;->deliverResultsIfNeededForFreeform(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Z)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 5661
    return-void

    .line 5664
    :cond_2b
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_40

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v2, :cond_40

    iget-boolean v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-eqz v2, :cond_40

    if-eqz v0, :cond_40

    .line 5669
    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 5671
    :cond_40
    const/4 v1, 0x0

    if-eqz v0, :cond_bd

    .line 5674
    :try_start_43
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, v2, Landroid/app/Activity;->mCalled:Z

    .line 5675
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 5676
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    if-eqz v2, :cond_55

    .line 5690
    goto :goto_bd

    .line 5677
    :cond_55
    new-instance v2, Landroid/util/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5678
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

    .end local v0    # "resumed":Z
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local p3    # "reason":Ljava/lang/String;
    throw v2
    :try_end_7e
    .catch Landroid/util/SuperNotCalledException; {:try_start_43 .. :try_end_7e} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_7e} :catch_7e

    .line 5683
    .restart local v0    # "resumed":Z
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local p3    # "reason":Ljava/lang/String;
    :catch_7e
    move-exception v2

    .line 5684
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_8a

    goto :goto_bd

    .line 5685
    :cond_8a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to pause activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5687
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5688
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5681
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_bb
    move-exception v1

    .line 5682
    .local v1, "e":Landroid/util/SuperNotCalledException;
    throw v1

    .line 5692
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :cond_bd
    :goto_bd
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 5693
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V

    .line 5694
    if-eqz v0, :cond_ca

    .line 5695
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1, p3}, Landroid/app/Activity;->performResume(ZLjava/lang/String;)V

    .line 5697
    :cond_ca
    return-void
.end method

.method public blacklist handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/app/ActivityOptions;)V
    .registers 8
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p3, "activityOptions"    # Landroid/app/ActivityOptions;

    .line 3930
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 3931
    .local v0, "activity":Landroid/app/Activity;
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_9e

    .line 3934
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-eqz v1, :cond_d

    .line 3936
    return-void

    .line 3939
    :cond_d
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3940
    if-eqz p3, :cond_14

    .line 3941
    iput-object p3, v0, Landroid/app/Activity;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 3945
    :cond_14
    const-string v1, "handleStartActivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->performStart(Ljava/lang/String;)V

    .line 3946
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 3948
    if-nez p2, :cond_20

    .line 3950
    return-void

    .line 3954
    :cond_20
    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldRestoreInstanceState()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 3955
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 3956
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v1, :cond_34

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_49

    .line 3957
    :cond_34
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_49

    .line 3960
    :cond_3e
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v1, :cond_49

    .line 3961
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3966
    :cond_49
    :goto_49
    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldCallOnPostCreate()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 3967
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/Activity;->mCalled:Z

    .line 3968
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 3969
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_69

    .line 3972
    :cond_62
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3974
    :goto_69
    iget-boolean v1, v0, Landroid/app/Activity;->mCalled:Z

    if-eqz v1, :cond_6e

    goto :goto_97

    .line 3975
    :cond_6e
    new-instance v1, Landroid/util/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 3976
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not call through to super.onPostCreate()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3981
    :cond_97
    :goto_97
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 3982
    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 3983
    return-void

    .line 3932
    :cond_9e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t start activity that is not stopped."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist handleStopActivity(Landroid/app/ActivityThread$ActivityClientRecord;ILandroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V
    .registers 13
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "configChanges"    # I
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p4, "finalStateRequest"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5538
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v1, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v1, p2

    iput v1, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 5540
    new-instance v0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    invoke-direct {v0}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;-><init>()V

    .line 5541
    .local v0, "stopInfo":Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZLjava/lang/String;)V

    .line 5544
    sget-boolean v1, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing stop of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5547
    :cond_3d
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 5550
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 5551
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 5554
    :cond_4a
    invoke-virtual {v0, p1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5555
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setState(Landroid/os/Bundle;)V

    .line 5556
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setPersistentState(Landroid/os/PersistableBundle;)V

    .line 5557
    invoke-virtual {p3, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setStopInfo(Landroid/app/servertransaction/PendingTransactionActions$StopInfo;)V

    .line 5558
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5559
    return-void
.end method

.method public blacklist handleSystemApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 4
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 6457
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    const-string v1, "Must only be called in the system process"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 6458
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 6459
    return-void
.end method

.method public blacklist handleTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    .registers 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "onTop"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5236
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_ORDER:Z

    const-string v1, "ActivityThread"

    if-eqz v0, :cond_26

    .line 5237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received position change to top: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for activity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5240
    :cond_26
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isTopResumedActivity:Z

    if-ne v0, p2, :cond_59

    .line 5241
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v2, "Activity top position already set to onTop="

    if-nez v0, :cond_45

    .line 5242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5243
    return-void

    .line 5246
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5250
    :cond_59
    if-eqz p2, :cond_73

    .line 5251
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_73

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 5252
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mCurrentActivity:Ljava/lang/String;

    .line 5256
    :cond_73
    iput-boolean p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isTopResumedActivity:Z

    .line 5258
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_83

    .line 5259
    const-string/jumbo v0, "topStateChangedWhenResumed"

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityThread;->reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    goto :goto_a1

    .line 5261
    :cond_83
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_ORDER:Z

    if-eqz v0, :cond_a1

    .line 5262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Won\'t deliver top position change in state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5265
    :cond_a1
    :goto_a1
    return-void
.end method

.method public greylist-max-o handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    .line 4283
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4284
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_f

    .line 4285
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onTranslucentConversionComplete(Z)V

    .line 4287
    :cond_f
    return-void
.end method

.method final greylist handleUnstableProviderDied(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    .line 7909
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7910
    :try_start_3
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    .line 7911
    monitor-exit v0

    .line 7912
    return-void

    .line 7911
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method final greylist-max-o handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    .registers 9
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    .line 7915
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    .line 7916
    .local v0, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v0, :cond_8a

    .line 7917
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    const-string v2, "ActivityThread"

    if-eqz v1, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up dead provider "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v3, v3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7919
    :cond_36
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7920
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_43
    if-ltz v1, :cond_7b

    .line 7921
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 7922
    .local v3, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v3, :cond_78

    iget-object v4, v3, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_78

    .line 7923
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing dead content provider:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7924
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 7920
    .end local v3    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_78
    add-int/lit8 v1, v1, -0x1

    goto :goto_43

    .line 7928
    .end local v1    # "i":I
    :cond_7b
    if-eqz p2, :cond_8a

    .line 7935
    :try_start_7d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_88} :catch_89

    .line 7939
    goto :goto_8a

    .line 7937
    :catch_89
    move-exception v1

    .line 7942
    :cond_8a
    :goto_8a
    return-void
.end method

.method public blacklist inFreeForm()Z
    .registers 3

    .line 6845
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_15

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 6846
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 6845
    :goto_16
    return v0
.end method

.method public blacklist inMiuiSizeCompatMode()Z
    .registers 2

    .line 6395
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivityThreadStub:Landroid/app/ActivityThreadStub;

    invoke-interface {v0, p0}, Landroid/app/ActivityThreadStub;->inMiuiSizeCompatMode(Landroid/app/ActivityThread;)Z

    move-result v0

    return v0
.end method

.method public blacklist inMiuiSizeCompatScaleMode()Z
    .registers 2

    .line 6399
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivityThreadStub:Landroid/app/ActivityThreadStub;

    invoke-interface {v0, p0}, Landroid/app/ActivityThreadStub;->inMiuiSizeCompatScaleMode(Landroid/app/ActivityThread;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 2916
    monitor-enter p0

    .line 2917
    :try_start_1
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 2918
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 2921
    new-instance v0, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 2922
    monitor-exit p0

    .line 2923
    return-void

    .line 2922
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public final greylist installSystemProviders(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 8264
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz p1, :cond_7

    .line 8265
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 8267
    :cond_7
    return-void
.end method

.method public blacklist isCachedProcessState()Z
    .registers 4

    .line 3616
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    monitor-enter v0

    .line 3617
    :try_start_3
    iget v1, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 3618
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist isHandleSplashScreenExit(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4357
    monitor-enter p0

    .line 4358
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->containsExitListener(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    monitor-exit p0

    return v0

    .line 4359
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public blacklist isInDensityCompatMode()Z
    .registers 2

    .line 8590
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    return v0
.end method

.method public blacklist isLandscape()Z
    .registers 3

    .line 6850
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_b

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public greylist-max-o isProfiling()Z
    .registers 2

    .line 2820
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_10

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method synthetic blacklist lambda$attach$2$android-app-ActivityThread(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;

    .line 8217
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 8220
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 8222
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v2, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 8223
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 8222
    invoke-virtual {v1, v2}, Landroid/app/ConfigurationController;->updateLocaleListFromAppContext(Landroid/content/Context;)V

    .line 8226
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 8227
    invoke-virtual {v1, p1}, Landroid/app/ConfigurationController;->updatePendingConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 8228
    .local v1, "updatedConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_36

    .line 8231
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v3}, Landroid/app/ActivityThread$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/16 v4, 0x76

    if-ne v2, v3, :cond_31

    .line 8232
    invoke-direct {p0, v4, p1}, Landroid/app/ActivityThread;->sendMessageToFront(ILjava/lang/Object;)V

    goto :goto_34

    .line 8234
    :cond_31
    invoke-virtual {p0, v4, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 8237
    :goto_34
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 8240
    .end local v1    # "updatedConfig":Landroid/content/res/Configuration;
    :cond_36
    monitor-exit v0

    .line 8241
    return-void

    .line 8240
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method synthetic blacklist lambda$syncTransferSplashscreenViewTransaction$1$android-app-ActivityThread(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "view"    # Landroid/window/SplashScreenView;

    .line 4424
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->reportSplashscreenViewShown(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method

.method public greylist-max-o onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 4290
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4291
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_f

    .line 4292
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onNewActivityOptions(Landroid/app/ActivityOptions;)V

    .line 4294
    :cond_f
    return-void
.end method

.method blacklist onSystemUiContextCleanup(Landroid/app/ContextImpl;)V
    .registers 4
    .param p1, "context"    # Landroid/app/ContextImpl;

    .line 2906
    monitor-enter p0

    .line 2907
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 2908
    :cond_7
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 2909
    .local v0, "index":I
    if-ltz v0, :cond_12

    .line 2910
    iget-object v1, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2912
    .end local v0    # "index":I
    :cond_12
    monitor-exit p0

    .line 2913
    return-void

    .line 2912
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public final greylist-max-p peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeCode"    # Z

    .line 2698
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 2700
    if-eqz p2, :cond_e

    .line 2701
    :try_start_5
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_16

    .line 2703
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_e
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2705
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_16
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoadedApk;

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    monitor-exit v0

    return-object v2

    .line 2706
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw v1
.end method

.method blacklist performDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZIZLjava/lang/String;)V
    .registers 11
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5702
    const/4 v0, 0x0

    .line 5703
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    sget-boolean v1, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v1, :cond_1d

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing finish of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5704
    :cond_1d
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 5705
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v2, p3

    iput v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 5706
    if-eqz p2, :cond_31

    .line 5707
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/Activity;->mFinished:Z

    .line 5710
    :cond_31
    const-string v1, "destroy"

    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 5712
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    const/4 v2, 0x0

    if-nez v1, :cond_40

    .line 5713
    const-string v1, "destroy"

    invoke-direct {p0, p1, v2, v1}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 5715
    :cond_40
    if-eqz p4, :cond_88

    .line 5717
    :try_start_42
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;

    move-result-object v1

    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4a} :catch_4b

    .line 5723
    goto :goto_88

    .line 5718
    :catch_4b
    move-exception v1

    .line 5719
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_57

    goto :goto_88

    .line 5720
    :cond_57
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retain activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5721
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 5726
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_88
    :goto_88
    :try_start_88
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v2, v1, Landroid/app/Activity;->mCalled:Z

    .line 5727
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 5728
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mCalled:Z

    if-eqz v1, :cond_a3

    .line 5732
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v1, :cond_a2

    .line 5733
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 5742
    :cond_a2
    goto :goto_d3

    .line 5729
    :cond_a3
    new-instance v1, Landroid/util/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v3}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not call through to super.onDestroy()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .end local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "finishing":Z
    .end local p3    # "configChanges":I
    .end local p4    # "getNonConfigInstance":Z
    .end local p5    # "reason":Ljava/lang/String;
    throw v1
    :try_end_c8
    .catch Landroid/util/SuperNotCalledException; {:try_start_88 .. :try_end_c8} :catch_141
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_c8} :catch_c8

    .line 5737
    .restart local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "finishing":Z
    .restart local p3    # "configChanges":I
    .restart local p4    # "getNonConfigInstance":Z
    .restart local p5    # "reason":Ljava/lang/String;
    :catch_c8
    move-exception v1

    .line 5738
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_114

    .line 5743
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_d3
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 5746
    invoke-static {}, Landroid/util/MiuiAppSizeCompatModeStub;->get()Landroid/util/MiuiAppSizeCompatModeStub;

    move-result-object v1

    invoke-interface {v1}, Landroid/util/MiuiAppSizeCompatModeStub;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 5747
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivityThreadStub:Landroid/app/ActivityThreadStub;

    invoke-interface {v1, p1}, Landroid/app/ActivityThreadStub;->performDestroyCompatActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5751
    :cond_e6
    iget-object v1, p0, Landroid/app/ActivityThread;->mLastReportedWindowingMode:Ljava/util/Map;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5752
    invoke-virtual {p0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 5753
    monitor-enter p0

    .line 5754
    :try_start_f5
    iget-object v1, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    if-eqz v1, :cond_fe

    .line 5755
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->tokenDestroyed(Landroid/os/IBinder;)V

    .line 5757
    :cond_fe
    monitor-exit p0
    :try_end_ff
    .catchall {:try_start_f5 .. :try_end_ff} :catchall_111

    .line 5761
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 5762
    :try_start_102
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5763
    monitor-exit v1
    :try_end_10a
    .catchall {:try_start_102 .. :try_end_10a} :catchall_10e

    .line 5764
    invoke-static {v0}, Landroid/os/StrictMode;->decrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 5765
    return-void

    .line 5763
    :catchall_10e
    move-exception v2

    :try_start_10f
    monitor-exit v1
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_10e

    throw v2

    .line 5757
    :catchall_111
    move-exception v1

    :try_start_112
    monitor-exit p0
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    throw v1

    .line 5739
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_114
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to destroy activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5740
    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 5735
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_141
    move-exception v1

    .line 5736
    .local v1, "e":Landroid/util/SuperNotCalledException;
    throw v1
.end method

.method final greylist-max-o performPauseActivity(Landroid/os/IBinder;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 5309
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5310
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_f

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public blacklist performRestartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .registers 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "start"    # Z

    .line 5574
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v0, :cond_12

    .line 5575
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const-string/jumbo v1, "performRestartActivity"

    invoke-virtual {v0, p2, v1}, Landroid/app/Activity;->performRestart(ZLjava/lang/String;)V

    .line 5576
    if-eqz p2, :cond_12

    .line 5577
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 5580
    :cond_12
    return-void
.end method

.method public blacklist performResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)Z
    .registers 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finalStateRequest"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5028
    sget-boolean v0, Landroid/app/ActivityThread;->localLOGV:Z

    const-string v1, "ActivityThread"

    if-eqz v0, :cond_2a

    .line 5029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing resume of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " finished="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5031
    :cond_2a
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    .line 5032
    return v2

    .line 5036
    :cond_32
    invoke-static {}, Landroid/util/MiuiAppSizeCompatModeStub;->get()Landroid/util/MiuiAppSizeCompatModeStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/util/MiuiAppSizeCompatModeStub;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 5037
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivityThreadStub:Landroid/app/ActivityThreadStub;

    invoke-interface {v0, p1}, Landroid/app/ActivityThreadStub;->setTopActivityClient(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5042
    :cond_41
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 5043
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_56

    .line 5044
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityThread;->mCurrentActivity:Ljava/lang/String;

    .line 5045
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-direct {p0, v3, v4, v0}, Landroid/app/ActivityThread;->initAutoUIConfig(Landroid/content/pm/ActivityInfo;Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 5049
    :cond_56
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_75

    .line 5050
    if-nez p2, :cond_74

    .line 5051
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Trying to resume activity which is already resumed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 5053
    .local v3, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5054
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getStateString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5061
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_74
    return v2

    .line 5063
    :cond_75
    if-eqz p2, :cond_7d

    .line 5064
    iput-boolean v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 5065
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v2, v1, Landroid/app/Activity;->mStartedActivity:Z

    .line 5068
    :cond_7d
    :try_start_7d
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onStateNotSaved()V

    .line 5069
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 5070
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 5071
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_98

    .line 5072
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 5073
    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 5075
    :cond_98
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v1, :cond_a3

    .line 5076
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-direct {p0, p1, v1, p3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V

    .line 5077
    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 5079
    :cond_a3
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    invoke-virtual {v1, v3, p3}, Landroid/app/Activity;->performResume(ZLjava/lang/String;)V

    .line 5081
    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 5082
    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 5083
    invoke-virtual {p1, v4}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 5085
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isTopResumedActivity:Z

    const-string/jumbo v2, "topWhenResuming"

    invoke-direct {p0, p1, v1, v2}, Landroid/app/ActivityThread;->reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_b9} :catch_ba

    .line 5091
    goto :goto_c5

    .line 5086
    :catch_ba
    move-exception v1

    .line 5087
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 5092
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_c5
    const/4 v1, 0x1

    return v1

    .line 5088
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_c7
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resume activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5089
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method final greylist-max-r performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "saveState"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5402
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5403
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v0

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZLjava/lang/String;)V

    .line 5405
    return-void
.end method

.method final greylist-max-o performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5303
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnPictureInPictureRequested(Landroid/app/Activity;)V

    .line 5304
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 5305
    return-void
.end method

.method public greylist-max-o prepareRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .registers 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "config"    # Landroid/util/MergedConfiguration;
    .param p6, "preserveWindow"    # Z
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
            "Z)",
            "Landroid/app/ActivityThread$ActivityClientRecord;"
        }
    .end annotation

    .line 5850
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v0, 0x0

    .line 5851
    .local v0, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    .line 5853
    .local v1, "scheduleRelaunch":Z
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 5854
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    :try_start_6
    iget-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_62

    .line 5855
    iget-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5856
    .local v4, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    sget-boolean v5, Landroid/app/ActivityThread;->DEBUG_ORDER:Z

    if-eqz v5, :cond_3d

    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestRelaunchActivity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", trying: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5857
    :cond_3d
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v5, p1, :cond_5f

    .line 5858
    move-object v0, v4

    .line 5859
    if-eqz p2, :cond_50

    .line 5860
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v5, :cond_4e

    .line 5861
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_50

    .line 5863
    :cond_4e
    iput-object p2, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 5866
    :cond_50
    :goto_50
    if-eqz p3, :cond_62

    .line 5867
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v5, :cond_5c

    .line 5868
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_62

    .line 5870
    :cond_5c
    iput-object p3, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    goto :goto_62

    .line 5854
    .end local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 5877
    .end local v3    # "i":I
    :cond_62
    :goto_62
    if-nez v0, :cond_84

    .line 5878
    sget-boolean v3, Landroid/app/ActivityThread;->DEBUG_ORDER:Z

    if-eqz v3, :cond_70

    const-string v3, "ActivityThread"

    const-string/jumbo v4, "requestRelaunchActivity: target is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5879
    :cond_70
    new-instance v3, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v3}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    move-object v0, v3

    .line 5880
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 5881
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 5882
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 5883
    iput-boolean p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 5884
    iget-object v3, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5885
    const/4 v1, 0x1

    .line 5887
    :cond_84
    invoke-virtual {p5}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 5888
    invoke-virtual {p5}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 5889
    iget v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v3, p4

    iput v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    .line 5890
    monitor-exit v2

    .line 5892
    if-eqz v1, :cond_9a

    move-object v2, v0

    goto :goto_9b

    :cond_9a
    const/4 v2, 0x0

    :goto_9b
    return-object v2

    .line 5890
    :catchall_9c
    move-exception v3

    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_6 .. :try_end_9e} :catchall_9c

    throw v3
.end method

.method public greylist-max-r registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    .line 3517
    iget-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3518
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3519
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-nez v1, :cond_18

    .line 3520
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 3521
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3523
    :cond_18
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3524
    nop

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v0

    .line 3525
    return-void

    .line 3524
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public blacklist registerSplashScreenManager(Landroid/window/SplashScreen$SplashScreenManagerGlobal;)V
    .registers 3
    .param p1, "manager"    # Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    .line 4350
    monitor-enter p0

    .line 4351
    :try_start_1
    iput-object p1, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    .line 4352
    monitor-exit p0

    .line 4353
    return-void

    .line 4352
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final greylist releaseProvider(Landroid/content/IContentProvider;Z)Z
    .registers 13
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "stable"    # Z

    .line 7779
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 7780
    return v0

    .line 7783
    :cond_4
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 7784
    .local v1, "jBinder":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 7785
    :try_start_b
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 7786
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v3, :cond_17

    .line 7788
    monitor-exit v2

    return v0

    .line 7791
    :cond_17
    const/4 v4, 0x0

    .line 7792
    .local v4, "lastRef":Z
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz p2, :cond_7d

    .line 7793
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v7, :cond_2e

    .line 7794
    sget-boolean v5, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v5, :cond_2c

    const-string v5, "ActivityThread"

    const-string/jumbo v6, "releaseProvider: stable ref count already 0, how?"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7796
    :cond_2c
    monitor-exit v2

    return v0

    .line 7798
    :cond_2e
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    sub-int/2addr v7, v6

    iput v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 7799
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v7, :cond_d2

    .line 7806
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_12e

    if-nez v7, :cond_3d

    move v7, v6

    goto :goto_3e

    :cond_3d
    move v7, v0

    :goto_3e
    move v4, v7

    .line 7808
    :try_start_3f
    sget-boolean v7, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v7, :cond_6c

    .line 7809
    const-string v7, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "releaseProvider: No longer stable w/lastRef="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v9, v9, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7812
    :cond_6c
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v8, v8, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 7813
    if-eqz v4, :cond_77

    move v0, v6

    .line 7812
    :cond_77
    invoke-interface {v7, v8, v5, v0}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_7a} :catch_7b
    .catchall {:try_start_3f .. :try_end_7a} :catchall_12e

    goto :goto_7c

    .line 7814
    :catch_7b
    move-exception v0

    .line 7816
    :goto_7c
    goto :goto_d2

    .line 7819
    :cond_7d
    :try_start_7d
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v7, :cond_8f

    .line 7820
    sget-boolean v5, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v5, :cond_8d

    const-string v5, "ActivityThread"

    const-string/jumbo v6, "releaseProvider: unstable ref count already 0, how?"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7822
    :cond_8d
    monitor-exit v2

    return v0

    .line 7824
    :cond_8f
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    sub-int/2addr v7, v6

    iput v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 7825
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v7, :cond_d2

    .line 7829
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_9a
    .catchall {:try_start_7d .. :try_end_9a} :catchall_12e

    if-nez v7, :cond_9e

    move v7, v6

    goto :goto_9f

    :cond_9e
    move v7, v0

    :goto_9f
    move v4, v7

    .line 7830
    if-nez v4, :cond_d2

    .line 7832
    :try_start_a2
    sget-boolean v7, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v7, :cond_c5

    .line 7833
    const-string v7, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "releaseProvider: No longer unstable - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v9, v9, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7836
    :cond_c5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v8, v8, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v7, v8, v0, v5}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_d0} :catch_d1
    .catchall {:try_start_a2 .. :try_end_d0} :catchall_12e

    .line 7840
    goto :goto_d2

    .line 7838
    :catch_d1
    move-exception v0

    .line 7845
    :cond_d2
    :goto_d2
    if-eqz v4, :cond_12c

    .line 7846
    :try_start_d4
    iget-boolean v0, v3, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v0, :cond_10e

    .line 7849
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v0, :cond_fb

    .line 7850
    const-string v0, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "releaseProvider: Enqueueing pending removal - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v7, v7, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7853
    :cond_fb
    iput-boolean v6, v3, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 7854
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v5, 0x83

    invoke-virtual {v0, v5, v3}, Landroid/app/ActivityThread$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7855
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v0, v7, v8}, Landroid/app/ActivityThread$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7856
    nop

    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_12c

    .line 7857
    :cond_10e
    const-string v0, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate remove pending of provider "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v7, v7, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7860
    :cond_12c
    :goto_12c
    monitor-exit v2

    return v6

    .line 7861
    .end local v3    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "lastRef":Z
    :catchall_12e
    move-exception v0

    monitor-exit v2
    :try_end_130
    .catchall {:try_start_d4 .. :try_end_130} :catchall_12e

    throw v0
.end method

.method public blacklist reportRelaunch(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 6110
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->activityRelaunched(Landroid/os/IBinder;)V

    .line 6111
    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldReportRelaunchToWindowManager()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v0, :cond_18

    .line 6112
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->reportActivityRelaunched()V

    .line 6114
    :cond_18
    return-void
.end method

.method public greylist-max-o reportStop(Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 4
    .param p1, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 5569
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {p1}, Landroid/app/servertransaction/PendingTransactionActions;->getStopInfo()Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 5570
    return-void
.end method

.method public final greylist-max-o resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3539
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 3540
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3539
    const/16 v1, 0x400

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 3541
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_13

    .line 3543
    const/16 v1, -0x5c

    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 3546
    :cond_13
    return-object v0
.end method

.method final greylist-max-o scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .line 3772
    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>()V

    .line 3773
    .local v0, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    .line 3774
    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    .line 3775
    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    .line 3776
    const/16 v1, 0x77

    invoke-virtual {p0, v1, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 3777
    return-void
.end method

.method greylist scheduleGcIdler()V
    .registers 3

    .line 2927
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-nez v0, :cond_10

    .line 2928
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2929
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2931
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2932
    return-void
.end method

.method blacklist schedulePurgeIdler()V
    .registers 3

    .line 2943
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    if-nez v0, :cond_10

    .line 2944
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 2945
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2947
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2948
    return-void
.end method

.method greylist-max-o scheduleRelaunchActivity(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6005
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6006
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_2d

    .line 6007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schedule relaunch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6008
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->scheduleRelaunchActivityIfPossible(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 6010
    :cond_2d
    return-void
.end method

.method public final greylist sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "data"    # Landroid/content/Intent;

    .line 3713
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_RESULTS:Z

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendActivityResult: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3715
    :cond_3b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3716
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v1, Landroid/app/ResultInfo;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3717
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-static {v1, p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v1

    .line 3718
    .local v1, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-static {v0}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 3720
    :try_start_55
    iget-object v2, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v2, v1}, Landroid/app/ActivityThread$ApplicationThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5a} :catch_5b

    .line 3723
    goto :goto_5c

    .line 3721
    :catch_5b
    move-exception v2

    .line 3724
    :goto_5c
    return-void
.end method

.method greylist-max-o sendMessage(ILjava/lang/Object;)V
    .registers 9
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 3732
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 3733
    return-void
.end method

.method public blacklist setAdaptCutoutMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 6827
    iput p1, p0, Landroid/app/ActivityThread;->mAdaptCutoutMode:I

    .line 6828
    return-void
.end method

.method public blacklist setFootprintFlag(Z)V
    .registers 2
    .param p1, "setfootprint"    # Z

    .line 3624
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSetFootprint:Z

    .line 3625
    return-void
.end method

.method public blacklist setMiuiEmbeddingHandler(Landroid/app/ActivityThread$MiuiEmbeddingHandler;)V
    .registers 2
    .param p1, "miuiEmbeddingHandler"    # Landroid/app/ActivityThread$MiuiEmbeddingHandler;

    .line 6886
    sput-object p1, Landroid/app/ActivityThread;->mMiuiEmbeddingHandler:Landroid/app/ActivityThread$MiuiEmbeddingHandler;

    .line 6887
    return-void
.end method

.method public blacklist setSupportSmartOrient(Z)V
    .registers 4
    .param p1, "isSupportSmartOrient"    # Z

    .line 6856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSupportSmartOrient isSupportSmartOrient = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6857
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSupportSmartOrient:Z

    .line 6858
    return-void
.end method

.method public final greylist-max-p startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/app/Activity;
    .registers 15
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "state"    # Landroid/os/Bundle;
    .param p7, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;
    .param p8, "assistToken"    # Landroid/os/IBinder;
    .param p9, "shareableActivityToken"    # Landroid/os/IBinder;

    .line 3554
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 3555
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 3556
    iput-object p8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->assistToken:Landroid/os/IBinder;

    .line 3557
    iput-object p9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->shareableActivityToken:Landroid/os/IBinder;

    .line 3558
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 3559
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 3560
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 3561
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 3562
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    .line 3563
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3564
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 3565
    sget-boolean v1, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v1, :cond_72

    .line 3566
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 3568
    .local v1, "compname":Landroid/content/ComponentName;
    if-eqz v1, :cond_29

    .line 3569
    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    goto :goto_42

    .line 3571
    .end local v2    # "name":Ljava/lang/String;
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(Intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ").getComponent() returned null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3573
    .restart local v2    # "name":Ljava/lang/String;
    :goto_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Performing launch: action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", comp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityThread"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    .end local v1    # "compname":Landroid/content/ComponentName;
    .end local v2    # "name":Ljava/lang/String;
    :cond_72
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o stopProfiling()V
    .registers 2

    .line 6621
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_7

    .line 6622
    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 6624
    :cond_7
    return-void
.end method

.method public greylist-max-r unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    .line 3530
    iget-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3531
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3532
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-eqz v1, :cond_10

    .line 3533
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3535
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :cond_10
    monitor-exit v0

    .line 3536
    return-void

    .line 3535
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method greylist-max-o unscheduleGcIdler()V
    .registers 3

    .line 2935
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-eqz v0, :cond_10

    .line 2936
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2937
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2939
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2940
    return-void
.end method

.method blacklist unschedulePurgeIdler()V
    .registers 3

    .line 2951
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    if-eqz v0, :cond_10

    .line 2952
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 2953
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2955
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2956
    return-void
.end method

.method public blacklist updateBoundsCompatBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bound"    # Landroid/graphics/Rect;

    .line 6391
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivityThreadStub:Landroid/app/ActivityThreadStub;

    invoke-interface {v0, p1, p0}, Landroid/app/ActivityThreadStub;->updateBoundsCompatBounds(Landroid/graphics/Rect;Landroid/app/ActivityThread;)V

    .line 6392
    return-void
.end method

.method public blacklist updatePendingActivityConfiguration(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 6503
    iget-object v0, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 6504
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 6505
    .local v1, "pendingOverrideConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_3b

    .line 6506
    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 6507
    sget-boolean v2, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v2, :cond_39

    .line 6508
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity has newer configuration pending so this transaction will be dropped. overrideConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pendingOverrideConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6512
    :cond_39
    monitor-exit v0

    return-void

    .line 6514
    :cond_3b
    iget-object v2, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6515
    nop

    .end local v1    # "pendingOverrideConfig":Landroid/content/res/Configuration;
    monitor-exit v0

    .line 6516
    return-void

    .line 6515
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public greylist-max-o updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 3601
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 3602
    invoke-virtual {v0, p1}, Landroid/app/ConfigurationController;->updatePendingConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 3604
    .local v0, "updatedConfig":Landroid/content/res/Configuration;
    if-eqz v0, :cond_a

    .line 3605
    iput-object v0, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 3607
    :cond_a
    return-void
.end method

.method public greylist-max-o updateProcessState(IZ)V
    .registers 8
    .param p1, "processState"    # I
    .param p2, "fromIpc"    # Z

    .line 3649
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    monitor-enter v0

    .line 3650
    :try_start_3
    iget v1, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    if-ne v1, p1, :cond_9

    .line 3651
    monitor-exit v0

    return-void

    .line 3653
    :cond_9
    invoke-virtual {p0}, Landroid/app/ActivityThread;->isCachedProcessState()Z

    move-result v1

    .line 3654
    .local v1, "wasCached":Z
    iput p1, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    .line 3656
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 3657
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/ActivityThreadStub;->updateAppScoutStateMachineState(I)V

    .line 3660
    :cond_1c
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->updateVmProcessState(I)V

    .line 3661
    sget-boolean v2, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v2, :cond_46

    .line 3662
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******************* PROCESS STATE CHANGED TO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3663
    if-eqz p2, :cond_39

    const-string v4, " (from ipc"

    goto :goto_3b

    :cond_39
    const-string v4, ""

    :goto_3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3662
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    :cond_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_77

    .line 3670
    if-eqz v1, :cond_76

    invoke-virtual {p0}, Landroid/app/ActivityThread;->isCachedProcessState()Z

    move-result v0

    if-nez v0, :cond_76

    iget-object v0, p0, Landroid/app/ActivityThread;->mNumLaunchingActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_76

    .line 3671
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    const/4 v2, 0x0

    .line 3672
    invoke-virtual {v0, v2}, Landroid/app/ConfigurationController;->getPendingConfiguration(Z)Landroid/content/res/Configuration;

    move-result-object v0

    .line 3673
    .local v0, "pendingConfig":Landroid/content/res/Configuration;
    if-nez v0, :cond_61

    .line 3674
    return-void

    .line 3676
    :cond_61
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v3}, Landroid/app/ActivityThread$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_71

    .line 3677
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_76

    .line 3679
    :cond_71
    const/16 v2, 0x76

    invoke-virtual {p0, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 3682
    .end local v0    # "pendingConfig":Landroid/content/res/Configuration;
    :cond_76
    :goto_76
    return-void

    .line 3665
    .end local v1    # "wasCached":Z
    :catchall_77
    move-exception v1

    :try_start_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v1
.end method
