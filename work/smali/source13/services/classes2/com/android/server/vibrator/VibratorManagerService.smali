.class public Lcom/android/server/vibrator/VibratorManagerService;
.super Landroid/os/IVibratorManagerService$Stub;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;,
        Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;,
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;,
        Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;,
        Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;,
        Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;,
        Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;,
        Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;,
        Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;,
        Lcom/android/server/vibrator/VibratorManagerService$Injector;,
        Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTRIBUTES_ALL_BYPASS_FLAGS:I = 0x3

.field private static final BATTERY_STATS_REPEATING_VIBRATION_DURATION:J = 0x1388L

.field private static final DEBUG:Z = true

.field private static final DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final EXTERNAL_VIBRATOR_SERVICE:Ljava/lang/String; = "external_vibrator_service"

.field private static final TAG:Ljava/lang/String; = "VibratorManagerService"

.field private static final VIBRATION_CANCEL_WAIT_MILLIS:J = 0x1388L


# instance fields
.field private final mAlwaysOnEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private final mCapabilities:J

.field private final mContext:Landroid/content/Context;

.field private mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

.field private mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

.field private final mDeviceVibrationEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mLock:Ljava/lang/Object;

.field private final mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

.field private mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

.field private final mNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mServiceReady:Z

.field private final mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

.field private final mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

.field private final mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

.field private final mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

