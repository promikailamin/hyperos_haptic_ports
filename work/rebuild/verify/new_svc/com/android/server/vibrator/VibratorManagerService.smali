.class public Lcom/android/server/vibrator/VibratorManagerService;
.super Landroid/os/IVibratorManagerService$Stub;
.source "VibratorManagerService.java"


# static fields
.field public static final ATTRIBUTES_ALL_BYPASS_FLAGS:I = 0x3

.field public static final BATTERY_STATS_REPEATING_VIBRATION_DURATION:J = 0x1388L

.field public static final DEBUG:Z

.field public static final DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final EXTERNAL_VIBRATOR_SERVICE:Ljava/lang/String; = "external_vibrator_service"

.field public static final TAG:Ljava/lang/String; = "VibratorManagerService"

.field public static final VIBRATION_CANCEL_WAIT_MILLIS:J = 0x1388L

.field public static final VIBRATOR_CONTROL_SERVICE:Ljava/lang/String; = "android.frameworks.vibrator.IVibratorControlService/default"


# instance fields
.field public final mAlwaysOnEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;",
            ">;"
        }
    .end annotation
.end field

.field public final mAppOps:Landroid/app/AppOpsManager;

.field final mAppOpsChangeListener:Landroid/app/AppOpsManager$OnOpChangedInternalListener;

.field public final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field public mCombinedVibratorInfo:Landroid/os/VibratorInfo;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

.field public final mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

.field public final mExternalVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

.field public final mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

.field public final mHandler:Landroid/os/Handler;

.field public mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

.field public final mInjector:Lcom/android/server/vibrator/VibratorManagerService$Injector;

.field public final mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mLock:Ljava/lang/Object;

.field public mNextSession:Lcom/android/server/vibrator/VibrationSession;

.field public mServiceReady:Z

.field public final mVendorVibrationSessionCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

.field public final mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

.field public final mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

.field final mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

.field public final mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

.field public final mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

.field public final mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

.field public mVibratorInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibratorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

