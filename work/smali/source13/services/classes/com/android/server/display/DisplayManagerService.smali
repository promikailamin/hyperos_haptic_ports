.class public final Lcom/android/server/display/DisplayManagerService;
.super Lcom/android/server/SystemService;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerService$Clock;,
        Lcom/android/server/display/DisplayManagerService$BrightnessPair;,
        Lcom/android/server/display/DisplayManagerService$DeviceStateListener;,
        Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;,
        Lcom/android/server/display/DisplayManagerService$LocalService;,
        Lcom/android/server/display/DisplayManagerService$BinderService;,
        Lcom/android/server/display/DisplayManagerService$CallbackRecord;,
        Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;,
        Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;,
        Lcom/android/server/display/DisplayManagerService$Injector;,
        Lcom/android/server/display/DisplayManagerService$SyncRoot;,
        Lcom/android/server/display/DisplayManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field static final DISPLAY_MODE_RETURNS_PHYSICAL_REFRESH_RATE:J = 0xa29ae4eL

.field private static final FORCE_WIFI_DISPLAY_ENABLE:Ljava/lang/String; = "persist.debug.wfd.enable"

.field private static final IS_FOLDABLE_DEVICE:Z

.field private static final MSG_DELIVER_DISPLAY_EVENT:I = 0x3

.field private static final MSG_DELIVER_DISPLAY_EVENT_FRAME_RATE_OVERRIDE:I = 0x7

.field private static final MSG_DELIVER_DISPLAY_GROUP_EVENT:I = 0x8

.field private static final MSG_LOAD_BRIGHTNESS_CONFIGURATIONS:I = 0x6

.field private static final MSG_REGISTER_ADDITIONAL_DISPLAY_ADAPTERS:I = 0x2

.field private static final MSG_REGISTER_DEFAULT_DISPLAY_ADAPTERS:I = 0x1

.field private static final MSG_REQUEST_TRAVERSAL:I = 0x4

.field private static final MSG_UPDATE_VIEWPORT:I = 0x5

.field private static final PROP_DEFAULT_DISPLAY_TOP_INSET:Ljava/lang/String; = "persist.sys.displayinset.top"

.field private static final TAG:Ljava/lang/String; = "DisplayManagerService"

.field private static final THRESHOLD_FOR_REFRESH_RATES_DIVISORS:F = 9.0E-4f

.field private static final WAIT_FOR_DEFAULT_DISPLAY_TIMEOUT:J = 0x2710L


# instance fields
.field private final mAllowNonNativeRefreshRateOverride:Z

.field private mAreUserDisabledHdrTypesAllowed:Z

.field private final mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

.field private mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field public final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDefaultDisplayDefaultColorMode:I

.field private mDefaultDisplayTopInset:I

.field private mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManagerInternal;

.field private final mDisplayAccessUIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayBlanker:Lcom/android/server/display/DisplayBlanker;

.field private final mDisplayBrightnesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayManagerService$BrightnessPair;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

.field private final mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayManagerServiceImpl:Lcom/android/server/display/DisplayManagerServiceStub;

.field private final mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

.field private mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mDisplayPowerControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayPowerController;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayStates:Landroid/util/SparseIntArray;

.field private final mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;",
            ">;"
        }
    .end annotation
.end field

.field final mDisplayWindowPolicyControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/companion/virtual/IVirtualDevice;",
            "Landroid/window/DisplayWindowPolicyController;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDumpInProgress:Z

.field private final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field private final mIdleModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

.field private mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private mIsDocked:Z

.field private mIsDreaming:Z

.field private final mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

.field private mMinimalPostProcessingAllowed:Z

.field private final mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

.field private final mMinimumBrightnessSpline:Landroid/util/Spline;

.field public mOnlyCore:Z

.field private mPendingTraversal:Z

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private mPowerHandler:Landroid/os/Handler;

.field private mProjectionService:Landroid/media/projection/IMediaProjectionManager;

.field public mSafeMode:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/android/server/display/DisplayManagerService$SettingsObserver;

.field private mStableDisplaySize:Landroid/graphics/Point;

.field private final mSyncDump:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field private mSystemReady:Z

.field private final mTempCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempViewports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;