.field private final mVibratorIds:[I

.field private final mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

.field private final mVibrators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBatteryStatsService(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/internal/app/IBatteryStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCapabilities(Lcom/android/server/vibrator/VibratorManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNativeWrapper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibrationScaler(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationScaler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibrationSettings(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSettings;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibrationThread(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibratorIds(Lcom/android/server/vibrator/VibratorManagerService;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibrators(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNextVibration(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearNextVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextVibrationLocked(Lcom/android/server/vibrator/Vibration$Status;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mendExternalVibrateLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->endExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$Status;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mendVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mendVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfixupVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monSyncedVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->onSyncedVibrationComplete(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->onVibrationComplete(IJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportFinishedVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->reportFinishedVibrationLocked(Lcom/android/server/vibrator/Vibration$Status;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetExternalControl(Lcom/android/server/vibrator/VibratorManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibrationStepConductor;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartVibrationOnThreadLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)Lcom/android/server/vibrator/Vibration$Status;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnThreadLocked(Lcom/android/server/vibrator/VibrationStepConductor;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mvibrateInternal(Lcom/android/server/vibrator/VibratorManagerService;ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/Vibration;
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateInternal(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/Vibration;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 89
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 88
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorManagerService$Injector;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/vibrator/VibratorManagerService$Injector;

    .line 192
    invoke-direct {p0}, Landroid/os/IVibratorManagerService$Stub;-><init>()V

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 140
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks-IA;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 142
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    .line 158
    new-instance v2, Lcom/android/server/vibrator/VibratorManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/vibrator/VibratorManagerService$1;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 194
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    .line 196
    new-instance v3, Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {v3, p1, v2}, Lcom/android/server/vibrator/VibrationSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 197
    new-instance v4, Lcom/android/server/vibrator/VibrationScaler;

    invoke-direct {v4, p1, v3}, Lcom/android/server/vibrator/VibrationScaler;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 198
    new-instance v4, Lcom/android/server/vibrator/InputDeviceDelegate;

    invoke-direct {v4, p1, v2}, Lcom/android/server/vibrator/InputDeviceDelegate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    .line 199
    new-instance v2, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    invoke-direct {v2, v3}, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceVibrationEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    .line 201
    new-instance v2, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;

    invoke-direct {v2, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    .line 202
    .local v2, "listener":Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->getNativeWrapper()Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    .line 203
    invoke-virtual {v3, v2}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->init(Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;)V

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 207
    .local v4, "dumpLimit":I
    new-instance v5, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-direct {v5, v4}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    .line 209
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->getBatteryStatsService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 211
    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 213
    const-class v5, Landroid/os/PowerManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 214
    .local v5, "pm":Landroid/os/PowerManager;
    const-string v6, "*vibrator*"

    invoke-virtual {v5, v1, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 215
    invoke-virtual {v6, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 216
    new-instance v1, Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {v1, v6, v0}, Lcom/android/server/vibrator/VibrationThread;-><init>(Landroid/os/PowerManager$WakeLock;Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;)V

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    .line 217
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationThread;->start()V

    .line 222
    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->getCapabilities()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    .line 223
    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->getVibratorIds()[I

    move-result-object v0

    .line 224
    .local v0, "vibratorIds":[I
    const/4 v1, 0x0

    if-nez v0, :cond_b6

    .line 225
    new-array v3, v1, [I

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 226
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    goto :goto_d1

    .line 229
    :cond_b6
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 230
    new-instance v3, Landroid/util/SparseArray;

    array-length v6, v0

    invoke-direct {v3, v6}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 231
    array-length v3, v0

    :goto_c1
    if-ge v1, v3, :cond_d1

    aget v6, v0, v1

    .line 232
    .local v6, "vibratorId":I
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p2, v6, v2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createVibratorController(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)Lcom/android/server/vibrator/VibratorController;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    .end local v6    # "vibratorId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_c1

    .line 238
    :cond_d1
    :goto_d1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->cancelSynced()V

    .line 239
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d7
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_ed

    .line 240
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorController;->reset()V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_d7

    .line 243
    .end local v1    # "i":I
    :cond_ed
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x4

    invoke-virtual {p1, v3, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 247
    new-instance v3, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    const-string v6, "external_vibrator_service"

    invoke-virtual {p2, v6, v3}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 249
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerServiceStub;->getInstance()Lcom/android/server/vibrator/VibratorManagerServiceStub;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v3, v6}, Lcom/android/server/vibrator/VibratorManagerServiceStub;->init(Landroid/content/Context;)V

    .line 250
    return-void
.end method

.method private checkAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I
    .registers 8
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/os/VibrationAttributes;

    .line 940
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 941
    invoke-virtual {p3}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    move-result v1

    .line 940
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result v0

    .line 942
    .local v0, "mode":I
    invoke-direct {p0, v0, p3}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I

    move-result v1

    .line 943
    .local v1, "fixedMode":I
    if-eq v0, v1, :cond_2b

    if-nez v1, :cond_2b

    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bypassing DND for vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VibratorManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_2b
    return v1
.end method

.method private clearNextVibrationLocked(Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 3
    .param p1, "endStatus"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 1532
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v0, :cond_e

    .line 1533
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 1534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 1536
    :cond_e
    return-void
.end method

.method private dumpText(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 529
    const-string v0, "VibratorManagerService"

    const-string v1, "Dumping vibrator manager service to text..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_a
    const-string v1, "Vibrator Manager Service:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    const-string v1, "  mVibrationSettings:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 536
    const-string v1, "  mVibratorControllers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_35
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5c

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 540
    .end local v1    # "i":I
    :cond_5c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 541
    const-string v1, "  mCurrentVibration:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    const/4 v3, 0x0

    if-nez v2, :cond_76

    .line 543
    move-object v2, v3

    goto :goto_7e

    :cond_76
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vibrator/Vibration;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v2

    :goto_7e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 545
    const-string v1, "  mNextVibration:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-nez v2, :cond_a2

    .line 547
    move-object v2, v3

    goto :goto_aa

    :cond_a2
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vibrator/Vibration;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v2

    :goto_aa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 546
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 549
    const-string v1, "  mCurrentExternalVibration:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    if-nez v2, :cond_cd

    .line 551
    :goto_cc
    goto :goto_d2

    :cond_cd
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v3

    goto :goto_cc

    :goto_d2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 550
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 553
    monitor-exit v0
    :try_end_e1
    .catchall {:try_start_a .. :try_end_e1} :catchall_e7

    .line 554
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->dumpText(Ljava/io/PrintWriter;)V

    .line 555
    return-void

    .line 553
    :catchall_e7
    move-exception v1

    :try_start_e8
    monitor-exit v0
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw v1
.end method

.method private endExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$Status;Z)V
    .registers 7
    .param p1, "status"    # Lcom/android/server/vibrator/Vibration$Status;
    .param p2, "continueExternalControl"    # Z

    .line 1548
    const-wide/32 v0, 0x800000

    const-string v2, "endExternalVibrateLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1550
    :try_start_8
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_2a

    if-nez v2, :cond_10

    .line 1561
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1551
    return-void

    .line 1553
    :cond_10
    :try_start_10
    invoke-direct {p0, v2, p1}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 1554
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    iget-object v2, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    invoke-virtual {v2, v3}, Landroid/os/ExternalVibration;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 1556
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 1557
    if-nez p2, :cond_25

    .line 1558
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(Z)V
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_2a

    .line 1561
    :cond_25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1562
    nop

    .line 1563
    return-void

    .line 1561
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1562
    throw v2
.end method

.method private endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 5
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;
    .param p2, "status"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 719
    invoke-virtual {p1, p2}, Lcom/android/server/vibrator/Vibration;->end(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 720
    iget v0, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v1, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->logVibrationStatus(ILandroid/os/VibrationAttributes;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 721
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->record(Lcom/android/server/vibrator/Vibration;)V

    .line 722
    return-void
.end method

.method private endVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 5
    .param p1, "vib"    # Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    .param p2, "status"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 726
    invoke-virtual {p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->end(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 727
    iget-object v0, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0}, Landroid/os/ExternalVibration;->getUid()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 728
    invoke-virtual {v1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v1

    .line 727
    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->logVibrationStatus(ILandroid/os/VibrationAttributes;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 729
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->record(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)V

    .line 730
    return-void
.end method

.method private enforceUpdateAppOpsStatsPermission(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 973
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 974
    return-void

    .line 976
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 977
    return-void

    .line 979
    :cond_12
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 980
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 979
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 981
    return-void
.end method

.method private static extractPrebakedSegment(Landroid/os/VibrationEffect;)Landroid/os/vibrator/PrebakedSegment;
    .registers 4
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .line 1116
    instance-of v0, p0, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_25

    .line 1117
    move-object v0, p0

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    .line 1118
    .local v0, "composed":Landroid/os/VibrationEffect$Composed;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    .line 1119
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    .line 1120
    .local v1, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v2, v1, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v2, :cond_25

    .line 1121
    move-object v2, v1

    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    return-object v2

    .line 1125
    .end local v0    # "composed":Landroid/os/VibrationEffect$Composed;
    .end local v1    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method private fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/CombinedVibration;)V
    .registers 6
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;
    .param p2, "effect"    # Landroid/os/CombinedVibration;

    .line 1010
    instance-of v0, p2, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_f

    .line 1011
    move-object v0, p2

    check-cast v0, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)V

    goto :goto_4d

    .line 1012
    :cond_f
    instance-of v0, p2, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_2e

    .line 1013
    move-object v0, p2

    check-cast v0, Landroid/os/CombinedVibration$Stereo;

    .line 1014
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v0

    .line 1015
    .local v0, "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 1016
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/VibrationEffect;

    invoke-direct {p0, p1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)V

    .line 1015
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .end local v0    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    .end local v1    # "i":I
    :cond_2d
    goto :goto_4c

    .line 1018
    :cond_2e
    instance-of v0, p2, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_4c

    .line 1019
    move-object v0, p2

    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    .line 1020
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v0

    .line 1021
    .local v0, "effects":Ljava/util/List;, "Ljava/util/List<Landroid/os/CombinedVibration;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4d

    .line 1022
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CombinedVibration;

    invoke-direct {p0, p1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/CombinedVibration;)V

    .line 1021
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 1018
    .end local v0    # "effects":Ljava/util/List;, "Ljava/util/List<Landroid/os/CombinedVibration;>;"
    .end local v1    # "i":I
    :cond_4c
    :goto_4c
    nop

    .line 1025
    :cond_4d
    :goto_4d
    return-void
.end method

.method private fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)V
    .registers 10
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;
    .param p2, "effect"    # Landroid/os/VibrationEffect;

    .line 1028
    move-object v0, p2

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    .line 1029
    .local v0, "composed":Landroid/os/VibrationEffect$Composed;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1030
    .local v1, "segmentCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_3b

    .line 1031
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    .line 1032
    .local v3, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v4, v3, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v4, :cond_38

    .line 1033
    move-object v4, v3

    check-cast v4, Landroid/os/vibrator/PrebakedSegment;

    .line 1034
    .local v4, "prebaked":Landroid/os/vibrator/PrebakedSegment;
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 1035
    invoke-virtual {v4}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v6

    .line 1034
    invoke-virtual {v5, v6}, Lcom/android/server/vibrator/VibrationSettings;->getFallbackEffect(I)Landroid/os/VibrationEffect;

    move-result-object v5

    .line 1036
    .local v5, "fallback":Landroid/os/VibrationEffect;
    invoke-virtual {v4}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v6

    if-eqz v6, :cond_38

    if-eqz v5, :cond_38

    .line 1037
    invoke-virtual {v4}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v6

    invoke-virtual {p1, v6, v5}, Lcom/android/server/vibrator/Vibration;->addFallback(ILandroid/os/VibrationEffect;)V

    .line 1030
    .end local v3    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v4    # "prebaked":Landroid/os/vibrator/PrebakedSegment;
    .end local v5    # "fallback":Landroid/os/VibrationEffect;
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1041
    .end local v2    # "i":I
    :cond_3b
    return-void
.end method

.method private finishAppOpModeLocked(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;

    .line 965
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 966
    return-void
.end method

.method private fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;
    .registers 13
    .param p1, "effect"    # Landroid/os/CombinedVibration;
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

    .line 1080
    const-wide/32 v0, 0x800000

    const-string v2, "fixupAlwaysOnEffectsLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1083
    :try_start_8
    instance-of v2, p1, Landroid/os/CombinedVibration$Mono;

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    .line 1084
    move-object v2, p1

    check-cast v2, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {v2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v2

    .line 1085
    .local v2, "syncedEffect":Landroid/os/VibrationEffect;
    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/os/VibrationEffect;)V

    invoke-direct {p0, v4}, Lcom/android/server/vibrator/VibratorManagerService;->transformAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;

    move-result-object v4

    move-object v2, v4

    .line 1086
    .local v2, "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    goto :goto_2a

    .end local v2    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    :cond_1f
    instance-of v2, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v2, :cond_7a

    .line 1087
    move-object v2, p1

    check-cast v2, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {v2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v2

    .line 1092
    .restart local v2    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    :goto_2a
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1093
    .local v4, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/vibrator/PrebakedSegment;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_30
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_6a

    .line 1094
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/VibrationEffect;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->extractPrebakedSegment(Landroid/os/VibrationEffect;)Landroid/os/vibrator/PrebakedSegment;

    move-result-object v6

    .line 1095
    .local v6, "prebaked":Landroid/os/vibrator/PrebakedSegment;
    if-nez v6, :cond_4e

    .line 1096
    const-string v7, "VibratorManagerService"

    const-string v8, "Only prebaked effects supported for always-on."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_7f

    .line 1097
    nop

    .line 1110
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1097
    return-object v3

    .line 1099
    :cond_4e
    :try_start_4e
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1100
    .local v7, "vibratorId":I
    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/vibrator/VibratorController;

    .line 1101
    .local v8, "vibrator":Lcom/android/server/vibrator/VibratorController;
    if-eqz v8, :cond_67

    const-wide/16 v9, 0x40

    invoke-virtual {v8, v9, v10}, Lcom/android/server/vibrator/VibratorController;->hasCapability(J)Z

    move-result v9

    if-eqz v9, :cond_67

    .line 1102
    invoke-virtual {v4, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1093
    .end local v6    # "prebaked":Landroid/os/vibrator/PrebakedSegment;
    .end local v7    # "vibratorId":I
    .end local v8    # "vibrator":Lcom/android/server/vibrator/VibratorController;
    :cond_67
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 1105
    .end local v5    # "i":I
    :cond_6a
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5
    :try_end_6e
    .catchall {:try_start_4e .. :try_end_6e} :catchall_7f

    if-nez v5, :cond_75

    .line 1106
    nop

    .line 1110
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1106
    return-object v3

    .line 1108
    :cond_75
    nop

    .line 1110
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1108
    return-object v4

    .line 1090
    .end local v2    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    .end local v4    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/vibrator/PrebakedSegment;>;"
    :cond_7a
    nop

    .line 1110
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1090
    return-object v3

    .line 1110
    :catchall_7f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1111
    throw v2
.end method

.method private fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I
    .registers 4
    .param p1, "mode"    # I
    .param p2, "attrs"    # Landroid/os/VibrationAttributes;

    .line 1134
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1135
    invoke-virtual {p2, v0}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1136
    const/4 v0, 0x0

    return v0

    .line 1138
    :cond_b
    return p1
.end method

.method private fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;
    .registers 7
    .param p1, "attrs"    # Landroid/os/VibrationAttributes;
    .param p2, "effect"    # Landroid/os/CombinedVibration;

    .line 1050
    if-nez p1, :cond_4

    .line 1051
    sget-object p1, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 1053
    :cond_4
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 1054
    .local v0, "usage":I
    if-nez v0, :cond_14

    if-eqz p2, :cond_14

    .line 1055
    invoke-virtual {p2}, Landroid/os/CombinedVibration;->isHapticFeedbackCandidate()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1056
    const/16 v0, 0x12

    .line 1058
    :cond_14
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v1

    .line 1059
    .local v1, "flags":I
    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_36

    .line 1060
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 1061
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 1062
    const-string v2, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 1064
    and-int/lit8 v1, v1, -0x4

    .line 1067
    :cond_36
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    if-ne v0, v2, :cond_43

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v2

    if-ne v1, v2, :cond_43

    .line 1068
    return-object p1

    .line 1070
    :cond_43
    new-instance v2, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v2, p1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    .line 1071
    invoke-virtual {v2, v0}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v2

    .line 1072
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/VibrationAttributes$Builder;->setFlags(II)Landroid/os/VibrationAttributes$Builder;

    move-result-object v2

    .line 1073
    invoke-virtual {v2}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v2

    .line 1070
    return-object v2
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 1142
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isEffectValid(Landroid/os/CombinedVibration;)Z
    .registers 5
    .param p0, "effect"    # Landroid/os/CombinedVibration;

    .line 992
    const/4 v0, 0x0

    const-string v1, "VibratorManagerService"

    if-nez p0, :cond_b

    .line 993
    const-string v2, "effect must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    return v0

    .line 997
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->validate()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_11

    .line 1001
    nop

    .line 1002
    const/4 v0, 0x1

    return v0

    .line 998
    :catch_11
    move-exception v2

    .line 999
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Encountered issue when verifying CombinedVibrationEffect."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1000
    return v0
.end method

.method static synthetic lambda$fixupAlwaysOnEffectsLocked$2(Landroid/os/VibrationEffect;Lcom/android/server/vibrator/VibratorController;)Landroid/os/VibrationEffect;
    .registers 2
    .param p0, "syncedEffect"    # Landroid/os/VibrationEffect;
    .param p1, "unused"    # Lcom/android/server/vibrator/VibratorController;

    .line 1085
    return-object p0
.end method

.method static synthetic lambda$setAlwaysOnEffect$0(ILcom/android/server/vibrator/VibratorController;)V
    .registers 4
    .param p0, "alwaysOnId"    # I
    .param p1, "v"    # Lcom/android/server/vibrator/VibratorController;

    .line 354
    const-wide/16 v0, 0x40

    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibratorController;->hasCapability(J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 355
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V

    .line 357
    :cond_c
    return-void
.end method

.method private logVibrationStatus(ILandroid/os/VibrationAttributes;Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "attrs"    # Landroid/os/VibrationAttributes;
    .param p3, "status"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 733
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$2;->$SwitchMap$com$android$server$vibrator$Vibration$Status:[I

    invoke-virtual {p3}, Lcom/android/server/vibrator/Vibration$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "VibratorManagerService"

    packed-switch v0, :pswitch_data_a0

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibration for uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and with attrs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ended with status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 764
    :pswitch_38
    const-string v0, "Ignoring incoming vibration in favor of ringtone vibration"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    goto :goto_9f

    .line 758
    :pswitch_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring incoming vibration because of ringer mode, attrs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    goto :goto_9f

    .line 753
    :pswitch_55
    const-string v0, "Ignoring incoming vibration in favor of repeating vibration"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    goto :goto_9f

    .line 748
    :pswitch_5b
    const-string v0, "Ignoring incoming vibration for current external vibration"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    goto :goto_9f

    .line 743
    :pswitch_61
    const-string v0, "Ignoring incoming vibration in favor of alarm vibration"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    goto :goto_9f

    .line 739
    :pswitch_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Would be an error: vibrate from uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    goto :goto_9f

    .line 735
    :pswitch_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring incoming vibration as process with uid= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is background, attrs= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    nop

    .line 774
    :goto_9f
    return-void

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_67
        :pswitch_61
        :pswitch_5b
        :pswitch_55
        :pswitch_3e
        :pswitch_38
    .end packed-switch
.end method

.method static native nativeCancelSynced(J)V
.end method

.method static native nativeGetCapabilities(J)J
.end method

.method static native nativeGetFinalizer()J
.end method

.method static native nativeGetVibratorIds(J)[I
.end method

.method static native nativeInit(Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;)J
.end method

.method static native nativePrepareSynced(J[I)Z
.end method

.method static native nativeTriggerSynced(JJ)Z
.end method

.method private onAllVibratorsLocked(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;)V"
        }
    .end annotation

    .line 1158
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/vibrator/VibratorController;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 1159
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1161
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private onSyncedVibrationComplete(J)V
    .registers 7
    .param p1, "vibrationId"    # J

    .line 793
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 794
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_34

    .line 796
    const-string v1, "VibratorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Synced vibration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " complete, notifying thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->notifySyncedVibrationComplete()V

    .line 800
    :cond_34
    monitor-exit v0

    .line 801
    return-void

    .line 800
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private onVibrationComplete(IJ)V
    .registers 8
    .param p1, "vibratorId"    # I
    .param p2, "vibrationId"    # J

    .line 804
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v1, v1, p2

    if-nez v1, :cond_3e

    .line 807
    const-string v1, "VibratorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on vibrator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " complete, notifying thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyVibratorComplete(I)V

    .line 812
    :cond_3e
    monitor-exit v0

    .line 813
    return-void

    .line 812
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method private reportFinishedVibrationLocked(Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 9
    .param p1, "status"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 778
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "reportFinishVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 779
    const-string/jumbo v2, "vibration"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 781
    :try_start_10
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    .line 783
    .local v2, "vib":Lcom/android/server/vibrator/Vibration;
    const-string v3, "VibratorManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reporting vibration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " finished with status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-direct {p0, v2, p1}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 786
    iget v3, v2, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v4, v2, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(ILjava/lang/String;)V
    :try_end_44
    .catchall {:try_start_10 .. :try_end_44} :catchall_49

    .line 788
    .end local v2    # "vib":Lcom/android/server/vibrator/Vibration;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 789
    nop

    .line 790
    return-void

    .line 788
    :catchall_49
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 789
    throw v2
.end method

.method private setExternalControl(Z)V
    .registers 4
    .param p1, "externalControl"    # Z

    .line 628
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 629
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibratorController;->setExternalControl(Z)V

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 631
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private shouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibrationStepConductor;)Z
    .registers 9
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;

    .line 1148
    if-nez p1, :cond_4

    .line 1149
    const/4 v0, 0x0

    return v0

    .line 1151
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v0

    .line 1152
    .local v0, "vib":Lcom/android/server/vibrator/Vibration;
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget v2, v0, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v3, v0, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 1153
    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v4

    iget-wide v5, v0, Lcom/android/server/vibrator/Vibration;->startUptimeMillis:J

    .line 1152
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vibrator/VibrationSettings;->shouldCancelVibrationOnScreenOff(ILjava/lang/String;IJ)Z

    move-result v1

    return v1
.end method

.method private shouldCancelVibration(Landroid/os/VibrationAttributes;I)Z
    .registers 7
    .param p1, "attrs"    # Landroid/os/VibrationAttributes;
    .param p2, "usageFilter"    # I

    .line 925
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 928
    if-eqz p2, :cond_f

    const/4 v0, -0x1

    if-ne p2, v0, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    :cond_f
    :goto_f
    return v1

    .line 931
    :cond_10
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    and-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    if-ne v0, v3, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1
.end method

.method private shouldCancelVibration(Lcom/android/server/vibrator/Vibration;ILandroid/os/IBinder;)Z
    .registers 5
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;
    .param p2, "usageFilter"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .line 914
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->token:Landroid/os/IBinder;

    if-ne v0, p3, :cond_e

    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {p0, v0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Landroid/os/VibrationAttributes;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private shouldIgnoreVibrationForOngoingLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;
    .registers 7
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;

    .line 825
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerServiceStub;->getInstance()Lcom/android/server/vibrator/VibratorManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/vibrator/VibratorManagerServiceStub;->shouldIgnoreForDynamicEffect(Lcom/android/server/vibrator/Vibration;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 826
    const-string v0, "VibratorManagerService"

    const-string v1, "Ignoring incoming vibration in favor of current Dynamic Effect"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/Vibration$Status;

    return-object v0

    .line 830
    :cond_14
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    const/16 v1, 0x21

    if-eqz v0, :cond_2d

    .line 832
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    if-ne v0, v1, :cond_2a

    .line 833
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0}, Landroid/os/ExternalVibration;->mute()Z

    goto :goto_2d

    .line 835
    :cond_2a
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/Vibration$Status;

    return-object v0

    .line 839
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    const/4 v2, 0x0

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Lcom/android/server/vibrator/Vibration;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_68

    .line 844
    :cond_39
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v0

    .line 845
    .local v0, "currentVibration":Lcom/android/server/vibrator/Vibration;
    invoke-virtual {v0}, Lcom/android/server/vibrator/Vibration;->hasEnded()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 847
    return-object v2

    .line 850
    :cond_46
    iget-object v3, v0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_53

    .line 851
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_ALARM:Lcom/android/server/vibrator/Vibration$Status;

    return-object v1

    .line 854
    :cond_53
    iget-object v3, v0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    if-ne v3, v1, :cond_5e

    .line 855
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_RINGTONE:Lcom/android/server/vibrator/Vibration$Status;

    return-object v1

    .line 858
    :cond_5e
    invoke-virtual {v0}, Lcom/android/server/vibrator/Vibration;->isRepeating()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 859
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/Vibration$Status;

    return-object v1

    .line 861
    :cond_67
    return-object v2

    .line 841
    .end local v0    # "currentVibration":Lcom/android/server/vibrator/Vibration;
    :cond_68
    :goto_68
    return-object v2
.end method

.method private shouldIgnoreVibrationLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;
    .registers 7
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/os/VibrationAttributes;

    .line 874
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/vibrator/VibrationSettings;->shouldIgnoreVibration(ILandroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v0

    .line 875
    .local v0, "statusFromSettings":Lcom/android/server/vibrator/Vibration$Status;
    if-eqz v0, :cond_9

    .line 876
    return-object v0

    .line 880
    :cond_9
    sget-boolean v1, Landroid/os/Build;->IS_MIUI:Z

    if-eqz v1, :cond_21

    .line 881
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerServiceStub;->getInstance()Lcom/android/server/vibrator/VibratorManagerServiceStub;

    move-result-object v1

    invoke-interface {v1, p3, p2}, Lcom/android/server/vibrator/VibratorManagerServiceStub;->shouldIgnoredVibration(Landroid/os/VibrationAttributes;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 883
    const-string v1, "VibratorManagerService"

    const-string v2, "Vibrate ignored, not vibrating for ringtones or notify for MIUI"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_RINGTONE_OR_NOTIFY_MIUI:Lcom/android/server/vibrator/Vibration$Status;

    return-object v1

    .line 890
    :cond_21
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->checkAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I

    move-result v1

    .line 891
    .local v1, "mode":I
    if-eqz v1, :cond_30

    .line 892
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2d

    .line 895
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    return-object v2

    .line 897
    :cond_2d
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    return-object v2

    .line 901
    :cond_30
    const/4 v2, 0x0

    return-object v2
.end method

.method private startAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I
    .registers 6
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/os/VibrationAttributes;

    .line 955
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 956
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 955
    invoke-direct {p0, v0, p3}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I

    move-result v0

    return v0
.end method

.method private startVibrationLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;
    .registers 13
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;

    .line 655
    const-string v0, "hapticFeedbackDisable"

    const-string/jumbo v1, "playDynamicEffect"

    const-wide/32 v2, 0x800000

    const-string/jumbo v4, "startVibrationLocked"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 658
    :try_start_e
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerServiceStub;->getInstance()Lcom/android/server/vibrator/VibratorManagerServiceStub;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/server/vibrator/VibratorManagerServiceStub;->startVibrationLockedInjector(Lcom/android/server/vibrator/Vibration;)Ljava/lang/String;

    move-result-object v4

    .line 659
    .local v4, "injectorInfo":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_80

    const-string v6, "VibratorManagerService"

    if-eqz v5, :cond_27

    .line 660
    :try_start_1e
    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_80

    .line 686
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 661
    return-object v0

    .line 663
    :cond_27
    :try_start_27
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 664
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_80

    .line 686
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 665
    return-object v0

    .line 668
    :cond_36
    :try_start_36
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration;)V

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/Vibration;->updateEffects(Ljava/util/function/Function;)V

    .line 669
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget v6, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v7, p1, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    .line 670
    invoke-virtual {p1}, Lcom/android/server/vibrator/Vibration;->getEffect()Landroid/os/CombinedVibration;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/vibrator/Vibration;->reason:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 669
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/vibrator/InputDeviceDelegate;->vibrateIfAvailable(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)Z

    move-result v0

    .line 671
    .local v0, "inputDevicesAvailable":Z
    if-eqz v0, :cond_58

    .line 672
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_54
    .catchall {:try_start_36 .. :try_end_54} :catchall_80

    .line 686
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 672
    return-object v1

    .line 675
    :cond_58
    :try_start_58
    new-instance v1, Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceVibrationEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    move-object v5, v1

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/server/vibrator/VibrationStepConductor;-><init>(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;Landroid/util/SparseArray;Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;)V

    .line 677
    .local v1, "conductor":Lcom/android/server/vibrator/VibrationStepConductor;
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-nez v5, :cond_73

    .line 678
    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnThreadLocked(Lcom/android/server/vibrator/VibrationStepConductor;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v5
    :try_end_6f
    .catchall {:try_start_58 .. :try_end_6f} :catchall_80

    .line 686
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 678
    return-object v5

    .line 682
    :cond_73
    :try_start_73
    sget-object v5, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-direct {p0, v5}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextVibrationLocked(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 683
    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 684
    sget-object v5, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_7c
    .catchall {:try_start_73 .. :try_end_7c} :catchall_80

    .line 686
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 684
    return-object v5

    .line 686
    .end local v0    # "inputDevicesAvailable":Z
    .end local v1    # "conductor":Lcom/android/server/vibrator/VibrationStepConductor;
    .end local v4    # "injectorInfo":Ljava/lang/String;
    :catchall_80
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 687
    throw v0
.end method

.method private startVibrationOnThreadLocked(Lcom/android/server/vibrator/VibrationStepConductor;)Lcom/android/server/vibrator/Vibration$Status;
    .registers 9
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;

    .line 692
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "startVibrationThreadLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 694
    :try_start_9
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    .line 695
    .local v2, "vib":Lcom/android/server/vibrator/Vibration;
    iget v3, v2, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v4, v2, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/vibrator/VibratorManagerService;->startAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I

    move-result v3

    .line 696
    .local v3, "mode":I
    packed-switch v3, :pswitch_data_66

    .line 710
    :pswitch_1a
    sget-object v4, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    goto :goto_5d

    .line 707
    :pswitch_1d
    const-string v4, "VibratorManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start AppOpsManager operation errored for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/vibrator/Vibration;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    sget-object v4, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_61

    .line 713
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 708
    return-object v4

    .line 698
    :pswitch_3d
    :try_start_3d
    const-string/jumbo v4, "vibration"

    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 699
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 700
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v4, p1}, Lcom/android/server/vibrator/VibrationThread;->runVibrationOnVibrationThread(Lcom/android/server/vibrator/VibrationStepConductor;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 702
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 703
    sget-object v4, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_53
    .catchall {:try_start_3d .. :try_end_53} :catchall_61

    .line 713
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 703
    return-object v4

    .line 705
    :cond_57
    :try_start_57
    sget-object v4, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_59
    .catchall {:try_start_57 .. :try_end_59} :catchall_61

    .line 713
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 705
    return-object v4

    .line 713
    :goto_5d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 710
    return-object v4

    .line 713
    .end local v2    # "vib":Lcom/android/server/vibrator/Vibration;
    .end local v3    # "mode":I
    :catchall_61
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 714
    throw v2

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method private transformAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/vibrator/VibratorController;",
            "TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 1165
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/vibrator/VibratorController;TT;>;"
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 1166
    .local v0, "ret":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 1167
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorController;

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1166
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1169
    .end local v1    # "i":I
    :cond_2c
    return-object v0
.end method

.method private updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V
    .registers 8
    .param p1, "vib"    # Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    .line 635
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 636
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    .line 637
    .local v1, "vibrator":Lcom/android/server/vibrator/VibratorController;
    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    .line 638
    .local v2, "effect":Landroid/os/vibrator/PrebakedSegment;
    if-nez v1, :cond_22

    .line 639
    goto :goto_41

    .line 641
    :cond_22
    iget v3, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->uid:I

    iget-object v4, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->opPkg:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v3

    .line 643
    .local v3, "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    if-nez v3, :cond_3b

    .line 644
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v5, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/android/server/vibrator/VibrationScaler;->scale(Landroid/os/vibrator/PrebakedSegment;I)Landroid/os/vibrator/PrebakedSegment;

    move-result-object v2

    goto :goto_3c

    .line 647
    :cond_3b
    const/4 v2, 0x0

    .line 649
    :goto_3c
    iget v4, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->alwaysOnId:I

    invoke-virtual {v1, v4, v2}, Lcom/android/server/vibrator/VibratorController;->updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V

    .line 635
    .end local v1    # "vibrator":Lcom/android/server/vibrator/VibratorController;
    .end local v2    # "effect":Landroid/os/vibrator/PrebakedSegment;
    .end local v3    # "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 651
    .end local v0    # "i":I
    :cond_44
    return-void
.end method

.method private vibrateInternal(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/Vibration;
    .registers 22
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/CombinedVibration;
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "token"    # Landroid/os/IBinder;

    .line 396
    move-object v1, p0

    move-object/from16 v10, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrate, reason = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v11, p5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v12, 0x800000

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 398
    :try_start_1f
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    const-string/jumbo v3, "vibrate"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_e5

    .line 400
    const/4 v0, 0x0

    if-nez p6, :cond_3e

    .line 401
    :try_start_2c
    const-string v2, "VibratorManagerService"

    const-string/jumbo v3, "token must not be null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_39

    .line 402
    nop

    .line 451
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 402
    return-object v0

    .line 451
    :catchall_39
    move-exception v0

    move-object/from16 v14, p4

    goto/16 :goto_e9

    .line 404
    :cond_3e
    :try_start_3e
    invoke-direct/range {p0 .. p1}, Lcom/android/server/vibrator/VibratorManagerService;->enforceUpdateAppOpsStatsPermission(I)V

    .line 405
    invoke-static/range {p3 .. p3}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result v2
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_e5

    if-nez v2, :cond_4c

    .line 406
    nop

    .line 451
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 406
    return-object v0

    .line 408
    :cond_4c
    move-object/from16 v2, p4

    :try_start_4e
    invoke-direct {p0, v2, v10}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object v0
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_e3

    move-object v14, v0

    .line 409
    .end local p4    # "attrs":Landroid/os/VibrationAttributes;
    .local v14, "attrs":Landroid/os/VibrationAttributes;
    :try_start_53
    new-instance v0, Lcom/android/server/vibrator/Vibration;

    iget-object v2, v1, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    move-object v2, v0

    move-object/from16 v3, p6

    move-object/from16 v5, p3

    move-object v6, v14

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/vibrator/Vibration;-><init>(Landroid/os/IBinder;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 411
    .local v2, "vib":Lcom/android/server/vibrator/Vibration;
    invoke-direct {p0, v2, v10}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/CombinedVibration;)V

    .line 413
    const/4 v0, 0x3

    invoke-virtual {v14, v0}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_7d

    .line 416
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    invoke-virtual {v0, v3}, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;->onChange(Z)V

    .line 419
    :cond_7d
    iget-object v4, v1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_80
    .catchall {:try_start_53 .. :try_end_80} :catchall_e1

    .line 421
    :try_start_80
    const-string v0, "VibratorManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting vibrate for vibration  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget v0, v2, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v5, v2, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v0

    .line 426
    .local v0, "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    if-nez v0, :cond_ac

    .line 427
    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationForOngoingLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v5

    move-object v0, v5

    goto :goto_ad

    .line 426
    :cond_ac
    move-object v5, v0

    .line 430
    .end local v0    # "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    .local v5, "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    :goto_ad
    if-eqz v5, :cond_b7

    .line 431
    invoke-direct {p0, v2, v5}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 432
    monitor-exit v4
    :try_end_b3
    .catchall {:try_start_80 .. :try_end_b3} :catchall_de

    .line 451
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 432
    return-object v2

    .line 435
    :cond_b7
    :try_start_b7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_bb
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_de

    .line 437
    .local v6, "ident":J
    :try_start_bb
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v0, :cond_c4

    .line 438
    sget-object v8, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v0, v8, v3}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 441
    :cond_c4
    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v0

    .line 442
    .local v0, "status":Lcom/android/server/vibrator/Vibration$Status;
    sget-object v3, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq v0, v3, :cond_cf

    .line 443
    invoke-direct {p0, v2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V
    :try_end_cf
    .catchall {:try_start_bb .. :try_end_cf} :catchall_d8

    .line 445
    :cond_cf
    nop

    .line 447
    :try_start_d0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4
    :try_end_d4
    .catchall {:try_start_d0 .. :try_end_d4} :catchall_de

    .line 451
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 445
    return-object v2

    .line 447
    .end local v0    # "status":Lcom/android/server/vibrator/Vibration$Status;
    :catchall_d8
    move-exception v0

    :try_start_d9
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 448
    nop

    .end local v2    # "vib":Lcom/android/server/vibrator/Vibration;
    .end local v14    # "attrs":Landroid/os/VibrationAttributes;
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "effect":Landroid/os/CombinedVibration;
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "token":Landroid/os/IBinder;
    throw v0

    .line 449
    .end local v5    # "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    .end local v6    # "ident":J
    .restart local v2    # "vib":Lcom/android/server/vibrator/Vibration;
    .restart local v14    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "effect":Landroid/os/CombinedVibration;
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "token":Landroid/os/IBinder;
    :catchall_de
    move-exception v0

    monitor-exit v4
    :try_end_e0
    .catchall {:try_start_d9 .. :try_end_e0} :catchall_de

    .end local v14    # "attrs":Landroid/os/VibrationAttributes;
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "effect":Landroid/os/CombinedVibration;
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "token":Landroid/os/IBinder;
    :try_start_e0
    throw v0
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_e1

    .line 451
    .end local v2    # "vib":Lcom/android/server/vibrator/Vibration;
    .restart local v14    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "effect":Landroid/os/CombinedVibration;
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "token":Landroid/os/IBinder;
    :catchall_e1
    move-exception v0

    goto :goto_e9

    .end local v14    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p4    # "attrs":Landroid/os/VibrationAttributes;
    :catchall_e3
    move-exception v0

    goto :goto_e8

    :catchall_e5
    move-exception v0

    move-object/from16 v2, p4

    :goto_e8
    move-object v14, v2

    .end local p4    # "attrs":Landroid/os/VibrationAttributes;
    .restart local v14    # "attrs":Landroid/os/VibrationAttributes;
    :goto_e9
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 452
    throw v0
.end method


# virtual methods
.method public cancelVibrate(ILandroid/os/IBinder;)V
    .registers 11
    .param p1, "usageFilter"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 457
    const-string v0, "cancelVibrate"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 459
    :try_start_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    const-string v4, "cancelVibrate"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_a0

    .line 465
    :try_start_14
    const-string v3, "VibratorManagerService"

    const-string v4, "Canceling vibration"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 469
    .local v3, "ident":J
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerServiceStub;->getInstance()Lcom/android/server/vibrator/VibratorManagerServiceStub;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/android/server/vibrator/VibratorManagerServiceStub;->cancelDynamicEffectIfItIs(I)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 470
    const-string v5, "VibratorManagerService"

    const-string v6, "dynamic effect canceled"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_9d

    .line 500
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 471
    return-void

    .line 475
    :cond_35
    :try_start_35
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v5, :cond_48

    .line 476
    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Lcom/android/server/vibrator/Vibration;ILandroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 478
    sget-object v5, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/Vibration$Status;

    invoke-direct {p0, v5}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextVibrationLocked(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 480
    :cond_48
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    const/4 v6, 0x0

    if-eqz v5, :cond_5e

    .line 481
    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Lcom/android/server/vibrator/Vibration;ILandroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 483
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    sget-object v7, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v5, v7, v6}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 486
    :cond_5e
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    if-eqz v5, :cond_8d

    iget-object v5, v5, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 487
    invoke-virtual {v5}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v5

    const/16 v7, 0x21

    if-ne v5, v7, :cond_72

    if-ne p1, v7, :cond_8d

    :cond_72
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    iget-object v5, v5, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 489
    invoke-virtual {v5}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v5

    const/4 v7, -0x1

    .line 488
    invoke-direct {p0, v5, v7}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Landroid/os/VibrationAttributes;I)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 491
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    iget-object v5, v5, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v5}, Landroid/os/ExternalVibration;->mute()Z

    .line 492
    sget-object v5, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/Vibration$Status;

    invoke-direct {p0, v5, v6}, Lcom/android/server/vibrator/VibratorManagerService;->endExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$Status;Z)V
    :try_end_8d
    .catchall {:try_start_35 .. :try_end_8d} :catchall_97

    .line 496
    :cond_8d
    :try_start_8d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 497
    nop

    .line 498
    .end local v3    # "ident":J
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_9d

    .line 500
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 501
    nop

    .line 502
    return-void

    .line 496
    .restart local v3    # "ident":J
    :catchall_97
    move-exception v5

    :try_start_98
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 497
    nop

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "usageFilter":I
    .end local p2    # "token":Landroid/os/IBinder;
    throw v5

    .line 498
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "usageFilter":I
    .restart local p2    # "token":Landroid/os/IBinder;
    :catchall_9d
    move-exception v3

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_98 .. :try_end_9f} :catchall_9d

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "usageFilter":I
    .end local p2    # "token":Landroid/os/IBinder;
    :try_start_9f
    throw v3
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_a0

    .line 500
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "usageFilter":I
    .restart local p2    # "token":Landroid/os/IBinder;
    :catchall_a0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 501
    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 506
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "VibratorManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 508
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 510
    .local v0, "ident":J
    const/4 v2, 0x0

    .line 511
    .local v2, "isDumpProto":Z
    array-length v3, p3

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_22

    aget-object v5, p3, v4

    .line 512
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "--proto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 513
    const/4 v2, 0x1

    .line 511
    .end local v5    # "arg":Ljava/lang/String;
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 517
    :cond_22
    if-eqz v2, :cond_28

    .line 518
    :try_start_24
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_2b

    .line 520
    :cond_28
    invoke-direct {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->dumpText(Ljava/io/PrintWriter;)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_30

    .line 523
    :goto_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    nop

    .line 525
    return-void

    .line 523
    :catchall_30
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    throw v3
.end method

.method declared-synchronized dumpProto(Ljava/io/FileDescriptor;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    monitor-enter p0

    .line 558
    :try_start_1
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 560
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-string v1, "VibratorManagerService"

    const-string v2, "Dumping vibrator manager service to proto..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_90

    .line 563
    :try_start_10
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/VibrationSettings;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 564
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_8d

    if-eqz v2, :cond_2c

    .line 565
    :try_start_19
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vibrator/Vibration;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v2

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_2a

    goto :goto_2c

    .line 583
    :catchall_2a
    move-exception v2

    goto :goto_8e

    .line 568
    :cond_2c
    :goto_2c
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_8d

    if-eqz v2, :cond_3c

    .line 569
    :try_start_30
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v2

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_2a

    .line 573
    :cond_3c
    const/4 v2, 0x0

    .line 574
    .local v2, "isVibrating":Z
    const/4 v3, 0x0

    .line 575
    .local v3, "isUnderExternalControl":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3f
    :try_start_3f
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_8d

    if-ge v4, v5, :cond_72

    .line 576
    const-wide v5, 0x20500000001L

    :try_start_4c
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 577
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibratorController;->isVibrating()Z

    move-result v5

    or-int/2addr v2, v5

    .line 578
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibratorController;->isUnderExternalControl()Z

    move-result v5
    :try_end_6e
    .catchall {:try_start_4c .. :try_end_6e} :catchall_2a

    or-int/2addr v3, v5

    .line 575
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 580
    .end local v4    # "i":I
    :cond_72
    const-wide v4, 0x10800000003L

    :try_start_77
    invoke-virtual {v0, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 581
    const-wide v4, 0x10800000005L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 583
    .end local v2    # "isVibrating":Z
    .end local v3    # "isUnderExternalControl":Z
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_77 .. :try_end_83} :catchall_8d

    .line 584
    :try_start_83
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 585
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V
    :try_end_8b
    .catchall {:try_start_83 .. :try_end_8b} :catchall_90

    .line 586
    monitor-exit p0

    return-void

    .line 583
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    :catchall_8d
    move-exception v2

    :goto_8e
    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw v2
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_90

    .line 557
    .end local v0    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    :catchall_90
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getVibratorIds()[I
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public getVibratorInfo(I)Landroid/os/VibratorInfo;
    .registers 7
    .param p1, "vibratorId"    # I

    .line 287
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    .line 288
    .local v0, "controller":Lcom/android/server/vibrator/VibratorController;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 289
    return-object v1

    .line 291
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v2

    .line 292
    .local v2, "info":Landroid/os/VibratorInfo;
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 293
    :try_start_13
    iget-boolean v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    if-eqz v4, :cond_19

    .line 294
    monitor-exit v3

    return-object v2

    .line 296
    :cond_19
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_22

    .line 299
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->isVibratorInfoLoadSuccessful()Z

    move-result v3

    if-eqz v3, :cond_21

    move-object v1, v2

    :cond_21
    return-object v1

    .line 296
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public isVibrating(I)Z
    .registers 5
    .param p1, "vibratorId"    # I

    .line 304
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_VIBRATOR_STATE"

    const-string v2, "isVibrating"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    .line 308
    .local v0, "controller":Lcom/android/server/vibrator/VibratorController;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->isVibrating()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1
.end method

.method synthetic lambda$startVibrationLocked$1$com-android-server-vibrator-VibratorManagerService(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .registers 5
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;
    .param p2, "effect"    # Landroid/os/VibrationEffect;

    .line 668
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v1, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/vibrator/VibrationScaler;->scale(Landroid/os/VibrationEffect;I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "cb"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 591
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-virtual {p5}, Landroid/os/ShellCallback;->getShellCallbackBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand-IA;)V

    .line 592
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 593
    return-void
.end method

.method public registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 6
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;

    .line 313
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_VIBRATOR_STATE"

    const-string/jumbo v2, "registerVibratorStateListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    .line 317
    .local v0, "controller":Lcom/android/server/vibrator/VibratorController;
    if-nez v0, :cond_16

    .line 318
    const/4 v1, 0x0

    return v1

    .line 320
    :cond_16
    invoke-virtual {v0, p2}, Lcom/android/server/vibrator/VibratorController;->registerVibratorStateListener(Landroid/os/IVibratorStateListener;)Z

    move-result v1

    return v1
.end method

.method public setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z
    .registers 22
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "alwaysOnId"    # I
    .param p4, "effect"    # Landroid/os/CombinedVibration;
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;

    .line 339
    move-object/from16 v1, p0

    move/from16 v8, p3

    move-object/from16 v2, p5

    const-string/jumbo v0, "setAlwaysOnEffect"

    const-wide/32 v9, 0x800000

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 341
    :try_start_f
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE_ALWAYS_ON"

    const-string/jumbo v4, "setAlwaysOnEffect"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerServiceStub;->getInstance()Lcom/android/server/vibrator/VibratorManagerServiceStub;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_87

    move-object/from16 v11, p2

    move-object/from16 v3, p4

    :try_start_21
    invoke-interface {v0, v3, v2, v11}, Lcom/android/server/vibrator/VibratorManagerServiceStub;->calculateVibrateForMiui(Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;)Landroid/os/CombinedVibration;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_85

    move-object v12, v0

    .line 350
    .end local p4    # "effect":Landroid/os/CombinedVibration;
    .local v12, "effect":Landroid/os/CombinedVibration;
    const/4 v0, 0x1

    if-nez v12, :cond_42

    .line 351
    :try_start_29
    iget-object v3, v1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_83

    .line 352
    :try_start_2c
    iget-object v4, v1, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->delete(I)V

    .line 353
    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v4, v8}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {v1, v4}, Lcom/android/server/vibrator/VibratorManagerService;->onAllVibratorsLocked(Ljava/util/function/Consumer;)V

    .line 358
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_3f

    .line 359
    nop

    .line 379
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 359
    return v0

    .line 358
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    .end local v12    # "effect":Landroid/os/CombinedVibration;
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "alwaysOnId":I
    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    :try_start_41
    throw v0

    .line 361
    .restart local v12    # "effect":Landroid/os/CombinedVibration;
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "alwaysOnId":I
    .restart local p5    # "attrs":Landroid/os/VibrationAttributes;
    :cond_42
    invoke-static {v12}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result v3
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_83

    const/4 v4, 0x0

    if-nez v3, :cond_4e

    .line 362
    nop

    .line 379
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 362
    return v4

    .line 364
    :cond_4e
    :try_start_4e
    invoke-direct {v1, v2, v12}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object v6
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_83

    .line 365
    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    .local v6, "attrs":Landroid/os/VibrationAttributes;
    :try_start_52
    iget-object v13, v1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_80

    .line 366
    :try_start_55
    invoke-direct {v1, v12}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;

    move-result-object v2

    move-object v14, v2

    .line 367
    .local v14, "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/vibrator/PrebakedSegment;>;"
    if-nez v14, :cond_61

    .line 370
    monitor-exit v13
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_7d

    .line 379
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 370
    return v4

    .line 372
    :cond_61
    :try_start_61
    new-instance v15, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    move-object v2, v15

    move/from16 v3, p3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object v7, v14

    invoke-direct/range {v2 .. v7}, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;-><init>(IILjava/lang/String;Landroid/os/VibrationAttributes;Landroid/util/SparseArray;)V

    move-object v2, v15

    .line 374
    .local v2, "alwaysOnVibration":Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;
    iget-object v3, v1, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    invoke-direct {v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    .line 376
    .end local v2    # "alwaysOnVibration":Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;
    .end local v14    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/vibrator/PrebakedSegment;>;"
    monitor-exit v13
    :try_end_78
    .catchall {:try_start_61 .. :try_end_78} :catchall_7d

    .line 377
    nop

    .line 379
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 377
    return v0

    .line 376
    :catchall_7d
    move-exception v0

    :try_start_7e
    monitor-exit v13
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    .end local v6    # "attrs":Landroid/os/VibrationAttributes;
    .end local v12    # "effect":Landroid/os/CombinedVibration;
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "alwaysOnId":I
    :try_start_7f
    throw v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    .line 379
    .restart local v6    # "attrs":Landroid/os/VibrationAttributes;
    .restart local v12    # "effect":Landroid/os/CombinedVibration;
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "alwaysOnId":I
    :catchall_80
    move-exception v0

    move-object v2, v6

    goto :goto_8d

    .end local v6    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p5    # "attrs":Landroid/os/VibrationAttributes;
    :catchall_83
    move-exception v0

    goto :goto_8d

    .end local v12    # "effect":Landroid/os/CombinedVibration;
    .restart local p4    # "effect":Landroid/os/CombinedVibration;
    :catchall_85
    move-exception v0

    goto :goto_8c

    :catchall_87
    move-exception v0

    move-object/from16 v11, p2

    move-object/from16 v3, p4

    :goto_8c
    move-object v12, v3

    .end local p4    # "effect":Landroid/os/CombinedVibration;
    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    .local v2, "attrs":Landroid/os/VibrationAttributes;
    .restart local v12    # "effect":Landroid/os/CombinedVibration;
    :goto_8d
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 380
    throw v0
.end method

.method systemReady()V
    .registers 6

    .line 255
    const-string v0, "VibratorManagerService"

    const-string v1, "Initializing VibratorManager service..."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string/jumbo v0, "systemReady"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    const/4 v3, 0x1

    :try_start_12
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_28

    .line 260
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibratorController;->reloadVibratorInfoIfNeeded()V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 263
    .end local v0    # "i":I
    :cond_28
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationSettings;->onSystemReady()V

    .line 264
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    invoke-virtual {v0}, Lcom/android/server/vibrator/InputDeviceDelegate;->onSystemReady()V

    .line 266
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    invoke-virtual {v0, v4}, Lcom/android/server/vibrator/VibrationSettings;->addListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->updateServiceState()V
    :try_end_3f
    .catchall {:try_start_12 .. :try_end_3f} :catchall_54

    .line 271
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_42
    iput-boolean v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    .line 273
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_51

    .line 274
    const-string v0, "VibratorManagerService"

    const-string v3, "VibratorManager service initialized"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 276
    nop

    .line 277
    return-void

    .line 273
    :catchall_51
    move-exception v1

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v1

    .line 271
    :catchall_54
    move-exception v0

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 272
    :try_start_58
    iput-boolean v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    .line 273
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_66

    .line 274
    const-string v3, "VibratorManagerService"

    const-string v4, "VibratorManager service initialized"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 276
    throw v0

    .line 273
    :catchall_66
    move-exception v0

    :try_start_67
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v0
.end method

.method public unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 6
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;

    .line 326
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_VIBRATOR_STATE"

    const-string/jumbo v2, "unregisterVibratorStateListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    .line 330
    .local v0, "controller":Lcom/android/server/vibrator/VibratorController;
    if-nez v0, :cond_16

    .line 331
    const/4 v1, 0x0

    return v1

    .line 333
    :cond_16
    invoke-virtual {v0, p2}, Lcom/android/server/vibrator/VibratorController;->unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z

    move-result v1

    return v1
.end method

.method updateServiceState()V
    .registers 8

    .line 597
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_3
    const-string v1, "VibratorManagerService"

    const-string v2, "Updating device state..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 602
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateInputDevices()Z

    move-result v2

    .line 601
    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/InputDeviceDelegate;->updateInputDeviceVibrators(Z)Z

    move-result v1

    .line 604
    .local v1, "inputDevicesChanged":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 605
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    .line 604
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 608
    .end local v2    # "i":I
    :cond_2d
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-nez v2, :cond_33

    .line 609
    monitor-exit v0

    return-void

    .line 612
    :cond_33
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    .line 613
    .local v2, "vib":Lcom/android/server/vibrator/Vibration;
    iget v3, v2, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v4, v2, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v3

    .line 616
    .local v3, "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    if-nez v1, :cond_45

    if-eqz v3, :cond_6b

    .line 618
    :cond_45
    const-string v4, "VibratorManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Canceling vibration because settings changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 619
    if-eqz v1, :cond_57

    const-string v6, "input devices changed"

    goto :goto_58

    :cond_57
    move-object v6, v3

    :goto_58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 618
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    sget-object v5, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/Vibration$Status;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 624
    .end local v1    # "inputDevicesChanged":Z
    .end local v2    # "vib":Lcom/android/server/vibrator/Vibration;
    .end local v3    # "ignoreStatus":Lcom/android/server/vibrator/Vibration$Status;
    :cond_6b
    monitor-exit v0

    .line 625
    return-void

    .line 624
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/CombinedVibration;
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "token"    # Landroid/os/IBinder;

    .line 386
    invoke-direct/range {p0 .. p6}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateInternal(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/Vibration;

    .line 387
    return-void
.end method
