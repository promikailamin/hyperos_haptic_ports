.class public final Lcom/android/server/display/DisplayManagerService;
.super Lcom/android/server/SystemService;
.source "DisplayManagerService.java"


# static fields
.field public static final DEBUG:Z

.field public static final EMPTY_ARRAY:[I

.field public static final HDR_CONVERSION_MODE_UNSUPPORTED:Landroid/hardware/display/HdrConversionMode;


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mAreUserDisabledHdrTypesAllowed:Z

.field public mBootCompleted:Z

.field public final mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

.field public mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field public final mCallbackRecordByPidByUid:Landroid/util/SparseArray;

.field public final mCallbacks:Landroid/util/SparseArray;

.field public final mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDefaultDisplayDefaultColorMode:I

.field public mDefaultDisplayTopInset:I

.field public final mDefaultHdrConversionMode:I

.field public mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManagerInternal;

.field public final mDisplayAccessUIDs:Landroid/util/SparseArray;

.field public final mDisplayAdapters:Ljava/util/ArrayList;

.field public final mDisplayBlanker:Lcom/android/server/display/DisplayBlanker;

.field public final mDisplayBrightnesses:Landroid/util/SparseArray;

.field public final mDisplayDeviceConfigProvider:Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

.field public final mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

.field public final mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

.field public final mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

.field public mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field public final mDisplayPowerControllers:Landroid/util/SparseArray;

.field public final mDisplayStates:Landroid/util/SparseIntArray;

.field public final mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

.field public final mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

.field public final mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

.field public final mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

.field public final mExtraDisplayEventLogging:Z

.field public final mExtraDisplayLoggingPackageName:Ljava/lang/String;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field public final mHandlerExecutor:Landroid/os/HandlerExecutor;

.field public mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

.field public final mHighBrightnessModeMetadataMapper:Lcom/android/server/display/HighBrightnessModeMetadataMapper;

.field public final mIdleModeReceiver:Landroid/content/BroadcastReceiver;

.field public mIncludeDefaultDisplayInTopology:Z

.field public final mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

.field public mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field public mIsDocked:Z

.field public mIsDreaming:Z

.field public volatile mIsHdrOutputControlEnabled:Z

.field public final mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

.field public mMaxImportanceForRRCallbacks:I

.field public mMinimalPostProcessingAllowed:Z

.field public final mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

.field public final mMinimumBrightnessSpline:Landroid/util/Spline;

.field public mMirrorBuiltInDisplay:Z

.field public final mOverlayProperties:Landroid/hardware/OverlayProperties;

.field public mPendingTraversal:Z

.field public final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field public final mPluginManager:Lcom/android/server/display/plugin/PluginManager;

.field public mPowerHandler:Landroid/os/Handler;

.field public mProjectionService:Landroid/media/projection/IMediaProjectionManager;

.field public final mResolutionRestoreReceiver:Landroid/content/BroadcastReceiver;

.field public mSafeMode:Z

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSettingsObserver:Lcom/android/server/display/DisplayManagerService$SettingsObserver;

.field public mShouldDisableHdrConversion:Z

.field public mSmallAreaDetectionController:Lcom/android/server/display/SmallAreaDetectionController;

.field public mStableDisplaySize:Landroid/graphics/Point;

.field public final mStatsLogger:Lcom/android/server/display/DisplayFrameworkStatsLogger;

.field public mSupportedHdrOutputTypes:[I

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field public mSystemPreferredHdrOutputType:I

.field public mSystemReady:Z

.field public mTaskStackListener:Landroid/app/TaskStackListener;

.field public final mTempCallbacks:Ljava/util/ArrayList;

.field public final mTempViewports:Ljava/util/ArrayList;

.field public final mUiHandler:Landroid/os/Handler;

.field public final mUidImportanceListener:Lcom/android/server/display/DisplayManagerService$UidImportanceListener;

.field public mUserDisabledHdrTypes:[I

.field public mUserPreferredMode:Landroid/view/Display$Mode;

.field public final mViewports:Ljava/util/ArrayList;

.field public mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

.field public final mWideColorSpace:Landroid/graphics/ColorSpace;

.field public mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

.field public mWifiDisplayScanRequestCount:I

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$0fXX8iUX_rY84S1y1UduidrCOrU(Lcom/android/server/display/DisplayManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->isExtendedDisplayAllowed()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$0izuyOndAF5XGRG4S7qMYS6ZXlk(Lcom/android/server/display/DisplayManagerService;Landroid/view/DisplayInfo;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$new$3(Landroid/view/DisplayInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1SrkwfatqESyJ_JWb6ssCgzMA7I(Lcom/android/server/display/DisplayManagerService;Landroid/util/Pair;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$new$1(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$35yAqZX59rs6pKz646v0ehb_Kck(Landroid/view/Display$Mode;Lcom/android/server/display/DisplayDevice;)V
    .registers 2

    .line 2912
    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$50FdRWUtmJWXhx8gebYg-4qg8Hg(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$updateUserDisabledHdrTypesFromSettingsLocked$9(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7tf03ubRkuiB1CrexudQIua9rcw(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->configurePreferredDisplayModeLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C8ulw1ylB17r_uD8s-LLxamy8DE(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/DisplayPowerController;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->addDisplayPowerControllerLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/DisplayPowerController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CuUxGDgOvDI-NbO5QjGhwUWL0Ao(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$setHdrConversionModeInternal$17(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ECKG6Y1nqh_7enUd6SVM0P5Guls(Lcom/android/server/display/DisplayManagerService;ZIILcom/android/server/display/LogicalDisplay;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->lambda$onUserSwitching$5(ZIILcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EP4JDWzqHERJtKm0uetEochkFWw(Landroid/view/Display$Mode;Lcom/android/server/display/DisplayDevice;)V
    .registers 2

    .line 1458
    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HVrd1OtYl17Ao_N9CULnc8ReHhA(Lcom/android/server/display/DisplayManagerService;[ILcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->lambda$setAreUserDisabledHdrTypesAllowedInternal$12([ILcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HpCYpMMql3VREZXy6WHZYeXkOAM(Lcom/android/server/display/DisplayManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$systemReady$6(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JnV4r7InD3bWmza-rKgFE23oYv8(Lcom/android/server/display/DisplayManagerService;[ILcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->lambda$setUserDisabledHdrTypesInternal$11([ILcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NRWSOIYnUHPMW8q-qWDJk-ZMGDo(Lcom/android/server/display/DisplayManagerService;ILcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->lambda$setupLogicalDisplay$13(ILcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XzDAwDza2sX5ltC78XSSjI0sFbg(Lcom/android/server/display/DisplayManagerService;Landroid/companion/virtual/IVirtualDevice;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->lambda$releaseDisplayAndEmitEvent$14(Landroid/companion/virtual/IVirtualDevice;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZGObHanxBSuehV2QLkmUqjl3EMo(Lcom/android/server/display/DisplayManagerService;Landroid/util/SparseArray;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/LogicalDisplay;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->lambda$performTraversalLocked$19(Landroid/util/SparseArray;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_MOSCb4vJfqCGQHQ8aqZ4yYJpvc(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$setHdrConversionModeInternal$16(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_TwuDCH-46XSGbai_xGIIZslaF4(Ljava/io/PrintWriter;Landroid/util/IndentingPrintWriter;Lcom/android/server/display/DisplayDevice;)V
    .registers 5

    .line 3946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3947
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$frT8zKQw5t96b-f10Yc_5-FXzSc(Lcom/android/server/display/DisplayManagerService;I)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$new$0(I)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jG5q-gISxai2bT9ibL6Vsz7nei4(Lcom/android/server/display/DisplayManagerService;I)Landroid/view/DisplayInfo;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$new$2(I)Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pf-2ndV6xdMoUyAS8eLX8lSMe1w(Lcom/android/server/display/DisplayManagerService;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->lambda$scheduleTopologiesReload$7(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$sjbUs6a5Uhwh93dIG8AB6Gz4_XI(Lcom/android/server/display/DisplayManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->lambda$new$4()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wEilnHKnr9GZ1ipXq8emzmYq3Bw(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$resetBrightnessConfigurations$20(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wzaRrqTvF8peyjY-M_hCUUw89OU(Lcom/android/server/display/DisplayManagerService;ZLcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->lambda$updateMirrorBuiltInDisplaySettingLocked$8(ZLcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zD88rFb_rytBq-4bihh-zA2dkR8(Lcom/android/server/display/DisplayManagerService;ILcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->lambda$loadBrightnessConfigurations$18(ILcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zrOK883xh6g6EZqGzbqnCeh4iFc(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$addDisplayPowerControllerLocked$22(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/display/DisplayManagerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAreUserDisabledHdrTypesAllowed(Lcom/android/server/display/DisplayManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbackRecordByPidByUid(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mCallbackRecordByPidByUid:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/display/DisplayManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceStateManager(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/devicestate/DeviceStateManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayDeviceConfigProvider(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceConfigProvider:Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayDeviceRepo(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayDeviceRepository;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayGroupListeners(Lcom/android/server/display/DisplayManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayModeDirector(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/mode/DisplayModeDirector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayNotificationManager(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/notifications/DisplayNotificationManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayPowerCallbacks(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayPowerControllers(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayStates(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayTopologyCoordinator(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayTopologyCoordinator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExternalDisplayPolicy(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/ExternalDisplayPolicy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExternalDisplayStatsService(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/ExternalDisplayStatsService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFlags(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/feature/DisplayManagerFlags;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$Injector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputManagerInternal(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/input/InputManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDocked(Lcom/android/server/display/DisplayManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mIsDocked:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDreaming(Lcom/android/server/display/DisplayManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mIsDreaming:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsHdrOutputControlEnabled(Lcom/android/server/display/DisplayManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mIsHdrOutputControlEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxImportanceForRRCallbacks(Lcom/android/server/display/DisplayManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/DisplayManagerService;->mMaxImportanceForRRCallbacks:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/SensorManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempViewports(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserDisabledHdrTypes(Lcom/android/server/display/DisplayManagerService;)[I
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmViewports(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDisplayAdapter(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/VirtualDisplayAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayPowerCallbacks(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsDocked(Lcom/android/server/display/DisplayManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mIsDocked:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsDreaming(Lcom/android/server/display/DisplayManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mIsDreaming:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPowerHandler(Lcom/android/server/display/DisplayManagerService;Landroid/os/Handler;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mPowerHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSensorManager(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/SensorManager;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCallingPermission(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mconnectWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->connectWifiDisplayInternal(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;I)I
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/display/DisplayManagerService;->createVirtualDisplayInternal(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdeliverDisplayEvent(Lcom/android/server/display/DisplayManagerService;ILandroid/util/ArraySet;ILcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->deliverDisplayEvent(ILandroid/util/ArraySet;ILcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeliverDisplayGroupEvent(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->deliverDisplayGroupEvent(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisconnectWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->disconnectWifiDisplayInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchPendingProcessEvents(Lcom/android/server/display/DisplayManagerService;Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->dispatchPendingProcessEvents(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mextraLogging(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->extraLogging(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mforgetWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->forgetWifiDisplayInternal(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetBrightnessConfigForDisplayWithPdsFallbackLocked(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getBrightnessConfigForDisplayWithPdsFallbackLocked(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetBrightnessInfoInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/hardware/display/BrightnessInfo;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getBrightnessInfoInternal(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetBrightnessInternal(Lcom/android/server/display/DisplayManagerService;I)F
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getBrightnessInternal(I)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetConnectionPreferenceInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getConnectionPreferenceInternal(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetDeviceForDisplayLocked(Lcom/android/server/display/DisplayManagerService;I)Lcom/android/server/display/DisplayDevice;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDisplayDecorationSupportInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayDecorationSupportInternal(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDisplayInfoInternal(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(II)Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDisplayToken(Lcom/android/server/display/DisplayManagerService;I)Landroid/os/IBinder;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDpcFromUniqueIdLocked(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)Lcom/android/server/display/DisplayPowerController;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDpcFromUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayPowerController;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetNonOverrideDisplayInfoInternal(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getNonOverrideDisplayInfoInternal(ILandroid/view/DisplayInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetStableDisplaySizeInternal(Lcom/android/server/display/DisplayManagerService;)Landroid/graphics/Point;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getStableDisplaySizeInternal()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSupportedHdrOutputTypesInternal(Lcom/android/server/display/DisplayManagerService;)[I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getSupportedHdrOutputTypesInternal()[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserManager(Lcom/android/server/display/DisplayManagerService;)Landroid/os/UserManager;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetWifiDisplayStatusInternal(Lcom/android/server/display/DisplayManagerService;Z)Landroid/hardware/display/WifiDisplayStatus;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getWifiDisplayStatusInternal(Z)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleIncludeDefaultDisplayInTopologySettingChangeLocked(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->handleIncludeDefaultDisplayInTopologySettingChangeLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplayAddedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayAddedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplayChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplayCommittedStateChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayCommittedStateChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplayConnectedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayConnectedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplayDeviceStateTransitionLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayDeviceStateTransitionLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplayDisconnectedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayDisconnectedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplayFrameRateOverridesChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayFrameRateOverridesChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplayHdrSdrRatioChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayHdrSdrRatioChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplayRefreshRateChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayRefreshRateChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplayRemovedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayRemovedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplayStateChangedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayStateChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLogicalDisplaySwappedLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplaySwappedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMinimalPostProcessingAllowedSettingChange(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->handleMinimalPostProcessingAllowedSettingChange()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitializeDisplayPowerControllersLocked(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->initializeDisplayPowerControllersLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misUidPresentOnDisplayInternal(Lcom/android/server/display/DisplayManagerService;II)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mloadBrightnessConfigurations(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->loadBrightnessConfigurations()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monCallbackDied(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpauseWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->pauseWifiDisplayInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterAdditionalDisplayAdapters(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->registerAdditionalDisplayAdapters()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterCallbackInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IDisplayManagerCallback;IIJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/display/DisplayManagerService;->registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;IIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterDefaultDisplayAdapters(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->registerDefaultDisplayAdapters()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterDisplayTransactionListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreleaseVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->releaseVirtualDisplayInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrenameWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestColorModeInternal(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->requestColorModeInternal(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;IIFF)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->requestDisplayStateInternal(IIFF)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresizeVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;III)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestoreResolutionFromBackup(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->restoreResolutionFromBackup()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresumeWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->resumeWifiDisplayInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleTopologiesReload(Lcom/android/server/display/DisplayManagerService;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->scheduleTopologiesReload(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleTraversalLocked(Lcom/android/server/display/DisplayManagerService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendDisplayEventLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendDisplayGroupEvent(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayGroupEvent(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBrightnessConfigurationForDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBrightnessInternal(Lcom/android/server/display/DisplayManagerService;IF)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setBrightnessInternal(IF)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetConnectionPreferenceInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setConnectionPreferenceInternal(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisplayAccessUIDsInternal(Lcom/android/server/display/DisplayManagerService;Landroid/util/SparseArray;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setDisplayAccessUIDsInternal(Landroid/util/SparseArray;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisplayOffsetsInternal(Lcom/android/server/display/DisplayManagerService;III)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->setDisplayOffsetsInternal(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisplayScalingDisabledInternal(Lcom/android/server/display/DisplayManagerService;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setDisplayScalingDisabledInternal(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetVirtualDisplayRotationInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setVirtualDisplayRotationInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetVirtualDisplaySurfaceInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartWifiDisplayScanInternal(Lcom/android/server/display/DisplayManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopWifiDisplayScanInternal(Lcom/android/server/display/DisplayManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msystemScreenshotInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->systemScreenshotInternal(I)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msystemScreenshotInternal(Lcom/android/server/display/DisplayManagerService;ILandroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->systemScreenshotInternal(ILandroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterDisplayTransactionListenerInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMirrorBuiltInDisplaySettingLocked(Lcom/android/server/display/DisplayManagerService;Z)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateMirrorBuiltInDisplaySettingLocked(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$muserScreenshotInternal(Lcom/android/server/display/DisplayManagerService;I)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->userScreenshotInternal(I)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetEMPTY_ARRAY()[I
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/display/DisplayManagerService;->EMPTY_ARRAY:[I

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetHDR_CONVERSION_MODE_UNSUPPORTED()Landroid/hardware/display/HdrConversionMode;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/display/DisplayManagerService;->HDR_CONVERSION_MODE_UNSUPPORTED:Landroid/hardware/display/HdrConversionMode;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 273
    const-string v0, "DisplayManagerService"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    const/4 v0, 0x0

    .line 297
    new-array v1, v0, [I

    sput-object v1, Lcom/android/server/display/DisplayManagerService;->EMPTY_ARRAY:[I

    .line 298
    new-instance v1, Landroid/hardware/display/HdrConversionMode;

    invoke-direct {v1, v0}, Landroid/hardware/display/HdrConversionMode;-><init>(I)V

    sput-object v1, Lcom/android/server/display/DisplayManagerService;->HDR_CONVERSION_MODE_UNSUPPORTED:Landroid/hardware/display/HdrConversionMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 644
    new-instance v0, Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 649
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 312
    new-instance v1, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;

    const/4 v10, 0x0

    invoke-direct {v1, v0, v10}, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService-IA;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mUidImportanceListener:Lcom/android/server/display/DisplayManagerService$UidImportanceListener;

    .line 314
    new-instance v1, Lcom/android/server/display/DisplayFrameworkStatsLogger;

    invoke-direct {v1}, Lcom/android/server/display/DisplayFrameworkStatsLogger;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mStatsLogger:Lcom/android/server/display/DisplayFrameworkStatsLogger;

    const/4 v11, 0x0

    .line 319
    new-array v1, v11, [I

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    const/4 v12, 0x1

    .line 323
    iput-boolean v12, v0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 335
    iput-object v10, v0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 338
    iput-boolean v11, v0, Lcom/android/server/display/DisplayManagerService;->mShouldDisableHdrConversion:Z

    const/4 v13, -0x1

    .line 339
    iput v13, v0, Lcom/android/server/display/DisplayManagerService;->mSystemPreferredHdrOutputType:I

    .line 348
    new-instance v6, Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-direct {v6}, Lcom/android/server/display/DisplayManagerService$SyncRoot;-><init>()V

    iput-object v6, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 355
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 359
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mCallbackRecordByPidByUid:Landroid/util/SparseArray;

    .line 367
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    .line 373
    new-instance v1, Lcom/android/server/display/HighBrightnessModeMetadataMapper;

    invoke-direct {v1}, Lcom/android/server/display/HighBrightnessModeMetadataMapper;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mHighBrightnessModeMetadataMapper:Lcom/android/server/display/HighBrightnessModeMetadataMapper;

    .line 377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    .line 392
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 396
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 400
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/16 v1, 0xc8

    .line 403
    iput v1, v0, Lcom/android/server/display/DisplayManagerService;->mMaxImportanceForRRCallbacks:I

    .line 406
    new-instance v1, Lcom/android/server/display/DisplayManagerService$1;

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayManagerService$1;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 464
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    .line 468
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    .line 491
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 504
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    .line 512
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 516
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    .line 523
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 554
    iput-boolean v11, v0, Lcom/android/server/display/DisplayManagerService;->mBootCompleted:Z

    .line 566
    new-instance v1, Lcom/android/server/display/DisplayManagerService$2;

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayManagerService$2;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mIdleModeReceiver:Landroid/content/BroadcastReceiver;

    .line 586
    new-instance v1, Lcom/android/server/display/DisplayManagerService$3;

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayManagerService$3;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mResolutionRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 598
    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceConfigProvider:Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

    .line 650
    new-instance v3, Lcom/android/server/utils/FoldSettingProvider;

    new-instance v4, Lcom/android/internal/util/SettingsWrapper;

    invoke-direct {v4}, Lcom/android/internal/util/SettingsWrapper;-><init>()V

    new-instance v5, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;

    .line 652
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v3, v2, v4, v5}, Lcom/android/server/utils/FoldSettingProvider;-><init>(Landroid/content/Context;Lcom/android/internal/util/SettingsWrapper;Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;)V

    .line 653
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v5, p2

    .line 654
    iput-object v5, v0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 655
    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 656
    invoke-virtual {v5}, Lcom/android/server/display/DisplayManagerService$Injector;->getFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 657
    new-instance v7, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-direct {v7, v0, v4}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V

    iput-object v7, v0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 658
    new-instance v9, Landroid/os/HandlerExecutor;

    invoke-direct {v9, v7}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v9, v0, Lcom/android/server/display/DisplayManagerService;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 659
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    .line 660
    invoke-virtual {v5}, Lcom/android/server/display/DisplayManagerService$Injector;->getPersistentDataStore()Lcom/android/server/display/PersistentDataStore;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    move-object v9, v4

    .line 661
    new-instance v4, Lcom/android/server/display/DisplayDeviceRepository;

    invoke-direct {v4, v6, v5}, Lcom/android/server/display/DisplayDeviceRepository;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Lcom/android/server/display/PersistentDataStore;)V

    iput-object v4, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 662
    invoke-virtual {v8}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayTopologyEnabled()Z

    move-result v5

    if-eqz v5, :cond_142

    .line 663
    new-instance v5, Landroid/app/backup/BackupManager;

    invoke-direct {v5, v2}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 664
    new-instance v14, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v14, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    move-object/from16 v17, v14

    .line 675
    new-instance v14, Lcom/android/server/display/DisplayTopologyCoordinator;

    new-instance v15, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v15, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    move/from16 v23, v12

    new-instance v12, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v12, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    new-instance v11, Landroid/os/HandlerExecutor;

    invoke-direct {v11, v7}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 678
    new-instance v13, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v13, v5}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda7;-><init>(Landroid/app/backup/BackupManager;)V

    new-instance v5, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v5, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    move-object/from16 v22, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v8

    move-object/from16 v18, v11

    move-object/from16 v16, v12

    move-object/from16 v20, v13

    invoke-direct/range {v14 .. v22}, Lcom/android/server/display/DisplayTopologyCoordinator;-><init>(Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Lcom/android/server/display/DisplayManagerService$SyncRoot;Ljava/lang/Runnable;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayManagerService$DisplayInfoProvider;)V

    iput-object v14, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    :goto_140
    move-object v5, v9

    goto :goto_14b

    :cond_142
    move-object/from16 v19, v6

    move-object/from16 v21, v8

    move/from16 v23, v12

    .line 681
    iput-object v10, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    goto :goto_140

    .line 683
    :goto_14b
    new-instance v9, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v9, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    move-object v6, v1

    .line 686
    new-instance v1, Lcom/android/server/display/LogicalDisplayMapper;

    move-object v8, v5

    new-instance v5, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;

    invoke-direct {v5, v0, v10}, Lcom/android/server/display/DisplayManagerService$LogicalDisplayListener;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService-IA;)V

    move-object v11, v6

    move-object v12, v8

    move-object/from16 v6, v19

    move-object/from16 v8, v21

    invoke-direct/range {v1 .. v9}, Lcom/android/server/display/LogicalDisplayMapper;-><init>(Landroid/content/Context;Lcom/android/server/utils/FoldSettingProvider;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/LogicalDisplayMapper$Listener;Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;Ljava/util/function/Predicate;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 689
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-direct {v1, v2, v7, v8, v11}, Lcom/android/server/display/mode/DisplayModeDirector;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 691
    new-instance v1, Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-direct {v1, v2, v12}, Lcom/android/internal/display/BrightnessSynchronizer;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

    .line 692
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 693
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    .line 695
    const-string/jumbo v3, "persist.sys.displayinset.top"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    .line 696
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110186

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_19d

    move/from16 v3, v23

    goto :goto_19e

    :cond_19d
    const/4 v3, 0x2

    .line 699
    :goto_19e
    iput v3, v0, Lcom/android/server/display/DisplayManagerService;->mDefaultHdrConversionMode:I

    const v3, 0x10700a6

    .line 700
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v3

    const v4, 0x10700a7

    .line 702
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    .line 704
    new-instance v4, Landroid/hardware/display/Curve;

    invoke-direct {v4, v3, v1}, Landroid/hardware/display/Curve;-><init>([F[F)V

    iput-object v4, v0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    .line 705
    invoke-static {v3, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    const/4 v1, 0x0

    .line 707
    iput v1, v0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    .line 708
    invoke-static {}, Landroid/view/SurfaceControl;->getCompositionColorSpaces()[Landroid/graphics/ColorSpace;

    move-result-object v3

    .line 709
    aget-object v3, v3, v23

    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mWideColorSpace:Landroid/graphics/ColorSpace;

    .line 710
    invoke-static {}, Landroid/view/SurfaceControl;->getOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mOverlayProperties:Landroid/hardware/OverlayProperties;

    .line 711
    iput-boolean v1, v0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 712
    new-instance v1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    sget-object v3, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    invoke-direct {v1, v3}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 713
    invoke-static {}, Landroid/sysprop/DisplayProperties;->debug_vri_package()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayLoggingPackageName:Ljava/lang/String;

    .line 714
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayEventLogging:Z

    .line 715
    new-instance v1, Lcom/android/server/display/ExternalDisplayStatsService;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-direct {v1, v2, v7, v3}, Lcom/android/server/display/ExternalDisplayStatsService;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/function/BooleanSupplier;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 717
    new-instance v3, Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-direct {v3, v8, v2, v1}, Lcom/android/server/display/notifications/DisplayNotificationManager;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Lcom/android/server/display/ExternalDisplayStatsService;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 719
    new-instance v1, Lcom/android/server/display/ExternalDisplayPolicy;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;

    invoke-direct {v3, v0, v10}, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService-IA;)V

    invoke-direct {v1, v3}, Lcom/android/server/display/ExternalDisplayPolicy;-><init>(Lcom/android/server/display/ExternalDisplayPolicy$Injector;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 720
    new-instance v1, Lcom/android/server/display/plugin/PluginManager;

    invoke-direct {v1, v2, v8}, Lcom/android/server/display/plugin/PluginManager;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mPluginManager:Lcom/android/server/display/plugin/PluginManager;

    return-void
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1873
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 1876
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from pid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1877
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " requires "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1878
    const-string p1, "DisplayManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 15

    .line 3877
    const-string v0, "DISPLAY MANAGER (dumpsys display)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3879
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3882
    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, "    "

    invoke-direct {v1, p1, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3883
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3885
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 3886
    :try_start_17
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 3888
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_21
    if-ge v6, v4, :cond_3a

    .line 3890
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 3891
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/DisplayPowerController;

    .line 3890
    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :catchall_37
    move-exception p0

    goto/16 :goto_39a

    .line 3894
    :cond_3a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSafeMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3895
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mPendingTraversal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3896
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mViewports="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3897
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDefaultDisplayDefaultColorMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3898
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mWifiDisplayScanRequestCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3899
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mStableDisplaySize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3900
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mMinimumBrightnessCurve="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3901
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mMaxImportanceForRRCallbacks="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/display/DisplayManagerService;->mMaxImportanceForRRCallbacks:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3902
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mMirrorBuiltInDisplaySetting="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/display/DisplayManagerService;->mMirrorBuiltInDisplay:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3904
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    if-eqz v6, :cond_11a

    .line 3905
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mUserPreferredMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3908
    :cond_11a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3909
    iget-boolean v6, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-nez v6, :cond_157

    .line 3910
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mUserDisabledHdrTypes: size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3911
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    array-length v7, v6

    move v8, v5

    :goto_13c
    if-ge v8, v7, :cond_157

    aget v9, v6, v8

    .line 3912
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_13c

    .line 3916
    :cond_157
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    if-eqz v6, :cond_171

    .line 3917
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mHdrConversionMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3920
    :cond_171
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3921
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    .line 3922
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Display States: size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3923
    const-string v7, "---------------------"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v7, v5

    :goto_194
    if-ge v7, v6, :cond_205

    .line 3925
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 3926
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 3927
    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    .line 3928
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Display Id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3929
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Display State="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3930
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Display Brightness="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3931
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Display SdrBrightness="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_194

    .line 3934
    :cond_205
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3935
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display Adapters: size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3936
    const-string v6, "------------------------"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3937
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v5

    :goto_22e
    if-ge v8, v7, :cond_254

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/server/display/DisplayAdapter;

    .line 3938
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/display/DisplayAdapter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3939
    invoke-virtual {v9, v1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_22e

    .line 3942
    :cond_254
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3943
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display Devices: size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v7}, Lcom/android/server/display/DisplayDeviceRepository;->sizeLocked()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3944
    const-string v6, "-----------------------"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3945
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    new-instance v7, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v7, p1, v1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda19;-><init>(Ljava/io/PrintWriter;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v6, v7}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 3950
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3951
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v6, p1}, Lcom/android/server/display/LogicalDisplayMapper;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 3953
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 3954
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3955
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Callbacks: size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3956
    const-string v7, "-----------------"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v7, v5

    :goto_2ab
    if-ge v7, v6, :cond_2d8

    .line 3958
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-static {v9}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->-$$Nest$mdump(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2ab

    .line 3961
    :cond_2d8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3962
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v6, p1}, Lcom/android/server/display/PersistentDataStore;->dump(Ljava/io/PrintWriter;)V

    .line 3964
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 3965
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3966
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Display Window Policy Controllers: size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v7, v5

    :goto_2fe
    if-ge v7, v6, :cond_333

    .line 3969
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Display "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3970
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/window/DisplayWindowPolicyController;

    const-string v9, "  "

    invoke-virtual {v8, v9, p1}, Landroid/window/DisplayWindowPolicyController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2fe

    .line 3972
    :cond_333
    monitor-exit v2
    :try_end_334
    .catchall {:try_start_17 .. :try_end_334} :catchall_37

    .line 3973
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3974
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display Power Controllers: size="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_34b
    if-ge v5, v4, :cond_359

    .line 3976
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayPowerController;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_34b

    :cond_359
    if-eqz v3, :cond_361

    .line 3980
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3981
    invoke-virtual {v3, p1}, Lcom/android/server/display/BrightnessTracker;->dump(Ljava/io/PrintWriter;)V

    .line 3983
    :cond_361
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3984
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->dump(Ljava/io/PrintWriter;)V

    .line 3985
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3986
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-virtual {v0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->dump(Ljava/io/PrintWriter;)V

    .line 3987
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSmallAreaDetectionController:Lcom/android/server/display/SmallAreaDetectionController;

    if-eqz v0, :cond_37d

    .line 3988
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3989
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSmallAreaDetectionController:Lcom/android/server/display/SmallAreaDetectionController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/SmallAreaDetectionController;->dump(Ljava/io/PrintWriter;)V

    .line 3992
    :cond_37d
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    if-eqz v0, :cond_389

    .line 3993
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3994
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->dump(Ljava/io/PrintWriter;)V

    .line 3996
    :cond_389
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3997
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPluginManager:Lcom/android/server/display/plugin/PluginManager;

    invoke-virtual {v0, v1}, Lcom/android/server/display/plugin/PluginManager;->dump(Ljava/io/PrintWriter;)V

    .line 3999
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4000
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {p0, p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->dump(Ljava/io/PrintWriter;)V

    return-void

    .line 3972
    :goto_39a
    :try_start_39a
    monitor-exit v2
    :try_end_39b
    .catchall {:try_start_39a .. :try_end_39b} :catchall_37

    throw p0
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5

    .line 4004
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 4005
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_14

    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 4007
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 4009
    :cond_14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static isResolutionAndRefreshRateValid(Landroid/view/Display$Mode;)Z
    .registers 2

    .line 4014
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    if-lez v0, :cond_17

    .line 4015
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private validatePackageName(ILjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p2, :cond_23

    .line 1818
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 1820
    array-length p1, p0

    move v2, v1

    :goto_15
    if-ge v2, p1, :cond_23

    aget-object v3, p0, v2

    .line 1821
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    return v0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_23
    return v1
.end method


# virtual methods
.method public final addDisplayPowerControllerLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/DisplayPowerController;
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 4190
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mPowerHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    .line 4195
    :cond_a
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez v1, :cond_1d

    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    if-nez v1, :cond_1d

    .line 4196
    new-instance v1, Lcom/android/server/display/BrightnessTracker;

    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Lcom/android/server/display/BrightnessTracker;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessTracker$Injector;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 4199
    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v1

    .line 4200
    new-instance v10, Lcom/android/server/display/BrightnessSetting;

    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-direct {v10, v1, v2, v8, v3}, Lcom/android/server/display/BrightnessSetting;-><init>(ILcom/android/server/display/PersistentDataStore;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayManagerService$SyncRoot;)V

    .line 4209
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mHighBrightnessModeMetadataMapper:Lcom/android/server/display/HighBrightnessModeMetadataMapper;

    .line 4210
    invoke-virtual {v1, v8}, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->getHighBrightnessModeMetadataLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/HighBrightnessModeMetadata;

    move-result-object v12

    .line 4211
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v5, v0, Lcom/android/server/display/DisplayManagerService;->mPowerHandler:Landroid/os/Handler;

    iget-object v6, v0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v7, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayBlanker:Lcom/android/server/display/DisplayBlanker;

    iget-object v9, v0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    new-instance v11, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v11, v0, v8}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    iget-boolean v13, v0, Lcom/android/server/display/DisplayManagerService;->mBootCompleted:Z

    iget-object v14, v0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v15, v0, Lcom/android/server/display/DisplayManagerService;->mPluginManager:Lcom/android/server/display/plugin/PluginManager;

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v15}, Lcom/android/server/display/DisplayManagerService$Injector;->getDisplayPowerController(Landroid/content/Context;Lcom/android/server/display/DisplayPowerController$Injector;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;ZLcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/plugin/PluginManager;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    .line 4216
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v1
.end method

.method public final applyDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 4

    .line 2564
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    const/4 v1, 0x0

    .line 2565
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 2566
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2568
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    if-eqz v0, :cond_27

    .line 2570
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getLeadDisplayIdLocked()I

    move-result v1

    .line 2571
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayManagerService;->updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerController;I)V

    .line 2573
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHighBrightnessModeMetadataMapper:Lcom/android/server/display/HighBrightnessModeMetadataMapper;

    .line 2574
    invoke-virtual {p0, p1}, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->getHighBrightnessModeMetadataLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/HighBrightnessModeMetadata;

    move-result-object p0

    .line 2575
    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController;->onDisplayChanged(Lcom/android/server/display/HighBrightnessModeMetadata;I)V

    :cond_27
    return-void
.end method

.method public final canCreateMirrorDisplays(Landroid/companion/virtual/IVirtualDevice;)Z
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_13

    .line 1841
    :try_start_3
    invoke-interface {p1}, Landroid/companion/virtual/IVirtualDevice;->canCreateMirrorDisplays()Z

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_7} :catch_b

    if-eqz p1, :cond_13

    const/4 p0, 0x1

    return p0

    :catch_b
    move-exception p1

    .line 1843
    const-string v0, "DisplayManagerService"

    const-string v1, "Unable to query virtual device for permissions"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    return p0
.end method

.method public final canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1865
    :cond_4
    :try_start_4
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectSecureVideo()Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p1

    .line 1867
    const-string v0, "DisplayManagerService"

    const-string v1, "Unable to query projection service for permissions"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public final canProjectVideo(Landroid/media/projection/IMediaProjection;)Z
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1853
    :cond_4
    :try_start_4
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectVideo()Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p1

    .line 1855
    const-string v0, "DisplayManagerService"

    const-string v1, "Unable to query projection service for permissions"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public final clampBrightness(IF)F
    .registers 4

    .line 0
    const/4 p0, 0x1

    const/high16 v0, -0x40800000    # -1.0f

    if-ne p1, p0, :cond_6

    return v0

    :cond_6
    cmpl-float p0, p2, v0

    if-eqz p0, :cond_12

    const/4 p0, 0x0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_12

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :cond_12
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p1, p2, p0

    if-lez p1, :cond_19

    return p0

    :cond_19
    return p2
.end method

.method public final clearUserDisabledHdrTypesLocked()V
    .registers 4

    .line 1440
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1441
    :try_start_4
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 1442
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "user_disabled_hdr_formats"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1444
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final clearViewportsLocked()V
    .registers 1

    .line 3575
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final configureColorModeLocked(Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V
    .registers 4

    .line 2741
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    if-ne v0, p2, :cond_1c

    .line 2742
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p2}, Lcom/android/server/display/PersistentDataStore;->getColorMode(Lcom/android/server/display/DisplayDevice;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_19

    .line 2744
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p2

    if-nez p2, :cond_18

    .line 2745
    iget p2, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    goto :goto_19

    :cond_18
    const/4 p2, 0x0

    .line 2750
    :cond_19
    :goto_19
    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplay;->setRequestedColorModeLocked(I)V

    :cond_1c
    return-void
.end method

.method public final configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;)V
    .registers 7

    .line 3599
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 3603
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    if-nez v1, :cond_27

    .line 3608
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Missing logical display to use for physical display device: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3609
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3608
    const-string p1, "DisplayManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3612
    :cond_27
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    invoke-virtual {v1, p1, p2, v3}, Lcom/android/server/display/LogicalDisplay;->configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V

    .line 3613
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;

    move-result-object p1

    .line 3614
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 3615
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/server/display/DisplayManagerService;->populateViewportLocked(IILcom/android/server/display/DisplayDevice;Lcom/android/server/display/DisplayDeviceInfo;)V

    :cond_4c
    return-void
.end method

.method public final configurePreferredDisplayModeLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 2755
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    .line 2756
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getStoredUserPreferredModeLocked(Lcom/android/server/display/DisplayDevice;)Landroid/view/Display$Mode;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 2758
    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    :cond_d
    return-void
.end method

.method public final connectWifiDisplayInternal(Ljava/lang/String;)V
    .registers 3

    .line 1653
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1654
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_d

    .line 1655
    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(Ljava/lang/String;)V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_f

    .line 1657
    :cond_d
    :goto_d
    monitor-exit v0

    return-void

    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_b

    throw p0
.end method

.method public final createVirtualDisplayInternal(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;I)I
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    move-object/from16 v5, p6

    move/from16 v4, p7

    .line 1886
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1887
    invoke-direct {v1, v4, v5}, Lcom/android/server/display/DisplayManagerService;->validatePackageName(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_369

    if-eqz p2, :cond_361

    if-eqz v11, :cond_358

    .line 1896
    invoke-virtual {v11}, Landroid/hardware/display/VirtualDisplayConfig;->getSurface()Landroid/view/Surface;

    move-result-object v9

    .line 1897
    invoke-virtual {v11}, Landroid/hardware/display/VirtualDisplayConfig;->getFlags()I

    move-result v2

    if-eqz v7, :cond_5a

    .line 1899
    iget-object v6, v1, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/companion/virtual/VirtualDeviceManager;

    if-eqz v6, :cond_5a

    .line 1902
    :try_start_30
    invoke-interface {v7}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/companion/virtual/VirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    move-result v6
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_38} :catch_52

    if-eqz v6, :cond_4a

    .line 1908
    const-class v6, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 1909
    invoke-virtual {v1, v6}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v6, :cond_5a

    .line 1911
    invoke-virtual {v6, v7}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getBaseVirtualDisplayFlags(Landroid/companion/virtual/IVirtualDevice;)I

    move-result v6

    or-int/2addr v2, v6

    goto :goto_5a

    .line 1903
    :cond_4a
    :try_start_4a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid virtual device"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_52} :catch_52

    .line 1906
    :catch_52
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Unable to validate virtual device"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    :goto_5a
    if-eqz v9, :cond_6b

    .line 1916
    invoke-virtual {v9}, Landroid/view/Surface;->isSingleBuffered()Z

    move-result v6

    if-nez v6, :cond_63

    goto :goto_6b

    .line 1917
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface can\'t be single-buffered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    :goto_6b
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_89

    and-int/lit8 v6, v2, 0x8

    if-nez v6, :cond_7c

    .line 1922
    const-string v6, "DisplayManagerService"

    const-string v8, "Public virtual displays are auto mirror by default, hence adding VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR."

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v2, v2, 0x10

    :cond_7c
    and-int/lit8 v6, v2, 0x20

    if-nez v6, :cond_81

    goto :goto_89

    .line 1929
    :cond_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Public display must not be marked as SHOW_WHEN_LOCKED_INSECURE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_89
    :goto_89
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_9a

    and-int/lit8 v6, v2, 0x10

    if-eqz v6, :cond_9a

    .line 1935
    const-string v6, "DisplayManagerService"

    const-string v8, "Own content displays cannot auto mirror other displays, hence ignoring VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR."

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v2, v2, -0x11

    :cond_9a
    and-int/lit8 v6, v2, 0x10

    if-eqz v6, :cond_ab

    and-int/lit16 v6, v2, 0x800

    if-eqz v6, :cond_ab

    .line 1941
    const-string v6, "DisplayManagerService"

    const-string v8, "Auto mirror displays must be in the default display group, hence ignoring VIRTUAL_DISPLAY_FLAG_OWN_DISPLAY_GROUP."

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v2, v2, -0x801

    :cond_ab
    and-int/lit16 v6, v2, 0x800

    const v8, 0x8000

    if-nez v6, :cond_c6

    and-int/lit8 v6, v2, 0x10

    if-nez v6, :cond_c6

    and-int/lit16 v6, v2, 0x400

    const/16 v10, 0x400

    if-ne v6, v10, :cond_c6

    if-eqz v7, :cond_c6

    .line 1952
    const-string v6, "DisplayManagerService"

    const-string v10, "Own content displays owned by virtual devices are put in that device\'s display group, hence adding VIRTUAL_DISPLAY_FLAG_DEVICE_DISPLAY_GROUP."

    invoke-static {v6, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/2addr v2, v8

    .line 1961
    :cond_c6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const/4 v6, 0x0

    const/4 v10, 0x1

    if-eqz v3, :cond_10c

    .line 1964
    :try_start_ce
    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v14

    invoke-interface {v14, v3}, Landroid/media/projection/IMediaProjectionManager;->isCurrentProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v14

    if-eqz v14, :cond_f8

    .line 1968
    invoke-interface {v3}, Landroid/media/projection/IMediaProjection;->isValid()Z

    move-result v14

    if-nez v14, :cond_f2

    .line 1970
    const-string v14, "DisplayManagerService"

    const-string v15, "Reusing token: create virtual display for app reusing token"

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v14

    invoke-interface {v14, v3}, Landroid/media/projection/IMediaProjectionManager;->requestConsentForInvalidProjection(Landroid/media/projection/IMediaProjection;)V

    move v14, v10

    goto :goto_f3

    :catchall_ee
    move-exception v0

    goto :goto_108

    :catch_f0
    move-exception v0

    goto :goto_100

    :cond_f2
    move v14, v6

    .line 1977
    :goto_f3
    invoke-interface {v3, v2}, Landroid/media/projection/IMediaProjection;->applyVirtualDisplayFlags(I)I

    move-result v2

    goto :goto_10d

    .line 1965
    :cond_f8
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot create VirtualDisplay with non-current MediaProjection"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_100
    .catch Landroid/os/RemoteException; {:try_start_ce .. :try_end_100} :catch_f0
    .catchall {:try_start_ce .. :try_end_100} :catchall_ee

    .line 1980
    :goto_100
    :try_start_100
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Unable to validate media projection or flags"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_108
    .catchall {:try_start_100 .. :try_end_108} :catchall_ee

    .line 1982
    :goto_108
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1983
    throw v0

    :cond_10c
    move v14, v6

    .line 1982
    :goto_10d
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v12, 0x3e8

    if-eq v0, v12, :cond_135

    and-int/lit8 v13, v2, 0x10

    if-eqz v13, :cond_135

    .line 1988
    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayManagerService;->canProjectVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v13

    if-nez v13, :cond_135

    invoke-virtual {v1, v7}, Lcom/android/server/display/DisplayManagerService;->canCreateMirrorDisplays(Landroid/companion/virtual/IVirtualDevice;)Z

    move-result v13

    if-nez v13, :cond_135

    const-string v13, "createVirtualDisplayInternal"

    .line 1989
    invoke-virtual {v1, v13}, Lcom/android/server/display/DisplayManagerService;->hasVideoOutputPermission(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12d

    goto :goto_135

    .line 1990
    :cond_12d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ADD_MIRROR_DISPLAY, CAPTURE_VIDEO_OUTPUT or CAPTURE_SECURE_VIDEO_OUTPUT permission, or an appropriate MediaProjection token in order to create a screen sharing virtual display. In order to create a virtual display that does not perform screen sharing (mirroring), please use the flag VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_135
    :goto_135
    if-eq v0, v12, :cond_152

    and-int/lit8 v13, v2, 0x4

    if-eqz v13, :cond_152

    .line 1999
    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayManagerService;->canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v13

    if-nez v13, :cond_152

    const-string v13, "createVirtualDisplayInternal"

    .line 2000
    invoke-virtual {v1, v13}, Lcom/android/server/display/DisplayManagerService;->hasSecureVideoOutputPermission(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14a

    goto :goto_152

    .line 2001
    :cond_14a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CAPTURE_SECURE_VIDEO_OUTPUT or an appropriate MediaProjection token to create a secure virtual display."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_152
    :goto_152
    if-eq v0, v12, :cond_17d

    and-int/lit16 v13, v2, 0x400

    if-eqz v13, :cond_17d

    .line 2008
    const-string v13, "android.permission.ADD_TRUSTED_DISPLAY"

    const-string v15, "createVirtualDisplay()"

    invoke-direct {v1, v13, v15}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_163

    goto :goto_17d

    .line 2009
    :cond_163
    const-string v1, "162627132"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Attempt to create a trusted display without holding permission!"

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2011
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ADD_TRUSTED_DISPLAY permission to create a trusted virtual display."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17d
    :goto_17d
    if-eqz v7, :cond_190

    and-int/lit8 v13, v2, 0x10

    if-eqz v13, :cond_190

    and-int/lit8 v13, v2, 0x2

    if-eqz v13, :cond_190

    .line 2020
    const-string v13, "DisplayManagerService"

    const-string v15, "Mirror displays created by a virtual device cannot show presentations, hence ignoring flag VIRTUAL_DISPLAY_FLAG_PRESENTATION."

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v2, v2, -0x3

    :cond_190
    if-eq v0, v12, :cond_1a9

    and-int/lit16 v13, v2, 0x800

    if-eqz v13, :cond_1a9

    .line 2027
    const-string v13, "android.permission.ADD_TRUSTED_DISPLAY"

    const-string v15, "createVirtualDisplay()"

    invoke-direct {v1, v13, v15}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1a1

    goto :goto_1a9

    .line 2028
    :cond_1a1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ADD_TRUSTED_DISPLAY permission to create a virtual display which is not in the default DisplayGroup."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a9
    :goto_1a9
    and-int/lit16 v13, v2, 0x1000

    if-eqz v13, :cond_1bd

    and-int/lit16 v13, v2, 0x800

    if-nez v13, :cond_1bd

    and-int/2addr v8, v2

    if-nez v8, :cond_1bd

    .line 2036
    const-string v8, "DisplayManagerService"

    const-string v13, "Always unlocked displays cannot be in the default display group, hence ignoring flag VIRTUAL_DISPLAY_FLAG_ALWAYS_UNLOCKED."

    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v2, v2, -0x1001

    :cond_1bd
    if-eq v0, v12, :cond_1d6

    and-int/lit16 v0, v2, 0x1000

    if-eqz v0, :cond_1d6

    .line 2043
    const-string v0, "android.permission.ADD_ALWAYS_UNLOCKED_DISPLAY"

    const-string v8, "createVirtualDisplay()"

    invoke-direct {v1, v0, v8}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    goto :goto_1d6

    .line 2044
    :cond_1ce
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ADD_ALWAYS_UNLOCKED_DISPLAY permission to create an always unlocked virtual display."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d6
    :goto_1d6
    and-int/lit16 v0, v2, 0x4000

    if-eqz v0, :cond_1e7

    and-int/lit16 v0, v2, 0x400

    if-nez v0, :cond_1e7

    .line 2052
    const-string v0, "DisplayManagerService"

    const-string v8, "Untrusted displays cannot have own focus, hence ignoring flag VIRTUAL_DISPLAY_FLAG_OWN_FOCUS."

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v2, v2, -0x4001

    :cond_1e7
    const/high16 v0, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1fb

    and-int/lit16 v0, v2, 0x4000

    if-nez v0, :cond_1fb

    .line 2059
    const-string v0, "DisplayManagerService"

    const-string v8, "Virtual displays that cannot steal top focus must have their own  focus, hence ignoring flag VIRTUAL_DISPLAY_FLAG_STEAL_TOP_FOCUS_DISABLED."

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x10001

    and-int/2addr v2, v0

    :cond_1fb
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_20c

    and-int/lit16 v0, v2, 0x400

    if-nez v0, :cond_20c

    .line 2066
    const-string v0, "DisplayManagerService"

    const-string v8, "Untrusted displays cannot show system decorations, hence ignoring flag VIRTUAL_DISPLAY_FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS."

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v2, v2, -0x201

    :cond_20c
    and-int/lit16 v0, v2, 0x600

    const/16 v8, 0x200

    if-ne v0, v8, :cond_225

    .line 2079
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v8, "createVirtualDisplay()"

    .line 2081
    invoke-direct {v1, v0, v8}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21d

    goto :goto_225

    .line 2082
    :cond_21d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2085
    :cond_225
    :goto_225
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    move v0, v6

    .line 2088
    :try_start_22a
    invoke-static {v5, v4, v11}, Lcom/android/server/display/VirtualDisplayAdapter;->generateDisplayUniqueId(Ljava/lang/String;ILandroid/hardware/display/VirtualDisplayConfig;)Ljava/lang/String;

    move-result-object v6

    .line 2092
    invoke-virtual {v11}, Landroid/hardware/display/VirtualDisplayConfig;->isHomeSupported()Z

    move-result v8

    const/4 v15, 0x5

    if-eqz v8, :cond_258

    and-int/lit16 v8, v2, 0x400

    if-nez v8, :cond_244

    .line 2094
    const-string v8, "DisplayManagerService"

    const-string v0, "Display created with home support but lacks VIRTUAL_DISPLAY_FLAG_TRUSTED, ignoring the home support request."

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_258

    :catchall_241
    move-exception v0

    goto/16 :goto_354

    :cond_244
    and-int/lit8 v0, v2, 0x10

    if-eqz v0, :cond_250

    .line 2097
    const-string v0, "DisplayManagerService"

    const-string v8, "Display created with home support but has VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR, ignoring the home support request."

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_258

    .line 2101
    :cond_250
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v6, v15, v10}, Lcom/android/server/wm/WindowManagerInternal;->setHomeSupportedOnDisplay(Ljava/lang/String;IZ)V

    move/from16 v16, v10

    goto :goto_25a

    :cond_258
    :goto_258
    const/16 v16, 0x0

    .line 2107
    :goto_25a
    invoke-virtual {v11}, Landroid/hardware/display/VirtualDisplayConfig;->isIgnoreActivitySizeRestrictions()Z

    move-result v0

    if-eqz v0, :cond_273

    and-int/lit16 v0, v2, 0x400

    if-nez v0, :cond_26c

    .line 2109
    const-string v0, "DisplayManagerService"

    const-string v8, "Display created to ignore activity size restrictions, but lacks VIRTUAL_DISPLAY_FLAG_TRUSTED, ignoring the request."

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_273

    .line 2112
    :cond_26c
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v6, v15, v10}, Lcom/android/server/wm/WindowManagerInternal;->setIgnoreActivitySizeRestrictionsOnDisplay(Ljava/lang/String;IZ)V

    move/from16 v16, v10

    .line 2118
    :cond_273
    :goto_273
    iget-object v8, v1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v8
    :try_end_276
    .catchall {:try_start_22a .. :try_end_276} :catchall_241

    move v10, v2

    move-object/from16 v17, v8

    move-object/from16 v2, p2

    move-object/from16 v8, p5

    .line 2120
    :try_start_27d
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/display/DisplayManagerService;->createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)I

    move-result v5

    const/4 v2, -0x1

    if-eq v5, v2, :cond_29c

    if-eqz p4, :cond_29c

    if-eqz p5, :cond_29c

    .line 2132
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    .line 2133
    invoke-static/range {p4 .. p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    .line 2132
    invoke-virtual {v0, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2134
    const-string v0, "DisplayManagerService"

    const-string v7, "Virtual Display: successfully created virtual display"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29c

    :catchall_299
    move-exception v0

    goto/16 :goto_352

    .line 2136
    :cond_29c
    :goto_29c
    monitor-exit v17
    :try_end_29d
    .catchall {:try_start_27d .. :try_end_29d} :catchall_299

    if-ne v5, v2, :cond_2a6

    if-eqz v16, :cond_2a6

    .line 2141
    :try_start_2a1
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v6, v15}, Lcom/android/server/wm/WindowManagerInternal;->clearDisplaySettings(Ljava/lang/String;I)V
    :try_end_2a6
    .catchall {:try_start_2a1 .. :try_end_2a6} :catchall_241

    :cond_2a6
    const/4 v6, 0x0

    if-eqz v3, :cond_2e3

    .line 2149
    :try_start_2a9
    invoke-interface {v3}, Landroid/media/projection/IMediaProjection;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object v0

    if-nez v0, :cond_2b1

    move-object v0, v6

    goto :goto_2b7

    .line 2150
    :cond_2b1
    invoke-interface {v3}, Landroid/media/projection/IMediaProjection;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    .line 2151
    :goto_2b7
    invoke-interface {v3}, Landroid/media/projection/IMediaProjection;->getTaskId()I

    move-result v7

    if-nez v0, :cond_2d7

    .line 2153
    invoke-interface {v3}, Landroid/media/projection/IMediaProjection;->isRecordingOverlay()Z

    move-result v0

    if-eqz v0, :cond_2ce

    .line 2156
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/display/VirtualDisplayConfig;->getDisplayIdToMirror()I

    move-result v0

    .line 2155
    invoke-static {v0, v4}, Landroid/view/ContentRecordingSession;->createOverlaySession(II)Landroid/view/ContentRecordingSession;

    move-result-object v6

    goto :goto_2e3

    :catch_2cc
    move-exception v0

    goto :goto_2dc

    .line 2160
    :cond_2ce
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/display/VirtualDisplayConfig;->getDisplayIdToMirror()I

    move-result v0

    .line 2159
    invoke-static {v0}, Landroid/view/ContentRecordingSession;->createDisplaySession(I)Landroid/view/ContentRecordingSession;

    move-result-object v6

    goto :goto_2e3

    .line 2164
    :cond_2d7
    invoke-static {v0, v7}, Landroid/view/ContentRecordingSession;->createTaskSession(Landroid/os/IBinder;I)Landroid/view/ContentRecordingSession;

    move-result-object v6
    :try_end_2db
    .catch Landroid/os/RemoteException; {:try_start_2a9 .. :try_end_2db} :catch_2cc
    .catchall {:try_start_2a9 .. :try_end_2db} :catchall_241

    goto :goto_2e3

    .line 2169
    :goto_2dc
    :try_start_2dc
    const-string v4, "DisplayManagerService"

    const-string v7, "Unable to retrieve the projection\'s launch cookie"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e3
    :goto_2e3
    if-nez v3, :cond_2e9

    and-int/lit8 v0, v10, 0x10

    if-eqz v0, :cond_34e

    :cond_2e9
    if-eq v5, v2, :cond_34e

    if-eqz v6, :cond_34e

    .line 2183
    invoke-virtual {v6, v5}, Landroid/view/ContentRecordingSession;->setVirtualDisplayId(I)Landroid/view/ContentRecordingSession;

    .line 2185
    invoke-virtual {v6, v14}, Landroid/view/ContentRecordingSession;->setWaitingForConsent(Z)Landroid/view/ContentRecordingSession;
    :try_end_2f3
    .catchall {:try_start_2dc .. :try_end_2f3} :catchall_241

    .line 2193
    :try_start_2f3
    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    invoke-interface {v0, v6, v3}, Landroid/media/projection/IMediaProjectionManager;->setContentRecordingSession(Landroid/view/ContentRecordingSession;Landroid/media/projection/IMediaProjection;)Z

    move-result v0

    if-nez v0, :cond_320

    .line 2196
    const-string v0, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content Recording: failed to start mirroring - releasing virtual display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    invoke-interface/range {p2 .. p2}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerService;->releaseVirtualDisplayInternal(Landroid/os/IBinder;)V
    :try_end_31a
    .catch Landroid/os/RemoteException; {:try_start_2f3 .. :try_end_31a} :catch_31e
    .catchall {:try_start_2f3 .. :try_end_31a} :catchall_241

    .line 2217
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catch_31e
    move-exception v0

    goto :goto_343

    :cond_320
    if-eqz v3, :cond_32c

    .line 2203
    :try_start_322
    const-string v0, "DisplayManagerService"

    const-string v1, "Content Recording: notifying MediaProjection of successful VirtualDisplay creation."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    invoke-interface {v3, v5}, Landroid/media/projection/IMediaProjection;->notifyVirtualDisplayCreated(I)V
    :try_end_32c
    .catch Landroid/os/RemoteException; {:try_start_322 .. :try_end_32c} :catch_31e
    .catchall {:try_start_322 .. :try_end_32c} :catchall_241

    .line 2212
    :cond_32c
    :try_start_32c
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Virtual Display: successfully set up virtual display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34e

    .line 2208
    :goto_343
    const-string v1, "DisplayManagerService"

    const-string v2, "Unable to tell MediaProjectionManagerService to set the content recording session"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34a
    .catchall {:try_start_32c .. :try_end_34a} :catchall_241

    .line 2217
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_34e
    :goto_34e
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 2136
    :goto_352
    :try_start_352
    monitor-exit v17
    :try_end_353
    .catchall {:try_start_352 .. :try_end_353} :catchall_299

    :try_start_353
    throw v0
    :try_end_354
    .catchall {:try_start_353 .. :try_end_354} :catchall_241

    .line 2217
    :goto_354
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2218
    throw v0

    .line 1894
    :cond_358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "virtualDisplayConfig must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1891
    :cond_361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1888
    :cond_369
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "packageName must match the owner uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)I
    .registers 24

    move-object/from16 v1, p6

    .line 2232
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v2, -0x1

    const-string v3, "DisplayManagerService"

    if-nez v0, :cond_f

    .line 2233
    const-string p0, "Rejecting request to create private virtual display because the virtual display adapter is not available."

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2240
    :cond_f
    const-string v0, "Virtual Display: creating DisplayDevice with VirtualDisplayAdapter"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    move-object v5, p1

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/display/VirtualDisplayAdapter;->createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    if-nez v4, :cond_30

    .line 2245
    const-string p0, "Virtual Display: VirtualDisplayAdapter failed to create DisplayDevice"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_30
    const v0, 0x8000

    and-int v0, p9, v0

    if-eqz v0, :cond_4d

    if-eqz v1, :cond_48

    .line 2255
    :try_start_39
    invoke-interface {v1}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    move-result v0

    .line 2256
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v6, v4, v0}, Lcom/android/server/display/LogicalDisplayMapper;->associateDisplayDeviceWithVirtualDevice(Lcom/android/server/display/DisplayDevice;I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_42} :catch_43

    goto :goto_4d

    :catch_43
    move-exception v0

    .line 2259
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_4d

    .line 2262
    :cond_48
    const-string v0, "Display created with VIRTUAL_DISPLAY_FLAG_DEVICE_DISPLAY_GROUP set, but no virtual device. The display will not be added to a device display group."

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v6}, Lcom/android/server/display/DisplayDeviceRepository;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    .line 2280
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    if-eqz v0, :cond_73

    if-eqz v1, :cond_6e

    .line 2286
    const-class v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2287
    invoke-virtual {p0, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2289
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v2

    move-object/from16 v3, p7

    .line 2288
    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->onVirtualDisplayCreated(Landroid/companion/virtual/IVirtualDevice;ILandroid/hardware/display/IVirtualDisplayCallback;Landroid/window/DisplayWindowPolicyController;)V

    .line 2292
    :cond_6e
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p0

    return p0

    .line 2296
    :cond_73
    const-string v0, "Rejecting request to create virtual display because the logical display was not created."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    .line 2299
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    const/4 p1, 0x3

    invoke-virtual {p0, v4, p1}, Lcom/android/server/display/DisplayDeviceRepository;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    return v2
.end method

.method public final deliverDisplayEvent(ILandroid/util/ArraySet;ILcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;)V
    .registers 11

    .line 3746
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayEventLogging:Z

    if-eqz v0, :cond_3f

    .line 3747
    :cond_8
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delivering display event: displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_33

    .line 3749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", uids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_35

    :cond_33
    const-string v2, ""

    :goto_35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3747
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    const-wide/32 v0, 0x20000

    .line 3751
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 3752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deliverDisplayEvent#event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_71

    .line 3754
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", uids="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_73

    :cond_71
    const-string v3, ""

    :goto_73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3752
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 3758
    :cond_7d
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3759
    :try_start_80
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3760
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_8d
    if-ge v3, v1, :cond_b8

    if-eqz p2, :cond_a8

    .line 3762
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    iget v4, v4, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    goto :goto_a8

    :catchall_a6
    move-exception p0

    goto :goto_106

    .line 3763
    :cond_a8
    :goto_a8
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b5
    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    .line 3766
    :cond_b8
    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_80 .. :try_end_b9} :catchall_a6

    .line 3769
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    move v0, v2

    .line 3772
    :goto_bf
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_e3

    .line 3773
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 3774
    invoke-virtual {v1, p1, p3}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayEventAsync(II)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 3776
    iget v1, v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    .line 3777
    invoke-virtual {p2, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_e0
    add-int/lit8 v0, v0, 0x1

    goto :goto_bf

    .line 3781
    :cond_e3
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayEventsLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_100

    .line 3783
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mStatsLogger:Lcom/android/server/display/DisplayFrameworkStatsLogger;

    invoke-virtual {p1, p3, p2}, Lcom/android/server/display/DisplayFrameworkStatsLogger;->logDisplayEvent(ILandroid/util/SparseIntArray;)V

    const/4 p1, 0x2

    if-ne p3, p1, :cond_100

    .line 3787
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mStatsLogger:Lcom/android/server/display/DisplayFrameworkStatsLogger;

    invoke-virtual {p4}, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;->changedGroups()I

    move-result p2

    .line 3788
    invoke-virtual {p4}, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;->source()Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    move-result-object p3

    .line 3787
    invoke-virtual {p1, p2, p3}, Lcom/android/server/display/DisplayFrameworkStatsLogger;->logDisplayInfoChanged(ILandroid/view/DisplayInfo$DisplayInfoChangeSource;)V

    .line 3792
    :cond_100
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 3766
    :goto_106
    :try_start_106
    monitor-exit v0
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_a6

    throw p0
.end method

.method public final deliverDisplayGroupEvent(II)V
    .registers 5

    .line 3824
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 3825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delivering display group event: groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 v0, 0x1

    if-eq p2, v0, :cond_58

    const/4 v0, 0x2

    if-eq p2, v0, :cond_42

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2c

    goto :goto_6e

    .line 3843
    :cond_2c
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

    .line 3844
    invoke-interface {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;->onDisplayGroupRemoved(I)V

    goto :goto_32

    .line 3837
    :cond_42
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_48
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

    .line 3838
    invoke-interface {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;->onDisplayGroupChanged(I)V

    goto :goto_48

    .line 3831
    :cond_58
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;

    .line 3832
    invoke-interface {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;->onDisplayGroupAdded(I)V

    goto :goto_5e

    :cond_6e
    :goto_6e
    return-void
.end method

.method public final deliverTopologyUpdate(Landroid/hardware/display/DisplayTopology;)V
    .registers 7

    .line 3796
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 3797
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delivering topology update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const-wide/32 v0, 0x20000

    .line 3799
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3800
    const-string v2, "deliverTopologyUpdate"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 3804
    :cond_28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3805
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 3806
    :goto_32
    :try_start_32
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4a

    .line 3807
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :catchall_48
    move-exception p0

    goto :goto_5e

    .line 3809
    :cond_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_32 .. :try_end_4b} :catchall_48

    .line 3812
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_4f
    if-ge v2, p0, :cond_5d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 3813
    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyTopologyUpdateAsync(Landroid/hardware/display/DisplayTopology;)Z

    goto :goto_4f

    :cond_5d
    return-void

    .line 3809
    :goto_5e
    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_48

    throw p0
.end method

.method public final disconnectWifiDisplayInternal()V
    .registers 2

    .line 1677
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1678
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_d

    .line 1679
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_f

    .line 1681
    :cond_d
    :goto_d
    monitor-exit v0

    return-void

    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_b

    throw p0
.end method

.method public final dispatchPendingProcessEvents(Ljava/lang/Object;)V
    .registers 3

    .line 1223
    instance-of p0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    if-eqz p0, :cond_a

    check-cast p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 1224
    invoke-virtual {p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->dispatchPending()Z

    return-void

    .line 1226
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "not a callback: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableConnectedDisplay(IZ)V
    .registers 5

    if-nez p2, :cond_c

    if-nez p1, :cond_c

    .line 4020
    const-string p0, "DisplayManagerService"

    const-string p1, "enableConnectedDisplay: Cannot disable default display"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4023
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 4024
    :try_start_f
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    if-nez v1, :cond_30

    .line 4026
    const-string p0, "DisplayManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableConnectedDisplay: Can not find displayId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :catchall_2e
    move-exception p0

    goto :goto_43

    .line 4027
    :cond_30
    invoke-static {v1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 4028
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/display/ExternalDisplayPolicy;->setExternalDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    goto :goto_41

    .line 4030
    :cond_3c
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 4032
    :goto_41
    monitor-exit v0

    return-void

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_f .. :try_end_44} :catchall_2e

    throw p0
.end method

.method public final extraLogging(Ljava/lang/String;)Z
    .registers 3

    .line 3818
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayEventLogging:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayLoggingPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final forgetWifiDisplayInternal(Ljava/lang/String;)V
    .registers 3

    .line 1693
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1694
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_d

    .line 1695
    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestForgetLocked(Ljava/lang/String;)V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_f

    .line 1697
    :cond_d
    :goto_d
    monitor-exit v0

    return-void

    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_b

    throw p0
.end method

.method public getActiveDisplayModeAtStart(I)Landroid/view/Display$Mode;
    .registers 3

    .line 3543
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3544
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    .line 3546
    monitor-exit v0

    return-object p0

    :catchall_c
    move-exception p0

    goto :goto_14

    .line 3548
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getActiveDisplayModeAtStartLocked()Landroid/view/Display$Mode;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 3549
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_c

    throw p0
.end method

.method public final getBrightnessConfigForDisplayWithPdsFallbackLocked(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 4

    .line 4234
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 4235
    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfigurationForDisplayLocked(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    if-nez p1, :cond_f

    .line 4239
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0, p2}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0

    :cond_f
    return-object p1
.end method

.method public final getBrightnessInfoInternal(I)Landroid/hardware/display/BrightnessInfo;
    .registers 5

    .line 4245
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 4246
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 4248
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_28

    .line 4251
    :cond_14
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_26

    .line 4253
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_24
    move-exception p0

    goto :goto_2a

    .line 4255
    :cond_26
    monitor-exit v0

    return-object v2

    .line 4249
    :cond_28
    :goto_28
    monitor-exit v0

    return-object v2

    .line 4255
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_24

    throw p0
.end method

.method public final getBrightnessInternal(I)F
    .registers 3

    .line 4260
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 4261
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_15

    .line 4263
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    goto :goto_19

    :cond_15
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 4265
    monitor-exit v0

    return p0

    .line 4267
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_13

    throw p0
.end method

.method public final getConnectionPreferenceInternal(Ljava/lang/String;)I
    .registers 4

    .line 4301
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 4302
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayDeviceRepository;->getByUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    if-nez p1, :cond_10

    const/4 p0, 0x0

    .line 4304
    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    .line 4307
    :cond_10
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0, p1}, Lcom/android/server/display/PersistentDataStore;->getConnectionPreference(Lcom/android/server/display/DisplayDevice;)I

    move-result p0

    monitor-exit v0

    return p0

    .line 4308
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_e

    throw p0
.end method

.method public final getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;
    .registers 2

    .line 4228
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 4229
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayDecorationSupportInternal(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .registers 2

    .line 3176
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 3180
    :cond_8
    invoke-static {p0}, Landroid/view/SurfaceControl;->getDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayDeviceInfoInternal(I)Lcom/android/server/display/DisplayDeviceInfo;
    .registers 3

    .line 4157
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 4158
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 4160
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    .line 4161
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    goto :goto_1a

    :cond_17
    const/4 p0, 0x0

    .line 4163
    monitor-exit v0

    return-object p0

    .line 4164
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_15

    throw p0
.end method

.method public getDisplayDeviceRepository()Lcom/android/server/display/DisplayDeviceRepository;
    .registers 1

    .line 960
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    return-object p0
.end method

.method public getDisplayHandler()Landroid/os/Handler;
    .registers 1

    .line 955
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    return-object p0
.end method

.method public final getDisplayInfoForFrameRateOverride([Landroid/view/DisplayEventReceiver$FrameRateOverride;Landroid/view/DisplayInfo;I)Landroid/view/DisplayInfo;
    .registers 14

    .line 1468
    iget p0, p2, Landroid/view/DisplayInfo;->renderFrameRate:F

    .line 1471
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_13

    aget-object v3, p1, v2

    .line 1472
    iget v4, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    if-ne v4, p3, :cond_10

    .line 1473
    iget p0, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    goto :goto_13

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_13
    :goto_13
    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-nez p1, :cond_19

    goto :goto_46

    :cond_19
    const/16 p1, 0x2710

    const/4 v0, 0x1

    if-lt p3, p1, :cond_2a

    const-wide/32 v2, 0xa29ae4e

    .line 1485
    invoke-static {v2, v3, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_2a

    :cond_28
    move p1, v1

    goto :goto_2b

    :cond_2a
    :goto_2a
    move p1, v0

    .line 1491
    :goto_2b
    invoke-virtual {p2}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object p3

    .line 1492
    invoke-virtual {p3}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result v2

    div-float p0, v2, p0

    .line 1494
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p0, v3

    .line 1495
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v4, 0x3a6bedfa    # 9.0E-4f

    cmpl-float p0, p0, v4

    if-lez p0, :cond_47

    :goto_46
    return-object p2

    :cond_47
    div-float/2addr v2, v3

    .line 1500
    new-instance p0, Landroid/view/DisplayInfo;

    invoke-direct {p0}, Landroid/view/DisplayInfo;-><init>()V

    .line 1501
    invoke-virtual {p0, p2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 1504
    iget-object v3, p2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v5, v3

    move v6, v1

    :goto_54
    if-ge v6, v5, :cond_a3

    aget-object v7, v3, v6

    .line 1505
    invoke-virtual {v7, p3}, Landroid/view/Display$Mode;->equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z

    move-result v8

    if-nez v8, :cond_5f

    goto :goto_a0

    .line 1509
    :cond_5f
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v8

    sub-float v9, v2, v4

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_a0

    .line 1510
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v8

    add-float v9, v2, v4

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_a0

    .line 1512
    sget-boolean p2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz p2, :cond_91

    .line 1513
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "found matching modeId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getModeId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DisplayManagerService"

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_91
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p2

    iput p2, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    if-nez p1, :cond_de

    .line 1518
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    iput p1, p0, Landroid/view/DisplayInfo;->modeId:I

    return-object p0

    :cond_a0
    :goto_a0
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 1523
    :cond_a3
    iput v2, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    if-nez p1, :cond_de

    .line 1527
    iget-object p1, p2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length p2, p1

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/Display$Mode;

    iput-object p1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 1529
    array-length p2, p1

    sub-int/2addr p2, v0

    new-instance v2, Landroid/view/Display$Mode;

    .line 1531
    invoke-virtual {p3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    iget v6, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    .line 1533
    invoke-virtual {p3}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result v7

    new-array v8, v1, [F

    .line 1534
    invoke-virtual {p3}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v9

    const/16 v3, 0xff

    invoke-direct/range {v2 .. v9}, Landroid/view/Display$Mode;-><init>(IIIFF[F[I)V

    aput-object v2, p1, p2

    .line 1535
    iget-object p1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length p2, p1

    sub-int/2addr p2, v0

    aget-object p1, p1, p2

    .line 1537
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    iput p1, p0, Landroid/view/DisplayInfo;->modeId:I

    :cond_de
    return-object p0
.end method

.method public final getDisplayInfoInternal(II)Landroid/view/DisplayInfo;
    .registers 6

    .line 1543
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1544
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 1547
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getFrameRateOverrides()[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    move-result-object v2

    .line 1548
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1547
    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoForFrameRateOverride([Landroid/view/DisplayEventReceiver$FrameRateOverride;Landroid/view/DisplayInfo;I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1549
    invoke-virtual {v1, p2}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1550
    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    move-result p0

    if-eqz p0, :cond_40

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_43

    .line 1551
    :cond_26
    :goto_26
    monitor-exit v0

    return-object v1

    :cond_28
    if-nez p1, :cond_40

    .line 1554
    const-string p0, "DisplayManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default display is null for info request from uid "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    const/4 p0, 0x0

    .line 1557
    monitor-exit v0

    return-object p0

    .line 1558
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_24

    throw p0
.end method

.method public getDisplayNotificationManager()Lcom/android/server/display/notifications/DisplayNotificationManager;
    .registers 1

    .line 998
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    return-object p0
.end method

.method public final getDisplayToken(I)Landroid/os/IBinder;
    .registers 3

    .line 3404
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3405
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 3407
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 3409
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_17
    move-exception p0

    goto :goto_1c

    .line 3412
    :cond_19
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_17

    throw p0
.end method

.method public getDisplayedContentSampleInternal(IJJ)Landroid/hardware/display/DisplayedContentSample;
    .registers 6

    .line 3496
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 3500
    :cond_8
    invoke-static {p0, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->getDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayedContentSamplingAttributesInternal(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .registers 2

    .line 3475
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 3479
    :cond_8
    invoke-static {p0}, Landroid/view/SurfaceControl;->getDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final getDpcFromUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayPowerController;
    .registers 3

    .line 3219
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayDeviceRepository;->getByUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    .line 3220
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 3222
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    .line 3223
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEnabledHdrOutputTypes()[I
    .registers 2

    .line 3016
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3017
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getEnabledHdrOutputTypesLocked()[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 3018
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public getEnabledHdrOutputTypesLocked()[I
    .registers 11

    .line 2994
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-eqz v0, :cond_9

    .line 2995
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getSupportedHdrOutputTypesInternal()[I

    move-result-object p0

    return-object p0

    .line 2998
    :cond_9
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 2999
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getSupportedHdrOutputTypesInternal()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v2, :cond_2d

    aget v5, v1, v4

    .line 3001
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    array-length v7, v6

    move v8, v3

    :goto_1d
    if-ge v8, v7, :cond_27

    aget v9, v6, v8

    if-ne v5, v9, :cond_24

    goto :goto_2a

    :cond_24
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 3008
    :cond_27
    invoke-virtual {v0, v5}, Landroid/util/IntArray;->add(I)V

    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 3011
    :cond_2d
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public getHdrConversionModeInternal()Landroid/hardware/display/HdrConversionMode;
    .registers 5

    .line 3128
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService$Injector;->getHdrOutputConversionSupport()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3129
    sget-object p0, Lcom/android/server/display/DisplayManagerService;->HDR_CONVERSION_MODE_UNSUPPORTED:Landroid/hardware/display/HdrConversionMode;

    return-object p0

    .line 3132
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3133
    :try_start_e
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mShouldDisableHdrConversion:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    .line 3134
    new-instance v1, Landroid/hardware/display/HdrConversionMode;

    invoke-direct {v1, v2}, Landroid/hardware/display/HdrConversionMode;-><init>(I)V

    goto :goto_1d

    :catchall_19
    move-exception p0

    goto :goto_3f

    .line 3135
    :cond_1b
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    :goto_1d
    if-nez v1, :cond_2a

    .line 3137
    iget v3, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultHdrConversionMode:I

    if-ne v3, v2, :cond_2a

    .line 3139
    new-instance p0, Landroid/hardware/display/HdrConversionMode;

    invoke-direct {p0, v2}, Landroid/hardware/display/HdrConversionMode;-><init>(I)V

    monitor-exit v0

    return-object p0

    :cond_2a
    const/4 v2, 0x2

    if-eqz v1, :cond_36

    .line 3143
    invoke-virtual {v1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v3

    if-ne v3, v2, :cond_34

    goto :goto_36

    .line 3147
    :cond_34
    monitor-exit v0

    return-object v1

    .line 3144
    :cond_36
    :goto_36
    new-instance v1, Landroid/hardware/display/HdrConversionMode;

    iget p0, p0, Lcom/android/server/display/DisplayManagerService;->mSystemPreferredHdrOutputType:I

    invoke-direct {v1, v2, p0}, Landroid/hardware/display/HdrConversionMode;-><init>(II)V

    monitor-exit v0

    return-object v1

    .line 3147
    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_e .. :try_end_40} :catchall_19

    throw p0
.end method

.method public getHdrConversionModeSettingInternal()Landroid/hardware/display/HdrConversionMode;
    .registers 3

    .line 3116
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService$Injector;->getHdrOutputConversionSupport()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3117
    sget-object p0, Lcom/android/server/display/DisplayManagerService;->HDR_CONVERSION_MODE_UNSUPPORTED:Landroid/hardware/display/HdrConversionMode;

    return-object p0

    .line 3119
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3120
    :try_start_e
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    if-eqz v1, :cond_16

    .line 3121
    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception p0

    goto :goto_1f

    .line 3123
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_14

    .line 3124
    new-instance v0, Landroid/hardware/display/HdrConversionMode;

    iget p0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultHdrConversionMode:I

    invoke-direct {v0, p0}, Landroid/hardware/display/HdrConversionMode;-><init>(I)V

    return-object v0

    .line 3123
    :goto_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_14

    throw p0
.end method

.method public final getIncludeDefaultDisplayInTopologySetting()Z
    .registers 4

    .line 1360
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    .line 1361
    const-string v1, "include_default_display_in_topology"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v2
.end method

.method public getLogicalDisplayMapper()Lcom/android/server/display/LogicalDisplayMapper;
    .registers 1

    .line 965
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    return-object p0
.end method

.method public getMinimumBrightnessCurveInternal()Landroid/hardware/display/Curve;
    .registers 1

    .line 2849
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    return-object p0
.end method

.method public final getNonOverrideDisplayInfoInternal(ILandroid/view/DisplayInfo;)V
    .registers 4

    .line 1072
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1073
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 1075
    invoke-virtual {p0, p2}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 1077
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public getOverlaySupportInternal()Landroid/hardware/OverlayProperties;
    .registers 1

    .line 2857
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mOverlayProperties:Landroid/hardware/OverlayProperties;

    return-object p0
.end method

.method public getPreferredWideGamutColorSpaceIdInternal()I
    .registers 1

    .line 2853
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWideColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getId()I

    move-result p0

    return p0
.end method

.method public final getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .registers 2

    .line 3866
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    if-nez v0, :cond_c

    .line 3867
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService$Injector;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 3869
    :cond_c
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    return-object p0
.end method

.method public getRefreshRateSwitchingTypeInternal()I
    .registers 1

    .line 3172
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->getModeSwitchingType()I

    move-result p0

    return p0
.end method

.method public getSettingsObserver()Landroid/database/ContentObserver;
    .registers 1

    .line 984
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayManagerService$SettingsObserver;

    return-object p0
.end method

.method public final getStableDisplaySizeInternal()Landroid/graphics/Point;
    .registers 4

    .line 1029
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1030
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1031
    :try_start_8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_18

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-lez p0, :cond_18

    .line 1032
    invoke-virtual {v0, v2, p0}, Landroid/graphics/Point;->set(II)V

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1a

    .line 1034
    :cond_18
    :goto_18
    monitor-exit v1

    return-object v0

    :goto_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_16

    throw p0
.end method

.method public final getStoredUserPreferredModeLocked(Lcom/android/server/display/DisplayDevice;)Landroid/view/Display$Mode;
    .registers 4

    .line 2764
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 2765
    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->getUserPreferredResolution(Lcom/android/server/display/DisplayDevice;)Landroid/graphics/Point;

    move-result-object v0

    .line 2766
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0, p1}, Lcom/android/server/display/PersistentDataStore;->getUserPreferredRefreshRate(Lcom/android/server/display/DisplayDevice;)F

    move-result p0

    if-nez v0, :cond_16

    .line 2767
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p0, 0x0

    return-object p0

    .line 2770
    :cond_16
    new-instance p1, Landroid/view/Display$Mode$Builder;

    invoke-direct {p1}, Landroid/view/Display$Mode$Builder;-><init>()V

    if-eqz v0, :cond_24

    .line 2772
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v0}, Landroid/view/Display$Mode$Builder;->setResolution(II)Landroid/view/Display$Mode$Builder;

    .line 2774
    :cond_24
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2775
    invoke-virtual {p1, p0}, Landroid/view/Display$Mode$Builder;->setRefreshRate(F)Landroid/view/Display$Mode$Builder;

    .line 2777
    :cond_2d
    invoke-virtual {p1}, Landroid/view/Display$Mode$Builder;->build()Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public final getSupportedHdrOutputTypesInternal()[I
    .registers 2

    .line 3152
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSupportedHdrOutputTypes:[I

    if-nez v0, :cond_c

    .line 3153
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService$Injector;->getSupportedHdrOutputTypes()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSupportedHdrOutputTypes:[I

    .line 3155
    :cond_c
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mSupportedHdrOutputTypes:[I

    return-object p0
.end method

.method public getSystemPreferredDisplayModeInternal(I)Landroid/view/Display$Mode;
    .registers 3

    .line 3048
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3049
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    .line 3051
    monitor-exit v0

    return-object p0

    :catchall_c
    move-exception p0

    goto :goto_14

    .line 3053
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getSystemPreferredDisplayModeLocked()Landroid/view/Display$Mode;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 3054
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_c

    throw p0
.end method

.method public getTaskStackListener()Landroid/app/TaskStackListener;
    .registers 1

    .line 989
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mTaskStackListener:Landroid/app/TaskStackListener;

    return-object p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 3873
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public getUserPreferredDisplayModeInternal(I)Landroid/view/Display$Mode;
    .registers 4

    .line 3035
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_c

    .line 3037
    :try_start_6
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p0

    goto :goto_1b

    .line 3039
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-nez p0, :cond_15

    const/4 p0, 0x0

    .line 3041
    monitor-exit v0

    return-object p0

    .line 3043
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getUserPreferredDisplayModeLocked()Landroid/view/Display$Mode;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 3044
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_a

    throw p0
.end method

.method public final getViewportLocked(ILjava/lang/String;)Landroid/hardware/display/DisplayViewport;
    .registers 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-eq p1, v0, :cond_25

    .line 3628
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot call getViewportByTypeLocked for type "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3629
    invoke-static {p1}, Landroid/hardware/display/DisplayViewport;->typeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3628
    const-string p1, "DisplayManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3634
    :cond_25
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v0, :cond_46

    .line 3636
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayViewport;

    .line 3637
    iget v3, v2, Landroid/hardware/display/DisplayViewport;->type:I

    if-ne v3, p1, :cond_43

    iget-object v3, v2, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    return-object v2

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 3643
    :cond_46
    new-instance v0, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v0}, Landroid/hardware/display/DisplayViewport;-><init>()V

    .line 3644
    iput p1, v0, Landroid/hardware/display/DisplayViewport;->type:I

    .line 3645
    iput-object p2, v0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 3646
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;
    .registers 3

    .line 3580
    iget p0, p1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_41

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    goto :goto_1d

    .line 3586
    :cond_c
    iget-object p0, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1d

    .line 3587
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 3591
    :cond_1d
    :goto_1d
    sget-boolean p0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz p0, :cond_3c

    .line 3592
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Display "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not support input device matching."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    :cond_3c
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 3584
    :cond_41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 3582
    :cond_4a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getVirtualDisplaySurfaceInternal(Landroid/os/IBinder;)Landroid/view/Surface;
    .registers 3

    .line 4169
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 4170
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    .line 4171
    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p0

    goto :goto_12

    .line 4173
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->getVirtualDisplaySurfaceLocked(Landroid/os/IBinder;)Landroid/view/Surface;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 4174
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_a

    throw p0
.end method

.method public getWifiDisplayListener()Lcom/android/server/display/WifiDisplayController$Listener;
    .registers 1

    .line 4180
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayListener()Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getWifiDisplayStatusInternal(Z)Landroid/hardware/display/WifiDisplayStatus;
    .registers 3

    .line 1701
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1702
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_f

    .line 1704
    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked(Z)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    goto :goto_16

    .line 1706
    :cond_f
    new-instance p0, Landroid/hardware/display/WifiDisplayStatus;

    invoke-direct {p0}, Landroid/hardware/display/WifiDisplayStatus;-><init>()V

    monitor-exit v0

    return-object p0

    .line 1707
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_d

    throw p0
.end method

.method public final handleBrightnessChange(Lcom/android/server/display/LogicalDisplay;)V
    .registers 4

    .line 4221
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    const/4 v1, 0x4

    .line 4222
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 4224
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final handleIncludeDefaultDisplayInTopologySettingChangeLocked()V
    .registers 4

    .line 1332
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getIncludeDefaultDisplayInTopologySetting()Z

    move-result v0

    .line 1334
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mIncludeDefaultDisplayInTopology:Z

    if-ne v1, v0, :cond_9

    goto :goto_3a

    .line 1337
    :cond_9
    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mIncludeDefaultDisplayInTopology:Z

    .line 1340
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->shouldMirrorBuiltInDisplay()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_3a

    .line 1344
    :cond_12
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    if-eqz v0, :cond_3a

    .line 1345
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mIncludeDefaultDisplayInTopology:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 1346
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    .line 1347
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1348
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayTopologyCoordinator;->onDisplayAdded(Landroid/view/DisplayInfo;)V

    return-void

    .line 1352
    :cond_2b
    invoke-virtual {v0}, Lcom/android/server/display/DisplayTopologyCoordinator;->getTopology()Landroid/hardware/display/DisplayTopology;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayTopology;->hasMultipleDisplays()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1353
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayTopologyCoordinator;->onDisplayRemoved(I)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public final handleLogicalDisplayAddedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 2520
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    if-nez v0, :cond_b

    .line 2525
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_b
    const/4 v0, 0x1

    .line 2528
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 2530
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplayState(Lcom/android/server/display/LogicalDisplay;)V

    .line 2532
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ExternalDisplayPolicy;->handleLogicalDisplayContentModeChange(Lcom/android/server/display/LogicalDisplay;)V

    .line 2534
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->applyDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 2538
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    if-eqz v0, :cond_2d

    .line 2539
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    if-nez v0, :cond_2d

    .line 2540
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->onDisplayAdded(Landroid/view/DisplayInfo;)V

    :cond_2d
    return-void
.end method

.method public final handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 2545
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateViewportPowerStateLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 2547
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    if-nez v0, :cond_c

    .line 2549
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    :cond_c
    const/4 v0, 0x2

    .line 2554
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 2556
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->applyDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 2558
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    if-eqz p0, :cond_1e

    .line 2559
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->onDisplayChanged(Landroid/view/DisplayInfo;)V

    :cond_1e
    return-void
.end method

.method public final handleLogicalDisplayCommittedStateChangedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    const/16 v0, 0xa

    .line 2693
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    return-void
.end method

.method public final handleLogicalDisplayConnectedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 2488
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setupLogicalDisplay(Lcom/android/server/display/LogicalDisplay;)V

    .line 2490
    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2491
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ExternalDisplayPolicy;->handleExternalDisplayConnectedLocked(Lcom/android/server/display/LogicalDisplay;)V

    goto :goto_13

    :cond_f
    const/4 v0, 0x6

    .line 2493
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 2496
    :goto_13
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplayState(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public final handleLogicalDisplayDeviceStateTransitionLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 4

    .line 2703
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 2704
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    if-eqz v0, :cond_1e

    .line 2706
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getLeadDisplayIdLocked()I

    move-result v1

    .line 2707
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayManagerService;->updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerController;I)V

    .line 2709
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHighBrightnessModeMetadataMapper:Lcom/android/server/display/HighBrightnessModeMetadataMapper;

    .line 2710
    invoke-virtual {p0, p1}, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->getHighBrightnessModeMetadataLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/HighBrightnessModeMetadata;

    move-result-object p0

    .line 2711
    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController;->onDisplayChanged(Lcom/android/server/display/HighBrightnessModeMetadata;I)V

    :cond_1e
    return-void
.end method

.method public final handleLogicalDisplayDisconnectedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    const/4 v0, 0x7

    .line 2423
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->releaseDisplayAndEmitEvent(Lcom/android/server/display/LogicalDisplay;I)V

    .line 2424
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayPolicy;->handleLogicalDisplayDisconnectedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public final handleLogicalDisplayFrameRateOverridesChangedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 2611
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventFrameRateOverrideLocked(Lcom/android/server/display/LogicalDisplay;)V

    const/4 p1, 0x0

    .line 2612
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    return-void
.end method

.method public final handleLogicalDisplayHdrSdrRatioChangedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    const/4 v0, 0x5

    .line 2679
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    return-void
.end method

.method public final handleLogicalDisplayRefreshRateChangedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    const/16 v0, 0x8

    .line 2684
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    return-void
.end method

.method public final handleLogicalDisplayRemovedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 2618
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2619
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateViewportPowerStateLocked(Lcom/android/server/display/LogicalDisplay;)V

    :cond_9
    const/4 v0, 0x3

    .line 2623
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 2625
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2626
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->applyDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 2628
    :cond_16
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    if-eqz p0, :cond_21

    .line 2629
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayTopologyCoordinator;->onDisplayRemoved(I)V

    .line 2632
    :cond_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Logical display removed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final handleLogicalDisplayStateChangedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    const/16 v0, 0x9

    .line 2689
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    return-void
.end method

.method public final handleLogicalDisplaySwappedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 5

    .line 2664
    const-string v0, "handleLogicalDisplaySwappedLocked"

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2666
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 2668
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    if-nez v0, :cond_17

    .line 2670
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->notifyDefaultDisplayDeviceUpdated(Lcom/android/server/display/LogicalDisplay;)V

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_21

    .line 2672
    :cond_17
    :goto_17
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_15

    .line 2674
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_21
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2675
    throw p0
.end method

.method public final handleMinimalPostProcessingAllowedSettingChange()V
    .registers 3

    .line 1286
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1287
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->updateMinimalPostProcessingAllowedSettingLocked()V

    const/4 v1, 0x0

    .line 1288
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1289
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final hasSecureVideoOutputPermission(Ljava/lang/String;)Z
    .registers 3

    .line 1836
    const-string v0, "android.permission.CAPTURE_SECURE_VIDEO_OUTPUT"

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final hasVideoOutputPermission(Ljava/lang/String;)Z
    .registers 3

    .line 1831
    const-string v0, "android.permission.CAPTURE_VIDEO_OUTPUT"

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1832
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->hasSecureVideoOutputPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public final hdrConversionIntroducesLatencyLocked()Z
    .registers 4

    .line 3023
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getHdrConversionModeSettingInternal()Landroid/hardware/display/HdrConversionMode;

    move-result-object v0

    .line 3025
    invoke-virtual {v0}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 3026
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mSystemPreferredHdrOutputType:I

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    move-result v0

    :goto_12
    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 3028
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$Injector;->getHdrOutputTypesWithLatency()[I

    move-result-object p0

    .line 3029
    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final initializeDisplayPowerControllersLocked()V
    .registers 3

    .line 4184
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final isBrightnessConfigurationTooDark(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 8

    .line 3239
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object p1

    .line 3240
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [F

    .line 3241
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [F

    const/4 v1, 0x0

    move v2, v1

    .line 3242
    :goto_e
    array-length v3, v0

    if-ge v2, v3, :cond_24

    .line 3243
    aget v3, p1, v2

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_24
    return v1
.end method

.method public final isExtendedDisplayAllowed()Z
    .registers 4

    .line 2500
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayContentModeManagementEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    .line 2504
    :try_start_b
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 2505
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "force_desktop_mode_on_external_displays"

    .line 2504
    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1a

    if-eqz p0, :cond_1a

    return v1

    :catchall_1a
    :cond_1a
    return v0
.end method

.method public isMinimalPostProcessingAllowed()Z
    .registers 2

    .line 970
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 971
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mMinimalPostProcessingAllowed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 972
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isSubsetOf([I[I)Z
    .registers 6

    .line 1758
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_11

    aget v2, p2, v1

    .line 1759
    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_e

    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public final isUidPresentOnDisplayInternal(II)Z
    .registers 4

    .line 3396
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3397
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/IntArray;

    if-eqz p0, :cond_18

    .line 3398
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :catchall_16
    move-exception p0

    goto :goto_1b

    :cond_18
    const/4 p0, 0x0

    :goto_19
    monitor-exit v0

    return p0

    .line 3399
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_16

    throw p0
.end method

.method public final synthetic lambda$addDisplayPowerControllerLocked$22(Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 4214
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleBrightnessChange(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public final synthetic lambda$loadBrightnessConfigurations$18(ILcom/android/server/display/LogicalDisplay;)V
    .registers 4

    .line 3255
    invoke-virtual {p2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 3257
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/DisplayManagerService;->getBrightnessConfigForDisplayWithPdsFallbackLocked(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 3259
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 3260
    invoke-virtual {p2}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p2

    .line 3259
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_20

    const/4 p2, 0x0

    .line 3262
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V

    :cond_20
    return-void
.end method

.method public final synthetic lambda$new$0(I)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 3

    .line 600
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 601
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    .line 603
    monitor-exit v0

    return-object p0

    :catchall_c
    move-exception p0

    goto :goto_14

    .line 605
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 606
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_c

    throw p0
.end method

.method public final synthetic lambda$new$1(Landroid/util/Pair;)V
    .registers 5

    .line 666
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    const-string v1, "DisplayManagerService"

    if-eqz v0, :cond_26

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending topology graph to Input Manager: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/display/DisplayTopologyGraph;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerInternal;->setDisplayTopology(Landroid/hardware/display/DisplayTopologyGraph;)V

    goto :goto_2b

    .line 671
    :cond_26
    const-string v0, "Not sending topology, mInputManagerInternal is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :goto_2b
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/display/DisplayTopology;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->deliverTopologyUpdate(Landroid/hardware/display/DisplayTopology;)V

    return-void
.end method

.method public final synthetic lambda$new$2(I)Landroid/view/DisplayInfo;
    .registers 3

    .line 679
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(II)Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$3(Landroid/view/DisplayInfo;)Z
    .registers 2

    .line 684
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    if-eqz p0, :cond_c

    .line 685
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->isDisplayAllowedInTopology(Landroid/view/DisplayInfo;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$4()Z
    .registers 1

    .line 716
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->shouldMirrorBuiltInDisplay()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final synthetic lambda$onUserSwitching$5(ZIILcom/android/server/display/LogicalDisplay;)V
    .registers 8

    .line 811
    invoke-virtual {p4}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    goto :goto_18

    .line 814
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 815
    invoke-virtual {p4}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v2

    .line 814
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    if-nez v0, :cond_19

    :goto_18
    return-void

    :cond_19
    if-eqz p1, :cond_2a

    .line 822
    invoke-virtual {p4}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    .line 821
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getBrightnessConfigForDisplayWithPdsFallbackLocked(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    .line 824
    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V

    .line 826
    :cond_2a
    invoke-virtual {p4}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    if-nez p1, :cond_33

    const/high16 p0, 0x7fc00000    # Float.NaN

    goto :goto_39

    .line 828
    :cond_33
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/PersistentDataStore;->getBrightness(Lcom/android/server/display/DisplayDevice;I)F

    move-result p0

    .line 829
    :goto_39
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 830
    invoke-virtual {p4}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p0

    iget p0, p0, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 832
    :cond_45
    invoke-virtual {v0, p3, p2, p0}, Lcom/android/server/display/DisplayPowerController;->onSwitchUser(IIF)V

    return-void
.end method

.method public final synthetic lambda$performTraversalLocked$19(Landroid/util/SparseArray;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/LogicalDisplay;)V
    .registers 5

    .line 3278
    invoke-virtual {p3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 3280
    invoke-virtual {p3}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p3

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_13

    .line 3282
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;)V

    :cond_13
    return-void
.end method

.method public final synthetic lambda$releaseDisplayAndEmitEvent$14(Landroid/companion/virtual/IVirtualDevice;I)V
    .registers 4

    .line 2653
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2654
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->onVirtualDisplayRemoved(Landroid/companion/virtual/IVirtualDevice;I)V

    return-void
.end method

.method public final synthetic lambda$resetBrightnessConfigurations$20(Lcom/android/server/display/LogicalDisplay;)V
    .registers 5

    .line 3507
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    return-void

    .line 3510
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    .line 3511
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 3512
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3511
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$scheduleTopologiesReload$7(IZ)V
    .registers 3

    .line 1005
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayTopologyCoordinator;->reloadTopologies(IZ)V

    return-void
.end method

.method public final synthetic lambda$setAreUserDisabledHdrTypesAllowedInternal$12([ILcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 1787
    invoke-virtual {p2, p1}, Lcom/android/server/display/LogicalDisplay;->setUserDisabledHdrTypes([I)V

    .line 1788
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public final synthetic lambda$setHdrConversionModeInternal$16(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    const/4 v0, 0x1

    .line 3097
    invoke-virtual {p1, v0}, Lcom/android/server/display/LogicalDisplay;->setIsForceSdr(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3098
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    :cond_a
    return-void
.end method

.method public final synthetic lambda$setHdrConversionModeInternal$17(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    const/4 v0, 0x0

    .line 3104
    invoke-virtual {p1, v0}, Lcom/android/server/display/LogicalDisplay;->setIsForceSdr(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3105
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    :cond_a
    return-void
.end method

.method public final synthetic lambda$setUserDisabledHdrTypesInternal$11([ILcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 1741
    invoke-virtual {p2, p1}, Lcom/android/server/display/LogicalDisplay;->setUserDisabledHdrTypes([I)V

    .line 1742
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public final synthetic lambda$setupLogicalDisplay$13(ILcom/android/server/display/LogicalDisplay;)V
    .registers 4

    .line 2455
    invoke-virtual {p2}, Lcom/android/server/display/LogicalDisplay;->getLeadDisplayIdLocked()I

    move-result v0

    if-ne v0, p1, :cond_17

    .line 2456
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 2457
    invoke-virtual {p2}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/display/DisplayPowerController;

    if-eqz p2, :cond_17

    .line 2459
    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/DisplayManagerService;->updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerController;I)V

    :cond_17
    return-void
.end method

.method public final synthetic lambda$systemReady$6(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 895
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 896
    invoke-virtual {p1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->isHdrOutputControlFeatureEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mIsHdrOutputControlEnabled:Z

    return-void
.end method

.method public final synthetic lambda$updateMirrorBuiltInDisplaySettingLocked$8(ZLcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 1323
    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/DisplayManagerService;->updateCanHostTasksIfNeededLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    return-void
.end method

.method public final synthetic lambda$updateUserDisabledHdrTypesFromSettingsLocked$9(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 1424
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    invoke-virtual {p1, v0}, Lcom/android/server/display/LogicalDisplay;->setUserDisabledHdrTypes([I)V

    .line 1425
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public final loadBrightnessConfigurations()V
    .registers 5

    .line 3251
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 3252
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 3253
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 3267
    monitor-exit v1

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final loadStableDisplayValuesLocked()V
    .registers 4

    .line 1011
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 1012
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_14

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_14

    .line 1015
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Point;->set(II)V

    return-void

    .line 1017
    :cond_14
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0168

    .line 1018
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x10e0167

    .line 1020
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-lez v1, :cond_2f

    if-lez v0, :cond_2f

    .line 1023
    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    :cond_2f
    return-void
.end method

.method public final notifyDefaultDisplayDeviceUpdated(Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 2698
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->defaultDisplayDeviceUpdated(Lcom/android/server/display/DisplayDeviceConfig;)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 10

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7f

    .line 759
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 760
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 761
    invoke-virtual {p1}, Lcom/android/server/display/DisplayManagerService$Injector;->getDefaultDisplayDelayTimeout()J

    move-result-wide v4

    sget p1, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    int-to-long v6, p1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 762
    :catch_17
    :goto_17
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez p1, :cond_24

    goto :goto_29

    .line 779
    :cond_24
    monitor-exit v0

    goto/16 :goto_be

    :catchall_27
    move-exception p0

    goto :goto_7d

    .line 764
    :cond_29
    :goto_29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_56

    .line 771
    sget-boolean p1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz p1, :cond_50

    .line 772
    const-string p1, "DisplayManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "waitForDefaultDisplay: waiting, timeout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_8 .. :try_end_50} :catchall_27

    .line 775
    :cond_50
    :try_start_50
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {p1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_55} :catch_17
    .catchall {:try_start_50 .. :try_end_55} :catchall_27

    goto :goto_17

    .line 766
    :cond_56
    :try_start_56
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout waiting for default display to be initialized. DefaultDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 768
    invoke-virtual {v3, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVirtualDisplayAdapter="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 779
    :goto_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_56 .. :try_end_7e} :catchall_27

    throw p0

    :cond_7f
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_be

    .line 781
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter p1

    const/4 v0, 0x1

    .line 782
    :try_start_87
    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mBootCompleted:Z

    .line 783
    :goto_89
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_a1

    .line 784
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->onBootCompleted()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    :catchall_9f
    move-exception p0

    goto :goto_bc

    .line 786
    :cond_a1
    monitor-exit p1
    :try_end_a2
    .catchall {:try_start_87 .. :try_end_a2} :catchall_9f

    .line 787
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->onBootCompleted()V

    .line 788
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplayMapper;->onBootCompleted()V

    .line 789
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-virtual {p1}, Lcom/android/server/display/notifications/DisplayNotificationManager;->onBootCompleted()V

    .line 790
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->onBootCompleted()V

    .line 791
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPluginManager:Lcom/android/server/display/plugin/PluginManager;

    invoke-virtual {p0}, Lcom/android/server/display/plugin/PluginManager;->onBootCompleted()V

    return-void

    .line 786
    :goto_bc
    :try_start_bc
    monitor-exit p1
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_9f

    throw p0

    :cond_be
    :goto_be
    return-void
.end method

.method public final onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 5

    .line 1591
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1592
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1593
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbackRecordByPidByUid:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_2b

    .line 1595
    iget v2, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1596
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_2b

    .line 1597
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbackRecordByPidByUid:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_30

    .line 1600
    :cond_2b
    :goto_2b
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 1601
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_29

    throw p0
.end method

.method public onStart()V
    .registers 4

    .line 741
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 742
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 743
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->loadStableDisplayValuesLocked()V

    .line 744
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2a

    .line 745
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 749
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    .line 751
    const-string v0, "display"

    new-instance v2, Lcom/android/server/display/DisplayManagerService$BinderService;

    invoke-direct {v2, p0}, Lcom/android/server/display/DisplayManagerService$BinderService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 753
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :catchall_2a
    move-exception p0

    .line 744
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 8

    .line 802
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 803
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result p2

    .line 804
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 805
    :try_start_f
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    const/4 v2, 0x1

    if-eq v1, p1, :cond_16

    move v1, v2

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    if-eqz v1, :cond_1e

    .line 807
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_58

    .line 809
    :cond_1e
    :goto_1e
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v3}, Lcom/android/server/display/mode/DisplayModeDirector;->onSwitchUser()V

    .line 810
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v4, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0, v1, p2, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/display/DisplayManagerService;ZII)V

    invoke-virtual {v3, v4}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 834
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->handleMinimalPostProcessingAllowedSettingChange()V

    .line 836
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayContentModeManagementEnabled()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 837
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayManagerService;->updateMirrorBuiltInDisplaySettingLocked(Z)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 839
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    invoke-virtual {p1, v2}, Lcom/android/server/display/ExternalDisplayPolicy;->handleMirrorBuiltInDisplaySettingChangeLocked(Z)V

    .line 844
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p1

    if-eqz p1, :cond_56

    .line 845
    iget p2, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p1

    if-eqz p1, :cond_56

    .line 846
    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTopologiesReload(IZ)V

    .line 848
    :cond_56
    monitor-exit v0

    return-void

    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_f .. :try_end_59} :catchall_1c

    throw p0
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 797
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTopologiesReload(IZ)V

    return-void
.end method

.method public overrideMaxImportanceForRRCallbacks(I)V
    .registers 2

    .line 4036
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mMaxImportanceForRRCallbacks:I

    return-void
.end method

.method public overrideSensorManager(Landroid/hardware/SensorManager;)V
    .registers 3

    .line 5846
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 5847
    :try_start_3
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 5848
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final pauseWifiDisplayInternal()V
    .registers 2

    .line 1661
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1662
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_d

    .line 1663
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestPauseLocked()V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_f

    .line 1665
    :cond_d
    :goto_d
    monitor-exit v0

    return-void

    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_b

    throw p0
.end method

.method public performTraversalInternal(Landroid/view/SurfaceControl$Transaction;Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/SparseArray<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 1083
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1084
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v1, :cond_b

    .line 1085
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_29

    :cond_b
    const/4 v1, 0x0

    .line 1087
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 1089
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->performTraversalLocked(Landroid/view/SurfaceControl$Transaction;Landroid/util/SparseArray;)V

    .line 1090
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_9

    .line 1093
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 1094
    invoke-interface {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_18

    :cond_28
    return-void

    .line 1090
    :goto_29
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_9

    throw p0
.end method

.method public final performTraversalLocked(Landroid/view/SurfaceControl$Transaction;Landroid/util/SparseArray;)V
    .registers 5

    .line 3274
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->clearViewportsLocked()V

    .line 3277
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/util/SparseArray;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 3287
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    if-eqz p1, :cond_17

    .line 3288
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_17
    return-void
.end method

.method public final populateViewportLocked(IILcom/android/server/display/DisplayDevice;Lcom/android/server/display/DisplayDeviceInfo;)V
    .registers 6

    .line 3652
    iget-object v0, p4, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->getViewportLocked(ILjava/lang/String;)Landroid/hardware/display/DisplayViewport;

    move-result-object p0

    .line 3653
    invoke-virtual {p3, p0}, Lcom/android/server/display/DisplayDevice;->populateViewportLocked(Landroid/hardware/display/DisplayViewport;)V

    const/4 p1, 0x1

    .line 3654
    iput-boolean p1, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 3655
    iput p2, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    .line 3656
    iget p1, p4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    invoke-static {p1}, Landroid/view/Display;->isActiveState(I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/display/DisplayViewport;->isActive:Z

    .line 3657
    iget p1, p4, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput p1, p0, Landroid/hardware/display/DisplayViewport;->densityDpi:I

    .line 3658
    iget p1, p4, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput p1, p0, Landroid/hardware/display/DisplayViewport;->xDpi:F

    .line 3659
    iget p1, p4, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput p1, p0, Landroid/hardware/display/DisplayViewport;->yDpi:F

    return-void
.end method

.method public final recordStableDisplayStatsIfNeededLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 4

    .line 2809
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-gtz v1, :cond_19

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_19

    .line 2810
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 2811
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    :cond_19
    return-void
.end method

.method public final recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 2827
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1e

    if-nez p1, :cond_7

    goto :goto_1e

    .line 2830
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getInsets()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 2831
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    if-ne p1, v0, :cond_12

    goto :goto_1e

    .line 2834
    :cond_12
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    .line 2835
    const-string/jumbo p0, "persist.sys.displayinset.top"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public final registerAdditionalDisplayAdapters()V
    .registers 3

    .line 2385
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2386
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->shouldRegisterNonEssentialDisplayAdaptersLocked()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2387
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->registerOverlayDisplayAdapterLocked()V

    .line 2388
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->registerWifiDisplayAdapterLocked()V

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_14

    .line 2390
    :cond_12
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_10

    throw p0
.end method

.method public final registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;IIJ)V
    .registers 15

    .line 1563
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1564
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    if-eqz v0, :cond_15

    .line 1567
    invoke-virtual {v0, p4, p5}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->updateEventFlagsMask(J)V

    .line 1568
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    move-object p0, v0

    goto :goto_53

    .line 1571
    :cond_15
    new-instance v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    move-object v3, p0

    move-object v6, p1

    move v4, p2

    move v5, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;-><init>(Lcom/android/server/display/DisplayManagerService;IILandroid/hardware/display/IDisplayManagerCallback;J)V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_12

    .line 1573
    :try_start_1f
    invoke-interface {v6}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    .line 1574
    invoke-interface {p0, v2, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_27} :catch_4b
    .catchall {:try_start_1f .. :try_end_27} :catchall_12

    .line 1580
    :try_start_27
    iget-object p0, v3, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1581
    iget-object p0, v3, Lcom/android/server/display/DisplayManagerService;->mCallbackRecordByPidByUid:Landroid/util/SparseArray;

    iget p1, v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_44

    .line 1583
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 1584
    iget-object p1, v3, Lcom/android/server/display/DisplayManagerService;->mCallbackRecordByPidByUid:Landroid/util/SparseArray;

    iget p2, v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1586
    :cond_44
    iget p1, v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1587
    monitor-exit v1

    return-void

    :catch_4b
    move-exception v0

    move-object p0, v0

    .line 1577
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1587
    :goto_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_27 .. :try_end_54} :catchall_12

    throw p0
.end method

.method public final registerDefaultDisplayAdapters()V
    .registers 10

    .line 2365
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 2367
    :try_start_3
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/DisplayManagerService$Injector;->getLocalDisplayAdapter(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/notifications/DisplayNotificationManager;)Lcom/android/server/display/LocalDisplayAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 2376
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/display/DisplayManagerService$Injector;->getVirtualDisplayAdapter(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/VirtualDisplayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-eqz v0, :cond_33

    .line 2379
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    goto :goto_33

    :catchall_30
    move-exception v0

    move-object p0, v0

    goto :goto_35

    .line 2381
    :cond_33
    :goto_33
    monitor-exit v1

    return-void

    :goto_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_30

    throw p0
.end method

.method public final registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V
    .registers 2

    .line 2417
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2418
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    return-void
.end method

.method public final registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2

    .line 1041
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final registerOverlayDisplayAdapterLocked()V
    .registers 8

    .line 2394
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/OverlayDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    return-void
.end method

.method public final registerWifiDisplayAdapterLocked()V
    .registers 10

    .line 2399
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "persist.debug.wfd.enable"

    const/4 v1, -0x1

    .line 2401
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    goto :goto_1c

    :cond_1b
    return-void

    .line 2402
    :cond_1c
    :goto_1c
    new-instance v2, Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/WifiDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 2405
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    return-void
.end method

.method public final releaseDisplayAndEmitEvent(Lcom/android/server/display/LogicalDisplay;I)V
    .registers 7

    .line 2636
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 2638
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 2639
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    if-eqz v1, :cond_15

    const/4 v2, -0x1

    .line 2641
    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerController;I)V

    .line 2642
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->stop()V

    .line 2644
    :cond_15
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2645
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 2646
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    .line 2648
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2649
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    .line 2650
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/companion/virtual/IVirtualDevice;

    if-eqz v1, :cond_42

    .line 2652
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/companion/virtual/IVirtualDevice;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2659
    :cond_42
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    const/4 p1, 0x0

    .line 2660
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    return-void
.end method

.method public final releaseVirtualDisplayInternal(Landroid/os/IBinder;)V
    .registers 5

    .line 2326
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2327
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_b

    .line 2328
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_20

    .line 2332
    :cond_b
    invoke-virtual {v1, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    .line 2333
    const-string v1, "DisplayManagerService"

    const-string v2, "Virtual Display: Display Device released"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1e

    .line 2336
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/DisplayDeviceRepository;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    .line 2339
    :cond_1e
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_9

    throw p0
.end method

.method public final renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1685
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1686
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_d

    .line 1687
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_f

    .line 1689
    :cond_d
    :goto_d
    monitor-exit v0

    return-void

    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_b

    throw p0
.end method

.method public final requestColorModeInternal(II)V
    .registers 5

    .line 1802
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1803
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 1805
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getRequestedColorModeLocked()I

    move-result v1

    if-eq v1, p2, :cond_1b

    .line 1806
    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplay;->setRequestedColorModeLocked(I)V

    const/4 p1, 0x0

    .line 1807
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_1d

    .line 1809
    :cond_1b
    :goto_1b
    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public requestDisplayPower(II)Z
    .registers 10

    .line 4040
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 4041
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_28

    .line 4043
    const-string p0, "DisplayManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestDisplayPower: Cannot find the display with displayId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    monitor-exit v0

    return v2

    :catchall_25
    move-exception p0

    goto/16 :goto_ab

    :cond_28
    if-nez p2, :cond_31

    .line 4049
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    goto :goto_32

    :cond_31
    move v3, p2

    .line 4052
    :goto_32
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    .line 4053
    iget v4, p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    const/4 v5, 0x1

    if-ne v3, v5, :cond_41

    const/high16 v4, -0x40800000    # -1.0f

    .line 4058
    :cond_41
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v6

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    .line 4062
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffloadSessionLocked()Lcom/android/server/display/DisplayOffloadSessionImpl;

    move-result-object v1

    .line 4058
    invoke-virtual {v6, v3, v4, p0, v1}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;)Ljava/lang/Runnable;

    move-result-object p0

    if-nez p0, :cond_7f

    .line 4064
    const-string p0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestDisplayPower: Cannot set power state = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for the display with displayId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", requestedState="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": runnable is null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4067
    monitor-exit v0

    return v2

    .line 4069
    :cond_7f
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4070
    const-string p0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestDisplayPower(displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", requestedState="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): state set to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4072
    monitor-exit v0

    return v5

    :goto_ab
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_3 .. :try_end_ac} :catchall_25

    throw p0
.end method

.method public final requestDisplayStateInternal(IIFF)V
    .registers 13

    if-nez p2, :cond_3

    const/4 p2, 0x2

    .line 1116
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/display/DisplayManagerService;->clampBrightness(IF)F

    move-result p3

    .line 1117
    invoke-virtual {p0, p2, p4}, Lcom/android/server/display/DisplayManagerService;->clampBrightness(IF)F

    move-result p4

    .line 1124
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1125
    :try_start_e
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_18

    const/4 v2, 0x0

    goto :goto_20

    .line 1128
    :cond_18
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    :goto_20
    if-ltz v1, :cond_bd

    .line 1129
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ne v3, p2, :cond_3b

    iget v3, v2, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    cmpl-float v3, v3, p3

    if-nez v3, :cond_3b

    iget v3, v2, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    cmpl-float v3, v3, p4

    if-nez v3, :cond_3b

    goto/16 :goto_bd

    :catchall_38
    move-exception p0

    goto/16 :goto_bf

    :cond_3b
    const-wide/32 v3, 0x20000

    .line 1135
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 1136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", brightness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", sdrBrightness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1139
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestDisplayStateInternal:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6, v5, p1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 1144
    :cond_79
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 1145
    iput p3, v2, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    .line 1146
    iput p4, v2, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    .line 1149
    iget-object p3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p3, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p3

    .line 1150
    invoke-virtual {p3}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result p4

    if-nez p4, :cond_93

    const/4 p4, 0x1

    if-eq p2, p4, :cond_93

    .line 1152
    monitor-exit v0

    return-void

    .line 1154
    :cond_93
    invoke-virtual {p3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object p0

    .line 1155
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p2

    if-eqz p2, :cond_b6

    .line 1156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "requestDisplayStateInternal:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v4, p2, p1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 1159
    :cond_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_e .. :try_end_b7} :catchall_38

    if-eqz p0, :cond_bc

    .line 1166
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_bc
    return-void

    .line 1132
    :cond_bd
    :goto_bd
    :try_start_bd
    monitor-exit v0

    return-void

    .line 1159
    :goto_bf
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_38

    throw p0
.end method

.method public resetBrightnessConfigurations()V
    .registers 5

    .line 3504
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 3505
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3504
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/display/PersistentDataStore;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 3506
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public resetUserPreferredDisplayModeInternal(I)V
    .registers 8

    .line 2861
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isModeSwitchWithoutSavingEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2864
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3f

    .line 2867
    :try_start_f
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_preferred_refresh_rate"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    .line 2870
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "user_preferred_resolution_height"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2873
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_preferred_resolution_width"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2876
    new-instance v4, Landroid/view/Display$Mode;

    invoke-direct {v4, v1, v3, v2}, Landroid/view/Display$Mode;-><init>(IIF)V

    goto :goto_47

    :catchall_3d
    move-exception p0

    goto :goto_4d

    .line 2878
    :cond_3f
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    .line 2879
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerService;->getStoredUserPreferredModeLocked(Lcom/android/server/display/DisplayDevice;)Landroid/view/Display$Mode;

    move-result-object v4

    :goto_47
    const/4 v1, 0x0

    .line 2881
    invoke-virtual {p0, p1, v4, v1}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;Z)V

    .line 2882
    monitor-exit v0

    return-void

    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_f .. :try_end_4e} :catchall_3d

    throw p0
.end method

.method public final resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V
    .registers 6

    .line 2306
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2307
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez p0, :cond_b

    .line 2308
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_10

    .line 2311
    :cond_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/VirtualDisplayAdapter;->resizeVirtualDisplayLocked(Landroid/os/IBinder;III)V

    .line 2312
    monitor-exit v0

    return-void

    :goto_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_9

    throw p0
.end method

.method public final restoreResolutionFromBackup()V
    .registers 9

    .line 1366
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_resolution_mode"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 1374
    :cond_12
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1375
    :try_start_15
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 1376
    invoke-virtual {v2, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v2

    if-nez v2, :cond_1f

    const/4 v2, 0x0

    goto :goto_23

    .line 1377
    :cond_1f
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    :goto_23
    if-nez v2, :cond_30

    .line 1379
    const-string p0, "DisplayManagerService"

    const-string v0, "No default display device present to restore resolution mode"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    monitor-exit v1

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_95

    .line 1383
    :cond_30
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getSupportedResolutionsLocked()[Landroid/graphics/Point;

    move-result-object v2

    .line 1384
    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_55

    .line 1385
    sget-boolean p0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz p0, :cond_53

    .line 1386
    const-string p0, "DisplayManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping resolution restore - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_53
    monitor-exit v1

    return-void

    :cond_55
    const/4 v4, 0x1

    if-ne v0, v4, :cond_59

    move v4, v3

    .line 1395
    :cond_59
    aget-object v2, v2, v4

    .line 1396
    new-instance v4, Landroid/view/Display$Mode;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 1397
    const-string v5, "DisplayManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restoring resolution from backup: ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    invoke-virtual {p0, v3, v4}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;)V

    .line 1400
    monitor-exit v1

    return-void

    :goto_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_15 .. :try_end_96} :catchall_2e

    throw p0
.end method

.method public final resumeWifiDisplayInternal()V
    .registers 2

    .line 1669
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1670
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_d

    .line 1671
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestResumeLocked()V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_f

    .line 1673
    :cond_d
    :goto_d
    monitor-exit v0

    return-void

    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_b

    throw p0
.end method

.method public final scheduleTopologiesReload(IZ)V
    .registers 5

    .line 1002
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    if-eqz v0, :cond_10

    .line 1004
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/display/DisplayManagerService;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method public final scheduleTraversalLocked(Z)V
    .registers 3

    .line 3734
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    .line 3735
    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez p1, :cond_13

    .line 3737
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_13
    return-void
.end method

.method public final sendDisplayEventFrameRateOverrideLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 7

    .line 3717
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isFramerateOverrideTriggersRrCallbacksEnabled()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_c

    const/16 v0, 0x8

    goto :goto_d

    :cond_c
    move v0, v1

    .line 3720
    :goto_d
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v2

    .line 3721
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 3723
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayEventsLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_32

    if-ne v0, v1, :cond_32

    .line 3725
    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoGroupsChangedLocked()I

    move-result v1

    .line 3726
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoChangeSource()Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v3}, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;-><init>(ILandroid/view/DisplayInfo$DisplayInfoChangeSource;Lcom/android/server/display/DisplayManagerService-IA;)V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3728
    :cond_32
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V
    .registers 8

    .line 3682
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v0

    const-wide/32 v1, 0x20000

    .line 3683
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 3684
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDisplayEventLocked#event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",displayEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_2a
    if-eqz v0, :cond_30

    .line 3691
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    return-void

    .line 3692
    :cond_30
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayEventLogging:Z

    if-eqz p0, :cond_4a

    .line 3693
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not Sending Display Event; display is not enabled: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    return-void
.end method

.method public final sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V
    .registers 7

    .line 3698
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 3699
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3700
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayEventsLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x2

    if-ne p2, v1, :cond_26

    .line 3702
    new-instance v1, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoGroupsChangedLocked()I

    move-result v2

    .line 3703
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoChangeSource()Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/android/server/display/DisplayManagerService$DisplayInfoChangedFields;-><init>(ILandroid/view/DisplayInfo$DisplayInfoChangeSource;Lcom/android/server/display/DisplayManagerService-IA;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3705
    :cond_26
    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayEventLogging:Z

    if-eqz p1, :cond_40

    .line 3706
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deliver Display Event on Handler: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DisplayManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    :cond_40
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendDisplayGroupEvent(II)V
    .registers 5

    .line 3712
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 3713
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAmbientColorTemperatureOverride(F)V
    .registers 4

    .line 3553
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3554
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 3555
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_14

    .line 3557
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setAmbientColorTemperatureOverride(F)V

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_16

    .line 3559
    :cond_14
    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_12

    throw p0
.end method

.method public setAreUserDisabledHdrTypesAllowedInternal(Z)V
    .registers 5

    .line 1769
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1770
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-ne v1, p1, :cond_b

    .line 1771
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_47

    .line 1773
    :cond_b
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 1774
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "are_user_disabled_hdr_formats_allowed"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1777
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    array-length v1, p1

    if-nez v1, :cond_1f

    .line 1778
    monitor-exit v0

    return-void

    :cond_1f
    const/4 v1, 0x0

    .line 1780
    new-array v1, v1, [I

    .line 1781
    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-nez v2, :cond_27

    goto :goto_28

    :cond_27
    move-object p1, v1

    .line 1785
    :goto_28
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/display/DisplayManagerService;[I)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 1793
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getHdrConversionModeInternal()Landroid/hardware/display/HdrConversionMode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_45

    .line 1795
    new-instance p1, Landroid/hardware/display/HdrConversionMode;

    invoke-direct {p1, v1}, Landroid/hardware/display/HdrConversionMode;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setHdrConversionModeInternal(Landroid/hardware/display/HdrConversionMode;)V

    .line 1798
    :cond_45
    monitor-exit v0

    return-void

    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_9

    throw p0
.end method

.method public setAutoBrightnessLoggingEnabled(Z)V
    .registers 4

    .line 3517
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3518
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 3519
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_14

    .line 3521
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setAutoBrightnessLoggingEnabled(Z)V

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_16

    .line 3523
    :cond_14
    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_12

    throw p0
.end method

.method public final setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12

    .line 3186
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 3187
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 3188
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 3190
    :try_start_e
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v2, p2}, Lcom/android/server/display/DisplayDeviceRepository;->getByUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayDevice;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_4e

    if-nez v2, :cond_1f

    .line 3206
    :try_start_16
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception p0

    goto :goto_71

    .line 3194
    :cond_1f
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v3, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 3195
    invoke-virtual {v3, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v3

    .line 3196
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/DisplayInfo;->type:I

    if-ne v3, v4, :cond_50

    if-eqz p1, :cond_50

    .line 3198
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [F

    .line 3199
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [F

    const/16 v6, 0x216

    .line 3197
    invoke-static {v6, v3, v5, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[F[FLjava/lang/String;)V

    goto :goto_50

    :catchall_4e
    move-exception p1

    goto :goto_6b

    .line 3203
    :cond_50
    :goto_50
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v3, p1, v2, v0, p4}, Lcom/android/server/display/PersistentDataStore;->setBrightnessConfigurationForDisplayLocked(Landroid/hardware/display/BrightnessConfiguration;Lcom/android/server/display/DisplayDevice;ILjava/lang/String;)Z
    :try_end_55
    .catchall {:try_start_1f .. :try_end_55} :catchall_4e

    .line 3206
    :try_start_55
    iget-object p4, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p4}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 3208
    iget p4, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    if-eq p3, p4, :cond_60

    .line 3209
    monitor-exit v1

    return-void

    .line 3211
    :cond_60
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService;->getDpcFromUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayPowerController;

    move-result-object p0

    if-eqz p0, :cond_69

    .line 3213
    invoke-virtual {p0, p1, v4}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V

    .line 3215
    :cond_69
    monitor-exit v1

    return-void

    .line 3206
    :goto_6b
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 3207
    throw p1

    .line 3215
    :goto_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_55 .. :try_end_72} :catchall_1d

    throw p0
.end method

.method public final setBrightnessInternal(IF)V
    .registers 5

    .line 4271
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4272
    const-string p0, "DisplayManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to set invalid brightness: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4275
    invoke-static {p2, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 4276
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 4277
    :try_start_26
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/DisplayPowerController;

    if-eqz p1, :cond_36

    .line 4279
    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayPowerController;->setBrightness(F)V

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_3d

    .line 4281
    :cond_36
    :goto_36
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 4282
    monitor-exit v0

    return-void

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_26 .. :try_end_3e} :catchall_34

    throw p0
.end method

.method public final setConnectionPreferenceInternal(Ljava/lang/String;I)V
    .registers 5

    .line 4286
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 4287
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayDeviceRepository;->getByUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    if-nez v1, :cond_25

    .line 4289
    const-string p0, "DisplayManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to set connection preference for a display that does not exist: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4291
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    goto :goto_34

    .line 4294
    :cond_25
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/display/PersistentDataStore;->setConnectionPreference(Lcom/android/server/display/DisplayDevice;I)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 4295
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 4297
    :cond_32
    monitor-exit v0

    return-void

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_23

    throw p0
.end method

.method public final setDisplayAccessUIDsInternal(Landroid/util/SparseArray;)V
    .registers 7

    .line 3385
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3386
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 3387
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_24

    .line 3388
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3389
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/IntArray;

    .line 3388
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :catchall_22
    move-exception p0

    goto :goto_26

    .line 3391
    :cond_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_22

    throw p0
.end method

.method public setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V
    .registers 7

    .line 1052
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1053
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 1055
    const-string/jumbo v1, "setDisplayInfoOverrideFromWindowManagerInternal"

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_24

    .line 1058
    :try_start_14
    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 1059
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1e

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_26

    .line 1062
    :cond_20
    :goto_20
    :try_start_20
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2a

    :catchall_24
    move-exception p0

    goto :goto_2c

    :goto_26
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1063
    throw p0

    .line 1065
    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_24

    throw p0
.end method

.method public setDisplayModeDirectorLoggingEnabled(Z)V
    .registers 3

    .line 3537
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3538
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->setLoggingEnabled(Z)V

    .line 3539
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final setDisplayOffsetsInternal(III)V
    .registers 9

    .line 3350
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3351
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    if-nez v1, :cond_f

    .line 3353
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_53

    .line 3355
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetXLocked()I

    move-result v2

    if-ne v2, p2, :cond_1b

    .line 3356
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetYLocked()I

    move-result v2

    if-eq v2, p3, :cond_51

    .line 3357
    :cond_1b
    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v2, :cond_4a

    .line 3358
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " burn-in offset set to ("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    :cond_4a
    invoke-virtual {v1, p2, p3}, Lcom/android/server/display/LogicalDisplay;->setDisplayOffsetsLocked(II)V

    const/4 p1, 0x0

    .line 3362
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 3364
    :cond_51
    monitor-exit v0

    return-void

    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_d

    throw p0
.end method

.method public setDisplayPropertiesInternal(IZFIFFZZZ)V
    .registers 22

    move/from16 v0, p9

    .line 3296
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 3297
    :try_start_5
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v2, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v2

    if-nez v2, :cond_13

    .line 3299
    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    move-object p0, v0

    goto/16 :goto_9a

    .line 3304
    :cond_13
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, p2, :cond_4a

    .line 3305
    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v3, :cond_45

    .line 3306
    const-string v3, "DisplayManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " hasContent flag changed: hasContent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", inTraversal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    :cond_45
    invoke-virtual {v2, p2}, Lcom/android/server/display/LogicalDisplay;->setHasContentLocked(Z)V

    move p2, v5

    goto :goto_4b

    :cond_4a
    move p2, v4

    .line 3314
    :goto_4b
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v3}, Lcom/android/server/display/mode/DisplayModeDirector;->getAppRequestObserver()Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    move-result-object v6

    move v7, p1

    move v9, p3

    move/from16 v8, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->setAppRequest(IIFFF)V

    .line 3319
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->isMinimalPostProcessingAllowed()Z

    move-result p1

    if-eqz p1, :cond_66

    if-eqz p7, :cond_66

    move p1, v5

    goto :goto_67

    :cond_66
    move p1, v4

    :goto_67
    if-eqz p1, :cond_71

    .line 3323
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->hdrConversionIntroducesLatencyLocked()Z

    move-result v3

    if-eqz v3, :cond_71

    move v3, v5

    goto :goto_72

    :cond_71
    move v3, v4

    .line 3325
    :goto_72
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getRequestedMinimalPostProcessingLocked()Z

    move-result v6

    if-eq v6, p1, :cond_7c

    .line 3326
    invoke-virtual {v2, p1}, Lcom/android/server/display/LogicalDisplay;->setRequestedMinimalPostProcessingLocked(Z)V

    move p2, v5

    :cond_7c
    if-eqz p2, :cond_81

    .line 3331
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 3334
    :cond_81
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    if-nez p1, :cond_87

    .line 3335
    monitor-exit v1

    return-void

    .line 3340
    :cond_87
    iget-boolean p2, p0, Lcom/android/server/display/DisplayManagerService;->mShouldDisableHdrConversion:Z

    if-nez p8, :cond_8d

    if-eqz v3, :cond_8e

    :cond_8d
    move v4, v5

    .line 3341
    :cond_8e
    iput-boolean v4, p0, Lcom/android/server/display/DisplayManagerService;->mShouldDisableHdrConversion:Z

    if-eq p2, v4, :cond_98

    .line 3343
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setHdrConversionModeInternal(Landroid/hardware/display/HdrConversionMode;)V

    .line 3344
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 3346
    :cond_98
    monitor-exit v1

    return-void

    :goto_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_5 .. :try_end_9b} :catchall_f

    throw p0
.end method

.method public final setDisplayScalingDisabledInternal(IZ)V
    .registers 8

    .line 3368
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3369
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    if-nez v1, :cond_f

    .line 3371
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_40

    .line 3373
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->isDisplayScalingDisabled()Z

    move-result v2

    if-eq v2, p2, :cond_3e

    .line 3374
    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v2, :cond_37

    .line 3375
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " content scaling disabled = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    :cond_37
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayScalingDisabledLocked(Z)V

    const/4 p1, 0x0

    .line 3378
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 3380
    :cond_3e
    monitor-exit v0

    return-void

    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_d

    throw p0
.end method

.method public setDisplayState(II)V
    .registers 4

    .line 948
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 949
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 950
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setDisplayWhiteBalanceLoggingEnabled(Z)V
    .registers 4

    .line 3527
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3528
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 3529
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_14

    .line 3531
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setDisplayWhiteBalanceLoggingEnabled(Z)V

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_16

    .line 3533
    :cond_14
    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_12

    throw p0
.end method

.method public setDisplayedContentSamplingEnabledInternal(IZII)Z
    .registers 5

    .line 3485
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 3489
    :cond_8
    invoke-static {p0, p2, p3, p4}, Landroid/view/SurfaceControl;->setDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z

    move-result p0

    return p0
.end method

.method public setDockedAndIdleEnabled(ZI)V
    .registers 4

    .line 3563
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3564
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 3565
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_13

    .line 3567
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->setAutomaticScreenBrightnessMode(I)V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 3571
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_11

    throw p0
.end method

.method public setHdrConversionModeInternal(Landroid/hardware/display/HdrConversionMode;)V
    .registers 9

    .line 3058
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService$Injector;->getHdrOutputConversionSupport()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 3062
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3063
    :try_start_c
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-ne v1, v2, :cond_26

    .line 3064
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    move-result v1

    if-ne v1, v3, :cond_1b

    goto :goto_26

    .line 3066
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "preferredHdrOutputType must not be set if the conversion mode is HDR_CONVERSION_SYSTEM"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_24
    move-exception p0

    goto :goto_6f

    .line 3069
    :cond_26
    :goto_26
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 3070
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->storeHdrConversionModeLocked(Landroid/hardware/display/HdrConversionMode;)V

    .line 3075
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_37

    .line 3076
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getEnabledHdrOutputTypesLocked()[I

    move-result-object v1

    goto :goto_38

    :cond_37
    move-object v1, v4

    .line 3079
    :goto_38
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v2

    .line 3080
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    move-result p1

    .line 3084
    iget-boolean v5, p0, Lcom/android/server/display/DisplayManagerService;->mShouldDisableHdrConversion:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_47

    :goto_45
    move v2, v6

    goto :goto_65

    :cond_47
    const/4 v4, 0x3

    if-ne v2, v4, :cond_59

    if-ne p1, v3, :cond_59

    .line 3095
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    move v3, p1

    move-object v4, v1

    goto :goto_45

    .line 3102
    :cond_59
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v4, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v3, v4}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    move v3, p1

    move-object v4, v1

    .line 3110
    :goto_65
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/display/DisplayManagerService$Injector;->setHdrConversionMode(II[I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mSystemPreferredHdrOutputType:I

    .line 3112
    monitor-exit v0

    return-void

    :goto_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_c .. :try_end_70} :catchall_24

    throw p0
.end method

.method public setMinimalPostProcessingAllowed(Z)V
    .registers 3

    .line 977
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 978
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mMinimalPostProcessingAllowed:Z

    .line 979
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setRefreshRateSwitchingTypeInternal(I)V
    .registers 2

    .line 3167
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->setModeSwitchingType(I)V

    return-void
.end method

.method public setShouldAlwaysRespectAppRequestedModeInternal(Z)V
    .registers 2

    .line 3159
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->setShouldAlwaysRespectAppRequestedMode(Z)V

    return-void
.end method

.method public final setStableDisplaySizeLocked(II)V
    .registers 4

    .line 2839
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 2841
    :try_start_7
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p1, v0}, Lcom/android/server/display/PersistentDataStore;->setStableDisplaySize(Landroid/graphics/Point;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_12

    .line 2843
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    return-void

    :catchall_12
    move-exception p1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2844
    throw p1
.end method

.method public setUserDisabledHdrTypesInternal([I)V
    .registers 6

    .line 1712
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    if-nez p1, :cond_10

    .line 1714
    :try_start_5
    const-string p0, "DisplayManagerService"

    const-string p1, "Null is not an expected argument to setUserDisabledHdrTypesInternal"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_64

    .line 1720
    :cond_10
    sget-object v1, Landroid/view/Display$HdrCapabilities;->HDR_TYPES:[I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/DisplayManagerService;->isSubsetOf([I[I)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1721
    const-string p0, "DisplayManagerService"

    const-string/jumbo p1, "userDisabledHdrTypes contains unexpected types"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    monitor-exit v0

    return-void

    .line 1725
    :cond_22
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 1726
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1727
    monitor-exit v0

    return-void

    .line 1730
    :cond_2f
    const-string v1, ""

    .line 1731
    array-length v2, p1

    if-eqz v2, :cond_46

    .line 1732
    const-string v1, ","

    .line 1733
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 1732
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1735
    :cond_46
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_disabled_hdr_formats"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1737
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 1738
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-nez v1, :cond_62

    .line 1739
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayManagerService;[I)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 1754
    :cond_62
    monitor-exit v0

    return-void

    :goto_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_5 .. :try_end_65} :catchall_e

    throw p0
.end method

.method public setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;)V
    .registers 4

    const/4 v0, 0x1

    .line 2886
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;Z)V

    return-void
.end method

.method public setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;Z)V
    .registers 7

    .line 2891
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    const/4 v1, -0x1

    if-eqz p2, :cond_1a

    .line 2892
    :try_start_6
    invoke-static {p2}, Lcom/android/server/display/DisplayManagerService;->isResolutionAndRefreshRateValid(Landroid/view/Display$Mode;)Z

    move-result v2

    if-nez v2, :cond_1a

    if-eq p1, v1, :cond_f

    goto :goto_1a

    .line 2894
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width, height and refresh rate of mode should be greater than 0 when setting the global user preferred display mode."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_18
    move-exception p0

    goto :goto_44

    .line 2897
    :cond_1a
    :goto_1a
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    if-nez v2, :cond_22

    .line 2899
    monitor-exit v0

    return-void

    .line 2901
    :cond_22
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isModeSwitchWithoutSavingEnabled()Z

    move-result v2

    if-nez v2, :cond_2b

    const/4 p3, 0x1

    :cond_2b
    if-eqz p3, :cond_30

    .line 2905
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->storeModeLocked(ILandroid/view/Display$Mode;)V

    :cond_30
    if-eq p1, v1, :cond_36

    .line 2908
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredModeForDisplayLocked(ILandroid/view/Display$Mode;)V

    goto :goto_42

    .line 2910
    :cond_36
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 2911
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    new-instance p1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda12;

    invoke-direct {p1, p2}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda12;-><init>(Landroid/view/Display$Mode;)V

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 2915
    :goto_42
    monitor-exit v0

    return-void

    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_6 .. :try_end_45} :catchall_18

    throw p0
.end method

.method public final setUserPreferredModeForDisplayLocked(ILandroid/view/Display$Mode;)V
    .registers 3

    .line 2971
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 2973
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    :cond_9
    return-void
.end method

.method public final setVirtualDisplayRotationInternal(Landroid/os/IBinder;I)V
    .registers 5

    .line 2345
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2346
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_b

    .line 2347
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_2a

    .line 2349
    :cond_b
    invoke-virtual {v1, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->getDisplayDevice(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    if-nez p1, :cond_13

    .line 2351
    monitor-exit v0

    return-void

    .line 2353
    :cond_13
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-nez p1, :cond_1d

    .line 2355
    monitor-exit v0

    return-void

    .line 2357
    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    .line 2358
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_9

    .line 2359
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const-string v0, "Virtual Display"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerInternal;->setNonDefaultDisplayRotation(IILjava/lang/String;)V

    return-void

    .line 2358
    :goto_2a
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_9

    throw p0
.end method

.method public final setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 4

    .line 2316
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2317
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez p0, :cond_b

    .line 2318
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_10

    .line 2321
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setVirtualDisplaySurfaceLocked(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 2322
    monitor-exit v0

    return-void

    :goto_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_9

    throw p0
.end method

.method public final setupLogicalDisplay(Lcom/android/server/display/LogicalDisplay;)V
    .registers 7

    .line 2429
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 2430
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    move v3, v2

    .line 2432
    :goto_e
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->configureColorModeLocked(Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    .line 2433
    iget-boolean v4, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-nez v4, :cond_1a

    .line 2434
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    invoke-virtual {p1, v4}, Lcom/android/server/display/LogicalDisplay;->setUserDisabledHdrTypes([I)V

    :cond_1a
    if-eqz v3, :cond_25

    .line 2437
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->notifyDefaultDisplayDeviceUpdated(Lcom/android/server/display/LogicalDisplay;)V

    .line 2438
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->recordStableDisplayStatsIfNeededLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 2439
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 2441
    :cond_25
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    if-eqz v3, :cond_2d

    .line 2442
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    goto :goto_30

    .line 2444
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->configurePreferredDisplayModeLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 2447
    :goto_30
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->addDisplayPowerControllerLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 2449
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getLeadDisplayIdLocked()I

    move-result v3

    .line 2450
    invoke-virtual {p0, v0, v3}, Lcom/android/server/display/DisplayManagerService;->updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerController;I)V

    .line 2454
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0, v1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    invoke-virtual {v0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 2465
    :cond_47
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 2467
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 2468
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    invoke-direct {v4, v0, v0}, Lcom/android/server/display/DisplayManagerService$BrightnessPair;-><init>(FF)V

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2471
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayContentModeManagementEnabled()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2472
    invoke-virtual {p0, p1, v2}, Lcom/android/server/display/DisplayManagerService;->updateCanHostTasksIfNeededLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 2475
    :cond_67
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    return-void
.end method

.method public setupSchedulerPolicies()V
    .registers 2

    .line 727
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result p0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 729
    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result p0

    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 731
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->get()Lcom/android/server/wm/SurfaceAnimationThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result p0

    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    return-void
.end method

.method public final setupTaskStackListener()V
    .registers 3

    .line 3851
    new-instance v0, Lcom/android/server/display/DisplayManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$4;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 3859
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 3861
    const-string v0, "DisplayManagerService"

    const-string v1, "Failed to call registerTaskStackListener"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public shouldAlwaysRespectAppRequestedModeInternal()Z
    .registers 1

    .line 3163
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->shouldAlwaysRespectAppRequestedMode()Z

    move-result p0

    return p0
.end method

.method public shouldIncludeDefaultDisplayInTopology()Z
    .registers 3

    .line 2514
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$Injector;->isDesktopModeSupportedOnInternalDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mIncludeDefaultDisplayInTopology:Z

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public shouldMirrorBuiltInDisplay()Z
    .registers 1

    .line 994
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mMirrorBuiltInDisplay:Z

    return p0
.end method

.method public final shouldRegisterNonEssentialDisplayAdaptersLocked()Z
    .registers 1

    .line 2413
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final startWifiDisplayScanInternal(I)V
    .registers 4

    .line 1605
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1606
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    if-eqz p1, :cond_14

    .line 1611
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 1612
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_1c

    .line 1608
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1612
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_12

    throw p0
.end method

.method public final startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 3

    .line 1616
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    .line 1617
    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 1618
    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez p1, :cond_16

    .line 1619
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_16

    .line 1620
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestStartScanLocked()V

    :cond_16
    return-void
.end method

.method public final stopWifiDisplayScanInternal(I)V
    .registers 4

    .line 1627
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1628
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    if-eqz p1, :cond_14

    .line 1633
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 1634
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_1c

    .line 1630
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1634
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_12

    throw p0
.end method

.method public final stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 4

    .line 1638
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    .line 1639
    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 1640
    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez p1, :cond_17

    .line 1641
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_34

    .line 1642
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestStopScanLocked()V

    return-void

    :cond_17
    if-gez p1, :cond_34

    .line 1645
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWifiDisplayScanRequestCount became negative: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DisplayManagerService"

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    :cond_34
    return-void
.end method

.method public final storeHdrConversionModeLocked(Landroid/hardware/display/HdrConversionMode;)V
    .registers 5

    .line 2782
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdr_conversion_mode"

    .line 2783
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v2

    .line 2782
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2785
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    .line 2786
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    move-result p1

    goto :goto_1c

    :cond_1b
    const/4 p1, -0x1

    .line 2788
    :goto_1c
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hdr_force_conversion_type"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final storeModeInGlobalSettingsLocked(IIF)V
    .registers 6

    .line 2979
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_preferred_refresh_rate"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 2981
    iget-object p3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string/jumbo v0, "user_preferred_resolution_height"

    invoke-static {p3, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2983
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "user_preferred_resolution_width"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final storeModeInPersistentDataStoreLocked(IIIF)V
    .registers 7

    .line 2936
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_50

    .line 2941
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/display/PersistentDataStore;->setUserPreferredResolution(Lcom/android/server/display/DisplayDevice;II)Z

    .line 2943
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1, v0, p4}, Lcom/android/server/display/PersistentDataStore;->setUserPreferredRefreshRate(Lcom/android/server/display/DisplayDevice;F)Z
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_51

    .line 2945
    iget-object p4, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p4}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2953
    iget-object p4, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isResolutionBackupRestoreEnabled()Z

    move-result p4

    if-eqz p4, :cond_50

    if-nez p1, :cond_50

    .line 2957
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getSupportedResolutionsLocked()[Landroid/graphics/Point;

    move-result-object p1

    .line 2958
    array-length p4, p1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_50

    .line 2959
    new-instance p4, Landroid/graphics/Point;

    invoke-direct {p4, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    const/4 p2, 0x0

    .line 2960
    aget-object p3, p1, p2

    invoke-virtual {p4, p3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_39

    move v0, v1

    goto :goto_43

    .line 2961
    :cond_39
    aget-object p1, p1, v1

    invoke-virtual {p4, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    goto :goto_43

    :cond_42
    move v0, p2

    .line 2963
    :goto_43
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "screen_resolution_mode"

    const/4 p2, -0x2

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_50
    :goto_50
    return-void

    :catchall_51
    move-exception p1

    .line 2945
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 2946
    throw p1
.end method

.method public storeModeLocked(ILandroid/view/Display$Mode;)V
    .registers 6

    const/4 v0, -0x1

    if-nez p2, :cond_5

    move v1, v0

    goto :goto_9

    .line 2920
    :cond_5
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    :goto_9
    if-nez p2, :cond_d

    move v2, v0

    goto :goto_11

    .line 2922
    :cond_d
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    :goto_11
    if-nez p2, :cond_15

    const/4 p2, 0x0

    goto :goto_19

    .line 2924
    :cond_15
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p2

    :goto_19
    if-ne p1, v0, :cond_1f

    .line 2926
    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/display/DisplayManagerService;->storeModeInGlobalSettingsLocked(IIF)V

    return-void

    .line 2929
    :cond_1f
    invoke-virtual {p0, p1, v2, v1, p2}, Lcom/android/server/display/DisplayManagerService;->storeModeInPersistentDataStoreLocked(IIIF)V

    return-void
.end method

.method public systemReady(Z)V
    .registers 6

    .line 889
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 890
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    const/4 p1, 0x1

    .line 891
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 892
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 893
    invoke-virtual {v1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->isHdrOutputControlFeatureEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mIsHdrOutputControlEnabled:Z

    .line 894
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 899
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 901
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->updateMinimalPostProcessingAllowedSettingLocked()V

    .line 902
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->updateUserDisabledHdrTypesFromSettingsLocked()V

    .line 903
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->updateUserPreferredDisplayModeSettingsLocked()V

    .line 904
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mIsHdrOutputControlEnabled:Z

    if-eqz v1, :cond_3c

    .line 905
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->updateHdrConversionModeSettingsLocked()V

    goto :goto_3c

    :catchall_39
    move-exception p0

    goto/16 :goto_d0

    .line 907
    :cond_3c
    :goto_3c
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayContentModeManagementEnabled()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 908
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayManagerService;->updateMirrorBuiltInDisplaySettingLocked(Z)Z

    .line 911
    :cond_47
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDefaultDisplayInTopologySwitchEnabled()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 912
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 913
    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayManagerService$Injector;->isDesktopModeSupportedOnInternalDisplay(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 914
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getIncludeDefaultDisplayInTopologySetting()Z

    move-result v1

    if-eqz v1, :cond_60

    goto :goto_61

    :cond_60
    move p1, v2

    :cond_61
    :goto_61
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mIncludeDefaultDisplayInTopology:Z

    .line 916
    :cond_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_39

    .line 918
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    new-instance v0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector;->setDesiredDisplayModeSpecsListener(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;)V

    .line 920
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector;->start(Landroid/hardware/SensorManager;)V

    .line 922
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 924
    new-instance p1, Lcom/android/server/display/DisplayManagerService$SettingsObserver;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayManagerService$SettingsObserver;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayManagerService$SettingsObserver;

    .line 926
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-virtual {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->startSynchronizing()V

    .line 928
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 929
    const-string v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 930
    const-string v0, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 931
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mIdleModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 935
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isResolutionBackupRestoreEnabled()Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 936
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.os.action.SETTING_RESTORED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mResolutionRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 940
    :cond_b8
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isSmallAreaDetectionEnabled()Z

    move-result p1

    if-eqz p1, :cond_c7

    .line 941
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/display/SmallAreaDetectionController;->create(Landroid/content/Context;)Lcom/android/server/display/SmallAreaDetectionController;

    move-result-object p1

    goto :goto_c8

    :cond_c7
    const/4 p1, 0x0

    :goto_c8
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSmallAreaDetectionController:Lcom/android/server/display/SmallAreaDetectionController;

    .line 943
    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTopologiesReload(IZ)V

    return-void

    .line 916
    :goto_d0
    :try_start_d0
    monitor-exit v0
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_39

    throw p0
.end method

.method public final systemScreenshotInternal(I)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;
    .registers 5

    .line 3419
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3420
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 3422
    monitor-exit v0

    return-object v2

    :catchall_c
    move-exception p0

    goto :goto_44

    .line 3424
    :cond_e
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-nez p0, :cond_18

    .line 3426
    monitor-exit v0

    return-object v2

    .line 3429
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p0

    .line 3430
    new-instance p1, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;

    invoke-direct {p1, v1}, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 3432
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;->setSize(II)Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 3433
    invoke-virtual {p0, p1}, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;->setSecureContentPolicy(I)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;

    .line 3435
    invoke-virtual {p0, p1}, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;->setProtectedContentPolicy(I)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;

    .line 3437
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;->build()Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;

    move-result-object p0

    .line 3438
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_c

    .line 3439
    invoke-static {p0}, Landroid/window/ScreenCaptureInternal;->captureDisplay(Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0

    .line 3438
    :goto_44
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_c

    throw p0
.end method

.method public final systemScreenshotInternal(ILandroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)V
    .registers 5

    .line 3448
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3449
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p0

    .line 3450
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1b

    if-nez p0, :cond_f

    const/4 p0, 0x1

    .line 3452
    invoke-virtual {p3, p0}, Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;->onError(I)V

    return-void

    .line 3455
    :cond_f
    invoke-virtual {p2, p0}, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;->setDisplayToken(Landroid/os/IBinder;)Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;->build()Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;

    move-result-object p0

    .line 3456
    invoke-static {p0, p3}, Landroid/window/ScreenCaptureInternal;->captureDisplay(Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;Landroid/window/ScreenCaptureInternal$ScreenCaptureListener;)V

    return-void

    :catchall_1b
    move-exception p0

    .line 3450
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2

    .line 1047
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateCanHostTasksIfNeededLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .registers 4

    .line 2817
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mMirrorBuiltInDisplay:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/display/LogicalDisplay;->setCanHostTasksLocked(Z)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_10

    const/4 p2, 0x2

    .line 2818
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    :cond_10
    return-void
.end method

.method public final updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerController;I)V
    .registers 6

    .line 2581
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerController;->getLeadDisplayId()I

    move-result v0

    if-ne v0, p2, :cond_7

    goto :goto_2a

    .line 2587
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerController;->getLeadDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 2589
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 2590
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    if-eqz v0, :cond_1b

    .line 2592
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerController;->removeDisplayBrightnessFollower(Lcom/android/server/display/DisplayPowerController;)V

    :cond_1b
    if-eq p2, v1, :cond_2a

    .line 2598
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 2599
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_2a

    .line 2601
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->addDisplayBrightnessFollower(Lcom/android/server/display/DisplayPowerController;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;
    .registers 6

    .line 2718
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 2719
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    if-nez v0, :cond_35

    .line 2720
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    if-nez v0, :cond_14

    return-object v1

    .line 2724
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v2

    .line 2725
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-eqz v3, :cond_35

    .line 2729
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    .line 2730
    iget v1, p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    .line 2734
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffloadSessionLocked()Lcom/android/server/display/DisplayOffloadSessionImpl;

    move-result-object v0

    .line 2730
    invoke-virtual {p1, v3, v1, p0, v0}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0

    :cond_35
    return-object v1
.end method

.method public updateHdrConversionModeSettingsLocked()V
    .registers 5

    .line 2794
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdr_conversion_mode"

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultHdrConversionMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    .line 2797
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hdr_force_conversion_type"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_20

    :cond_1f
    const/4 v1, -0x1

    .line 2801
    :goto_20
    new-instance v2, Landroid/hardware/display/HdrConversionMode;

    invoke-direct {v2, v0, v1}, Landroid/hardware/display/HdrConversionMode;-><init>(II)V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    .line 2802
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayManagerService;->setHdrConversionModeInternal(Landroid/hardware/display/HdrConversionMode;)V

    return-void
.end method

.method public final updateLogicalDisplayState(Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 2479
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 2481
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_d
    const/4 p1, 0x0

    .line 2483
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    return-void
.end method

.method public final updateMinimalPostProcessingAllowedSettingLocked()V
    .registers 5

    .line 1293
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 1294
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    .line 1293
    const-string/jumbo v2, "minimal_post_processing_allowed"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayManagerService;->setMinimalPostProcessingAllowed(Z)V

    return-void
.end method

.method public final updateMirrorBuiltInDisplaySettingLocked(Z)Z
    .registers 7

    .line 1300
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayMirrorInLockTaskModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1301
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getLockTaskModeState()I

    move-result v0

    if-ne v0, v2, :cond_14

    :goto_12
    move v0, v2

    goto :goto_26

    .line 1309
    :cond_14
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1310
    const-string/jumbo v3, "mirror_built_in_display"

    const/4 v4, -0x2

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_12

    :cond_25
    move v0, v1

    .line 1313
    :goto_26
    iget-boolean v3, p0, Lcom/android/server/display/DisplayManagerService;->mMirrorBuiltInDisplay:Z

    if-ne v3, v0, :cond_2b

    return v1

    .line 1318
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update mirrorBuiltInDisplaySetting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", shouldSendDisplayChangeEvent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DisplayManagerService"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mMirrorBuiltInDisplay:Z

    .line 1321
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayContentModeManagementEnabled()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1322
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/display/DisplayManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    :cond_5d
    return v2
.end method

.method public final updateUserDisabledHdrTypesFromSettingsLocked()V
    .registers 5

    .line 1404
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 1405
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1404
    const-string v1, "are_user_disabled_hdr_formats_allowed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    move v2, v1

    :goto_12
    iput-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 1409
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "user_disabled_hdr_formats"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 1414
    :try_start_23
    const-string v2, ","

    .line 1415
    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1416
    array-length v2, v0

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 1417
    :goto_2e
    array-length v2, v0

    if-ge v1, v2, :cond_40

    .line 1418
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :catch_3e
    move-exception v0

    goto :goto_4f

    .line 1421
    :cond_40
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-nez v0, :cond_4e

    .line 1422
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_4e} :catch_3e

    :cond_4e
    return-void

    .line 1430
    :goto_4f
    const-string v1, "DisplayManagerService"

    const-string v2, "Failed to parse USER_DISABLED_HDR_FORMATS. Clearing the setting."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1432
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->clearUserDisabledHdrTypesLocked()V

    return-void

    .line 1435
    :cond_5a
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->clearUserDisabledHdrTypesLocked()V

    return-void
.end method

.method public final updateUserPreferredDisplayModeSettingsLocked()V
    .registers 6

    .line 1448
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_preferred_refresh_rate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 1450
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_preferred_resolution_height"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1452
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "user_preferred_resolution_width"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1454
    new-instance v3, Landroid/view/Display$Mode;

    invoke-direct {v3, v2, v1, v0}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 1455
    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->isResolutionAndRefreshRateValid(Landroid/view/Display$Mode;)Z

    move-result v0

    if-eqz v0, :cond_36

    move-object v0, v3

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    if-eqz v0, :cond_46

    .line 1457
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    new-instance v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;

    invoke-direct {v0, v3}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;-><init>(Landroid/view/Display$Mode;)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    return-void

    .line 1461
    :cond_46
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final updateViewportPowerStateLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 9

    .line 3663
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    .line 3664
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    .line 3665
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;

    move-result-object v0

    .line 3666
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 3667
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_19
    :goto_19
    if-ge v3, v2, :cond_44

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/hardware/display/DisplayViewport;

    .line 3668
    iget v5, v4, Landroid/hardware/display/DisplayViewport;->type:I

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_19

    iget-object v5, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget-object v6, v4, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 3670
    iget v5, p1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    invoke-static {v5}, Landroid/view/Display;->isActiveState(I)Z

    move-result v5

    iput-boolean v5, v4, Landroid/hardware/display/DisplayViewport;->isActive:Z

    goto :goto_19

    .line 3673
    :cond_44
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    if-eqz p1, :cond_4e

    .line 3674
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4e
    return-void
.end method

.method public final userScreenshotInternal(I)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;
    .registers 3

    .line 3461
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 3462
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    .line 3464
    monitor-exit v0

    return-object p0

    :catchall_c
    move-exception p0

    goto :goto_1d

    .line 3467
    :cond_e
    new-instance p1, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;

    invoke-direct {p1, p0}, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p1}, Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs$Builder;->build()Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;

    move-result-object p0

    .line 3468
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_c

    .line 3469
    invoke-static {p0}, Landroid/window/ScreenCaptureInternal;->captureDisplay(Landroid/window/ScreenCaptureInternal$DisplayCaptureArgs;)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0

    .line 3468
    :goto_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_c

    throw p0
.end method

.method public validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 2

    if-nez p1, :cond_3

    goto :goto_9

    .line 3233
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->isBrightnessConfigurationTooDark(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result p0

    if-nez p0, :cond_a

    :goto_9
    return-void

    .line 3234
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "brightness curve is too dark"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public windowManagerAndInputReady()V
    .registers 6

    .line 857
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 858
    :try_start_3
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 859
    const-class v1, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 860
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    if-eqz v1, :cond_41

    .line 861
    invoke-virtual {v1}, Lcom/android/server/display/DisplayTopologyCoordinator;->getTopology()Landroid/hardware/display/DisplayTopology;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/DisplayTopology;->getGraph()Landroid/hardware/display/DisplayTopologyGraph;

    move-result-object v1

    .line 862
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending topology graph to Input Manager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/input/InputManagerInternal;->setDisplayTopology(Landroid/hardware/display/DisplayTopologyGraph;)V

    goto :goto_41

    :catchall_3f
    move-exception p0

    goto :goto_9a

    .line 865
    :cond_41
    :goto_41
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 866
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 869
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 870
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mUidImportanceListener:Lcom/android/server/display/DisplayManagerService$UidImportanceListener;

    const/16 v3, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 872
    const-class v1, Landroid/hardware/devicestate/DeviceStateManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManagerInternal;

    .line 873
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 876
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayMirrorInLockTaskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 877
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->setupTaskStackListener()V

    .line 880
    :cond_8f
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplayMapper;->onWindowManagerReady()V

    const/4 v1, 0x0

    .line 881
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 882
    monitor-exit v0

    return-void

    :goto_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_3 .. :try_end_9b} :catchall_3f

    throw p0
.end method