.field private mUserDisabledHdrTypes:[I

.field private mUserPreferredMode:Landroid/view/Display$Mode;

.field private final mViewports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

.field private final mWideColorSpace:Landroid/graphics/ColorSpace;

.field private mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

.field private mWifiDisplayScanRequestCount:I

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$blkD86Pa3eTp0bxU70Yrbd3ywUQ(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->addDisplayPowerControllerLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAreUserDisabledHdrTypesAllowed(Lcom/android/server/display/DisplayManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceStateManager(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/devicestate/DeviceStateManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayDeviceRepo(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayDeviceRepository;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayGroupListeners(Lcom/android/server/display/DisplayManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayModeDirector(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayModeDirector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayPowerCallbacks(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayStates(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInputManagerInternal(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/input/InputManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDocked(Lcom/android/server/display/DisplayManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mIsDocked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDreaming(Lcom/android/server/display/DisplayManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mIsDreaming:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPersistentDataStore(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/PersistentDataStore;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerHandler(Lcom/android/server/display/DisplayManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPowerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/SensorManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempViewports(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserDisabledHdrTypes(Lcom/android/server/display/DisplayManagerService;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewports(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVirtualDisplayAdapter(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/VirtualDisplayAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDisplayPowerCallbacks(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsDocked(Lcom/android/server/display/DisplayManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mIsDocked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsDreaming(Lcom/android/server/display/DisplayManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mIsDreaming:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPowerHandler(Lcom/android/server/display/DisplayManagerService;Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mPowerHandler:Landroid/os/Handler;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSensorManager(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/SensorManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddDisplayGroupManuallyIfNeededLocked(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->addDisplayGroupManuallyIfNeededLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconnectWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->connectWifiDisplayInternal(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/display/DisplayManagerService;->createVirtualDisplayInternal(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdeliverDisplayEvent(Lcom/android/server/display/DisplayManagerService;ILandroid/util/ArraySet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->deliverDisplayEvent(ILandroid/util/ArraySet;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeliverDisplayGroupEvent(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->deliverDisplayGroupEvent(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisconnectWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->disconnectWifiDisplayInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mforgetWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->forgetWifiDisplayInternal(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBrightnessConfigForDisplayWithPdsFallbackLocked(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getBrightnessConfigForDisplayWithPdsFallbackLocked(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDeviceForDisplayLocked(Lcom/android/server/display/DisplayManagerService;I)Lcom/android/server/display/DisplayDevice;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDisplayDecorationSupportInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayDecorationSupportInternal(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDisplayInfoInternal(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(II)Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDpcFromUniqueIdLocked(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)Lcom/android/server/display/DisplayPowerController;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDpcFromUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayPowerController;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNonOverrideDisplayInfoInternal(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getNonOverrideDisplayInfoInternal(ILandroid/view/DisplayInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetStableDisplaySizeInternal(Lcom/android/server/display/DisplayManagerService;)Landroid/graphics/Point;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getStableDisplaySizeInternal()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUserManager(Lcom/android/server/display/DisplayManagerService;)Landroid/os/UserManager;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWifiDisplayStatusInternal(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/WifiDisplayStatus;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleLogicalDisplayAddedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayAddedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleLogicalDisplayChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleLogicalDisplayDeviceStateTransitionLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayDeviceStateTransitionLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleLogicalDisplayFrameRateOverridesChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayFrameRateOverridesChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleLogicalDisplayRemovedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayRemovedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleLogicalDisplaySwappedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplaySwappedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->handleSettingsChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeDisplayPowerControllersLocked(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->initializeDisplayPowerControllersLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misUidPresentOnDisplayInternal(Lcom/android/server/display/DisplayManagerService;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mloadBrightnessConfigurations(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->loadBrightnessConfigurations()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCallbackDied(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpauseWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->pauseWifiDisplayInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterAdditionalDisplayAdapters(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerAdditionalDisplayAdapters()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterCallbackInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IDisplayManagerCallback;IIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/DisplayManagerService;->registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;IIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterDefaultDisplayAdapters(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerDefaultDisplayAdapters()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterDisplayTransactionListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->releaseVirtualDisplayInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrenameWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestColorModeInternal(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->requestColorModeInternal(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;IIFF)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->requestDisplayStateInternal(IIFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresizeVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;III)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresumeWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->resumeWifiDisplayInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleTraversalLocked(Lcom/android/server/display/DisplayManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendDisplayGroupEvent(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayGroupEvent(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAreUserDisabledHdrTypesAllowedInternal(Lcom/android/server/display/DisplayManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setAreUserDisabledHdrTypesAllowedInternal(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBrightnessConfigurationForDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDisplayAccessUIDsInternal(Lcom/android/server/display/DisplayManagerService;Landroid/util/SparseArray;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setDisplayAccessUIDsInternal(Landroid/util/SparseArray;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDisplayOffsetsInternal(Lcom/android/server/display/DisplayManagerService;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->setDisplayOffsetsInternal(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDisplayPropertiesInternal(Lcom/android/server/display/DisplayManagerService;IZFIFFZZ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/display/DisplayManagerService;->setDisplayPropertiesInternal(IZFIFFZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDisplayScalingDisabledInternal(Lcom/android/server/display/DisplayManagerService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setDisplayScalingDisabledInternal(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLimitedFrameRateInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setLimitedFrameRateInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUserDisabledHdrTypesInternal(Lcom/android/server/display/DisplayManagerService;[I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setUserDisabledHdrTypesInternal([I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVirtualDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setVirtualDisplayStateInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVirtualDisplaySurfaceInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartWifiDisplayScanInternal(Lcom/android/server/display/DisplayManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopWifiDisplayScanInternal(Lcom/android/server/display/DisplayManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msystemScreenshotInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->systemScreenshotInternal(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$munregisterDisplayTransactionListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$muserScreenshotInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->userScreenshotInternal(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetIS_FOLDABLE_DEVICE()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->IS_FOLDABLE_DEVICE:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smisValidBrightness(F)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->isValidBrightness(F)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 203
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 489
    const-string/jumbo v1, "persist.sys.muiltdisplay_type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    sput-boolean v0, Lcom/android/server/display/DisplayManagerService;->IS_FOLDABLE_DEVICE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 495
    new-instance v0, Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V

    .line 496
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/display/DisplayManagerService$Injector;

    .line 500
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 233
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 234
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 244
    new-instance v9, Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-direct {v9}, Lcom/android/server/display/DisplayManagerService$SyncRoot;-><init>()V

    iput-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 255
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 262
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    .line 266
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    .line 281
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 285
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 289
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 293
    new-instance v2, Lcom/android/server/display/DisplayManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/display/DisplayManagerService$1;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 351
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 355
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    .line 378
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 391
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    .line 395
    new-instance v2, Lcom/android/server/display/PersistentDataStore;

    invoke-direct {v2}, Lcom/android/server/display/PersistentDataStore;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 399
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 403
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    .line 410
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 435
    new-instance v3, Lcom/android/server/display/DisplayManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayManagerService$2;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mIdleModeReceiver:Landroid/content/BroadcastReceiver;

    .line 482
    new-instance v3, Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-direct {v3}, Lcom/android/server/display/DisplayManagerService$SyncRoot;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncDump:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 501
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 502
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 503
    new-instance v10, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v10, p0, v3}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V

    iput-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 504
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    .line 505
    new-instance v4, Lcom/android/server/display/DisplayDeviceRepository;

    invoke-direct {v4, v9, v2}, Lcom/android/server/display/DisplayDeviceRepository;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Lcom/android/server/display/PersistentDataStore;)V

    iput-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 506
    new-instance v11, Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v5, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;

    const/4 v2, 0x0

    invoke-direct {v5, p0, v2}, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener-IA;)V

    new-instance v8, Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-direct {v8}, Lcom/android/server/display/DeviceStateToLayoutMap;-><init>()V

    move-object v2, v11

    move-object v3, p1

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/LogicalDisplayMapper;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/LogicalDisplayMapper$Listener;Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/os/Handler;Lcom/android/server/display/DeviceStateToLayoutMap;)V

    iput-object v11, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 508
    new-instance v2, Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {v2, p1, v10}, Lcom/android/server/display/DisplayModeDirector;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    .line 509
    new-instance v2, Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-direct {v2, p1}, Lcom/android/internal/display/BrightnessSynchronizer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

    .line 510
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 511
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    .line 513
    const-string/jumbo v3, "persist.sys.displayinset.top"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    .line 514
    const v3, 0x1070086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v3

    .line 516
    .local v3, "lux":[F
    const v4, 0x1070087

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v4

    .line 518
    .local v4, "nits":[F
    new-instance v5, Landroid/hardware/display/Curve;

    invoke-direct {v5, v3, v4}, Landroid/hardware/display/Curve;-><init>([F[F)V

    iput-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    .line 519
    invoke-static {v3, v4}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    .line 521
    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    .line 522
    invoke-static {}, Landroid/view/SurfaceControl;->getCompositionColorSpaces()[Landroid/graphics/ColorSpace;

    move-result-object v5

    .line 523
    .local v5, "colorSpaces":[Landroid/graphics/ColorSpace;
    aget-object v1, v5, v1

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWideColorSpace:Landroid/graphics/ColorSpace;

    .line 524
    invoke-virtual {p2}, Lcom/android/server/display/DisplayManagerService$Injector;->getAllowNonNativeRefreshRateOverride()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mAllowNonNativeRefreshRateOverride:Z

    .line 526
    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 527
    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mDumpInProgress:Z

    .line 530
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayManagerServiceImpl:Lcom/android/server/display/DisplayManagerServiceStub;

    .line 531
    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-interface {v0, v9, p1, v1, v11}, Lcom/android/server/display/DisplayManagerServiceStub;->init(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/display/LogicalDisplayMapper;)V

    .line 534
    return-void
.end method

.method private addDisplayGroupManuallyIfNeededLocked()V
    .registers 4

    .line 4241
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "star"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 4242
    const-string v0, "DisplayManagerService"

    const-string/jumbo v1, "initPowerManagement: Manually set display group"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

    .line 4244
    .local v1, "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;->onDisplayGroupAdded(I)V

    .line 4245
    .end local v1    # "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;
    goto :goto_19

    .line 4247
    :cond_2a
    return-void
.end method

.method private addDisplayPowerControllerLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 15
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 2673
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPowerHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 2675
    return-void

    .line 2677
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez v0, :cond_13

    .line 2678
    new-instance v0, Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/BrightnessTracker;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessTracker$Injector;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 2681
    :cond_13
    new-instance v11, Lcom/android/server/display/BrightnessSetting;

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-direct {v11, v0, p1, v1}, Lcom/android/server/display/BrightnessSetting;-><init>(Lcom/android/server/display/PersistentDataStore;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayManagerService$SyncRoot;)V

    .line 2683
    .local v11, "brightnessSetting":Lcom/android/server/display/BrightnessSetting;
    new-instance v0, Lcom/android/server/display/DisplayPowerController;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mPowerHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBlanker:Lcom/android/server/display/DisplayBlanker;

    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    new-instance v12, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v12, p0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    move-object v3, v0

    move-object v9, p1

    invoke-direct/range {v3 .. v12}, Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;)V

    .line 2687
    .local v0, "displayPowerController":Lcom/android/server/display/DisplayPowerController;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2688
    return-void
.end method

.method private canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z
    .registers 5
    .param p1, "projection"    # Landroid/media/projection/IMediaProjection;

    .line 1254
    if-eqz p1, :cond_13

    .line 1256
    :try_start_2
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectSecureVideo()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_6} :catch_b

    if-eqz v0, :cond_a

    .line 1257
    const/4 v0, 0x1

    return v0

    .line 1261
    :cond_a
    goto :goto_13

    .line 1259
    :catch_b
    move-exception v0

    .line 1260
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplayManagerService"

    const-string v2, "Unable to query projection service for permissions"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1263
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    const-string v0, "android.permission.CAPTURE_SECURE_VIDEO_OUTPUT"

    const-string v1, "canProjectSecureVideo()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private canProjectVideo(Landroid/media/projection/IMediaProjection;)Z
    .registers 6
    .param p1, "projection"    # Landroid/media/projection/IMediaProjection;

    .line 1238
    const/4 v0, 0x1

    if-eqz p1, :cond_13

    .line 1240
    :try_start_3
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectVideo()Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_7} :catch_b

    if-eqz v1, :cond_a

    .line 1241
    return v0

    .line 1245
    :cond_a
    goto :goto_13

    .line 1243
    :catch_b
    move-exception v1

    .line 1244
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DisplayManagerService"

    const-string v3, "Unable to query projection service for permissions"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1247
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    const-string v1, "android.permission.CAPTURE_VIDEO_OUTPUT"

    const-string v2, "canProjectVideo()"

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1248
    return v0

    .line 1250
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v0

    return v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .line 1267
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 1268
    const/4 v0, 0x1

    return v0

    .line 1270
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1271
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1272
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const/4 v1, 0x0

    return v1
.end method

.method private clampBrightness(IF)F
    .registers 4
    .param p1, "displayState"    # I
    .param p2, "brightnessState"    # F

    .line 781
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 782
    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_1c

    .line 783
    :cond_6
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_14

    .line 785
    const/high16 p2, 0x7fc00000    # Float.NaN

    goto :goto_1c

    .line 786
    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1c

    .line 787
    const/high16 p2, 0x3f800000    # 1.0f

    .line 789
    :cond_1c
    :goto_1c
    return p2
.end method

.method private clearUserDisabledHdrTypesLocked()V
    .registers 5

    .line 898
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 899
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 900
    :try_start_8
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_disabled_hdr_formats"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 902
    monitor-exit v0

    .line 903
    return-void

    .line 902
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private clearViewportsLocked()V
    .registers 2

    .line 2270
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2271
    return-void
.end method

.method private configureColorModeLocked(Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V
    .registers 5
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;
    .param p2, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1717
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    if-ne v0, p2, :cond_1c

    .line 1718
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p2}, Lcom/android/server/display/PersistentDataStore;->getColorMode(Lcom/android/server/display/DisplayDevice;)I

    move-result v0

    .line 1719
    .local v0, "colorMode":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 1720
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    if-nez v1, :cond_18

    .line 1721
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    goto :goto_19

    .line 1723
    :cond_18
    const/4 v0, 0x0

    .line 1726
    :cond_19
    :goto_19
    invoke-virtual {p1, v0}, Lcom/android/server/display/LogicalDisplay;->setRequestedColorModeLocked(I)V

    .line 1728
    .end local v0    # "colorMode":I
    :cond_1c
    return-void
.end method

.method private configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;)V
    .registers 10
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 2292
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 2293
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    .line 2297
    .local v1, "ownContent":Z
    :goto_f
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v4, p2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    .line 2299
    .local v4, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_37

    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->isWindowManagerMirroringLocked()Z

    move-result v5

    if-nez v5, :cond_37

    .line 2301
    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v5

    if-nez v5, :cond_2f

    .line 2304
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 2305
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayIdToMirrorLocked()I

    move-result v6

    .line 2304
    invoke-virtual {v5, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    .line 2307
    :cond_2f
    if-nez v4, :cond_37

    .line 2308
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v5, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    .line 2313
    :cond_37
    if-nez v4, :cond_56

    .line 2315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing logical display to use for physical display device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2316
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2315
    const-string v3, "DisplayManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    return-void

    .line 2319
    :cond_56
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-ne v5, v2, :cond_5b

    goto :goto_5c

    :cond_5b
    move v2, v3

    :goto_5c
    invoke-virtual {v4, p1, p2, v2}, Lcom/android/server/display/LogicalDisplay;->configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V

    .line 2320
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;

    move-result-object v2

    .line 2321
    .local v2, "viewportType":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 2322
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v5

    invoke-direct {p0, v3, v5, p2, v0}, Lcom/android/server/display/DisplayManagerService;->populateViewportLocked(IILcom/android/server/display/DisplayDevice;Lcom/android/server/display/DisplayDeviceInfo;)V

    .line 2324
    :cond_7a
    return-void
.end method

.method private configurePreferredDisplayModeLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 8
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 1731
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 1732
    .local v0, "device":Lcom/android/server/display/DisplayDevice;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 1733
    invoke-virtual {v1, v0}, Lcom/android/server/display/PersistentDataStore;->getUserPreferredResolution(Lcom/android/server/display/DisplayDevice;)Landroid/graphics/Point;

    move-result-object v1

    .line 1734
    .local v1, "userPreferredResolution":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/display/PersistentDataStore;->getUserPreferredRefreshRate(Lcom/android/server/display/DisplayDevice;)F

    move-result v2

    .line 1735
    .local v2, "refreshRate":F
    if-nez v1, :cond_19

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1736
    return-void

    .line 1738
    :cond_19
    new-instance v3, Landroid/view/Display$Mode$Builder;

    invoke-direct {v3}, Landroid/view/Display$Mode$Builder;-><init>()V

    .line 1739
    .local v3, "modeBuilder":Landroid/view/Display$Mode$Builder;
    if-eqz v1, :cond_27

    .line 1740
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/view/Display$Mode$Builder;->setResolution(II)Landroid/view/Display$Mode$Builder;

    .line 1742
    :cond_27
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_30

    .line 1743
    invoke-virtual {v3, v2}, Landroid/view/Display$Mode$Builder;->setRefreshRate(F)Landroid/view/Display$Mode$Builder;

    .line 1745
    :cond_30
    invoke-virtual {v3}, Landroid/view/Display$Mode$Builder;->build()Landroid/view/Display$Mode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    .line 1746
    return-void
.end method

.method private connectWifiDisplayInternal(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .line 1079
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1081
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceRepository;->isExternalDisplayConnectedLocked()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1082
    const-string v1, "DisplayManagerService"

    const-string v2, "Connection refused by policy, because external display has connected"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    monitor-exit v0

    return-void

    .line 1086
    :cond_14
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_1b

    .line 1087
    invoke-virtual {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(Ljava/lang/String;)V

    .line 1089
    :cond_1b
    monitor-exit v0

    .line 1090
    return-void

    .line 1089
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private createVirtualDisplayInternal(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I
    .registers 27
    .param p1, "virtualDisplayConfig"    # Landroid/hardware/display/VirtualDisplayConfig;
    .param p2, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p3, "projection"    # Landroid/media/projection/IMediaProjection;
    .param p4, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p5, "dwpc"    # Landroid/window/DisplayWindowPolicyController;
    .param p6, "packageName"    # Ljava/lang/String;

    .line 1279
    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1280
    .local v12, "callingUid":I
    move-object/from16 v13, p6

    invoke-direct {v9, v12, v13}, Lcom/android/server/display/DisplayManagerService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_192

    .line 1283
    if-eqz p2, :cond_18a

    .line 1286
    if-eqz p1, :cond_181

    .line 1289
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/display/VirtualDisplayConfig;->getSurface()Landroid/view/Surface;

    move-result-object v14

    .line 1290
    .local v14, "surface":Landroid/view/Surface;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/display/VirtualDisplayConfig;->getFlags()I

    move-result v0

    .line 1291
    .local v0, "flags":I
    if-eqz v11, :cond_3c

    .line 1292
    const-class v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 1293
    invoke-virtual {v9, v1}, Lcom/android/server/display/DisplayManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 1294
    .local v1, "vdm":Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    invoke-virtual {v1, v11}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isValidVirtualDevice(Landroid/companion/virtual/IVirtualDevice;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1297
    invoke-virtual {v1, v11}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getBaseVirtualDisplayFlags(Landroid/companion/virtual/IVirtualDevice;)I

    move-result v2

    or-int/2addr v0, v2

    goto :goto_3c

    .line 1295
    :cond_34
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Invalid virtual device"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1300
    .end local v1    # "vdm":Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    :cond_3c
    :goto_3c
    if-eqz v14, :cond_4d

    invoke-virtual {v14}, Landroid/view/Surface;->isSingleBuffered()Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_4d

    .line 1301
    :cond_45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface can\'t be single-buffered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1304
    :cond_4d
    :goto_4d
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_60

    .line 1305
    or-int/lit8 v0, v0, 0x10

    .line 1308
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_58

    goto :goto_60

    .line 1309
    :cond_58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Public display must not be marked as SHOW_WHEN_LOCKED_INSECURE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1313
    :cond_60
    :goto_60
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_66

    .line 1314
    and-int/lit8 v0, v0, -0x11

    .line 1316
    :cond_66
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_6e

    .line 1317
    and-int/lit16 v0, v0, -0x801

    move v1, v0

    goto :goto_6f

    .line 1316
    :cond_6e
    move v1, v0

    .line 1320
    .end local v0    # "flags":I
    .local v1, "flags":I
    :goto_6f
    if-eqz v10, :cond_93

    .line 1322
    :try_start_71
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/media/projection/IMediaProjectionManager;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1325
    invoke-interface {v10, v1}, Landroid/media/projection/IMediaProjection;->applyVirtualDisplayFlags(I)I

    move-result v0

    move v1, v0

    .line 1328
    goto :goto_93

    .line 1323
    :cond_81
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Invalid media projection"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "flags":I
    .end local v12    # "callingUid":I
    .end local v14    # "surface":Landroid/view/Surface;
    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1    # "virtualDisplayConfig":Landroid/hardware/display/VirtualDisplayConfig;
    .end local p2    # "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local p3    # "projection":Landroid/media/projection/IMediaProjection;
    .end local p4    # "virtualDevice":Landroid/companion/virtual/IVirtualDevice;
    .end local p5    # "dwpc":Landroid/window/DisplayWindowPolicyController;
    .end local p6    # "packageName":Ljava/lang/String;
    throw v0
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_89} :catch_89

    .line 1326
    .restart local v1    # "flags":I
    .restart local v12    # "callingUid":I
    .restart local v14    # "surface":Landroid/view/Surface;
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1    # "virtualDisplayConfig":Landroid/hardware/display/VirtualDisplayConfig;
    .restart local p2    # "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    .restart local p3    # "projection":Landroid/media/projection/IMediaProjection;
    .restart local p4    # "virtualDevice":Landroid/companion/virtual/IVirtualDevice;
    .restart local p5    # "dwpc":Landroid/window/DisplayWindowPolicyController;
    .restart local p6    # "packageName":Ljava/lang/String;
    :catch_89
    move-exception v0

    .line 1327
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "unable to validate media projection or flags"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1331
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_93
    :goto_93
    const/16 v0, 0x3e8

    if-eq v12, v0, :cond_aa

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_aa

    .line 1333
    invoke-direct {v9, v10}, Lcom/android/server/display/DisplayManagerService;->canProjectVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v2

    if-eqz v2, :cond_a2

    goto :goto_aa

    .line 1334
    :cond_a2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires CAPTURE_VIDEO_OUTPUT or CAPTURE_SECURE_VIDEO_OUTPUT permission, or an appropriate MediaProjection token in order to create a screen sharing virtual display."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1340
    :cond_aa
    :goto_aa
    if-eq v12, v0, :cond_bf

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_bf

    .line 1341
    invoke-direct {v9, v10}, Lcom/android/server/display/DisplayManagerService;->canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v2

    if-eqz v2, :cond_b7

    goto :goto_bf

    .line 1342
    :cond_b7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires CAPTURE_SECURE_VIDEO_OUTPUT or an appropriate MediaProjection token to create a secure virtual display."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1348
    :cond_bf
    :goto_bf
    if-eq v12, v0, :cond_f2

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_f2

    .line 1349
    const-string v2, "android.permission.ADD_TRUSTED_DISPLAY"

    const-string v3, "createVirtualDisplay()"

    invoke-direct {v9, v2, v3}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d0

    goto :goto_f2

    .line 1350
    :cond_d0
    const v0, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "162627132"

    aput-object v4, v2, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string v4, "Attempt to create a trusted display without holding permission!"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1352
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires ADD_TRUSTED_DISPLAY permission to create a trusted virtual display."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1357
    :cond_f2
    :goto_f2
    if-eq v12, v0, :cond_10d

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_10d

    .line 1360
    if-nez v11, :cond_10d

    const-string v2, "android.permission.ADD_TRUSTED_DISPLAY"

    const-string v3, "createVirtualDisplay()"

    .line 1361
    invoke-direct {v9, v2, v3}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_105

    goto :goto_10d

    .line 1362
    :cond_105
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires ADD_TRUSTED_DISPLAY permission to create a virtual display which is not in the default DisplayGroup."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1367
    :cond_10d
    :goto_10d
    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_126

    .line 1368
    if-eq v12, v0, :cond_126

    const-string v0, "android.permission.ADD_ALWAYS_UNLOCKED_DISPLAY"

    const-string v2, "createVirtualDisplay()"

    .line 1369
    invoke-direct {v9, v0, v2}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11e

    goto :goto_126

    .line 1371
    :cond_11e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires ADD_ALWAYS_UNLOCKED_DISPLAY permission to create an always unlocked virtual display."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1377
    :cond_126
    :goto_126
    and-int/lit16 v0, v1, 0x400

    if-nez v0, :cond_12e

    .line 1378
    and-int/lit16 v1, v1, -0x201

    move v15, v1

    goto :goto_12f

    .line 1377
    :cond_12e
    move v15, v1

    .line 1386
    .end local v1    # "flags":I
    .local v15, "flags":I
    :goto_12f
    const/16 v16, 0x600

    .line 1389
    .local v16, "trustedDisplayWithSysDecorFlag":I
    and-int/lit16 v0, v15, 0x600

    const/16 v1, 0x200

    if-ne v0, v1, :cond_14a

    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v1, "createVirtualDisplay()"

    .line 1391
    invoke-direct {v9, v0, v1}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_142

    goto :goto_14a

    .line 1392
    :cond_142
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1395
    :cond_14a
    :goto_14a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 1397
    .local v17, "token":J
    :try_start_14e
    iget-object v8, v9, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v8
    :try_end_151
    .catchall {:try_start_14e .. :try_end_151} :catchall_17c

    .line 1398
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v12

    move-object/from16 v5, p6

    move-object v6, v14

    move v7, v15

    move-object/from16 v19, v8

    move-object/from16 v8, p1

    :try_start_160
    invoke-direct/range {v1 .. v8}, Lcom/android/server/display/DisplayManagerService;->createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)I

    move-result v0

    .line 1400
    .local v0, "displayId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_174

    if-eqz v11, :cond_174

    if-eqz p5, :cond_174

    .line 1401
    iget-object v1, v9, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    .line 1402
    invoke-static/range {p4 .. p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1401
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1404
    :cond_174
    monitor-exit v19
    :try_end_175
    .catchall {:try_start_160 .. :try_end_175} :catchall_179

    .line 1407
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1404
    return v0

    .line 1405
    .end local v0    # "displayId":I
    :catchall_179
    move-exception v0

    :try_start_17a
    monitor-exit v19
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_179

    .end local v12    # "callingUid":I
    .end local v14    # "surface":Landroid/view/Surface;
    .end local v15    # "flags":I
    .end local v16    # "trustedDisplayWithSysDecorFlag":I
    .end local v17    # "token":J
    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1    # "virtualDisplayConfig":Landroid/hardware/display/VirtualDisplayConfig;
    .end local p2    # "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local p3    # "projection":Landroid/media/projection/IMediaProjection;
    .end local p4    # "virtualDevice":Landroid/companion/virtual/IVirtualDevice;
    .end local p5    # "dwpc":Landroid/window/DisplayWindowPolicyController;
    .end local p6    # "packageName":Ljava/lang/String;
    :try_start_17b
    throw v0
    :try_end_17c
    .catchall {:try_start_17b .. :try_end_17c} :catchall_17c

    .line 1407
    .restart local v12    # "callingUid":I
    .restart local v14    # "surface":Landroid/view/Surface;
    .restart local v15    # "flags":I
    .restart local v16    # "trustedDisplayWithSysDecorFlag":I
    .restart local v17    # "token":J
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1    # "virtualDisplayConfig":Landroid/hardware/display/VirtualDisplayConfig;
    .restart local p2    # "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    .restart local p3    # "projection":Landroid/media/projection/IMediaProjection;
    .restart local p4    # "virtualDevice":Landroid/companion/virtual/IVirtualDevice;
    .restart local p5    # "dwpc":Landroid/window/DisplayWindowPolicyController;
    .restart local p6    # "packageName":Ljava/lang/String;
    :catchall_17c
    move-exception v0

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1408
    throw v0

    .line 1287
    .end local v14    # "surface":Landroid/view/Surface;
    .end local v15    # "flags":I
    .end local v16    # "trustedDisplayWithSysDecorFlag":I
    .end local v17    # "token":J
    :cond_181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "virtualDisplayConfig must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1284
    :cond_18a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1281
    :cond_192
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "packageName must match the calling uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)I
    .registers 19
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projection"    # Landroid/media/projection/IMediaProjection;
    .param p3, "callingUid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "flags"    # I
    .param p7, "virtualDisplayConfig"    # Landroid/hardware/display/VirtualDisplayConfig;

    .line 1414
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    const-string v9, "DisplayManagerService"

    const/4 v10, -0x1

    if-nez v1, :cond_e

    .line 1415
    const-string v1, "Rejecting request to create private virtual display because the virtual display adapter is not available."

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    return v10

    .line 1420
    :cond_e
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/display/VirtualDisplayAdapter;->createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    .line 1423
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v1, :cond_1f

    .line 1424
    return v10

    .line 1435
    :cond_1f
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/server/display/DisplayDeviceRepository;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    .line 1438
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v2, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v2

    .line 1439
    .local v2, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v2, :cond_32

    .line 1440
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    return v3

    .line 1444
    :cond_32
    const-string v3, "Rejecting request to create virtual display because the logical display was not created."

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    .line 1447
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    const/4 v4, 0x3

    invoke-virtual {v3, v1, v4}, Lcom/android/server/display/DisplayDeviceRepository;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    .line 1449
    return v10
.end method

.method private deliverDisplayEvent(ILandroid/util/ArraySet;I)V
    .registers 9
    .param p1, "displayId"    # I
    .param p3, "event"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 2417
    .local p2, "uids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 2418
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delivering display event: displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    :cond_26
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2425
    :try_start_29
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2426
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2427
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_35
    if-ge v2, v1, :cond_5d

    .line 2428
    if-eqz p2, :cond_4d

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    iget v3, v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2429
    :cond_4d
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2427
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 2432
    .end local v2    # "i":I
    :cond_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_29 .. :try_end_5e} :catchall_7b

    .line 2435
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5f
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_75

    .line 2436
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayEventAsync(II)V

    .line 2435
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 2438
    .end local v0    # "i":I
    :cond_75
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2439
    return-void

    .line 2432
    .end local v1    # "count":I
    :catchall_7b
    move-exception v1

    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method private deliverDisplayGroupEvent(II)V
    .registers 5
    .param p1, "groupId"    # I
    .param p2, "event"    # I

    .line 2444
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 2445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delivering display group event: groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    :cond_26
    packed-switch p2, :pswitch_data_70

    goto :goto_6e

    .line 2463
    :pswitch_2a
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

    .line 2464
    .local v1, "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;
    invoke-interface {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;->onDisplayGroupRemoved(I)V

    .line 2465
    .end local v1    # "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;
    goto :goto_30

    .line 2457
    :pswitch_40
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

    .line 2458
    .restart local v1    # "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;
    invoke-interface {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;->onDisplayGroupChanged(I)V

    .line 2459
    .end local v1    # "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;
    goto :goto_46

    .line 2460
    :cond_56
    goto :goto_6e

    .line 2451
    :pswitch_57
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

    .line 2452
    .restart local v1    # "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;
    invoke-interface {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;->onDisplayGroupAdded(I)V

    .line 2453
    .end local v1    # "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;
    goto :goto_5d

    .line 2454
    :cond_6d
    nop

    .line 2468
    :cond_6e
    :goto_6e
    return-void

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_57
        :pswitch_40
        :pswitch_2a
    .end packed-switch
.end method

.method private disconnectWifiDisplayInternal()V
    .registers 3

    .line 1109
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1110
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_a

    .line 1111
    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 1113
    :cond_a
    monitor-exit v0

    .line 1114
    return-void

    .line 1113
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2483
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncDump:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2484
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mDumpInProgress:Z

    if-eqz v1, :cond_e

    .line 2485
    const-string v1, "One dump is in service already."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2486
    monitor-exit v0

    return-void

    .line 2488
    :cond_e
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mDumpInProgress:Z

    .line 2489
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_37b

    .line 2491
    const-string v0, "DISPLAY MANAGER (dumpsys display)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2494
    invoke-static {}, Lcom/android/server/display/DisplayDebugConfig;->updateDisplayDebug()V

    .line 2495
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_DMS:Z

    sput-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 2496
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/display/DisplayManagerServiceStub;->dump(Ljava/io/PrintWriter;)V

    .line 2499
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 2500
    :try_start_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOnlyCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSafeMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingTraversal="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mViewports="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDefaultDisplayDefaultColorMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWifiDisplayScanRequestCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStableDisplaySize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMinimumBrightnessCurve="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2509
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    if-eqz v0, :cond_104

    .line 2510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUserPreferredMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2513
    :cond_104
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2514
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    const/4 v2, 0x0

    if-nez v0, :cond_146

    .line 2515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mUserDisabledHdrTypes: size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2516
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    array-length v3, v0

    move v4, v2

    :goto_129
    if-ge v4, v3, :cond_146

    aget v5, v0, v4

    .line 2517
    .local v5, "type":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2516
    .end local v5    # "type":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_129

    .line 2521
    :cond_146
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2522
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 2523
    .local v0, "displayStateCount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display States: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2524
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_166
    if-ge v3, v0, :cond_1df

    .line 2525
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2526
    .local v4, "displayId":I
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 2527
    .local v5, "displayState":I
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    .line 2528
    .local v6, "brightnessPair":Lcom/android/server/display/DisplayManagerService$BrightnessPair;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Display Id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2529
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Display State="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2530
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Display Brightness="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2531
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Display SdrBrightness="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2524
    .end local v4    # "displayId":I
    .end local v5    # "displayState":I
    .end local v6    # "brightnessPair":Lcom/android/server/display/DisplayManagerService$BrightnessPair;
    add-int/lit8 v3, v3, 0x1

    goto :goto_166

    .line 2534
    .end local v3    # "i":I
    :cond_1df
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "    "

    invoke-direct {v3, p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2535
    .local v3, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2537
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display Adapters: size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2539
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_238

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayAdapter;

    .line 2540
    .local v5, "adapter":Lcom/android/server/display/DisplayAdapter;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/display/DisplayAdapter;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2541
    invoke-virtual {v5, v3}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 2542
    .end local v5    # "adapter":Lcom/android/server/display/DisplayAdapter;
    goto :goto_20e

    .line 2544
    :cond_238
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display Devices: size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayDeviceRepository;->sizeLocked()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2546
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    new-instance v5, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v5, p1, v3}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v4, v5}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 2551
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2552
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v4, p1}, Lcom/android/server/display/LogicalDisplayMapper;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 2554
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 2555
    .local v4, "callbackCount":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2556
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Callbacks: size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2557
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_289
    if-ge v5, v4, :cond_2c4

    .line 2558
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 2559
    .local v6, "callback":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": mPid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mWifiDisplayScanRequested="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v6, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2557
    .end local v6    # "callback":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_289

    .line 2563
    .end local v5    # "i":I
    :cond_2c4
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 2564
    .local v5, "displayPowerControllerCount":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2565
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display Power Controllers: size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2566
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2e4
    if-ge v6, v5, :cond_2f4

    .line 2567
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v7, p1}, Lcom/android/server/display/DisplayPowerController;->dump(Ljava/io/PrintWriter;)V

    .line 2566
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e4

    .line 2569
    .end local v6    # "i":I
    :cond_2f4
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v6, :cond_300

    .line 2570
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2571
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v6, p1}, Lcom/android/server/display/BrightnessTracker;->dump(Ljava/io/PrintWriter;)V

    .line 2573
    :cond_300
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2574
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v6, p1}, Lcom/android/server/display/PersistentDataStore;->dump(Ljava/io/PrintWriter;)V

    .line 2576
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 2577
    .local v6, "displayWindowPolicyControllerCount":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2578
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Display Window Policy Controllers: size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2580
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_328
    if-ge v7, v6, :cond_360

    .line 2581
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Display "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2582
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/window/DisplayWindowPolicyController;

    const-string v9, "  "

    invoke-virtual {v8, v9, p1}, Landroid/window/DisplayWindowPolicyController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2580
    add-int/lit8 v7, v7, 0x1

    goto :goto_328

    .line 2584
    .end local v0    # "displayStateCount":I
    .end local v3    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v4    # "callbackCount":I
    .end local v5    # "displayPowerControllerCount":I
    .end local v6    # "displayWindowPolicyControllerCount":I
    .end local v7    # "i":I
    :cond_360
    monitor-exit v1
    :try_end_361
    .catchall {:try_start_28 .. :try_end_361} :catchall_378

    .line 2585
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2586
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector;->dump(Ljava/io/PrintWriter;)V

    .line 2587
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-virtual {v0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->dump(Ljava/io/PrintWriter;)V

    .line 2588
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncDump:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2589
    :try_start_371
    iput-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mDumpInProgress:Z

    .line 2590
    monitor-exit v0

    .line 2591
    return-void

    .line 2590
    :catchall_375
    move-exception v1

    monitor-exit v0
    :try_end_377
    .catchall {:try_start_371 .. :try_end_377} :catchall_375

    throw v1

    .line 2584
    :catchall_378
    move-exception v0

    :try_start_379
    monitor-exit v1
    :try_end_37a
    .catchall {:try_start_379 .. :try_end_37a} :catchall_378

    throw v0

    .line 2489
    :catchall_37b
    move-exception v1

    :try_start_37c
    monitor-exit v0
    :try_end_37d
    .catchall {:try_start_37c .. :try_end_37d} :catchall_37b

    throw v1
.end method

.method private forgetWifiDisplayInternal(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .line 1125
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1126
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_a

    .line 1127
    invoke-virtual {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestForgetLocked(Ljava/lang/String;)V

    .line 1129
    :cond_a
    monitor-exit v0

    .line 1130
    return-void

    .line 1129
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private getBrightnessConfigForDisplayWithPdsFallbackLocked(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 5
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "userSerial"    # I

    .line 2702
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 2703
    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfigurationForDisplayLocked(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    .line 2705
    .local v0, "config":Landroid/hardware/display/BrightnessConfiguration;
    if-nez v0, :cond_e

    .line 2707
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1, p2}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    .line 2709
    :cond_e
    return-object v0
.end method

.method private getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;
    .registers 4
    .param p1, "displayId"    # I

    .line 2696
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    .line 2697
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    :goto_e
    return-object v1
.end method

.method private getDisplayDecorationSupportInternal(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .registers 4
    .param p1, "displayId"    # I

    .line 1899
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v0

    .line 1900
    .local v0, "displayToken":Landroid/os/IBinder;
    if-nez v0, :cond_8

    .line 1901
    const/4 v1, 0x0

    return-object v1

    .line 1903
    :cond_8
    invoke-static {v0}, Landroid/view/SurfaceControl;->getDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v1

    return-object v1
.end method

.method private getDisplayInfoForFrameRateOverride([Landroid/view/DisplayEventReceiver$FrameRateOverride;Landroid/view/DisplayInfo;I)Landroid/view/DisplayInfo;
    .registers 21
    .param p1, "frameRateOverrides"    # [Landroid/view/DisplayEventReceiver$FrameRateOverride;
    .param p2, "info"    # Landroid/view/DisplayInfo;
    .param p3, "callingUid"    # I

    .line 918
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    .line 919
    .local v3, "frameRateHz":F
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_a
    if-ge v6, v4, :cond_18

    aget-object v7, v0, v6

    .line 920
    .local v7, "frameRateOverride":Landroid/view/DisplayEventReceiver$FrameRateOverride;
    iget v8, v7, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    if-ne v8, v2, :cond_15

    .line 921
    iget v3, v7, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 922
    goto :goto_18

    .line 919
    .end local v7    # "frameRateOverride":Landroid/view/DisplayEventReceiver$FrameRateOverride;
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 925
    :cond_18
    :goto_18
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_1e

    .line 926
    return-object v1

    .line 932
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v4

    .line 933
    .local v4, "currentMode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    div-float/2addr v6, v3

    .line 934
    .local v6, "numPeriods":F
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 935
    .local v7, "numPeriodsRound":F
    sub-float v8, v6, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x3a6bedfa    # 9.0E-4f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3a

    .line 936
    return-object v1

    .line 938
    :cond_3a
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v8

    div-float/2addr v8, v7

    .line 940
    .end local v3    # "frameRateHz":F
    .local v8, "frameRateHz":F
    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 941
    .local v3, "overriddenInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v3, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 942
    iget-object v10, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v11, v10

    :goto_4a
    const-wide/32 v12, 0xa29ae4e

    if-ge v5, v11, :cond_a2

    aget-object v14, v10, v5

    .line 943
    .local v14, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v14, v4}, Landroid/view/Display$Mode;->equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z

    move-result v15

    if-nez v15, :cond_58

    .line 944
    goto :goto_9f

    .line 947
    :cond_58
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v15

    sub-float v16, v8, v9

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_9f

    .line 948
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v15

    add-float v16, v8, v9

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_9f

    .line 950
    sget-boolean v5, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v5, :cond_8c

    .line 951
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found matching modeId "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Landroid/view/Display$Mode;->getModeId()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "DisplayManagerService"

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_8c
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    iput v5, v3, Landroid/view/DisplayInfo;->refreshRateOverride:F

    .line 955
    invoke-static {v12, v13, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v5

    if-nez v5, :cond_9e

    .line 957
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    iput v5, v3, Landroid/view/DisplayInfo;->modeId:I

    .line 959
    :cond_9e
    return-object v3

    .line 942
    .end local v14    # "mode":Landroid/view/Display$Mode;
    :cond_9f
    :goto_9f
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 963
    :cond_a2
    move-object/from16 v5, p0

    iget-boolean v9, v5, Lcom/android/server/display/DisplayManagerService;->mAllowNonNativeRefreshRateOverride:Z

    if-eqz v9, :cond_e9

    .line 964
    iput v8, v3, Landroid/view/DisplayInfo;->refreshRateOverride:F

    .line 965
    invoke-static {v12, v13, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v9

    if-nez v9, :cond_e8

    .line 967
    iget-object v9, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v10, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/view/Display$Mode;

    iput-object v9, v3, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 969
    iget-object v9, v3, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v10, v3, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    new-instance v11, Landroid/view/Display$Mode;

    const/16 v12, 0xff

    .line 971
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v14

    iget v15, v3, Landroid/view/DisplayInfo;->refreshRateOverride:F

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/view/Display$Mode;-><init>(IIIF)V

    aput-object v11, v9, v10

    .line 973
    iget-object v9, v3, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v10, v3, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    .line 975
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getModeId()I

    move-result v9

    iput v9, v3, Landroid/view/DisplayInfo;->modeId:I

    .line 977
    :cond_e8
    return-object v3

    .line 980
    :cond_e9
    return-object v1
.end method

.method private getDisplayInfoInternal(II)Landroid/view/DisplayInfo;
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "callingUid"    # I

    .line 984
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 985
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 987
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_27

    .line 988
    nop

    .line 989
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getFrameRateOverrides()[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    move-result-object v2

    .line 990
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 989
    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoForFrameRateOverride([Landroid/view/DisplayEventReceiver$FrameRateOverride;Landroid/view/DisplayInfo;I)Landroid/view/DisplayInfo;

    move-result-object v2

    .line 991
    .local v2, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v2, p2}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v3

    if-nez v3, :cond_25

    .line 992
    invoke-direct {p0, p2, p1}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 993
    :cond_25
    monitor-exit v0

    return-object v2

    .line 996
    .end local v2    # "info":Landroid/view/DisplayInfo;
    :cond_27
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 997
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private getDisplayToken(I)Landroid/os/IBinder;
    .registers 6
    .param p1, "displayId"    # I

    .line 2115
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2116
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 2117
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_17

    .line 2118
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    .line 2119
    .local v2, "device":Lcom/android/server/display/DisplayDevice;
    if-eqz v2, :cond_17

    .line 2120
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 2123
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v2    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_17
    monitor-exit v0

    .line 2125
    const/4 v0, 0x0

    return-object v0

    .line 2123
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private getDpcFromUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayPowerController;
    .registers 6
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 1933
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayDeviceRepository;->getByUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 1934
    .local v0, "displayDevice":Lcom/android/server/display/DisplayDevice;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 1935
    .local v1, "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_1b

    .line 1936
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v2

    .line 1937
    .local v2, "displayId":I
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayPowerController;

    return-object v3

    .line 1939
    .end local v2    # "displayId":I
    :cond_1b
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 2594
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 2595
    .local v0, "length":I
    new-array v1, v0, [F

    .line 2596
    .local v1, "floatArray":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_14

    .line 2597
    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 2596
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2599
    .end local v2    # "i":I
    :cond_14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2600
    return-object v1
.end method

.method private getNonOverrideDisplayInfoInternal(ILandroid/view/DisplayInfo;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "outInfo"    # Landroid/view/DisplayInfo;

    .line 755
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 756
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 757
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_e

    .line 758
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 760
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_e
    monitor-exit v0

    .line 761
    return-void

    .line 760
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .registers 3

    .line 2471
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    if-nez v0, :cond_11

    .line 2472
    const-string/jumbo v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2473
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 2475
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_11
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    return-object v0
.end method

.method private getStableDisplaySizeInternal()Landroid/graphics/Point;
    .registers 5

    .line 718
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 719
    .local v0, "r":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 720
    :try_start_8
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-lez v2, :cond_1f

    .line 721
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 723
    :cond_1f
    monitor-exit v1

    .line 724
    return-object v0

    .line 723
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw v2
.end method

.method private getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 2479
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method

.method private getViewportLocked(ILjava/lang/String;)Landroid/hardware/display/DisplayViewport;
    .registers 7
    .param p1, "viewportType"    # I
    .param p2, "uniqueId"    # Ljava/lang/String;

    .line 2332
    const/4 v0, 0x1

    if-eq p1, v0, :cond_27

    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/4 v0, 0x3

    if-eq p1, v0, :cond_27

    .line 2334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call getViewportByTypeLocked for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2335
    invoke-static {p1}, Landroid/hardware/display/DisplayViewport;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2334
    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    const/4 v0, 0x0

    return-object v0

    .line 2340
    :cond_27
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2341
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    if-ge v1, v0, :cond_48

    .line 2342
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayViewport;

    .line 2343
    .local v2, "viewport":Landroid/hardware/display/DisplayViewport;
    iget v3, v2, Landroid/hardware/display/DisplayViewport;->type:I

    if-ne v3, p1, :cond_45

    iget-object v3, v2, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 2344
    return-object v2

    .line 2341
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 2349
    .end local v1    # "i":I
    .end local v2    # "viewport":Landroid/hardware/display/DisplayViewport;
    :cond_48
    new-instance v1, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v1}, Landroid/hardware/display/DisplayViewport;-><init>()V

    .line 2350
    .local v1, "viewport":Landroid/hardware/display/DisplayViewport;
    iput p1, v1, Landroid/hardware/display/DisplayViewport;->type:I

    .line 2351
    iput-object p2, v1, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 2352
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2353
    return-object v1
.end method

.method private getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;
    .registers 4
    .param p1, "info"    # Lcom/android/server/display/DisplayDeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/DisplayDeviceInfo;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2275
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    packed-switch v0, :pswitch_data_50

    goto :goto_2c

    .line 2281
    :pswitch_6
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2282
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 2279
    :pswitch_18
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 2277
    :pswitch_22
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 2286
    :cond_2c
    :goto_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not support input device matching."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_22
        :pswitch_18
        :pswitch_6
    .end packed-switch
.end method

.method private getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;
    .registers 3

    .line 1133
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1134
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_d

    .line 1135
    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1137
    :cond_d
    new-instance v1, Landroid/hardware/display/WifiDisplayStatus;

    invoke-direct {v1}, Landroid/hardware/display/WifiDisplayStatus;-><init>()V

    monitor-exit v0

    return-object v1

    .line 1138
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private handleBrightnessChange(Lcom/android/server/display/LogicalDisplay;)V
    .registers 4
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 2691
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 2693
    return-void
.end method

.method private handleLogicalDisplayAddedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 10
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 1572
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 1573
    .local v0, "device":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    .line 1574
    .local v1, "displayId":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_e

    move v4, v2

    goto :goto_f

    :cond_e
    move v4, v3

    .line 1575
    .local v4, "isDefault":Z
    :goto_f
    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->configureColorModeLocked(Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    .line 1576
    iget-boolean v5, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-nez v5, :cond_1b

    .line 1577
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    invoke-virtual {p1, v5}, Lcom/android/server/display/LogicalDisplay;->setUserDisabledHdrTypes([I)V

    .line 1579
    :cond_1b
    if-eqz v4, :cond_23

    .line 1580
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->recordStableDisplayStatsIfNeededLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1581
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1583
    :cond_23
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    if-eqz v5, :cond_2b

    .line 1584
    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    goto :goto_2e

    .line 1586
    :cond_2b
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->configurePreferredDisplayModeLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1588
    :goto_2e
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->addDisplayPowerControllerLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1592
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1594
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 1595
    .local v5, "brightnessDefault":F
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    invoke-direct {v7, p0, v5, v5}, Lcom/android/server/display/DisplayManagerService$BrightnessPair;-><init>(Lcom/android/server/display/DisplayManagerService;FF)V

    invoke-virtual {v6, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1598
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    .line 1601
    if-eqz v4, :cond_50

    .line 1602
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 1605
    :cond_50
    invoke-direct {p0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1607
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object v2

    .line 1608
    .local v2, "work":Ljava/lang/Runnable;
    if-eqz v2, :cond_5c

    .line 1609
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1611
    :cond_5c
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1612
    return-void
.end method

.method private handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 4
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 1615
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateViewportPowerStateLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1617
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 1618
    .local v0, "displayId":I
    if-nez v0, :cond_c

    .line 1619
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1624
    :cond_c
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1625
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1626
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1628
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    .line 1629
    .local v1, "dpc":Lcom/android/server/display/DisplayPowerController;
    if-eqz v1, :cond_26

    .line 1630
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->onDisplayChanged()V

    .line 1632
    :cond_26
    return-void
.end method

.method private handleLogicalDisplayDeviceStateTransitionLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 4
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 1687
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 1688
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    .line 1689
    .local v1, "dpc":Lcom/android/server/display/DisplayPowerController;
    if-eqz v1, :cond_11

    .line 1690
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->onDeviceStateTransition()V

    .line 1692
    :cond_11
    return-void
.end method

.method private handleLogicalDisplayFrameRateOverridesChangedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 4
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 1636
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 1640
    .local v0, "displayId":I
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventFrameRateOverrideLocked(I)V

    .line 1641
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1642
    return-void
.end method

.method private handleLogicalDisplayRemovedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 7
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 1645
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 1646
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    .line 1647
    .local v1, "dpc":Lcom/android/server/display/DisplayPowerController;
    if-eqz v1, :cond_11

    .line 1648
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->stop()V

    .line 1650
    :cond_11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1651
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 1652
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    .line 1653
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1654
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1656
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1657
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/companion/virtual/IVirtualDevice;

    .line 1659
    .local v2, "virtualDevice":Landroid/companion/virtual/IVirtualDevice;
    if-eqz v2, :cond_46

    .line 1660
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    new-instance v4, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/companion/virtual/IVirtualDevice;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1666
    .end local v2    # "virtualDevice":Landroid/companion/virtual/IVirtualDevice;
    :cond_46
    return-void
.end method

.method private handleLogicalDisplaySwappedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 8
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 1669
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 1670
    .local v0, "device":Lcom/android/server/display/DisplayDevice;
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object v1

    .line 1671
    .local v1, "work":Ljava/lang/Runnable;
    if-eqz v1, :cond_d

    .line 1674
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1676
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v2

    .line 1677
    .local v2, "displayId":I
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayPowerController;

    .line 1678
    .local v3, "dpc":Lcom/android/server/display/DisplayPowerController;
    if-eqz v3, :cond_1e

    .line 1679
    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerController;->onDisplayChanged()V

    .line 1681
    :cond_1e
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1682
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 1683
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1684
    return-void
.end method

.method private handleSettingsChange()V
    .registers 3

    .line 859
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 860
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateSettingsLocked()V

    .line 861
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 862
    monitor-exit v0

    .line 863
    return-void

    .line 862
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private initializeDisplayPowerControllersLocked()V
    .registers 3

    .line 2669
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 2670
    return-void
.end method

.method private isBrightnessConfigurationTooDark(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 9
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 1953
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 1954
    .local v0, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    .line 1955
    .local v1, "lux":[F
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    .line 1956
    .local v2, "nits":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    array-length v4, v1

    if-ge v3, v4, :cond_23

    .line 1957
    aget v4, v2, v3

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    aget v6, v1, v3

    invoke-virtual {v5, v6}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_20

    .line 1958
    const/4 v4, 0x1

    return v4

    .line 1956
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1961
    .end local v3    # "i":I
    :cond_23
    const/4 v3, 0x0

    return v3
.end method

.method private static isResolutionAndRefreshRateValid(Landroid/view/Display$Mode;)Z
    .registers 3
    .param p0, "mode"    # Landroid/view/Display$Mode;

    .line 2604
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    if-lez v0, :cond_17

    .line 2605
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 2604
    :goto_18
    return v0
.end method

.method private isSubsetOf([I[I)Z
    .registers 8
    .param p1, "sortedSuperset"    # [I
    .param p2, "subset"    # [I

    .line 1178
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_11

    aget v3, p2, v2

    .line 1179
    .local v3, "i":I
    invoke-static {p1, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-gez v4, :cond_e

    .line 1180
    return v1

    .line 1178
    .end local v3    # "i":I
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1183
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private isUidPresentOnDisplayInternal(II)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "displayId"    # I

    .line 2107
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2108
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/IntArray;

    .line 2109
    .local v1, "displayUIDs":Landroid/util/IntArray;
    if-eqz v1, :cond_16

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    monitor-exit v0

    return v2

    .line 2110
    .end local v1    # "displayUIDs":Landroid/util/IntArray;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private static isValidBrightness(F)Z
    .registers 2
    .param p0, "brightness"    # F

    .line 3700
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_13

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private static isValidRefreshRate(F)Z
    .registers 2
    .param p0, "refreshRate"    # F

    .line 3710
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private static isValidResolution(Landroid/graphics/Point;)Z
    .registers 2
    .param p0, "resolution"    # Landroid/graphics/Point;

    .line 3706
    if-eqz p0, :cond_c

    iget v0, p0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_c

    iget v0, p0, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$dumpInternal$8(Ljava/io/PrintWriter;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/display/DisplayDevice;)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 2547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2548
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 2549
    return-void
.end method

.method private loadBrightnessConfigurations()V
    .registers 5

    .line 1965
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 1966
    .local v0, "userSerial":I
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1967
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 1980
    monitor-exit v1

    .line 1981
    return-void

    .line 1980
    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method private loadStableDisplayValuesLocked()V
    .registers 5

    .line 700
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 701
    .local v0, "size":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_18

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_18

    .line 704
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_33

    .line 706
    :cond_18
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 707
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x10e00f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 709
    .local v2, "width":I
    const v3, 0x10e00ef

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 711
    .local v3, "height":I
    if-lez v2, :cond_33

    if-lez v3, :cond_33

    .line 712
    invoke-direct {p0, v2, v3}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    .line 715
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_33
    :goto_33
    return-void
.end method

.method private onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 5
    .param p1, "record"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 1024
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1025
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1026
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 1027
    monitor-exit v0

    .line 1028
    return-void

    .line 1027
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private pauseWifiDisplayInternal()V
    .registers 3

    .line 1093
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1094
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_a

    .line 1095
    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestPauseLocked()V

    .line 1097
    :cond_a
    monitor-exit v0

    .line 1098
    return-void

    .line 1097
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1986
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->clearViewportsLocked()V

    .line 1989
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 2004
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    if-eqz v0, :cond_17

    .line 2005
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 2007
    :cond_17
    return-void
.end method

.method private populateViewportLocked(IILcom/android/server/display/DisplayDevice;Lcom/android/server/display/DisplayDeviceInfo;)V
    .registers 7
    .param p1, "viewportType"    # I
    .param p2, "displayId"    # I
    .param p3, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p4, "info"    # Lcom/android/server/display/DisplayDeviceInfo;

    .line 2358
    iget-object v0, p4, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->getViewportLocked(ILjava/lang/String;)Landroid/hardware/display/DisplayViewport;

    move-result-object v0

    .line 2359
    .local v0, "viewport":Landroid/hardware/display/DisplayViewport;
    invoke-virtual {p3, v0}, Lcom/android/server/display/DisplayDevice;->populateViewportLocked(Landroid/hardware/display/DisplayViewport;)V

    .line 2360
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 2361
    iput p2, v0, Landroid/hardware/display/DisplayViewport;->displayId:I

    .line 2364
    iput-boolean v1, v0, Landroid/hardware/display/DisplayViewport;->isActive:Z

    .line 2365
    return-void
.end method

.method private recordStableDisplayStatsIfNeededLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 5
    .param p1, "d"    # Lcom/android/server/display/LogicalDisplay;

    .line 1752
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-gtz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_1b

    .line 1753
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1754
    .local v0, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    .line 1756
    .end local v0    # "info":Landroid/view/DisplayInfo;
    :cond_1b
    return-void
.end method

.method private recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 5
    .param p1, "d"    # Lcom/android/server/display/LogicalDisplay;

    .line 1762
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1f

    if-nez p1, :cond_7

    goto :goto_1f

    .line 1765
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 1766
    .local v0, "topInset":I
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    if-ne v0, v1, :cond_12

    .line 1767
    return-void

    .line 1769
    :cond_12
    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    .line 1770
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.displayinset.top"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    return-void

    .line 1763
    .end local v0    # "topInset":I
    :cond_1f
    :goto_1f
    return-void
.end method

.method private registerAdditionalDisplayAdapters()V
    .registers 3

    .line 1532
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1533
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->shouldRegisterNonEssentialDisplayAdaptersLocked()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1534
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerOverlayDisplayAdapterLocked()V

    .line 1535
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerWifiDisplayAdapterLocked()V

    .line 1537
    :cond_f
    monitor-exit v0

    .line 1538
    return-void

    .line 1537
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;IIJ)V
    .registers 16
    .param p1, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "eventsMask"    # J

    .line 1002
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1003
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 1005
    .local v1, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    if-eqz v1, :cond_12

    .line 1006
    invoke-virtual {v1, p4, p5}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->updateEventsMask(J)V

    .line 1007
    monitor-exit v0

    return-void

    .line 1010
    :cond_12
    new-instance v9, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    move-object v2, v9

    move-object v3, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;-><init>(Lcom/android/server/display/DisplayManagerService;IILandroid/hardware/display/IDisplayManagerCallback;J)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_35

    move-object v1, v9

    .line 1012
    :try_start_1e
    invoke-interface {p1}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1013
    .local v2, "binder":Landroid/os/IBinder;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_26} :catch_2e
    .catchall {:try_start_1e .. :try_end_26} :catchall_35

    .line 1017
    .end local v2    # "binder":Landroid/os/IBinder;
    nop

    .line 1019
    :try_start_27
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1020
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    monitor-exit v0

    .line 1021
    return-void

    .line 1014
    .restart local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :catch_2e
    move-exception v2

    .line 1016
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1    # "callback":Landroid/hardware/display/IDisplayManagerCallback;
    .end local p2    # "callingPid":I
    .end local p3    # "callingUid":I
    .end local p4    # "eventsMask":J
    throw v3

    .line 1020
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1    # "callback":Landroid/hardware/display/IDisplayManagerCallback;
    .restart local p2    # "callingPid":I
    .restart local p3    # "callingUid":I
    .restart local p4    # "eventsMask":J
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private registerDefaultDisplayAdapters()V
    .registers 7

    .line 1513
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1515
    :try_start_3
    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 1523
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/display/DisplayManagerService$Injector;->getVirtualDisplayAdapter(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)Lcom/android/server/display/VirtualDisplayAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 1525
    if-eqz v1, :cond_28

    .line 1526
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 1528
    :cond_28
    monitor-exit v0

    .line 1529
    return-void

    .line 1528
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V
    .registers 3
    .param p1, "adapter"    # Lcom/android/server/display/DisplayAdapter;

    .line 1567
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 1569
    return-void
.end method

.method private registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 730
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    return-void
.end method

.method private registerOverlayDisplayAdapterLocked()V
    .registers 8

    .line 1541
    new-instance v6, Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/OverlayDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V

    invoke-direct {p0, v6}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 1543
    return-void
.end method

.method private registerWifiDisplayAdapterLocked()V
    .registers 9

    .line 1546
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, -0x1

    .line 1548
    const-string/jumbo v1, "persist.debug.wfd.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 1549
    :cond_1a
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/WifiDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 1552
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 1554
    :cond_2f
    return-void
.end method

.method private releaseVirtualDisplayInternal(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "appToken"    # Landroid/os/IBinder;

    .line 1486
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1487
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_9

    .line 1488
    monitor-exit v0

    return-void

    .line 1491
    :cond_9
    nop

    .line 1492
    invoke-virtual {v1, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    .line 1493
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    if-eqz v1, :cond_16

    .line 1495
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/display/DisplayDeviceRepository;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    .line 1498
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_16
    monitor-exit v0

    .line 1499
    return-void

    .line 1498
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 1117
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1118
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_a

    .line 1119
    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    :cond_a
    monitor-exit v0

    .line 1122
    return-void

    .line 1121
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private requestColorModeInternal(II)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "colorMode"    # I

    .line 1213
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1214
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 1215
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_18

    .line 1216
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getRequestedColorModeLocked()I

    move-result v2

    if-eq v2, p2, :cond_18

    .line 1217
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setRequestedColorModeLocked(I)V

    .line 1218
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1220
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_18
    monitor-exit v0

    .line 1221
    return-void

    .line 1220
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private requestDisplayStateInternal(IIFF)V
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "state"    # I
    .param p3, "brightnessState"    # F
    .param p4, "sdrBrightnessState"    # F

    .line 794
    if-nez p2, :cond_3

    .line 795
    const/4 p2, 0x2

    .line 798
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/android/server/display/DisplayManagerService;->clampBrightness(IF)F

    move-result p3

    .line 799
    invoke-direct {p0, p2, p4}, Lcom/android/server/display/DisplayManagerService;->clampBrightness(IF)F

    move-result p4

    .line 806
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 807
    :try_start_e
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 810
    .local v1, "index":I
    if-gez v1, :cond_18

    const/4 v2, 0x0

    goto :goto_20

    :cond_18
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    .line 811
    .local v2, "brightnessPair":Lcom/android/server/display/DisplayManagerService$BrightnessPair;
    :goto_20
    if-ltz v1, :cond_9f

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ne v3, p2, :cond_3b

    iget v3, v2, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    .line 812
    invoke-static {v3, p3}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget v3, v2, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    .line 814
    invoke-static {v3, p4}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_9f

    .line 819
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestDisplayStateInternal("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 821
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", brightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sdrBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 824
    .local v3, "traceMessage":Ljava/lang/String;
    const-wide/32 v4, 0x20000

    invoke-static {v4, v5, v3, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 826
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 827
    iput p3, v2, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    .line 828
    iput p4, v2, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    .line 829
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v6, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v6

    .line 830
    invoke-virtual {v6}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v6

    .line 829
    invoke-direct {p0, v6}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object v6

    move-object v1, v6

    .line 831
    .end local v2    # "brightnessPair":Lcom/android/server/display/DisplayManagerService$BrightnessPair;
    .local v1, "runnable":Ljava/lang/Runnable;
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_e .. :try_end_96} :catchall_a1

    .line 837
    if-eqz v1, :cond_9b

    .line 838
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 840
    :cond_9b
    invoke-static {v4, v5, v3, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 841
    return-void

    .line 816
    .end local v3    # "traceMessage":Ljava/lang/String;
    .local v1, "index":I
    .restart local v2    # "brightnessPair":Lcom/android/server/display/DisplayManagerService$BrightnessPair;
    :cond_9f
    :goto_9f
    :try_start_9f
    monitor-exit v0

    return-void

    .line 831
    .end local v1    # "index":I
    .end local v2    # "brightnessPair":Lcom/android/server/display/DisplayManagerService$BrightnessPair;
    :catchall_a1
    move-exception v1

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_a1

    throw v1
.end method

.method private resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V
    .registers 7
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    .line 1454
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1455
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_9

    .line 1456
    monitor-exit v0

    return-void

    .line 1459
    :cond_9
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/display/VirtualDisplayAdapter;->resizeVirtualDisplayLocked(Landroid/os/IBinder;III)V

    .line 1460
    monitor-exit v0

    .line 1461
    return-void

    .line 1460
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private resumeWifiDisplayInternal()V
    .registers 3

    .line 1101
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1102
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_a

    .line 1103
    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestResumeLocked()V

    .line 1105
    :cond_a
    monitor-exit v0

    .line 1106
    return-void

    .line 1105
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private scheduleTraversalLocked(Z)V
    .registers 4
    .param p1, "inTraversal"    # Z

    .line 2405
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_13

    .line 2406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 2407
    if-nez p1, :cond_13

    .line 2408
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 2411
    :cond_13
    return-void
.end method

.method private sendDisplayEventFrameRateOverrideLocked(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 2397
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2399
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2400
    return-void
.end method

.method private sendDisplayEventLocked(II)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .line 2387
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2388
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2389
    return-void
.end method

.method private sendDisplayGroupEvent(II)V
    .registers 5
    .param p1, "groupId"    # I
    .param p2, "event"    # I

    .line 2392
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2393
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2394
    return-void
.end method

.method private setAreUserDisabledHdrTypesAllowedInternal(Z)V
    .registers 7
    .param p1, "areUserDisabledHdrTypesAllowed"    # Z

    .line 1188
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1189
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-ne v1, p1, :cond_9

    .line 1190
    monitor-exit v0

    return-void

    .line 1192
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 1193
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    array-length v1, v1

    if-nez v1, :cond_12

    .line 1194
    monitor-exit v0

    return-void

    .line 1196
    :cond_12
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "are_user_disabled_hdr_formats_allowed"

    .line 1198
    const/4 v3, 0x0

    if-eqz p1, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    move v4, v3

    .line 1196
    :goto_20
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1199
    new-array v1, v3, [I

    .line 1200
    .local v1, "userDisabledHdrTypes":[I
    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-nez v2, :cond_2c

    .line 1201
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    move-object v1, v2

    .line 1203
    :cond_2c
    move-object v2, v1

    .line 1204
    .local v2, "finalUserDisabledHdrTypes":[I
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v4, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayManagerService;[I)V

    invoke-virtual {v3, v4}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 1209
    .end local v1    # "userDisabledHdrTypes":[I
    .end local v2    # "finalUserDisabledHdrTypes":[I
    monitor-exit v0

    .line 1210
    return-void

    .line 1209
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "uniqueId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1909
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1910
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 1911
    .local v0, "userSerial":I
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1913
    :try_start_e
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v2, p2}, Lcom/android/server/display/DisplayDeviceRepository;->getByUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayDevice;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_39

    .line 1914
    .local v2, "displayDevice":Lcom/android/server/display/DisplayDevice;
    if-nez v2, :cond_1d

    .line 1920
    :try_start_16
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_41

    .line 1915
    return-void

    .line 1917
    :cond_1d
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v3, p1, v2, v0, p4}, Lcom/android/server/display/PersistentDataStore;->setBrightnessConfigurationForDisplayLocked(Landroid/hardware/display/BrightnessConfiguration;Lcom/android/server/display/DisplayDevice;ILjava/lang/String;)Z
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_39

    .line 1920
    .end local v2    # "displayDevice":Lcom/android/server/display/DisplayDevice;
    :try_start_22
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1921
    nop

    .line 1922
    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    if-eq p3, v2, :cond_2e

    .line 1923
    monitor-exit v1

    return-void

    .line 1925
    :cond_2e
    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayManagerService;->getDpcFromUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v2

    .line 1926
    .local v2, "dpc":Lcom/android/server/display/DisplayPowerController;
    if-eqz v2, :cond_37

    .line 1927
    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1929
    .end local v2    # "dpc":Lcom/android/server/display/DisplayPowerController;
    :cond_37
    monitor-exit v1

    .line 1930
    return-void

    .line 1920
    :catchall_39
    move-exception v2

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1921
    nop

    .end local v0    # "userSerial":I
    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1    # "c":Landroid/hardware/display/BrightnessConfiguration;
    .end local p2    # "uniqueId":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "packageName":Ljava/lang/String;
    throw v2

    .line 1929
    .restart local v0    # "userSerial":I
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1    # "c":Landroid/hardware/display/BrightnessConfiguration;
    .restart local p2    # "uniqueId":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "packageName":Ljava/lang/String;
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_22 .. :try_end_43} :catchall_41

    throw v2
.end method

.method private setDisplayAccessUIDsInternal(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;)V"
        }
    .end annotation

    .line 2096
    .local p1, "newDisplayAccessUIDs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/IntArray;>;"
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2097
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 2098
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_22

    .line 2099
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2100
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/IntArray;

    .line 2099
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2098
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 2102
    .end local v1    # "i":I
    :cond_22
    monitor-exit v0

    .line 2103
    return-void

    .line 2102
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private setDisplayOffsetsInternal(III)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 2061
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2062
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 2063
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_d

    .line 2064
    monitor-exit v0

    return-void

    .line 2066
    :cond_d
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetXLocked()I

    move-result v2

    if-ne v2, p2, :cond_19

    .line 2067
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetYLocked()I

    move-result v2

    if-eq v2, p3, :cond_56

    .line 2068
    :cond_19
    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v2, :cond_4f

    .line 2069
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " burn-in offset set to ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    :cond_4f
    invoke-virtual {v1, p2, p3}, Lcom/android/server/display/LogicalDisplay;->setDisplayOffsetsLocked(II)V

    .line 2073
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 2075
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_56
    monitor-exit v0

    .line 2076
    return-void

    .line 2075
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method private setDisplayPropertiesInternal(IZFIFFZZ)V
    .registers 16
    .param p1, "displayId"    # I
    .param p2, "hasContent"    # Z
    .param p3, "requestedRefreshRate"    # F
    .param p4, "requestedModeId"    # I
    .param p5, "requestedMinRefreshRate"    # F
    .param p6, "requestedMaxRefreshRate"    # F
    .param p7, "preferMinimalPostProcessing"    # Z
    .param p8, "inTraversal"    # Z

    .line 2013
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2014
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 2015
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_d

    .line 2016
    monitor-exit v0

    return-void

    .line 2019
    :cond_d
    const/4 v2, 0x0

    .line 2021
    .local v2, "shouldScheduleTraversal":Z
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v3

    if-eq v3, p2, :cond_48

    .line 2022
    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v3, :cond_44

    .line 2023
    const-string v3, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hasContent flag changed: hasContent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", inTraversal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_44
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setHasContentLocked(Z)V

    .line 2028
    const/4 v2, 0x1

    .line 2030
    :cond_48
    if-nez p4, :cond_81

    const/4 v3, 0x0

    cmpl-float v3, p3, v3

    if-eqz v3, :cond_81

    .line 2033
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)Landroid/view/Display$Mode;

    move-result-object v3

    .line 2035
    .local v3, "mode":Landroid/view/Display$Mode;
    if-eqz v3, :cond_5f

    .line 2036
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    move p4, v4

    goto :goto_81

    .line 2038
    :cond_5f
    const-string v4, "DisplayManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find a mode for the requestedRefreshRate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on Display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    .end local v3    # "mode":Landroid/view/Display$Mode;
    :cond_81
    :goto_81
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayModeDirector;->getAppRequestObserver()Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    move-result-object v3

    invoke-virtual {v3, p1, p4, p5, p6}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->setAppRequest(IIFF)V

    .line 2047
    iget-boolean v3, p0, Lcom/android/server/display/DisplayManagerService;->mMinimalPostProcessingAllowed:Z

    if-eqz v3, :cond_92

    if-eqz p7, :cond_92

    const/4 v3, 0x1

    goto :goto_93

    :cond_92
    const/4 v3, 0x0

    .line 2049
    .local v3, "mppRequest":Z
    :goto_93
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getRequestedMinimalPostProcessingLocked()Z

    move-result v4

    if-eq v4, v3, :cond_9d

    .line 2050
    invoke-virtual {v1, v3}, Lcom/android/server/display/LogicalDisplay;->setRequestedMinimalPostProcessingLocked(Z)V

    .line 2051
    const/4 v2, 0x1

    .line 2054
    :cond_9d
    if-eqz v2, :cond_a2

    .line 2055
    invoke-direct {p0, p8}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 2057
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v2    # "shouldScheduleTraversal":Z
    .end local v3    # "mppRequest":Z
    :cond_a2
    monitor-exit v0

    .line 2058
    return-void

    .line 2057
    :catchall_a4
    move-exception v1

    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_3 .. :try_end_a6} :catchall_a4

    throw v1
.end method

.method private setDisplayScalingDisabledInternal(IZ)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "disable"    # Z

    .line 2079
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2080
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 2081
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_d

    .line 2082
    monitor-exit v0

    return-void

    .line 2084
    :cond_d
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->isDisplayScalingDisabled()Z

    move-result v2

    if-eq v2, p2, :cond_40

    .line 2085
    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v2, :cond_39

    .line 2086
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " content scaling disabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    :cond_39
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayScalingDisabledLocked(Z)V

    .line 2089
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 2091
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_40
    monitor-exit v0

    .line 2092
    return-void

    .line 2091
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private setLimitedFrameRateInternal(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "frameRate"    # I

    .line 1475
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1476
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_9

    .line 1477
    monitor-exit v0

    return-void

    .line 1480
    :cond_9
    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setLimitedFrameRateLocked(Landroid/os/IBinder;I)V

    .line 1481
    monitor-exit v0

    .line 1482
    return-void

    .line 1481
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private setStableDisplaySizeLocked(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1774
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 1776
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1, v0}, Lcom/android/server/display/PersistentDataStore;->setStableDisplaySize(Landroid/graphics/Point;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_13

    .line 1778
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1779
    nop

    .line 1780
    return-void

    .line 1778
    :catchall_13
    move-exception v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1779
    throw v0
.end method

.method private setUserDisabledHdrTypesInternal([I)V
    .registers 6
    .param p1, "userDisabledHdrTypes"    # [I

    .line 1142
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1143
    if-nez p1, :cond_e

    .line 1144
    :try_start_5
    const-string v1, "DisplayManagerService"

    const-string v2, "Null is not an expected argument to setUserDisabledHdrTypesInternal"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    monitor-exit v0

    return-void

    .line 1150
    :cond_e
    sget-object v1, Landroid/view/Display$HdrCapabilities;->HDR_TYPES:[I

    invoke-direct {p0, v1, p1}, Lcom/android/server/display/DisplayManagerService;->isSubsetOf([I[I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1151
    const-string v1, "DisplayManagerService"

    const-string/jumbo v2, "userDisabledHdrTypes contains unexpected types"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    monitor-exit v0

    return-void

    .line 1155
    :cond_20
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 1156
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1157
    monitor-exit v0

    return-void

    .line 1159
    :cond_2d
    const-string v1, ""

    .line 1160
    .local v1, "userDisabledFormatsString":Ljava/lang/String;
    array-length v2, p1

    if-eqz v2, :cond_45

    .line 1161
    const-string v2, ","

    .line 1162
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 1161
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1164
    :cond_45
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_disabled_hdr_formats"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1166
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 1167
    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-nez v2, :cond_61

    .line 1168
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/display/DisplayManagerService;[I)V

    invoke-virtual {v2, v3}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 1174
    .end local v1    # "userDisabledFormatsString":Ljava/lang/String;
    :cond_61
    monitor-exit v0

    .line 1175
    return-void

    .line 1174
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_5 .. :try_end_65} :catchall_63

    throw v1
.end method

.method private setUserPreferredModeForDisplayLocked(ILandroid/view/Display$Mode;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "mode"    # Landroid/view/Display$Mode;

    .line 1830
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 1831
    .local v0, "displayDevice":Lcom/android/server/display/DisplayDevice;
    if-nez v0, :cond_7

    .line 1832
    return-void

    .line 1834
    :cond_7
    invoke-virtual {v0, p2}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    .line 1835
    return-void
.end method

.method private setVirtualDisplayStateInternal(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "isOn"    # Z

    .line 1502
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1503
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_9

    .line 1504
    monitor-exit v0

    return-void

    .line 1507
    :cond_9
    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setVirtualDisplayStateLocked(Landroid/os/IBinder;Z)V

    .line 1508
    monitor-exit v0

    .line 1509
    return-void

    .line 1508
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 5
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 1464
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1465
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_9

    .line 1466
    monitor-exit v0

    return-void

    .line 1469
    :cond_9
    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setVirtualDisplaySurfaceLocked(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 1470
    monitor-exit v0

    .line 1471
    return-void

    .line 1470
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private shouldRegisterNonEssentialDisplayAdaptersLocked()Z
    .registers 2

    .line 1563
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private startWifiDisplayScanInternal(I)V
    .registers 6
    .param p1, "callingPid"    # I

    .line 1031
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1032
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 1033
    .local v1, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    if-eqz v1, :cond_12

    .line 1037
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 1038
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    monitor-exit v0

    .line 1039
    return-void

    .line 1034
    .restart local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1    # "callingPid":I
    throw v2

    .line 1038
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1    # "callingPid":I
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 4
    .param p1, "record"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 1042
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-nez v0, :cond_16

    .line 1043
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 1044
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez v0, :cond_16

    .line 1045
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_16

    .line 1046
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestStartScanLocked()V

    .line 1050
    :cond_16
    return-void
.end method

.method private stopWifiDisplayScanInternal(I)V
    .registers 6
    .param p1, "callingPid"    # I

    .line 1053
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1054
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 1055
    .local v1, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    if-eqz v1, :cond_12

    .line 1059
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 1060
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    monitor-exit v0

    .line 1061
    return-void

    .line 1056
    .restart local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1    # "callingPid":I
    throw v2

    .line 1060
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1    # "callingPid":I
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 5
    .param p1, "record"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 1064
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-eqz v0, :cond_36

    .line 1065
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 1066
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez v1, :cond_17

    .line 1067
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_36

    .line 1068
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestStopScanLocked()V

    goto :goto_36

    .line 1070
    :cond_17
    if-gez v1, :cond_36

    .line 1071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWifiDisplayScanRequestCount became negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    .line 1076
    :cond_36
    :goto_36
    return-void
.end method

.method private storeModeInGlobalSettingsLocked(IIFLandroid/view/Display$Mode;)V
    .registers 7
    .param p1, "resolutionWidth"    # I
    .param p2, "resolutionHeight"    # I
    .param p3, "refreshRate"    # F
    .param p4, "mode"    # Landroid/view/Display$Mode;

    .line 1839
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_preferred_refresh_rate"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 1841
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_preferred_resolution_height"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1843
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_preferred_resolution_width"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1845
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p4}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/view/Display$Mode;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 1856
    return-void
.end method

.method private storeModeInPersistentDataStoreLocked(IIIF)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "resolutionWidth"    # I
    .param p3, "resolutionHeight"    # I
    .param p4, "refreshRate"    # F

    .line 1820
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 1821
    .local v0, "displayDevice":Lcom/android/server/display/DisplayDevice;
    if-nez v0, :cond_7

    .line 1822
    return-void

    .line 1824
    :cond_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/display/PersistentDataStore;->setUserPreferredResolution(Lcom/android/server/display/DisplayDevice;II)Z

    .line 1826
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1, v0, p4}, Lcom/android/server/display/PersistentDataStore;->setUserPreferredRefreshRate(Lcom/android/server/display/DisplayDevice;F)Z

    .line 1827
    return-void
.end method

.method private systemScreenshotInternal(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 9
    .param p1, "displayId"    # I

    .line 2130
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2131
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v1

    .line 2132
    .local v1, "token":Landroid/os/IBinder;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 2133
    monitor-exit v0

    return-object v2

    .line 2135
    :cond_c
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v3, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v3

    .line 2136
    .local v3, "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    if-nez v3, :cond_16

    .line 2137
    monitor-exit v0

    return-object v2

    .line 2140
    :cond_16
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 2141
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v4, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    invoke-direct {v4, v1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 2142
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setSize(II)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object v4

    .line 2143
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setUseIdentityTransform(Z)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object v4

    .line 2144
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 2145
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 2146
    invoke-virtual {v4}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$DisplayCaptureArgs;

    move-result-object v4

    move-object v1, v4

    .line 2147
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v3    # "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    .local v1, "captureArgs":Landroid/view/SurfaceControl$DisplayCaptureArgs;
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_47

    .line 2148
    invoke-static {v1}, Landroid/view/SurfaceControl;->captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v0

    return-object v0

    .line 2147
    .end local v1    # "captureArgs":Landroid/view/SurfaceControl$DisplayCaptureArgs;
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v1
.end method

.method private unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 736
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 737
    return-void
.end method

.method private updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;
    .registers 9
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1697
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1698
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    if-nez v1, :cond_31

    .line 1699
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 1700
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_14

    .line 1701
    return-object v2

    .line 1703
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    .line 1704
    .local v3, "displayId":I
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 1707
    .local v4, "state":I
    if-eqz v4, :cond_31

    .line 1708
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    .line 1709
    .local v2, "brightnessPair":Lcom/android/server/display/DisplayManagerService$BrightnessPair;
    iget v5, v2, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    iget v6, v2, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    invoke-virtual {p1, v4, v5, v6}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(IFF)Ljava/lang/Runnable;

    move-result-object v5

    return-object v5

    .line 1713
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v2    # "brightnessPair":Lcom/android/server/display/DisplayManagerService$BrightnessPair;
    .end local v3    # "displayId":I
    .end local v4    # "state":I
    :cond_31
    return-object v2
.end method

.method private updateSettingsLocked()V
    .registers 5

    .line 866
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "minimal_post_processing_allowed"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    iput-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mMinimalPostProcessingAllowed:Z

    .line 868
    return-void
.end method

.method private updateUserDisabledHdrTypesFromSettingsLocked()V
    .registers 6

    .line 871
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 872
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 871
    const-string v1, "are_user_disabled_hdr_formats_allowed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    iput-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 876
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_disabled_hdr_formats"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "userDisabledHdrTypes":Ljava/lang/String;
    if-eqz v0, :cond_4b

    .line 881
    :try_start_22
    const-string v1, ","

    .line 882
    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 883
    .local v1, "userDisabledHdrTypeStrings":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 884
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2e
    array-length v3, v1

    if-ge v2, v3, :cond_3e

    .line 885
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_3b} :catch_3f

    .line 884
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .end local v1    # "userDisabledHdrTypeStrings":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_3e
    goto :goto_4a

    .line 887
    :catch_3f
    move-exception v1

    .line 888
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "DisplayManagerService"

    const-string v3, "Failed to parse USER_DISABLED_HDR_FORMATS. Clearing the setting."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 890
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->clearUserDisabledHdrTypesLocked()V

    .line 891
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_4a
    goto :goto_4e

    .line 893
    :cond_4b
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->clearUserDisabledHdrTypesLocked()V

    .line 895
    :goto_4e
    return-void
.end method

.method private updateUserPreferredDisplayModeSettingsLocked()V
    .registers 6

    .line 906
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_preferred_refresh_rate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 908
    .local v0, "refreshRate":F
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_preferred_resolution_height"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 910
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "user_preferred_resolution_width"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 912
    .local v2, "width":I
    new-instance v3, Landroid/view/Display$Mode;

    invoke-direct {v3, v2, v1, v0}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 913
    .local v3, "mode":Landroid/view/Display$Mode;
    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->isResolutionAndRefreshRateValid(Landroid/view/Display$Mode;)Z

    move-result v4

    if-eqz v4, :cond_36

    move-object v4, v3

    goto :goto_37

    :cond_36
    const/4 v4, 0x0

    :goto_37
    iput-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 914
    return-void
.end method

.method private updateViewportPowerStateLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 9
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 2368
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 2369
    .local v0, "device":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 2370
    .local v1, "info":Lcom/android/server/display/DisplayDeviceInfo;
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;

    move-result-object v2

    .line 2371
    .local v2, "viewportType":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 2372
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayViewport;

    .line 2373
    .local v4, "d":Landroid/hardware/display/DisplayViewport;
    iget v5, v4, Landroid/hardware/display/DisplayViewport;->type:I

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_3f

    iget-object v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget-object v6, v4, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 2377
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/hardware/display/DisplayViewport;->isActive:Z

    .line 2379
    .end local v4    # "d":Landroid/hardware/display/DisplayViewport;
    :cond_3f
    goto :goto_18

    .line 2380
    :cond_40
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    if-eqz v3, :cond_4a

    .line 2381
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 2384
    :cond_4a
    return-void
.end method

.method private userScreenshotInternal(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 6
    .param p1, "displayId"    # I

    .line 2152
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2153
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v1

    .line 2154
    .local v1, "token":Landroid/os/IBinder;
    if-nez v1, :cond_c

    .line 2155
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2158
    :cond_c
    new-instance v2, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    invoke-direct {v2, v1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 2160
    invoke-virtual {v2}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$DisplayCaptureArgs;

    move-result-object v2

    .line 2161
    .local v2, "captureArgs":Landroid/view/SurfaceControl$DisplayCaptureArgs;
    invoke-static {v2}, Landroid/view/SurfaceControl;->captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 2162
    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "captureArgs":Landroid/view/SurfaceControl$DisplayCaptureArgs;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private validatePackageName(ILjava/lang/String;)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1224
    const/4 v0, 0x0

    if-eqz p2, :cond_20

    .line 1225
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1226
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_20

    .line 1227
    array-length v2, v1

    move v3, v0

    :goto_11
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    .line 1228
    .local v4, "n":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1229
    const/4 v0, 0x1

    return v0

    .line 1227
    .end local v4    # "n":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1234
    .end local v1    # "packageNames":[Ljava/lang/String;
    :cond_20
    return v0
.end method


# virtual methods
.method getActiveDisplayModeAtStart(I)Landroid/view/Display$Mode;
    .registers 5
    .param p1, "displayId"    # I

    .line 2240
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2241
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    .line 2242
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v1, :cond_c

    .line 2243
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2245
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getActiveDisplayModeAtStartLocked()Landroid/view/Display$Mode;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2246
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method getDisplayDeviceInfoInternal(I)Lcom/android/server/display/DisplayDeviceInfo;
    .registers 6
    .param p1, "displayId"    # I

    .line 2636
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2637
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 2638
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_15

    .line 2639
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    .line 2640
    .local v2, "displayDevice":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 2642
    .end local v2    # "displayDevice":Lcom/android/server/display/DisplayDevice;
    :cond_15
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2643
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method getDisplayDeviceRepository()Lcom/android/server/display/DisplayDeviceRepository;
    .registers 2

    .line 696
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    return-object v0
.end method

.method getDisplayHandler()Landroid/os/Handler;
    .registers 2

    .line 691
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    return-object v0
.end method

.method getDisplayIdToMirrorInternal(I)I
    .registers 6
    .param p1, "displayId"    # I

    .line 2648
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2649
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 2650
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_15

    .line 2651
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    .line 2652
    .local v2, "displayDevice":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayIdToMirrorLocked()I

    move-result v3

    monitor-exit v0

    return v3

    .line 2654
    .end local v2    # "displayDevice":Lcom/android/server/display/DisplayDevice;
    :cond_15
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 2655
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method getDisplayedContentSampleInternal(IJJ)Landroid/hardware/display/DisplayedContentSample;
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "maxFrames"    # J
    .param p4, "timestamp"    # J

    .line 2189
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v0

    .line 2190
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_8

    .line 2191
    const/4 v1, 0x0

    return-object v1

    .line 2193
    :cond_8
    invoke-static {v0, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->getDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object v1

    return-object v1
.end method

.method getDisplayedContentSamplingAttributesInternal(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .registers 4
    .param p1, "displayId"    # I

    .line 2168
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v0

    .line 2169
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_8

    .line 2170
    const/4 v1, 0x0

    return-object v1

    .line 2172
    :cond_8
    invoke-static {v0}, Landroid/view/SurfaceControl;->getDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v1

    return-object v1
.end method

.method getMinimumBrightnessCurveInternal()Landroid/hardware/display/Curve;
    .registers 2

    .line 1784
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    return-object v0
.end method

.method getPreferredWideGamutColorSpaceIdInternal()I
    .registers 2

    .line 1788
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWideColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    return v0
.end method

.method getRefreshRateSwitchingTypeInternal()I
    .registers 2

    .line 1895
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector;->getModeSwitchingType()I

    move-result v0

    return v0
.end method

.method getSystemPreferredDisplayModeInternal(I)Landroid/view/Display$Mode;
    .registers 5
    .param p1, "displayId"    # I

    .line 1872
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1873
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    .line 1874
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v1, :cond_c

    .line 1875
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1877
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getSystemPreferredDisplayModeLocked()Landroid/view/Display$Mode;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1878
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method getUserPreferredDisplayModeInternal(I)Landroid/view/Display$Mode;
    .registers 5
    .param p1, "displayId"    # I

    .line 1859
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1860
    const/4 v1, -0x1

    if-ne p1, v1, :cond_a

    .line 1861
    :try_start_6
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    monitor-exit v0

    return-object v1

    .line 1863
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    .line 1864
    .local v1, "displayDevice":Lcom/android/server/display/DisplayDevice;
    if-nez v1, :cond_13

    .line 1865
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1867
    :cond_13
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getUserPreferredDisplayModeLocked()Landroid/view/Display$Mode;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1868
    .end local v1    # "displayDevice":Lcom/android/server/display/DisplayDevice;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method getVirtualDisplaySurfaceInternal(Landroid/os/IBinder;)Landroid/view/Surface;
    .registers 4
    .param p1, "appToken"    # Landroid/os/IBinder;

    .line 2660
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2661
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_a

    .line 2662
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 2664
    :cond_a
    invoke-virtual {v1, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->getVirtualDisplaySurfaceLocked(Landroid/os/IBinder;)Landroid/view/Surface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2665
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method synthetic lambda$addDisplayPowerControllerLocked$9$com-android-server-display-DisplayManagerService(Lcom/android/server/display/LogicalDisplay;)V
    .registers 2
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 2686
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleBrightnessChange(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method synthetic lambda$handleLogicalDisplayRemovedLocked$3$com-android-server-display-DisplayManagerService(Landroid/companion/virtual/IVirtualDevice;I)V
    .registers 4
    .param p1, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p2, "displayId"    # I

    .line 1661
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 1662
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->onVirtualDisplayRemoved(Landroid/companion/virtual/IVirtualDevice;I)V

    .line 1663
    return-void
.end method

.method synthetic lambda$loadBrightnessConfigurations$5$com-android-server-display-DisplayManagerService(ILcom/android/server/display/LogicalDisplay;)V
    .registers 7
    .param p1, "userSerial"    # I
    .param p2, "logicalDisplay"    # Lcom/android/server/display/LogicalDisplay;

    .line 1968
    nop

    .line 1969
    invoke-virtual {p2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 1970
    .local v0, "uniqueId":Ljava/lang/String;
    nop

    .line 1971
    invoke-direct {p0, v0, p1}, Lcom/android/server/display/DisplayManagerService;->getBrightnessConfigForDisplayWithPdsFallbackLocked(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v1

    .line 1972
    .local v1, "config":Landroid/hardware/display/BrightnessConfiguration;
    if-eqz v1, :cond_21

    .line 1973
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 1974
    invoke-virtual {p2}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    .line 1973
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerController;

    .line 1975
    .local v2, "dpc":Lcom/android/server/display/DisplayPowerController;
    if-eqz v2, :cond_21

    .line 1976
    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1979
    .end local v2    # "dpc":Lcom/android/server/display/DisplayPowerController;
    :cond_21
    return-void
.end method

.method synthetic lambda$onUserSwitching$0$com-android-server-display-DisplayManagerService(ZIILcom/android/server/display/LogicalDisplay;)V
    .registers 7
    .param p1, "userSwitching"    # Z
    .param p2, "userSerial"    # I
    .param p3, "newUserId"    # I
    .param p4, "logicalDisplay"    # Lcom/android/server/display/LogicalDisplay;

    .line 614
    invoke-virtual {p4}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 615
    return-void

    .line 617
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 618
    invoke-virtual {p4}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    .line 617
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    .line 619
    .local v0, "dpc":Lcom/android/server/display/DisplayPowerController;
    if-nez v0, :cond_19

    .line 620
    return-void

    .line 622
    :cond_19
    if-eqz p1, :cond_2b

    .line 623
    nop

    .line 625
    invoke-virtual {p4}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    .line 624
    invoke-direct {p0, v1, p2}, Lcom/android/server/display/DisplayManagerService;->getBrightnessConfigForDisplayWithPdsFallbackLocked(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v1

    .line 627
    .local v1, "config":Landroid/hardware/display/BrightnessConfiguration;
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 629
    .end local v1    # "config":Landroid/hardware/display/BrightnessConfiguration;
    :cond_2b
    invoke-virtual {v0, p3}, Lcom/android/server/display/DisplayPowerController;->onSwitchUser(I)V

    .line 630
    return-void
.end method

.method synthetic lambda$performTraversalLocked$6$com-android-server-display-DisplayManagerService(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/LogicalDisplay;)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 1990
    invoke-virtual {p2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 1991
    .local v0, "device":Lcom/android/server/display/DisplayDevice;
    if-eqz v0, :cond_20

    .line 1993
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->getCastRotationMode()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1994
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1a

    .line 1995
    return-void

    .line 1998
    :cond_1a
    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;)V

    .line 1999
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayDevice;->performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 2001
    :cond_20
    return-void
.end method

.method synthetic lambda$resetBrightnessConfigurations$7$com-android-server-display-DisplayManagerService(Lcom/android/server/display/LogicalDisplay;)V
    .registers 6
    .param p1, "logicalDisplay"    # Lcom/android/server/display/LogicalDisplay;

    .line 2201
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 2202
    return-void

    .line 2204
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 2205
    .local v0, "uniqueId":Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 2206
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2205
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    .line 2207
    return-void
.end method

.method synthetic lambda$setAreUserDisabledHdrTypesAllowedInternal$2$com-android-server-display-DisplayManagerService([ILcom/android/server/display/LogicalDisplay;)V
    .registers 3
    .param p1, "finalUserDisabledHdrTypes"    # [I
    .param p2, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 1206
    invoke-virtual {p2, p1}, Lcom/android/server/display/LogicalDisplay;->setUserDisabledHdrTypes([I)V

    .line 1207
    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1208
    return-void
.end method

.method synthetic lambda$setUserDisabledHdrTypesInternal$1$com-android-server-display-DisplayManagerService([ILcom/android/server/display/LogicalDisplay;)V
    .registers 3
    .param p1, "userDisabledHdrTypes"    # [I
    .param p2, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 1170
    invoke-virtual {p2, p1}, Lcom/android/server/display/LogicalDisplay;->setUserDisabledHdrTypes([I)V

    .line 1171
    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1172
    return-void
.end method

.method synthetic lambda$storeModeInGlobalSettingsLocked$4$com-android-server-display-DisplayManagerService(Landroid/view/Display$Mode;Lcom/android/server/display/DisplayDevice;)V
    .registers 6
    .param p1, "mode"    # Landroid/view/Display$Mode;
    .param p2, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1847
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 1848
    invoke-virtual {v0, p2}, Lcom/android/server/display/PersistentDataStore;->getUserPreferredResolution(Lcom/android/server/display/DisplayDevice;)Landroid/graphics/Point;

    move-result-object v0

    .line 1849
    .local v0, "deviceUserPreferredResolution":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 1850
    invoke-virtual {v1, p2}, Lcom/android/server/display/PersistentDataStore;->getUserPreferredRefreshRate(Lcom/android/server/display/DisplayDevice;)F

    move-result v1

    .line 1851
    .local v1, "deviceRefreshRate":F
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->isValidResolution(Landroid/graphics/Point;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1852
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->isValidRefreshRate(F)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1853
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    .line 1855
    :cond_1b
    return-void
.end method

.method public onBootPhase(I)V
    .registers 11
    .param p1, "phase"    # I

    .line 571
    const/4 v0, 0x0

    const/16 v1, 0x64

    if-ne p1, v1, :cond_82

    .line 572
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 573
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 574
    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService$Injector;->getDefaultDisplayDelayTimeout()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 575
    .local v2, "timeout":J
    :goto_13
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v4, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    if-eqz v4, :cond_23

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v4, :cond_20

    goto :goto_23

    .line 592
    .end local v2    # "timeout":J
    :cond_20
    monitor-exit v1

    goto/16 :goto_a0

    .line 577
    .restart local v2    # "timeout":J
    :cond_23
    :goto_23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 578
    .local v4, "delay":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_54

    .line 584
    sget-boolean v6, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v6, :cond_4c

    .line 585
    const-string v6, "DisplayManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "waitForDefaultDisplay: waiting, timeout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_8 .. :try_end_4c} :catchall_7f

    .line 588
    :cond_4c
    :try_start_4c
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v6, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_51} :catch_52
    .catchall {:try_start_4c .. :try_end_51} :catchall_7f

    .line 590
    goto :goto_53

    .line 589
    :catch_52
    move-exception v6

    .line 591
    .end local v4    # "delay":J
    :goto_53
    goto :goto_13

    .line 579
    .restart local v4    # "delay":J
    :cond_54
    :try_start_54
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timeout waiting for default display to be initialized. DefaultDisplay="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 581
    invoke-virtual {v8, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", mVirtualDisplayAdapter="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1    # "phase":I
    throw v6

    .line 592
    .end local v2    # "timeout":J
    .end local v4    # "delay":J
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1    # "phase":I
    :catchall_7f
    move-exception v0

    monitor-exit v1
    :try_end_81
    .catchall {:try_start_54 .. :try_end_81} :catchall_7f

    throw v0

    .line 593
    :cond_82
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_a0

    .line 594
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayModeDirector;->onBootCompleted()V

    .line 595
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplayMapper;->onBootCompleted()V

    .line 598
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->onBootCompleted()V

    .line 600
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayManagerServiceImpl:Lcom/android/server/display/DisplayManagerServiceStub;

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerServiceStub;->onBootCompleted()V

    .line 602
    :cond_a0
    :goto_a0
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 554
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 555
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 556
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->loadStableDisplayValuesLocked()V

    .line 557
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2a

    .line 558
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 562
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    .line 564
    const-string v0, "display"

    new-instance v2, Lcom/android/server/display/DisplayManagerService$BinderService;

    invoke-direct {v2, p0}, Lcom/android/server/display/DisplayManagerService$BinderService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/display/DisplayManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 566
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 567
    return-void

    .line 557
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 9
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 606
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 607
    .local v0, "newUserId":I
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v1

    .line 608
    .local v1, "userSerial":I
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 609
    :try_start_f
    iget v3, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    if-eq v3, v0, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    .line 610
    .local v3, "userSwitching":Z
    :goto_16
    if-eqz v3, :cond_1a

    .line 611
    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    .line 613
    :cond_1a
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v5, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v3, v1, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/DisplayManagerService;ZII)V

    invoke-virtual {v4, v5}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 631
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->handleSettingsChange()V

    .line 632
    .end local v3    # "userSwitching":Z
    monitor-exit v2

    .line 633
    return-void

    .line 632
    :catchall_29
    move-exception v3

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_29

    throw v3
.end method

.method performTraversalInternal(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 765
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 766
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v1, :cond_9

    .line 767
    monitor-exit v0

    return-void

    .line 769
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 771
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 772
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_27

    .line 775
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 776
    .local v1, "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;
    invoke-interface {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 777
    .end local v1    # "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;
    goto :goto_16

    .line 778
    :cond_26
    return-void

    .line 772
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method resetBrightnessConfigurations()V
    .registers 6

    .line 2197
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2198
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 2199
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2198
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/display/PersistentDataStore;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 2200
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 2208
    monitor-exit v0

    .line 2209
    return-void

    .line 2208
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method setAmbientColorTemperatureOverride(F)V
    .registers 5
    .param p1, "cct"    # F

    .line 2250
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2251
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    .line 2253
    .local v1, "displayPowerController":Lcom/android/server/display/DisplayPowerController;
    if-eqz v1, :cond_11

    .line 2254
    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController;->setAmbientColorTemperatureOverride(F)V

    .line 2256
    .end local v1    # "displayPowerController":Lcom/android/server/display/DisplayPowerController;
    :cond_11
    monitor-exit v0

    .line 2257
    return-void

    .line 2256
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method setAutoBrightnessLoggingEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 2212
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2213
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    .line 2215
    .local v1, "displayPowerController":Lcom/android/server/display/DisplayPowerController;
    if-eqz v1, :cond_11

    .line 2216
    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController;->setAutoBrightnessLoggingEnabled(Z)V

    .line 2218
    .end local v1    # "displayPowerController":Lcom/android/server/display/DisplayPowerController;
    :cond_11
    monitor-exit v0

    .line 2219
    return-void

    .line 2218
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "info"    # Landroid/view/DisplayInfo;

    .line 741
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 742
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 743
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_14

    .line 744
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 745
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 748
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_14
    monitor-exit v0

    .line 749
    return-void

    .line 748
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method setDisplayModeDirectorLoggingEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 2232
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2233
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    if-eqz v1, :cond_a

    .line 2234
    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector;->setLoggingEnabled(Z)V

    .line 2236
    :cond_a
    monitor-exit v0

    .line 2237
    return-void

    .line 2236
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method setDisplayWhiteBalanceLoggingEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 2222
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2223
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    .line 2225
    .local v1, "displayPowerController":Lcom/android/server/display/DisplayPowerController;
    if-eqz v1, :cond_11

    .line 2226
    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController;->setDisplayWhiteBalanceLoggingEnabled(Z)V

    .line 2228
    .end local v1    # "displayPowerController":Lcom/android/server/display/DisplayPowerController;
    :cond_11
    monitor-exit v0

    .line 2229
    return-void

    .line 2228
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method setDisplayedContentSamplingEnabledInternal(IZII)Z
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "enable"    # Z
    .param p3, "componentMask"    # I
    .param p4, "maxFrames"    # I

    .line 2178
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v0

    .line 2179
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_8

    .line 2180
    const/4 v1, 0x0

    return v1

    .line 2182
    :cond_8
    invoke-static {v0, p2, p3, p4}, Landroid/view/SurfaceControl;->setDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z

    move-result v1

    return v1
.end method

.method setDockedAndIdleEnabled(ZI)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "displayId"    # I

    .line 2260
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2261
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    .line 2263
    .local v1, "displayPowerController":Lcom/android/server/display/DisplayPowerController;
    if-eqz v1, :cond_10

    .line 2264
    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController;->setAutomaticScreenBrightnessMode(Z)V

    .line 2266
    .end local v1    # "displayPowerController":Lcom/android/server/display/DisplayPowerController;
    :cond_10
    monitor-exit v0

    .line 2267
    return-void

    .line 2266
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method setRefreshRateSwitchingTypeInternal(I)V
    .registers 3
    .param p1, "newValue"    # I

    .line 1890
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector;->setModeSwitchingType(I)V

    .line 1891
    return-void
.end method

.method setShouldAlwaysRespectAppRequestedModeInternal(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1882
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector;->setShouldAlwaysRespectAppRequestedMode(Z)V

    .line 1883
    return-void
.end method

.method setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "mode"    # Landroid/view/Display$Mode;

    .line 1792
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1793
    const/4 v1, -0x1

    if-eqz p2, :cond_1a

    :try_start_6
    invoke-static {p2}, Lcom/android/server/display/DisplayManagerService;->isResolutionAndRefreshRateValid(Landroid/view/Display$Mode;)Z

    move-result v2

    if-nez v2, :cond_1a

    if-eq p1, v1, :cond_f

    goto :goto_1a

    .line 1795
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width, height and refresh rate of mode should be greater than 0 when setting the global user preferred display mode."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1    # "displayId":I
    .end local p2    # "mode":Landroid/view/Display$Mode;
    throw v1

    .line 1815
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1    # "displayId":I
    .restart local p2    # "mode":Landroid/view/Display$Mode;
    :catchall_18
    move-exception v1

    goto :goto_45

    .line 1799
    :cond_1a
    :goto_1a
    if-nez p2, :cond_1e

    move v2, v1

    goto :goto_22

    .line 1800
    :cond_1e
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    :goto_22
    nop

    .line 1801
    .local v2, "resolutionHeight":I
    if-nez p2, :cond_27

    move v3, v1

    goto :goto_2b

    .line 1802
    :cond_27
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    :goto_2b
    nop

    .line 1803
    .local v3, "resolutionWidth":I
    if-nez p2, :cond_30

    const/4 v4, 0x0

    goto :goto_34

    .line 1804
    :cond_30
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    :goto_34
    nop

    .line 1806
    .local v4, "refreshRate":F
    invoke-direct {p0, p1, v3, v2, v4}, Lcom/android/server/display/DisplayManagerService;->storeModeInPersistentDataStoreLocked(IIIF)V

    .line 1808
    if-eq p1, v1, :cond_3e

    .line 1809
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredModeForDisplayLocked(ILandroid/view/Display$Mode;)V

    goto :goto_43

    .line 1811
    :cond_3e
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 1812
    invoke-direct {p0, v3, v2, v4, p2}, Lcom/android/server/display/DisplayManagerService;->storeModeInGlobalSettingsLocked(IIFLandroid/view/Display$Mode;)V

    .line 1815
    .end local v2    # "resolutionHeight":I
    .end local v3    # "resolutionWidth":I
    .end local v4    # "refreshRate":F
    :goto_43
    monitor-exit v0

    .line 1816
    return-void

    .line 1815
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_6 .. :try_end_46} :catchall_18

    throw v1
.end method

.method public setupSchedulerPolicies()V
    .registers 3

    .line 540
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/DisplayThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 542
    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AnimationThread;->getThreadId()I

    move-result v0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 544
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->get()Lcom/android/server/wm/SurfaceAnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationThread;->getThreadId()I

    move-result v0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 546
    return-void
.end method

.method shouldAlwaysRespectAppRequestedModeInternal()Z
    .registers 2

    .line 1886
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector;->shouldAlwaysRespectAppRequestedMode()Z

    move-result v0

    return v0
.end method

.method protected showTouchCoverProtectionRect(Z)V
    .registers 6
    .param p1, "isShow"    # Z

    .line 4225
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4227
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerController;

    .line 4229
    .local v2, "displayPowerController":Lcom/android/server/display/DisplayPowerController;
    if-eqz v2, :cond_16

    .line 4230
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerController;->getImpl()Lcom/android/server/display/DisplayPowerControllerStub;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/server/display/DisplayPowerControllerStub;->showTouchCoverProtectionRect(Z)V
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1b

    .line 4233
    .end local v2    # "displayPowerController":Lcom/android/server/display/DisplayPowerController;
    :cond_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4234
    nop

    .line 4235
    return-void

    .line 4233
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4234
    throw v2
.end method

.method public systemReady(ZZ)V
    .registers 7
    .param p1, "safeMode"    # Z
    .param p2, "onlyCore"    # Z

    .line 653
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 654
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    .line 655
    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    .line 656
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 659
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 661
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateSettingsLocked()V

    .line 663
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateUserDisabledHdrTypesFromSettingsLocked()V

    .line 664
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateUserPreferredDisplayModeSettingsLocked()V

    .line 665
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_6e

    .line 667
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayModeDirector;->setDesiredDisplayModeSpecsListener(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;)V

    .line 669
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayModeDirector;->start(Landroid/hardware/SensorManager;)V

    .line 671
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 673
    new-instance v0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$SettingsObserver;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayManagerService$SettingsObserver;

    .line 675
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->startSynchronizing()V

    .line 677
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 678
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 679
    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mIdleModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 685
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "external_display_connected"

    .line 686
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceRepository;->isExternalDisplayConnectedLocked()Z

    move-result v3

    .line 685
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 687
    return-void

    .line 665
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :catchall_6e
    move-exception v1

    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v1
.end method

.method validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 4
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 1944
    if-nez p1, :cond_3

    .line 1945
    return-void

    .line 1947
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->isBrightnessConfigurationTooDark(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1950
    return-void

    .line 1948
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "brightness curve is too dark"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public windowManagerAndInputReady()V
    .registers 5

    .line 637
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 638
    :try_start_3
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 639
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 641
    const-class v1, Landroid/hardware/devicestate/DeviceStateManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManagerInternal;

    .line 642
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v3, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 645
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 646
    monitor-exit v0

    .line 647
    return-void

    .line 646
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method