.field public final mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$rXhWvF1lD_f_yVejOjQFqDQ3HaI(ILcom/android/server/vibrator/HalVibrator;)V
    .registers 3

    const/4 v0, 0x0

    .line 485
    invoke-interface {p1, p0, v0}, Lcom/android/server/vibrator/HalVibrator;->setAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$xOpci0RbcHC-sEiRFFjNoz0ve94(Landroid/os/VibrationEffect;Lcom/android/server/vibrator/HalVibrator;)Landroid/os/VibrationEffect;
    .registers 2

    .line 0
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryStatsService(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/internal/app/IBatteryStats;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExternalVibrationCallbacks(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mExternalVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrameworkStatsLogger(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNextSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVibrationScaler(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationScaler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVibrationThread(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVibratorManager(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/HalVibratorManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNextSession(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearCurrentSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->clearCurrentSessionLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearNextSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateSessionVibrationStepConductor(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;)Lcom/android/server/vibrator/VibrationStepConductor;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->createSessionVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcreateVibrationAttemptDebugInfo(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishAppOpModeLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfixupVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCombinedVibratorInfo(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/os/VibratorInfo;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getCombinedVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeClearCurrentAndNextSessionsLocked(Lcom/android/server/vibrator/VibratorManagerService;Ljava/util/function/Predicate;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->maybeClearCurrentAndNextSessionsLocked(Ljava/util/function/Predicate;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeStartNextSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->maybeStartNextSessionLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSyncedVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->onSyncedVibrationComplete(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;IJJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/vibrator/VibratorManagerService;->onVibrationComplete(IJJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monVibrationSessionComplete(Lcom/android/server/vibrator/VibratorManagerService;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->onVibrationSessionComplete(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetExternalControl(Lcom/android/server/vibrator/VibratorManagerService;ZLcom/android/server/vibrator/VibrationStats;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(ZLcom/android/server/vibrator/VibrationStats;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldCancelAppOpModeChangedLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelAppOpModeChangedLocked(Lcom/android/server/vibrator/VibrationSession;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldCancelOnFgUserRequest(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelOnFgUserRequest(Lcom/android/server/vibrator/VibrationSession;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibrationSession;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mshouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smisEffectValid(Landroid/os/CombinedVibration;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeGetFinalizer()J
    .registers 2

    .line 0
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerService;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 126
    const-string v0, "VibratorManagerService"

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorDebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    .line 127
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 128
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorManagerService$Injector;)V
    .registers 14

    .line 303
    invoke-direct {p0}, Landroid/os/IVibratorManagerService$Stub;-><init>()V

    .line 164
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 175
    new-instance v7, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    iput-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 177
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

    invoke-direct {v0, p0, v8}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mExternalVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

    .line 179
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

    invoke-direct {v0, p0, v8}, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVendorVibrationSessionCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

    .line 181
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    .line 205
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$1;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    new-instance v9, Lcom/android/server/vibrator/VibratorManagerService$2;

    invoke-direct {v9, p0}, Lcom/android/server/vibrator/VibratorManagerService$2;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    iput-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOpsChangeListener:Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    .line 304
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 305
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInjector:Lcom/android/server/vibrator/VibratorManagerService$Injector;

    .line 306
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    .line 307
    invoke-virtual {p2, v10}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->getFrameworkStatsLogger(Landroid/os/Handler;)Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 309
    new-instance v0, Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/vibrator/VibrationConfig;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 310
    new-instance v4, Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {v4, p1, v10, v0}, Lcom/android/server/vibrator/VibrationSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;)V

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 311
    new-instance v3, Lcom/android/server/vibrator/VibrationScaler;

    invoke-direct {v3, v0, v4}, Lcom/android/server/vibrator/VibrationScaler;-><init>(Landroid/os/vibrator/VibrationConfig;Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 312
    new-instance v0, Lcom/android/server/vibrator/VibratorControlService;

    .line 313
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createVibratorControllerHolder()Lcom/android/server/vibrator/VibratorControllerHolder;

    move-result-object v2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vibrator/VibratorControlService;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorControllerHolder;Lcom/android/server/vibrator/VibrationScaler;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    .line 315
    new-instance p1, Lcom/android/server/vibrator/InputDeviceDelegate;

    invoke-direct {p1, v1, v10}, Lcom/android/server/vibrator/InputDeviceDelegate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    .line 317
    new-instance p1, Lcom/android/server/vibrator/VibratorManagerService$HalListener;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibratorManagerService$HalListener;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    .line 320
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createNativeHalVibratorManager()Lcom/android/server/vibrator/HalVibratorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    .line 321
    invoke-interface {v0, p1, p1}, Lcom/android/server/vibrator/HalVibratorManager;->init(Lcom/android/server/vibrator/HalVibratorManager$Callbacks;Lcom/android/server/vibrator/HalVibrator$Callbacks;)V

    .line 323
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x10e0132

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 325
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e012f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 327
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e012e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 330
    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-direct {v4, p1, v2, v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;-><init>(III)V

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    .line 333
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->getBatteryStatsService()Lcom/android/internal/app/IBatteryStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 335
    const-class p1, Landroid/app/AppOpsManager;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v2, 0x3

    .line 336
    invoke-virtual {p1, v2, v8, v9}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 338
    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 339
    const-string v2, "*vibrator*"

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 340
    invoke-virtual {p1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 341
    new-instance v2, Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {v2, p1, v7}, Lcom/android/server/vibrator/VibrationThread;-><init>(Landroid/os/PowerManager$WakeLock;Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;)V

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    .line 342
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 344
    invoke-interface {v0}, Lcom/android/server/vibrator/HalVibratorManager;->getVibratorIds()[I

    move-result-object p1

    .line 345
    new-instance v0, Landroid/util/SparseArray;

    array-length v2, p1

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 346
    array-length v2, p1

    const/4 v3, 0x0

    :goto_e9
    if-ge v3, v2, :cond_f9

    aget v4, p1, v3

    .line 347
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {v5, v4}, Lcom/android/server/vibrator/HalVibratorManager;->getVibrator(I)Lcom/android/server/vibrator/HalVibrator;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e9

    .line 351
    :cond_f9
    new-instance p1, Lcom/android/server/vibrator/DeviceAdapter;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p1, v2, v0}, Lcom/android/server/vibrator/DeviceAdapter;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/util/SparseArray;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    .line 353
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 354
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/android/server/pm/UserManagerInternal;->shouldShowNotificationForBackgroundUserSounds()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 356
    const-string v0, "com.android.server.ACTION_MUTE_BG_USER"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    :cond_117
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 360
    new-instance p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    const-string v0, "external_vibrator_service"

    invoke-virtual {p2, v0, p1}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 361
    const-string p1, "android.frameworks.vibrator.IVibratorControlService/default"

    invoke-virtual {p2, p1}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->isServiceDeclared(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 362
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    invoke-virtual {p2, p1, p0}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_134
    return-void
.end method

.method public static extractPrebakedSegment(Landroid/os/VibrationEffect;)Landroid/os/vibrator/PrebakedSegment;
    .registers 3

    .line 1693
    instance-of v0, p0, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_23

    check-cast p0, Landroid/os/VibrationEffect$Composed;

    .line 1694
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 1695
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 1696
    instance-of v0, p0, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v0, :cond_23

    check-cast p0, Landroid/os/vibrator/PrebakedSegment;

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVibrationImportance(Lcom/android/server/vibrator/VibrationSession;)I
    .registers 3

    .line 1413
    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/16 v1, 0x21

    if-nez v0, :cond_18

    .line 1415
    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->isRepeating()Z

    move-result p0

    if-eqz p0, :cond_16

    move v0, v1

    goto :goto_18

    :cond_16
    const/16 v0, 0x12

    :cond_18
    :goto_18
    const/16 p0, 0x11

    if-eq v0, p0, :cond_3c

    if-eq v0, v1, :cond_3a

    const/16 p0, 0x22

    if-eq v0, p0, :cond_38

    const/16 p0, 0x31

    if-eq v0, p0, :cond_36

    const/16 p0, 0x32

    if-eq v0, p0, :cond_38

    const/16 p0, 0x41

    if-eq v0, p0, :cond_34

    const/16 p0, 0x42

    if-eq v0, p0, :cond_34

    const/4 p0, 0x0

    return p0

    :cond_34
    const/4 p0, 0x2

    return p0

    :cond_36
    const/4 p0, 0x3

    return p0

    :cond_38
    const/4 p0, 0x1

    return p0

    :cond_3a
    const/4 p0, 0x5

    return p0

    :cond_3c
    const/4 p0, 0x4

    return p0
.end method

.method public static isEffectValid(Landroid/os/CombinedVibration;)Z
    .registers 6

    const/4 v0, 0x0

    .line 1612
    const-string v1, "VibratorManagerService"

    if-nez p0, :cond_b

    .line 1613
    const-string p0, "effect must not be null"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1617
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->validate()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_10

    const/4 p0, 0x1

    return p0

    :catch_10
    move-exception v2

    .line 1619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered issue when verifying vibration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static native nativeCancelSynced(J)V
.end method

.method public static native nativeClearSessions(J)V
.end method

.method public static native nativeEndSession(JJZ)V
.end method

.method public static native nativeGetCapabilities(J)J
.end method

.method private static native nativeGetFinalizer()J
.end method

.method public static native nativeGetVibratorIds(J)[I
.end method

.method public static native nativeInit(Lcom/android/server/vibrator/HalVibratorManager$Callbacks;)J
.end method

.method private static native nativeNewInit(Lcom/android/server/vibrator/HalVibratorManager$Callbacks;Lcom/android/server/vibrator/HalVibrator$Callbacks;)J
.end method

.method public static native nativePrepareSynced(J[I)Z
.end method

.method public static native nativeStartSession(JJ[I)Z
.end method

.method private static native nativeStartSessionWithCallback(JJ[I)Landroid/os/IBinder;
.end method

.method public static native nativeTriggerSynced(JJ)Z
.end method

.method private static native nativeTriggerSyncedWithCallback(JJ)Z
.end method

.method private static native nativeVibratorComposeEffectWithCallback(JIJJLandroid/os/Parcel;)I
.end method

.method private static native nativeVibratorComposePwleEffectWithCallback(JIJJLandroid/os/Parcel;)I
.end method

.method private static native nativeVibratorComposePwleV2EffectWithCallback(JIJJLandroid/os/Parcel;)I
.end method

.method private static native nativeVibratorOnWithCallback(JIJJI)I
.end method

.method private static native nativeVibratorPerformEffectWithCallback(JIJJII)I
.end method

.method private static native nativeVibratorPerformVendorEffectWithCallback(JIJJLandroid/os/Parcel;)I
.end method

.method public static shouldIgnoreForOngoing(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;
    .registers 5

    .line 1380
    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getVibrationImportance(Lcom/android/server/vibrator/VibrationSession;)I

    move-result v0

    .line 1381
    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->getVibrationImportance(Lcom/android/server/vibrator/VibrationSession;)I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_c

    return-object v2

    :cond_c
    if-le v1, v0, :cond_1a

    .line 1390
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 1391
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-object p0

    .line 1395
    :cond_1a
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->isRepeating()Z

    move-result p0

    if-nez p0, :cond_32

    .line 1397
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 1398
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-object p0

    :cond_32
    return-object v2
.end method


# virtual methods
.method public final applyToAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/vibrator/HalVibrator;",
            "TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 1758
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {v0}, Lcom/android/server/vibrator/HalVibratorManager;->getVibratorIds()[I

    move-result-object v0

    .line 1759
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 1760
    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_24

    aget v4, v0, v3

    .line 1761
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {v5, v4}, Lcom/android/server/vibrator/HalVibratorManager;->getVibrator(I)Lcom/android/server/vibrator/HalVibrator;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 1763
    invoke-interface {p1, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_24
    return-object v1
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .registers 11

    .line 736
    const-string v0, "cancelVibrate"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 738
    :try_start_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    const-string v4, "cancelVibrate"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_60

    .line 743
    :try_start_14
    sget-boolean v3, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v3, :cond_22

    .line 744
    const-string v3, "VibratorManagerService"

    const-string v4, "Canceling vibration"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_5e

    .line 747
    :cond_22
    :goto_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_20

    .line 751
    :try_start_26
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v6, v5, Lcom/android/server/vibrator/ExternalVibrationSession;

    const/4 v7, 0x0

    if-eqz v6, :cond_2f

    move-object v6, v7

    goto :goto_30

    :cond_2f
    move-object v6, p2

    .line 752
    :goto_30
    invoke-virtual {p0, v5, p1, v6}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelSession(Lcom/android/server/vibrator/VibrationSession;ILandroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 753
    sget-object v5, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;)V

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_5a

    .line 756
    :cond_3e
    :goto_3e
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v6, v5, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-eqz v6, :cond_45

    move-object p2, v7

    .line 757
    :cond_45
    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelSession(Lcom/android/server/vibrator/VibrationSession;ILandroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 758
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object p1, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {p0, p1}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V
    :try_end_52
    .catchall {:try_start_26 .. :try_end_52} :catchall_3c

    .line 761
    :cond_52
    :try_start_52
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 763
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_20

    .line 765
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 761
    :goto_5a
    :try_start_5a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 762
    throw p0

    .line 763
    :goto_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_20

    :try_start_5f
    throw p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    :catchall_60
    move-exception p0

    .line 765
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 766
    throw p0
.end method

.method public final checkAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I
    .registers 8

    .line 1544
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 1545
    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    move-result v1

    iget v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    const/4 v4, 0x3

    .line 1544
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result v0

    .line 1546
    sget-boolean v1, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    const-string v2, "VibratorManagerService"

    if-eqz v1, :cond_57

    .line 1547
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v5, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    .line 1549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check AppOp mode VIBRATE for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " returned audio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", op="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_57
    iget-object v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I

    move-result p0

    if-eq v0, p0, :cond_77

    if-nez p0, :cond_77

    .line 1558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bypassing DND for vibrate from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    return p0
.end method

.method public final clearCurrentSessionLocked()V
    .registers 2

    .line 2620
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v0, :cond_18

    .line 2621
    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationSession;->unlinkToDeath()V

    .line 2622
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    const/4 v0, 0x0

    .line 2623
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 2624
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_18
    return-void
.end method

.method public final clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;)V
    .registers 3

    const/4 v0, 0x0

    .line 2600
    invoke-virtual {p0, p1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-void
.end method

.method public final clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .registers 5

    .line 2606
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v0, :cond_34

    .line 2607
    sget-boolean v0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 2608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropping pending vibration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    :cond_2c
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    const/4 p1, 0x0

    .line 2613
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    :cond_34
    return-void
.end method

.method public final createSessionVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;)Lcom/android/server/vibrator/VibrationStepConductor;
    .registers 4

    const/4 v0, 0x1

    .line 1195
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;Z)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object p0

    return-object p0
.end method

.method public final createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    .registers 14

    .line 1251
    new-instance v0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    .line 1252
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->findVibrationType(Landroid/os/CombinedVibration;)I

    move-result v3

    new-instance v4, Lcom/android/server/vibrator/VibrationStats;

    invoke-direct {v4}, Lcom/android/server/vibrator/VibrationStats;-><init>()V

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    move-object v2, p2

    move-object v1, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;ILcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;IFF)V

    return-object v0
.end method

.method public final createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/VibrationStepConductor;
    .registers 4

    .line 1190
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;Z)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object p0

    return-object p0
.end method

.method public final createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;Z)Lcom/android/server/vibrator/VibrationStepConductor;
    .registers 14

    .line 1202
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    iget-object v1, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 1203
    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    .line 1202
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibratorControlService;->shouldRequestVibrationParams(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1204
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    iget-object v1, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v2, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 1206
    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 1207
    invoke-virtual {v3}, Lcom/android/server/vibrator/VibrationSettings;->getRequestVibrationParamsTimeoutMs()I

    move-result v3

    .line 1205
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/vibrator/VibratorControlService;->triggerVibrationParamsRequest(III)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    :goto_26
    move-object v8, v0

    goto :goto_2a

    :cond_28
    const/4 v0, 0x0

    goto :goto_26

    .line 1210
    :goto_2a
    new-instance v1, Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    move-object v2, p1

    move-object v5, p2

    move v3, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/VibrationStepConductor;-><init>(Lcom/android/server/vibrator/HalVibration;ZLcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/DeviceAdapter;Lcom/android/server/vibrator/VibrationScaler;Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;Ljava/util/concurrent/CompletableFuture;Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;)V

    return-object v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 941
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "VibratorManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 943
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 946
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v3, v2, :cond_22

    aget-object v5, p3, v3

    .line 947
    const-string v6, "--proto"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v4, 0x1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_22
    if-eqz v4, :cond_2a

    .line 953
    :try_start_24
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_2d

    :catchall_28
    move-exception p0

    goto :goto_31

    .line 955
    :cond_2a
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->dumpText(Ljava/io/PrintWriter;)V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_28

    .line 958
    :goto_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 959
    throw p0
.end method

.method public final dumpProto(Ljava/io/FileDescriptor;)V
    .registers 9

    .line 1010
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1011
    sget-boolean p1, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p1, :cond_10

    .line 1012
    const-string p1, "VibratorManagerService"

    const-string v1, "Dumping vibrator manager service to proto..."

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_10
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1015
    :try_start_13
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationSettings;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 1016
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationScaler;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 1017
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v1, :cond_30

    .line 1018
    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v1

    const-wide v2, 0x10b00000002L

    invoke-interface {v1, v0, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_56

    .line 1021
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {v1}, Lcom/android/server/vibrator/HalVibratorManager;->getVibratorIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_38
    if-ge v3, v2, :cond_47

    aget v4, v1, v3

    const-wide v5, 0x20500000001L

    .line 1022
    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 1024
    :cond_47
    monitor-exit p1
    :try_end_48
    .catchall {:try_start_13 .. :try_end_48} :catchall_2e

    .line 1025
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 1026
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorControlService;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 1027
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    .line 1024
    :goto_56
    :try_start_56
    monitor-exit p1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_2e

    throw p0
.end method

.method public final dumpText(Ljava/io/PrintWriter;)V
    .registers 4

    .line 963
    sget-boolean v0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 964
    const-string v0, "VibratorManagerService"

    const-string v1, "Dumping vibrator manager service to text..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_b
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 967
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 968
    :try_start_15
    const-string v1, "VibratorManagerService:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 969
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 971
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationSettings;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 972
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 974
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationScaler;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 975
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 977
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {v1, v0}, Lcom/android/server/vibrator/HalVibratorManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 978
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 980
    const-string v1, "CurrentVibration:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 981
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 982
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v1, :cond_4b

    .line 983
    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_51

    :catchall_49
    move-exception p0

    goto :goto_8c

    .line 985
    :cond_4b
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 987
    :goto_51
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 988
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 990
    const-string v1, "NextVibration:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 992
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v1, :cond_6b

    .line 993
    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_71

    .line 995
    :cond_6b
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 997
    :goto_71
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 998
    monitor-exit p1
    :try_end_75
    .catchall {:try_start_15 .. :try_end_75} :catchall_49

    .line 1000
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1001
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1002
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1004
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1005
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1006
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorControlService;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void

    .line 998
    :goto_8c
    :try_start_8c
    monitor-exit p1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_49

    throw p0
.end method

.method public final endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .registers 4

    const/4 v0, 0x0

    .line 1180
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-void
.end method

.method public final endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .registers 5

    const/4 v0, 0x0

    .line 1185
    invoke-interface {p1, p2, p3, v0}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V

    .line 1186
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    return-void
.end method

.method public final enforceUpdateAppOpsStatsPermission(I)V
    .registers 5

    .line 1593
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    goto :goto_11

    .line 1596
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_12

    :goto_11
    return-void

    .line 1599
    :cond_12
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 1600
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    .line 1599
    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public final finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .registers 4

    .line 1581
    sget-boolean v0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish AppOp mode VIBRATE for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_26
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v0, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    return-void
.end method

.method public final fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CombinedVibration;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/os/vibrator/PrebakedSegment;",
            ">;"
        }
    .end annotation

    .line 1662
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 1663
    check-cast p1, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p1

    .line 1664
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/os/VibrationEffect;)V

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->applyToAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;

    move-result-object p1

    goto :goto_1f

    .line 1665
    :cond_15
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_65

    .line 1666
    check-cast p1, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p1

    .line 1671
    :goto_1f
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    .line 1672
    :goto_25
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5d

    .line 1673
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->extractPrebakedSegment(Landroid/os/VibrationEffect;)Landroid/os/vibrator/PrebakedSegment;

    move-result-object v3

    if-nez v3, :cond_3f

    .line 1675
    const-string p0, "VibratorManagerService"

    const-string p1, "Only prebaked effects supported for always-on."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1678
    :cond_3f
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1679
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {v5, v4}, Lcom/android/server/vibrator/HalVibratorManager;->getVibrator(I)Lcom/android/server/vibrator/HalVibrator;

    move-result-object v5

    if-eqz v5, :cond_5a

    .line 1681
    invoke-interface {v5}, Lcom/android/server/vibrator/HalVibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v5

    const-wide/16 v6, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 1682
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 1685
    :cond_5d
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_64

    return-object v1

    :cond_64
    return-object v0

    :cond_65
    return-object v1
.end method

.method public final fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I
    .registers 3

    const/4 p0, 0x1

    if-ne p1, p0, :cond_b

    .line 1711
    invoke-virtual {p2, p0}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    return p1
.end method

.method public final fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;
    .registers 5

    if-nez p1, :cond_4

    .line 1633
    sget-object p1, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 1635
    :cond_4
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    if-nez v0, :cond_14

    if-eqz p2, :cond_14

    .line 1637
    invoke-virtual {p2}, Landroid/os/CombinedVibration;->isHapticFeedbackCandidate()Z

    move-result p2

    if-eqz p2, :cond_14

    const/16 v0, 0x12

    .line 1640
    :cond_14
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result p2

    and-int/lit8 v1, p2, 0x3

    if-eqz v1, :cond_36

    .line 1642
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 1643
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 1644
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_36

    and-int/lit8 p2, p2, -0x4

    .line 1649
    :cond_36
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p0

    if-ne v0, p0, :cond_43

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result p0

    if-ne p2, p0, :cond_43

    return-object p1

    .line 1652
    :cond_43
    new-instance p0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    .line 1653
    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    .line 1654
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/os/VibrationAttributes$Builder;->setFlags(II)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    .line 1655
    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0
.end method

.method public getCapabilities()I
    .registers 3

    .line 408
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {p0}, Lcom/android/server/vibrator/HalVibratorManager;->getCapabilities()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final getCombinedVibratorInfo()Landroid/os/VibratorInfo;
    .registers 2

    .line 2684
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2686
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCombinedVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 2687
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getHapticVibrationProvider()Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;
    .registers 5

    .line 2667
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2669
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    if-eqz v1, :cond_b

    .line 2670
    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception p0

    goto :goto_24

    .line 2672
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getCombinedVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v1

    if-nez v1, :cond_14

    const/4 p0, 0x0

    .line 2674
    monitor-exit v0

    return-object p0

    .line 2676
    :cond_14
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInjector:Lcom/android/server/vibrator/VibratorManagerService$Injector;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 2678
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2677
    invoke-virtual {v2, v3, v1}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createHapticFeedbackVibrationProvider(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    monitor-exit v0

    return-object v1

    .line 2679
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_9

    throw p0
.end method

.method public getVibratorIds()[I
    .registers 2

    .line 402
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {p0}, Lcom/android/server/vibrator/HalVibratorManager;->getVibratorIds()[I

    move-result-object p0

    .line 403
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public getVibratorInfo(I)Landroid/os/VibratorInfo;
    .registers 5

    .line 414
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {v0, p1}, Lcom/android/server/vibrator/HalVibratorManager;->getVibrator(I)Lcom/android/server/vibrator/HalVibrator;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    .line 426
    :cond_a
    invoke-interface {p1}, Lcom/android/server/vibrator/HalVibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v1

    .line 427
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 428
    :try_start_11
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    if-eqz p0, :cond_19

    .line 429
    monitor-exit v2

    return-object v1

    :catchall_17
    move-exception p0

    goto :goto_28

    .line 431
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_17

    .line 432
    instance-of p0, p1, Lcom/android/server/vibrator/VibratorController;

    if-eqz p0, :cond_27

    check-cast p1, Lcom/android/server/vibrator/VibratorController;

    .line 436
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorController;->isVibratorInfoLoadSuccessful()Z

    move-result p0

    if-eqz p0, :cond_27

    return-object v1

    :cond_27
    return-object v0

    .line 431
    :goto_28
    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_17

    throw p0
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .registers 2

    .line 1718
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isVibrating(I)Z
    .registers 2

    .line 445
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->isVibrating_enforcePermission()V

    .line 446
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {p0, p1}, Lcom/android/server/vibrator/HalVibratorManager;->getVibrator(I)Lcom/android/server/vibrator/HalVibrator;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 447
    invoke-interface {p0}, Lcom/android/server/vibrator/HalVibrator;->isVibrating()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final logAndRecordPerformHapticFeedbackAttempt(IILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .registers 12

    .line 1224
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    const/4 v1, 0x0

    .line 1225
    invoke-static {v1}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1227
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibrationAttempt(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void
.end method

.method public final logAndRecordSessionAttempt(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .registers 18

    .line 1236
    new-instance v0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;

    .line 1238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v14}, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;JJJJJZLjava/util/List;)V

    .line 1236
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    return-void
.end method

.method public final logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V
    .registers 5

    .line 1244
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    invoke-interface {p1, v0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->logMetrics(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V

    .line 1245
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getStatus()Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->logVibrationStatus(ILandroid/os/VibrationAttributes;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 1246
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->record(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    return-void
.end method

.method public final logAndRecordVibrationAttempt(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .registers 4

    .line 1232
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    return-void
.end method

.method public final logVibrationStatus(ILandroid/os/VibrationAttributes;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .registers 6

    .line 1258
    sget-object p0, Lcom/android/server/vibrator/VibratorManagerService$3;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const-string v0, "VibratorManagerService"

    packed-switch p0, :pswitch_data_b8

    .line 1295
    sget-boolean p0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p0, :cond_85

    .line 1296
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vibration for uid="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and with attrs="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ended with status "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1289
    :pswitch_36
    sget-boolean p0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p0, :cond_85

    .line 1290
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring incoming vibration because it came from a virtual device, attrs= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1283
    :pswitch_4f
    sget-boolean p0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p0, :cond_85

    .line 1284
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring incoming vibration because of ringer mode, attrs="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1278
    :pswitch_68
    sget-boolean p0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p0, :cond_85

    .line 1279
    const-string p0, "Ignoring incoming vibration in favor of repeating vibration"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1272
    :pswitch_72
    sget-boolean p0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p0, :cond_85

    .line 1273
    const-string p0, "Ignoring incoming vibration in favor of ongoing vibration with higher importance"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1267
    :pswitch_7c
    sget-boolean p0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p0, :cond_85

    .line 1268
    const-string p0, "Ignoring incoming vibration for current external vibration"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    return-void

    .line 1264
    :pswitch_86
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Would be an error: vibrate from uid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1260
    :pswitch_9b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring incoming vibration as process with uid= "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is background, attrs= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_9b
        :pswitch_86
        :pswitch_7c
        :pswitch_72
        :pswitch_68
        :pswitch_4f
        :pswitch_36
    .end packed-switch
.end method

.method public final maybeClearCurrentAndNextSessionsLocked(Ljava/util/function/Predicate;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/vibrator/VibrationSession;",
            ">;",
            "Lcom/android/server/vibrator/VibrationSession$Status;",
            ")V"
        }
    .end annotation

    .line 2631
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2632
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 2634
    :cond_b
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 2635
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {p0, p2}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V

    :cond_18
    return-void
.end method

.method public final maybeStartNextSessionLocked()V
    .registers 7

    .line 1157
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v1, v0, Lcom/android/server/vibrator/SingleVibrationSession;

    const-string v2, "VibratorManagerService"

    const/4 v3, 0x0

    if-eqz v1, :cond_35

    check-cast v0, Lcom/android/server/vibrator/SingleVibrationSession;

    .line 1158
    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1159
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnThreadLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 1161
    sget-boolean v3, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v3, :cond_31

    .line 1162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error starting next vibration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_31
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void

    .line 1166
    :cond_35
    instance-of v1, v0, Lcom/android/server/vibrator/VendorVibrationSession;

    if-eqz v1, :cond_62

    check-cast v0, Lcom/android/server/vibrator/VendorVibrationSession;

    .line 1167
    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1168
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->startVendorSessionLocked(Lcom/android/server/vibrator/VendorVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 1170
    sget-boolean v3, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v3, :cond_5f

    .line 1171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error starting next session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VendorVibrationSession;->getSessionId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_5f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    :cond_62
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 1033
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-virtual {p5}, Landroid/os/ShellCallback;->getShellCallbackBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1034
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final onSyncedVibrationComplete(J)V
    .registers 7

    .line 1318
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1319
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v1, :cond_2e

    .line 1320
    sget-boolean v1, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v1, :cond_29

    .line 1321
    const-string v1, "VibratorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Synced vibration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " complete, notifying thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_30

    .line 1323
    :cond_29
    :goto_29
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {p0, p1, p2}, Lcom/android/server/vibrator/VibrationSession;->notifySyncedVibratorsCallback(J)V

    .line 1325
    :cond_2e
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_27

    throw p0
.end method

.method public final onVibrationComplete(IJJ)V
    .registers 14

    .line 1329
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1330
    :try_start_3
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v0, :cond_42

    .line 1331
    sget-boolean v0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v0, :cond_3a

    .line 1332
    const-string v0, "VibratorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " step "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " on vibrator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " complete, notifying thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :catchall_37
    move-exception v0

    move-object p0, v0

    goto :goto_44

    .line 1335
    :cond_3a
    :goto_3a
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/vibrator/VibrationSession;->notifyVibratorCallback(IJJ)V

    .line 1337
    :cond_42
    monitor-exit v1

    return-void

    :goto_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_37

    throw p0
.end method

.method public final onVibrationSessionComplete(J)V
    .registers 7

    .line 1303
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1304
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v1, :cond_39

    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->getSessionId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-eqz v1, :cond_10

    goto :goto_39

    .line 1310
    :cond_10
    sget-boolean v1, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v1, :cond_32

    .line 1311
    const-string v1, "VibratorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibration session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " complete, notifying session"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_5a

    .line 1313
    :cond_32
    :goto_32
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->notifySessionCallback()V

    .line 1314
    monitor-exit v0

    return-void

    .line 1305
    :cond_39
    :goto_39
    sget-boolean p0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p0, :cond_58

    .line 1306
    const-string p0, "VibratorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibration session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " callback ignored"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_58
    monitor-exit v0

    return-void

    .line 1314
    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_30

    throw p0
.end method

.method public performHapticFeedback(IILjava/lang/String;IILjava/lang/String;II)V
    .registers 22

    .line 526
    const-string/jumbo v0, "performHapticFeedback"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v10, p0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v11, p7

    move/from16 v12, p8

    .line 532
    :try_start_19
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackInternal(IILjava/lang/String;IILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_20

    .line 535
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_20
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 536
    throw p0
.end method

.method public performHapticFeedbackForInputDevice(IILjava/lang/String;IIILjava/lang/String;II)V
    .registers 24

    .line 543
    const-string/jumbo v0, "performHapticFeedbackForInputDevice"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v11, p0

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v12, p8

    move/from16 v13, p9

    .line 545
    :try_start_1c
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackForInputDeviceInternal(IILjava/lang/String;IIILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_23

    .line 549
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_23
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 550
    throw p0
.end method

.method public performHapticFeedbackForInputDeviceInternal(IILjava/lang/String;IIILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;
    .registers 22

    move/from16 v0, p6

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performHapticFeedbackForInputDevice(constant="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inputDeviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inputSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 590
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getHapticVibrationProvider()Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    move-result-object v1

    const/4 v2, 0x0

    .line 592
    invoke-virtual {p0, p4, v2, v6, v1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreHapticFeedback(IILjava/lang/String;Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v7

    if-eqz v7, :cond_44

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 595
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordPerformHapticFeedbackAttempt(IILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/VibrationSession$Status;)V

    const/4 p0, 0x0

    return-object p0

    .line 599
    :cond_44
    invoke-virtual {v1, p4, v0}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationForInputDevice(II)Landroid/os/VibrationEffect;

    move-result-object v9

    move/from16 v2, p9

    move/from16 v3, p10

    .line 600
    invoke-virtual {v1, p4, v0, v2, v3}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributesForInputDevice(IIII)Landroid/os/VibrationAttributes;

    move-result-object v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v8, p8

    move-object v7, v6

    move v6, p4

    .line 598
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackWithEffect(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    return-object p0
.end method

.method public performHapticFeedbackInternal(IILjava/lang/String;IILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;
    .registers 21

    move/from16 v0, p5

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performHapticFeedback(constant="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 565
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getHapticVibrationProvider()Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    move-result-object v1

    .line 566
    invoke-virtual {p0, p4, v0, v6, v1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreHapticFeedback(IILjava/lang/String;Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v7

    if-eqz v7, :cond_31

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 569
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordPerformHapticFeedbackAttempt(IILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/VibrationSession$Status;)V

    const/4 p0, 0x0

    return-object p0

    .line 573
    :cond_31
    invoke-virtual {v1, p4, v0}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibration(II)Landroid/os/VibrationEffect;

    move-result-object v9

    move/from16 v2, p8

    move/from16 v3, p9

    .line 574
    invoke-virtual {v1, p4, v0, v2, v3}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributes(IIII)Landroid/os/VibrationAttributes;

    move-result-object v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v8, p7

    move-object v7, v6

    move v6, p4

    .line 572
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackWithEffect(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    return-object p0
.end method

.method public final performHapticFeedbackWithEffect(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/HalVibration;
    .registers 15

    if-nez p7, :cond_25

    .line 608
    sget-object v5, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordPerformHapticFeedbackAttempt(IILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 610
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "performHapticFeedbackWithEffect; vibration absent for constant "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibratorManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_25
    move-object v3, p3

    move-object v4, p5

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 614
    invoke-static {p7}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object p5

    .line 615
    invoke-static {p2, p4}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logPerformHapticsFeedbackIfKeyboard(II)V

    move-object p4, p8

    move-object p8, p6

    move-object p6, p4

    move-object p4, v3

    move-object p7, v4

    .line 616
    invoke-virtual/range {p1 .. p8}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateWithoutPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    return-object p0
.end method

.method public registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 3

    .line 453
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->registerVibratorStateListener_enforcePermission()V

    .line 454
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {p0, p1}, Lcom/android/server/vibrator/HalVibratorManager;->getVibrator(I)Lcom/android/server/vibrator/HalVibrator;

    move-result-object p0

    if-eqz p0, :cond_13

    if-nez p2, :cond_e

    goto :goto_13

    .line 458
    :cond_e
    invoke-interface {p0, p2}, Lcom/android/server/vibrator/HalVibrator;->registerVibratorStateListener(Landroid/os/IVibratorStateListener;)Z

    move-result p0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method public final runOnAllVibratorsLocked(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/vibrator/HalVibrator;",
            ">;)V"
        }
    .end annotation

    .line 1748
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {v0}, Lcom/android/server/vibrator/HalVibratorManager;->getVibratorIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1a

    aget v3, v0, v2

    .line 1749
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {v4, v3}, Lcom/android/server/vibrator/HalVibratorManager;->getVibrator(I)Lcom/android/server/vibrator/HalVibrator;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 1751
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z
    .registers 19

    move/from16 v0, p3

    move-object/from16 v1, p4

    .line 476
    const-string/jumbo v2, "setAlwaysOnEffect"

    const-wide/32 v3, 0x800000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 478
    :try_start_d
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.VIBRATE_ALWAYS_ON"

    const-string/jumbo v6, "setAlwaysOnEffect"

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-nez v1, :cond_36

    .line 483
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_33

    .line 484
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 485
    new-instance v1, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->runOnAllVibratorsLocked(Ljava/util/function/Consumer;)V

    .line 486
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_2f

    .line 508
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v2

    :catchall_2f
    move-exception v0

    move-object p0, v0

    .line 486
    :try_start_31
    monitor-exit p1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2f

    :try_start_32
    throw p0

    :catchall_33
    move-exception v0

    move-object p0, v0

    goto :goto_75

    .line 489
    :cond_36
    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result v5
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_33

    const/4 v6, 0x0

    if-nez v5, :cond_41

    .line 508
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v6

    :cond_41
    move-object/from16 v5, p5

    .line 492
    :try_start_43
    invoke-virtual {p0, v5, v1}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object v8

    .line 493
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_33

    .line 494
    :try_start_4a
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_58

    .line 498
    monitor-exit v5
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_55

    .line 508
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v6

    :catchall_55
    move-exception v0

    move-object p0, v0

    goto :goto_73

    .line 500
    :cond_58
    :try_start_58
    new-instance v6, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    new-instance v7, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v9, p1

    move-object v11, p2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0, v7, v1}, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;-><init>(ILcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/util/SparseArray;)V

    .line 503
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 504
    invoke-virtual {p0, v6}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    .line 505
    monitor-exit v5
    :try_end_6f
    .catchall {:try_start_58 .. :try_end_6f} :catchall_55

    .line 508
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v2

    .line 505
    :goto_73
    :try_start_73
    monitor-exit v5
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_55

    :try_start_74
    throw p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_33

    .line 508
    :goto_75
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    throw p0
.end method

.method public final setExternalControl(ZLcom/android/server/vibrator/VibrationStats;)V
    .registers 8

    .line 1066
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {v0}, Lcom/android/server/vibrator/HalVibratorManager;->getVibratorIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1d

    aget v3, v0, v2

    .line 1067
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {v4, v3}, Lcom/android/server/vibrator/HalVibratorManager;->getVibrator(I)Lcom/android/server/vibrator/HalVibrator;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 1069
    invoke-interface {v3, p1}, Lcom/android/server/vibrator/HalVibrator;->setExternalControl(Z)Z

    .line 1070
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibrationStats;->reportSetExternalControl()V

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return-void
.end method

.method public final shouldCancelAppOpModeChangedLocked(Lcom/android/server/vibrator/VibrationSession;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1736
    :cond_4
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->checkAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    return v0
.end method

.method public final shouldCancelOnFgUserRequest(Lcom/android/server/vibrator/VibrationSession;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1743
    :cond_4
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsageClass()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    return v0

    :cond_12
    return p0
.end method

.method public final shouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibrationSession;)Z
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1727
    :cond_4
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    .line 1728
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCreateUptimeMillis()J

    move-result-wide v1

    .line 1727
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/vibrator/VibrationSettings;->shouldCancelVibrationOnScreenOff(Lcom/android/server/vibrator/VibrationSession$CallerInfo;J)Z

    move-result p0

    return p0
.end method

.method public final shouldCancelSession(Lcom/android/server/vibrator/VibrationSession;ILandroid/os/IBinder;)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1520
    :cond_4
    instance-of v0, p1, Lcom/android/server/vibrator/VendorVibrationSession;

    if-eqz v0, :cond_9

    return p0

    :cond_9
    if-eqz p3, :cond_12

    .line 1524
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerToken()Landroid/os/IBinder;

    move-result-object v0

    if-eq p3, v0, :cond_12

    return p0

    .line 1528
    :cond_12
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_27

    if-eqz p2, :cond_26

    const/4 p1, -0x1

    if-ne p2, p1, :cond_25

    goto :goto_26

    :cond_25
    return p0

    :cond_26
    :goto_26
    return p3

    :cond_27
    and-int/2addr p2, p1

    if-ne p2, p1, :cond_2b

    return p3

    :cond_2b
    return p0
.end method

.method public final shouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;
    .registers 4

    .line 1348
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v0, :cond_b

    .line 1349
    invoke-static {p1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoing(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 1358
    :cond_b
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 1359
    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationSession;->wasEndRequested()Z

    move-result v0

    if-eqz v0, :cond_17

    return-object v1

    .line 1364
    :cond_17
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-static {p1, p0}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoing(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object p0

    return-object p0

    :cond_1e
    return-object v1
.end method

.method public final shouldIgnoreHapticFeedback(IILjava/lang/String;Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;)Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 8

    .line 1484
    const-string v0, "VibratorManagerService"

    if-nez p4, :cond_1b

    .line 1485
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; haptic vibration provider not ready."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    :cond_1b
    if-eqz p2, :cond_40

    and-int/lit8 v1, p2, 0xf

    const/4 v2, 0x2

    if-eq v1, v2, :cond_40

    .line 1494
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; usage must be USAGE_UNKNOWN or have USAGE_CLASS_FEEDBACK. Found "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    invoke-static {p2}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1494
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_INVALID_REQUEST:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    .line 1498
    :cond_40
    invoke-virtual {p4, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->isRestrictedHapticFeedback(I)Z

    move-result p2

    if-eqz p2, :cond_68

    const-string p2, "android.permission.VIBRATE_SYSTEM_CONSTANTS"

    .line 1499
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_68

    .line 1500
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; no permission for system constant "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    :cond_68
    const/4 p0, 0x0

    return-object p0
.end method

.method public final shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 3

    .line 1462
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibrationSettings;->shouldIgnoreVibration(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 1467
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->checkAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I

    move-result p0

    if-eqz p0, :cond_18

    const/4 p1, 0x2

    if-ne p0, p1, :cond_15

    .line 1472
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    .line 1474
    :cond_15
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public final shouldPipelineVibrationLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/HalVibration;)Z
    .registers 4

    .line 1446
    instance-of v0, p1, Lcom/android/server/vibrator/SingleVibrationSession;

    if-eqz v0, :cond_17

    check-cast p1, Lcom/android/server/vibrator/SingleVibrationSession;

    .line 1450
    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorInfos:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 1451
    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getVibrationPipelineMaxDurationMs()I

    move-result p0

    .line 1450
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/server/vibrator/HalVibration;->canPipelineWith(Lcom/android/server/vibrator/HalVibration;Landroid/util/SparseArray;I)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public final startAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I
    .registers 6

    .line 1566
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 1568
    sget-boolean v1, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v1, :cond_3d

    .line 1569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start AppOp mode VIBRATE for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :cond_3d
    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I

    move-result p0

    return p0
.end method

.method public final startVendorSessionLocked(Lcom/android/server/vibrator/VendorVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 11

    .line 895
    const-string/jumbo v0, "startSessionLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 897
    :try_start_9
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->getSessionId()J

    move-result-wide v3

    .line 898
    sget-boolean v0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_2d

    const-string v5, "VibratorManagerService"

    if-eqz v0, :cond_30

    .line 899
    :try_start_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting session "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " in HAL"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :catchall_2d
    move-exception p0

    goto/16 :goto_cd

    .line 901
    :cond_30
    :goto_30
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 903
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->getStatus()Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p0
    :try_end_3a
    .catchall {:try_start_13 .. :try_end_3a} :catchall_2d

    .line 935
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 905
    :cond_3e
    :try_start_3e
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    .line 906
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->startAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I

    move-result v6

    if-eqz v6, :cond_6d

    const/4 p0, 0x2

    if-eq v6, p0, :cond_51

    .line 932
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_4d
    .catchall {:try_start_3e .. :try_end_4d} :catchall_2d

    .line 935
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 929
    :cond_51
    :try_start_51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Start AppOpsManager operation errored for uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_69
    .catchall {:try_start_51 .. :try_end_69} :catchall_2d

    .line 935
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 909
    :cond_6d
    :try_start_6d
    const-string/jumbo v6, "vibration"

    const/4 v7, 0x0

    invoke-static {v1, v2, v6, v7}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 911
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 912
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->linkToDeath()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_88

    .line 914
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 915
    iput-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 916
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_84
    .catchall {:try_start_6d .. :try_end_84} :catchall_2d

    .line 935
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 918
    :cond_88
    :try_start_88
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->getVibratorIds()[I

    move-result-object v8

    invoke-interface {v6, v3, v4, v8}, Lcom/android/server/vibrator/HalVibratorManager;->startSession(J[I)Z

    move-result v6

    if-nez v6, :cond_c6

    .line 919
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error starting session "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " on vibrators "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->getVibratorIds()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 919
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->unlinkToDeath()V

    .line 922
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 923
    iput-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 924
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_c2
    .catchall {:try_start_88 .. :try_end_c2} :catchall_2d

    .line 935
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 926
    :cond_c6
    :try_start_c6
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->notifyStart()V
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_2d

    .line 935
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v7

    :goto_cd
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 936
    throw p0
.end method

.method public startVendorVibrationSession(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Landroid/os/ICancellationSignal;
    .registers 11

    .line 778
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->startVendorVibrationSession_enforcePermission()V

    .line 779
    const-string/jumbo v0, "startVibrationSession"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 781
    :try_start_c
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/vibrator/VibratorManagerService;->startVendorVibrationSessionInternal(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Lcom/android/server/vibrator/VendorVibrationSession;

    move-result-object p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    goto :goto_18

    .line 783
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/vibrator/VendorVibrationSession;->getCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 785
    :goto_18
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_1c
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 786
    throw p0
.end method

.method public startVendorVibrationSessionInternal(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Lcom/android/server/vibrator/VendorVibrationSession;
    .registers 15

    const/4 v0, 0x0

    .line 795
    invoke-virtual {p0, p5, v0}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object v2

    .line 796
    new-instance v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    move-object p2, v1

    if-nez p7, :cond_1f

    .line 798
    const-string p1, "VibratorManagerService"

    const-string/jumbo p3, "session callback must not be null"

    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    sget-object p1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordSessionAttempt(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-object v0

    :cond_1f
    const/4 v1, 0x0

    if-nez p4, :cond_24

    .line 803
    new-array p4, v1, [I

    :cond_24
    move-object v4, p4

    .line 805
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->enforceUpdateAppOpsStatsPermission(I)V

    .line 808
    new-instance p1, Landroid/util/SparseArray;

    array-length p3, v4

    invoke-direct {p1, p3}, Landroid/util/SparseArray;-><init>(I)V

    .line 809
    array-length p3, v4

    move p4, v1

    :goto_30
    if-ge p4, p3, :cond_42

    aget p5, v4, p4

    .line 810
    iget-object p6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {p6, p5}, Lcom/android/server/vibrator/HalVibratorManager;->getVibrator(I)Lcom/android/server/vibrator/HalVibrator;

    move-result-object p6

    if-eqz p6, :cond_3f

    .line 812
    invoke-virtual {p1, p5, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3f
    add-int/lit8 p4, p4, 0x1

    goto :goto_30

    .line 815
    :cond_42
    new-instance p5, Lcom/android/server/vibrator/DeviceAdapter;

    iget-object p3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p5, p3, p1}, Lcom/android/server/vibrator/DeviceAdapter;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/util/SparseArray;)V

    .line 816
    new-instance p1, Lcom/android/server/vibrator/VendorVibrationSession;

    iget-object p3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    iget-object p4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVendorVibrationSessionCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

    move-object p6, p7

    invoke-direct/range {p1 .. p6}, Lcom/android/server/vibrator/VendorVibrationSession;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/Handler;Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;Lcom/android/server/vibrator/DeviceAdapter;Landroid/os/vibrator/IVibrationSessionCallback;)V

    const/4 p3, 0x4

    .line 819
    invoke-virtual {v2, p3}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p3

    if-eqz p3, :cond_5f

    .line 822
    iget-object p3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p3}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 825
    :cond_5f
    iget-object p3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 826
    :try_start_62
    sget-boolean p4, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p4, :cond_85

    .line 827
    const-string p6, "VibratorManagerService"

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting vendor session "

    invoke-virtual {p7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->getSessionId()J

    move-result-wide v2

    invoke-virtual {p7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p6, p7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    :catchall_81
    move-exception v0

    move-object p0, v0

    goto/16 :goto_10e

    .line 834
    :cond_85
    :goto_85
    iget-object p6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    const-wide/16 v2, 0x100

    invoke-interface {p6, v2, v3}, Lcom/android/server/vibrator/HalVibratorManager;->hasCapability(J)Z

    move-result p6

    if-nez p6, :cond_9b

    if-eqz p4, :cond_98

    .line 836
    const-string p4, "VibratorManagerService"

    const-string p6, "Missing capability to start sessions, ignoring request"

    invoke-static {p4, p6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_98
    sget-object p4, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    goto :goto_9c

    :cond_9b
    move-object p4, v0

    :goto_9c
    if-nez p4, :cond_d1

    .line 843
    invoke-virtual {p5}, Lcom/android/server/vibrator/DeviceAdapter;->getAvailableVibratorIds()[I

    move-result-object p5

    .line 844
    array-length p6, v4

    if-eqz p6, :cond_a9

    array-length p6, v4

    array-length p7, p5

    if-eq p6, p7, :cond_d1

    .line 845
    :cond_a9
    const-string p4, "VibratorManagerService"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Bad vibrator ids to start session, ignoring request. requested="

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, " available="

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-static {p5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 845
    invoke-static {p4, p5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    sget-object p4, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    :cond_d1
    if-nez p4, :cond_d7

    .line 854
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p4

    :cond_d7
    if-nez p4, :cond_e3

    .line 859
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object p5

    if-eqz p5, :cond_e3

    .line 861
    iget-object p4, p5, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 862
    iget-object v0, p5, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    :cond_e3
    if-nez p4, :cond_107

    .line 868
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p5
    :try_end_e9
    .catchall {:try_start_62 .. :try_end_e9} :catchall_81

    .line 871
    :try_start_e9
    sget-object p7, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, p7, p2}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 872
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v2, :cond_fb

    .line 873
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    .line 874
    invoke-interface {v2, p7, p2, v1}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V

    goto :goto_ff

    :catchall_f8
    move-exception v0

    move-object p0, v0

    goto :goto_103

    .line 877
    :cond_fb
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->startVendorSessionLocked(Lcom/android/server/vibrator/VendorVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p4
    :try_end_ff
    .catchall {:try_start_e9 .. :try_end_ff} :catchall_f8

    .line 880
    :goto_ff
    :try_start_ff
    invoke-static {p5, p6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_107

    :goto_103
    invoke-static {p5, p6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 881
    throw p0

    :cond_107
    :goto_107
    if-eqz p4, :cond_10c

    .line 886
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 888
    :cond_10c
    monitor-exit p3

    return-object p1

    .line 889
    :goto_10e
    monitor-exit p3
    :try_end_10f
    .catchall {:try_start_ff .. :try_end_10f} :catchall_81

    throw p0
.end method

.method public final startVibrationLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 6

    .line 1097
    const-string/jumbo v0, "startVibrationLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1099
    :try_start_9
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    invoke-virtual {v0}, Lcom/android/server/vibrator/InputDeviceDelegate;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1100
    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnInputDevicesLocked(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1d

    .line 1113
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_1d
    move-exception p0

    goto :goto_3b

    .line 1102
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-nez v0, :cond_2b

    .line 1103
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnThreadLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_1d

    .line 1113
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 1109
    :cond_2b
    :try_start_2b
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 1110
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_1d

    .line 1113
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return-object p0

    :goto_3b
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1114
    throw p0
.end method

.method public final startVibrationOnInputDevicesLocked(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 3

    .line 1217
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/HalVibration;->scaleEffects(Lcom/android/server/vibrator/VibrationScaler;)V

    .line 1218
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {p1}, Lcom/android/server/vibrator/HalVibration;->getEffectToPlay()Landroid/os/CombinedVibration;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/vibrator/InputDeviceDelegate;->vibrateIfAvailable(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)Z

    .line 1219
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0
.end method

.method public final startVibrationOnThreadLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 8

    .line 1120
    sget-boolean v0, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    const-string v1, "VibratorManagerService"

    if-eqz v0, :cond_25

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting vibration "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " on thread"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_25
    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v0

    .line 1124
    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/SingleVibrationSession;->setVibrationConductor(Lcom/android/server/vibrator/VibrationStepConductor;)V

    .line 1125
    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v2

    .line 1126
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->startAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I

    move-result v3

    if-eqz v3, :cond_59

    const/4 p0, 0x2

    if-eq v3, p0, :cond_40

    .line 1151
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    .line 1148
    :cond_40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Start AppOpsManager operation errored for uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    .line 1129
    :cond_59
    const-string/jumbo v1, "vibration"

    const/4 v3, 0x0

    const-wide/32 v4, 0x800000

    invoke-static {v4, v5, v1, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1131
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1132
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->linkToDeath()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_74

    .line 1134
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 1135
    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1136
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    .line 1138
    :cond_74
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationThread;->runVibrationOnVibrationThread(Lcom/android/server/vibrator/VibrationStepConductor;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 1140
    invoke-virtual {p1, v3}, Lcom/android/server/vibrator/SingleVibrationSession;->setVibrationConductor(Lcom/android/server/vibrator/VibrationStepConductor;)V

    .line 1141
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->unlinkToDeath()V

    .line 1142
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 1143
    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 1144
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    :cond_8c
    return-object v3
.end method

.method public systemReady()V
    .registers 8

    .line 370
    const-string v0, "VibratorManagerService"

    const-string v1, "Initializing VibratorManager service..."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string/jumbo v0, "systemReady"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x1

    .line 373
    :try_start_11
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {v3}, Lcom/android/server/vibrator/HalVibratorManager;->onSystemReady()V

    .line 375
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_75

    .line 376
    :try_start_19
    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/VibratorManagerService;->applyToAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorInfos:Landroid/util/SparseArray;

    .line 377
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/VibratorInfo;

    const/4 v5, 0x0

    .line 378
    :goto_2b
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorInfos:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_42

    .line 379
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/VibratorInfo;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :catchall_40
    move-exception v4

    goto :goto_77

    :cond_42
    const/4 v5, -0x1

    .line 381
    invoke-static {v5, v4}, Landroid/os/vibrator/VibratorInfoFactory;->create(I[Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCombinedVibratorInfo:Landroid/os/VibratorInfo;

    .line 382
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_19 .. :try_end_4a} :catchall_40

    .line 384
    :try_start_4a
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibrationSettings;->onSystemReady()V

    .line 385
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    invoke-virtual {v3}, Lcom/android/server/vibrator/InputDeviceDelegate;->onSystemReady()V

    .line 387
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    invoke-virtual {v3, v4}, Lcom/android/server/vibrator/VibrationSettings;->addListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V

    .line 390
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->updateServiceState()V
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_75

    .line 392
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 393
    :try_start_64
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    .line 394
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_72

    .line 395
    const-string p0, "VibratorManagerService"

    const-string v0, "VibratorManager service initialized"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_72
    move-exception p0

    .line 394
    :try_start_73
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p0

    :catchall_75
    move-exception v3

    goto :goto_79

    .line 382
    :goto_77
    :try_start_77
    monitor-exit v3
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_40

    :try_start_78
    throw v4
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_75

    .line 392
    :goto_79
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 393
    :try_start_7c
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    .line 394
    monitor-exit v4
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_8a

    .line 395
    const-string p0, "VibratorManagerService"

    const-string v0, "VibratorManager service initialized"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 397
    throw v3

    :catchall_8a
    move-exception p0

    .line 394
    :try_start_8b
    monitor-exit v4
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw p0
.end method

.method public unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 3

    .line 465
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->unregisterVibratorStateListener_enforcePermission()V

    .line 466
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    invoke-interface {p0, p1}, Lcom/android/server/vibrator/HalVibratorManager;->getVibrator(I)Lcom/android/server/vibrator/HalVibrator;

    move-result-object p0

    if-eqz p0, :cond_13

    if-nez p2, :cond_e

    goto :goto_13

    .line 470
    :cond_e
    invoke-interface {p0, p2}, Lcom/android/server/vibrator/HalVibrator;->unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z

    move-result p0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method public final updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V
    .registers 7

    const/4 v0, 0x0

    .line 1077
    :goto_1
    iget-object v1, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 1078
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManager:Lcom/android/server/vibrator/HalVibratorManager;

    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/vibrator/HalVibratorManager;->getVibrator(I)Lcom/android/server/vibrator/HalVibrator;

    move-result-object v1

    .line 1079
    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    if-nez v1, :cond_20

    goto :goto_3d

    .line 1083
    :cond_20
    iget-object v3, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v3

    if-nez v3, :cond_37

    .line 1085
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v4, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v4, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/server/vibrator/VibrationScaler;->scale(Landroid/os/vibrator/PrebakedSegment;I)Landroid/os/vibrator/PrebakedSegment;

    move-result-object v2

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    .line 1090
    :goto_38
    iget v3, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->alwaysOnId:I

    invoke-interface {v1, v3, v2}, Lcom/android/server/vibrator/HalVibrator;->setAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)Z

    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_40
    return-void
.end method

.method public updateServiceState()V
    .registers 6

    .line 1039
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1040
    :try_start_3
    sget-boolean v1, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v1, :cond_11

    .line 1041
    const-string v1, "VibratorManagerService"

    const-string v2, "Updating device state..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_6d

    .line 1043
    :cond_11
    :goto_11
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 1044
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateInputDevices()Z

    move-result v2

    .line 1043
    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/InputDeviceDelegate;->updateInputDeviceVibrators(Z)Z

    move-result v1

    const/4 v2, 0x0

    .line 1046
    :goto_1e
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 1047
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1050
    :cond_34
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-nez v2, :cond_3a

    .line 1051
    monitor-exit v0

    return-void

    .line 1054
    :cond_3a
    invoke-interface {v2}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v2

    if-nez v1, :cond_46

    if-eqz v2, :cond_6b

    .line 1056
    :cond_46
    sget-boolean v1, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz v1, :cond_64

    .line 1057
    const-string v1, "VibratorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canceling vibration because settings changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_5a

    .line 1058
    const-string v2, "input devices changed"

    :cond_5a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1057
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_64
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {p0, v1}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 1062
    :cond_6b
    monitor-exit v0

    return-void

    :goto_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_f

    throw p0
.end method

.method public vibrate(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 11

    .line 515
    const-string/jumbo v0, "vibrate"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 517
    :try_start_9
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateWithPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10

    .line 519
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_10
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 520
    throw p0
.end method

.method public final vibrateInternal(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;
    .registers 14

    .line 644
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v1, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p7, :cond_1b

    .line 646
    const-string p2, "VibratorManagerService"

    const-string/jumbo p3, "token must not be null"

    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    sget-object p2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, p4, v0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibrationAttempt(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-object p1

    .line 650
    :cond_1b
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->enforceUpdateAppOpsStatsPermission(I)V

    .line 651
    invoke-static {p4}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result p2

    if-nez p2, :cond_2a

    .line 652
    sget-object p2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_INVALID_REQUEST:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, p4, v0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibrationAttempt(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-object p1

    .line 655
    :cond_2a
    invoke-virtual {p4}, Landroid/os/CombinedVibration;->hasVendorEffects()Z

    move-result p2

    if-eqz p2, :cond_46

    .line 661
    const-string p2, "android.permission.VIBRATE_VENDOR_EFFECTS"

    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_46

    .line 662
    const-string p2, "VibratorManagerService"

    const-string/jumbo p3, "vibrate; no permission for vendor effects"

    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    sget-object p2, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, p4, v0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibrationAttempt(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-object p1

    .line 668
    :cond_46
    new-instance p2, Lcom/android/server/vibrator/SingleVibrationSession;

    invoke-direct {p2, p7, v0, p4}, Lcom/android/server/vibrator/SingleVibrationSession;-><init>(Landroid/os/IBinder;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)V

    .line 669
    invoke-virtual {p2}, Lcom/android/server/vibrator/SingleVibrationSession;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object p3

    .line 671
    iget-object p4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p5, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p5, p4}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    invoke-virtual {p3, p5}, Lcom/android/server/vibrator/HalVibration;->fillFallbacks(Ljava/util/function/IntFunction;)V

    const/4 p4, 0x4

    .line 674
    invoke-virtual {v1, p4}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p4

    if-eqz p4, :cond_68

    .line 677
    iget-object p4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p4}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 680
    :cond_68
    iget-object p4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 681
    :try_start_6b
    sget-boolean p5, Lcom/android/server/vibrator/VibratorManagerService;->DEBUG:Z

    if-eqz p5, :cond_8b

    .line 682
    const-string p6, "VibratorManagerService"

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting vibrate for vibration "

    invoke-virtual {p7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {p7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p6, p7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    :catchall_88
    move-exception v0

    move-object p0, v0

    goto :goto_f5

    .line 686
    :cond_8b
    :goto_8b
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p6

    if-nez p6, :cond_9b

    .line 691
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object p7

    if-eqz p7, :cond_9b

    .line 693
    iget-object p6, p7, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 694
    iget-object p1, p7, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    :cond_9b
    if-nez p6, :cond_ee

    .line 701
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p6
    :try_end_a1
    .catchall {:try_start_6b .. :try_end_a1} :catchall_88

    .line 703
    :try_start_a1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v1, :cond_dc

    .line 704
    invoke-virtual {p0, v1, p3}, Lcom/android/server/vibrator/VibratorManagerService;->shouldPipelineVibrationLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/HalVibration;)Z

    move-result v1

    if-eqz v1, :cond_c9

    if-eqz p5, :cond_dc

    .line 710
    const-string p5, "VibratorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pipelining vibration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p3, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc

    :catchall_c6
    move-exception v0

    move-object p0, v0

    goto :goto_ea

    .line 713
    :cond_c9
    iget-object p5, p3, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    .line 714
    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v1

    .line 713
    invoke-virtual {p5, v1}, Lcom/android/server/vibrator/VibrationStats;->reportInterruptedAnotherVibration(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 715
    iget-object p5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    const/4 v2, 0x0

    invoke-interface {p5, v1, v0, v2}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V

    .line 719
    :cond_dc
    :goto_dc
    sget-object p5, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, p5, v0}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 720
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p5
    :try_end_e5
    .catchall {:try_start_a1 .. :try_end_e5} :catchall_c6

    .line 722
    :try_start_e5
    invoke-static {p6, p7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object p6, p5

    goto :goto_ee

    :goto_ea
    invoke-static {p6, p7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 723
    throw p0

    :cond_ee
    :goto_ee
    if-eqz p6, :cond_f3

    .line 728
    invoke-virtual {p0, p2, p6, p1}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 730
    :cond_f3
    monitor-exit p4

    return-object p3

    .line 731
    :goto_f5
    monitor-exit p4
    :try_end_f6
    .catchall {:try_start_e5 .. :try_end_f6} :catchall_88

    throw p0
.end method

.method public vibrateWithPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;
    .registers 11

    .line 629
    invoke-virtual {p0, p5, p4}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object p5

    .line 630
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    const-string/jumbo v2, "vibrate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateInternal(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    return-object p0
.end method

.method public vibrateWithoutPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;
    .registers 8

    .line 638
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateInternal(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    return-object p0
.end method

.method public waitForCurrentSessionEnd(J)Z
    .registers 7

    .line 2646
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 2648
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2650
    :goto_8
    :try_start_8
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-nez v3, :cond_11

    .line 2651
    monitor-exit v2

    const/4 p0, 0x1

    return p0

    :catchall_f
    move-exception p0

    goto :goto_2c

    :cond_11
    cmp-long v3, v0, p1

    if-ltz v3, :cond_18

    .line 2654
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_f

    const/4 p0, 0x0

    return p0

    .line 2657
    :cond_18
    :try_start_18
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    sub-long v0, p1, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1f} :catch_20
    .catchall {:try_start_18 .. :try_end_1f} :catchall_f

    goto :goto_27

    .line 2659
    :catch_20
    :try_start_20
    const-string v0, "VibratorManagerService"

    const-string v1, "VibratorManagerService interrupted waiting to stop, continuing"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    :goto_27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_8

    .line 2663
    :goto_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_f

    throw p0
.end method
