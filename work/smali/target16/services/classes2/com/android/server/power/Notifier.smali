.class public Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# static fields
.field public static final CHARGING_VIBRATION_AMPLITUDE:[I

.field public static final CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field public static final CHARGING_VIBRATION_TIME:[J

.field public static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

.field public mBroadcastInProgress:Z

.field public mBroadcastStartTime:J

.field public mBroadcastedInteractiveState:I

.field public final mContext:Landroid/content/Context;

.field public mDisplayInteractivities:Landroid/util/SparseBooleanArray;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

.field public final mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

.field public final mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

.field public final mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

.field public mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

.field public final mGoToSleepBroadcastDone:Landroid/content/IIntentReceiver;

.field public final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field public final mInjector:Lcom/android/server/power/Notifier$Injector;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field public final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field public final mInteractivityByGroupId:Landroid/util/SparseArray;

.field public final mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mLock:Ljava/lang/Object;

.field public final mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

.field public mPendingGoToSleepBroadcast:Z

.field public mPendingInteractiveState:I

.field public mPendingWakeUpBroadcast:Z

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public final mScreenOffIntent:Landroid/content/Intent;

.field public final mScreenOnIntent:Landroid/content/Intent;

.field public final mScreenOnOffOptions:Landroid/os/Bundle;

.field public final mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

.field public final mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

.field public final mShowWirelessChargingAnimationConfig:Z

.field public final mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field public final mSuspendWhenScreenOffDueToProximityConfig:Z

.field public final mTrustManager:Landroid/app/trust/TrustManager;

.field public mUserActivityPending:Z

.field public final mVibrator:Landroid/os/Vibrator;

.field public final mWakeUpBroadcastDone:Landroid/content/IIntentReceiver;

.field public final mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

.field public final mWakelockTracer:Lcom/android/server/power/WakelockTracer;


# direct methods
.method public static synthetic $r8$lambda$JPimfzsYkXWexBDnIhDxNZnALw4(Lcom/android/server/power/Notifier;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$handleEarlyInteractiveChange$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$NfLwjQ1rEoAdiv20_xGg1-SMd6o(Lcom/android/server/power/Notifier;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 12

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/power/Notifier;->lambda$notifyWakelockChanging$10(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QTIfwUkFSEuVLy0XrFJFdtz0REM(Lcom/android/server/power/Notifier;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->lambda$handleEarlyGlobalInteractiveChange$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$QUpiaPNPRkwU8U2MGuOtntv2mQ4(Lcom/android/server/power/Notifier;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$handleLateInteractiveChange$6(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rb9qlD2tgScsj7p88_DorCc8zYI(Lcom/android/server/power/Notifier;ZLjava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;JLandroid/os/IWakeLockCallback;)V
    .registers 12

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/power/Notifier;->lambda$notifyWakeLockListener$9(ZLjava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;JLandroid/os/IWakeLockCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SCBmQ4zv_u2tzxzELhkoGuGYMPs(Lcom/android/server/power/Notifier;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$handleEarlyInteractiveChange$1(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$SkDw-9Ah-PeuwEpn0oKEUC_Tixs(Lcom/android/server/power/Notifier;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$handleLateGlobalInteractiveChange$5(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$YuWSecaCBIZkdw6vgJo0U2_0waI(Lcom/android/server/power/Notifier;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$playChargingStartedFeedback$8(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gr4Sg-fuhq8LQTf-FG_LHQ6nfuE(Lcom/android/server/power/Notifier;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->lambda$handleLateGlobalInteractiveChange$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l-pS0TGPyPNM3uy9iTCbhgXMEzY(Lcom/android/server/power/Notifier;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->lambda$handleLateInteractiveChange$7(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$twGPsuehH4Hy48BoSYCiwKEMjdU(Lcom/android/server/power/Notifier;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->lambda$handleEarlyGlobalInteractiveChange$2()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadcastStartTime(Lcom/android/server/power/Notifier;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/power/Notifier;)Lcom/android/server/power/Notifier$NotifierHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/Notifier;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mlockProfile(Lcom/android/server/power/Notifier;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->lockProfile(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscreenPolicyChanging(Lcom/android/server/power/Notifier;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->screenPolicyChanging(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendEnhancedDischargePredictionBroadcast(Lcom/android/server/power/Notifier;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendEnhancedDischargePredictionBroadcast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendNextBroadcast(Lcom/android/server/power/Notifier;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendUserActivity(Lcom/android/server/power/Notifier;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->sendUserActivity(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowWiredChargingStarted(Lcom/android/server/power/Notifier;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->showWiredChargingStarted(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowWirelessChargingStarted(Lcom/android/server/power/Notifier;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/Notifier;->showWirelessChargingStarted(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x10

    .line 123
    new-array v1, v0, [J

    fill-array-data v1, :array_20

    sput-object v1, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_TIME:[J

    .line 127
    new-array v0, v0, [I

    fill-array-data v0, :array_64

    sput-object v0, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_AMPLITUDE:[I

    const/4 v2, -0x1

    .line 132
    invoke-static {v1, v0, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    const/16 v0, 0x32

    .line 135
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void

    :array_20
    .array-data 8
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
    .end array-data

    :array_64
    .array-data 4
        0x1
        0x4
        0xb
        0x19
        0x2c
        0x43
        0x5b
        0x72
        0x7b
        0x67
        0x4f
        0x37
        0x22
        0x11
        0x7
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/ScreenUndimDetector;Ljava/util/concurrent/Executor;Lcom/android/server/power/feature/PowerManagerFlags;Lcom/android/server/power/Notifier$Injector;)V
    .registers 14

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    .line 185
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    .line 186
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    .line 192
    new-instance v0, Lcom/android/server/power/Notifier$Interactivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/Notifier$Interactivity;-><init>(Lcom/android/server/power/Notifier-IA;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    .line 211
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1111
    new-instance v0, Lcom/android/server/power/Notifier$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/IIntentReceiver;

    .line 1136
    new-instance v0, Lcom/android/server/power/Notifier$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/IIntentReceiver;

    .line 224
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    if-nez p10, :cond_46

    .line 225
    new-instance p10, Lcom/android/server/power/Notifier$RealInjector;

    invoke-direct {p10, p0}, Lcom/android/server/power/Notifier$RealInjector;-><init>(Lcom/android/server/power/Notifier;)V

    :cond_46
    iput-object p10, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$Injector;

    .line 226
    iput-object p9, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    .line 227
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 228
    invoke-interface {p10, p2}, Lcom/android/server/power/Notifier$Injector;->getAppOpsManager(Landroid/content/Context;)Landroid/app/AppOpsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    .line 229
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 230
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 231
    iput-object p6, p0, Lcom/android/server/power/Notifier;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    .line 232
    iput-object p7, p0, Lcom/android/server/power/Notifier;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    .line 233
    const-class p4, Landroid/app/ActivityManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 234
    const-class p4, Landroid/media/AudioManager;

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/AudioManager;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mAudioManager:Landroid/media/AudioManager;

    .line 235
    const-class p4, Lcom/android/server/input/InputManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/input/InputManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 236
    const-class p4, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 237
    const-class p4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 238
    const-class p4, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 239
    const-class p4, Landroid/app/trust/TrustManager;

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/trust/TrustManager;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 240
    const-class p4, Landroid/os/Vibrator;

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Vibrator;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    .line 241
    new-instance p4, Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-direct {p4, p2, v1}, Lcom/android/server/power/WakefulnessSessionObserver;-><init>(Landroid/content/Context;Lcom/android/server/power/WakefulnessSessionObserver$Injector;)V

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 243
    new-instance p4, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {p4, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 244
    iput-object p8, p0, Lcom/android/server/power/Notifier;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 245
    new-instance p4, Landroid/content/Intent;

    const-string p5, "android.intent.action.SCREEN_ON"

    invoke-direct {p4, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    const/high16 p5, 0x50200000

    .line 246
    invoke-virtual {p4, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    new-instance p4, Landroid/content/Intent;

    const-string p6, "android.intent.action.SCREEN_OFF"

    invoke-direct {p4, p6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 250
    invoke-virtual {p4, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->createScreenOnOffBroadcastOptions()Landroid/os/Bundle;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mScreenOnOffOptions:Landroid/os/Bundle;

    .line 255
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x111029b

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 257
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x111025e

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/server/power/Notifier;->mShowWirelessChargingAnimationConfig:Z

    .line 260
    invoke-interface {p10, p2}, Lcom/android/server/power/Notifier$Injector;->getWakeLockLog(Landroid/content/Context;)Lcom/android/server/power/WakeLockLog;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

    .line 261
    invoke-interface {p10, p2}, Lcom/android/server/power/Notifier$Injector;->getWakeLockLog(Landroid/content/Context;)Lcom/android/server/power/WakeLockLog;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/power/Notifier;->mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

    .line 263
    invoke-virtual {p9}, Lcom/android/server/power/feature/PowerManagerFlags;->isAppWakelockDataSourceEnabled()Z

    move-result p2

    if-eqz p2, :cond_10d

    .line 264
    invoke-interface {p10, p1}, Lcom/android/server/power/Notifier$Injector;->getWakelockTracer(Landroid/os/Looper;)Lcom/android/server/power/WakelockTracer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mWakelockTracer:Lcom/android/server/power/WakelockTracer;

    goto :goto_10f

    .line 266
    :cond_10d
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mWakelockTracer:Lcom/android/server/power/WakelockTracer;

    :goto_10f
    const/4 p1, 0x1

    .line 271
    :try_start_110
    invoke-interface {p3, p1}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_113
    .catch Landroid/os/RemoteException; {:try_start_110 .. :try_end_113} :catch_113

    :catch_113
    const/16 p2, 0x21

    .line 273
    invoke-static {p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 276
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/power/feature/PowerManagerFlags;->isMoveWscLoggingToNotifierEnabled()Z

    move-result p1

    if-eqz p1, :cond_131

    .line 277
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$Injector;

    invoke-interface {p1}, Lcom/android/server/power/Notifier$Injector;->getBatteryStatsInternal()Landroid/os/BatteryStatsInternal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 278
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$Injector;

    invoke-interface {p1}, Lcom/android/server/power/Notifier$Injector;->getFrameworkStatsLogger()Lcom/android/server/power/FrameworkStatsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    goto :goto_135

    .line 280
    :cond_131
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 281
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    :goto_135
    return-void
.end method


# virtual methods
.method public addScreenTimeoutPolicyListener(IILandroid/os/IScreenTimeoutPolicyListener;)V
    .registers 6

    .line 1330
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1331
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    .line 1332
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    if-nez v1, :cond_1a

    .line 1334
    new-instance v1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    invoke-direct {v1, p0, p2}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;-><init>(Lcom/android/server/power/Notifier;I)V

    .line 1336
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_1f

    .line 1339
    :cond_1a
    :goto_1a
    invoke-virtual {v1, p3}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->addListenerLocked(Landroid/os/IScreenTimeoutPolicyListener;)V

    .line 1340
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_18

    throw p0
.end method

.method public clearScreenTimeoutPolicyListeners(I)V
    .registers 3

    .line 1370
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1371
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1372
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final createScreenOnOffBroadcastOptions()Landroid/os/Bundle;
    .registers 3

    .line 290
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p0

    const/4 v0, 0x1

    .line 293
    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 299
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 298
    invoke-virtual {p0, v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    const/4 v0, 0x2

    .line 302
    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 303
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 986
    const-string v0, "Notifier:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 989
    const-string p1, "Partial Wakelock Log:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 990
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

    invoke-virtual {p1, v0}, Lcom/android/server/power/WakeLockLog;->dump(Ljava/io/PrintWriter;)V

    .line 992
    const-string p1, ""

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 993
    const-string v1, "Full Wakelock Log:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 994
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

    invoke-virtual {v1, v0}, Lcom/android/server/power/WakeLockLog;->dump(Ljava/io/PrintWriter;)V

    .line 996
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 997
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-virtual {p0, v0}, Lcom/android/server/power/WakefulnessSessionObserver;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final finishPendingBroadcastLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 1014
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 1015
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {p0}, Lcom/android/server/power/SuspendBlocker;->release()V

    return-void
.end method

.method public final getBatteryStatsWakeLockMonitorType(I)I
    .registers 5

    const v0, 0xffff

    and-int/2addr p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2b

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2a

    const/16 v2, 0xa

    if-eq p1, v2, :cond_2a

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_2a

    const/16 v1, 0x20

    const/4 v2, -0x1

    if-eq p1, v1, :cond_24

    const/16 p0, 0x80

    if-eq p1, p0, :cond_21

    const/16 p0, 0x200

    if-eq p1, p0, :cond_2b

    return v2

    :cond_21
    const/16 p0, 0x12

    return p0

    .line 518
    :cond_24
    iget-boolean p0, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz p0, :cond_29

    return v2

    :cond_29
    return v0

    :cond_2a
    return v1

    :cond_2b
    return v0
.end method

.method public final getUidForWakeLockLog(ILandroid/os/WorkSource;)I
    .registers 3

    const/4 p0, -0x1

    if-eqz p2, :cond_8

    .line 1484
    invoke-virtual {p2}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result p2

    goto :goto_9

    :cond_8
    move p2, p0

    :goto_9
    if-eq p2, p0, :cond_c

    return p2

    :cond_c
    return p1
.end method

.method public final getWakeLockLog(I)Lcom/android/server/power/WakeLockLog;
    .registers 2

    .line 1480
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

    return-object p0

    :cond_9
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

    return-object p0
.end method

.method public getWakelockMonitorTypeForLogging(I)I
    .registers 5

    const v0, 0xffff

    and-int/2addr p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_28

    const/4 v1, 0x6

    const/16 v2, 0x1a

    if-eq p1, v1, :cond_27

    const/16 v1, 0xa

    if-eq p1, v1, :cond_27

    if-eq p1, v2, :cond_27

    const/16 v1, 0x20

    const/4 v2, -0x1

    if-eq p1, v1, :cond_21

    const/16 p0, 0x80

    if-eq p1, p0, :cond_20

    const/16 p0, 0x200

    if-eq p1, p0, :cond_20

    return v2

    :cond_20
    return p0

    .line 546
    :cond_21
    iget-boolean p0, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz p0, :cond_26

    return v2

    :cond_26
    return v0

    :cond_27
    return v2

    :cond_28
    return v0
.end method

.method public final handleEarlyGlobalInteractiveChange()V
    .registers 4

    .line 668
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-boolean v1, v1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v1, :cond_1e

    .line 671
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    .line 677
    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 678
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 679
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    goto :goto_28

    :catchall_1c
    move-exception p0

    goto :goto_2a

    .line 682
    :cond_1e
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 687
    :goto_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_1c

    throw p0
.end method

.method public final handleEarlyInteractiveChange(I)V
    .registers 6

    .line 648
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 649
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/Notifier$Interactivity;

    if-nez v1, :cond_28

    .line 651
    const-string p0, "PowerManagerNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no Interactivity entry for groupId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    goto :goto_45

    .line 654
    :cond_28
    iget v2, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 655
    iget-boolean v1, v1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v1, :cond_39

    .line 656
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_43

    .line 658
    :cond_39
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 660
    :goto_43
    monitor-exit v0

    return-void

    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_26

    throw p0
.end method

.method public final handleLateGlobalInteractiveChange()V
    .registers 7

    .line 695
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-wide v4, v3, Lcom/android/server/power/Notifier$Interactivity;->changeStartTime:J

    sub-long/2addr v1, v4

    long-to-int v1, v1

    .line 698
    iget-boolean v2, v3, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v2, :cond_1e

    .line 700
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_45

    :catchall_1c
    move-exception p0

    goto :goto_47

    .line 721
    :cond_1e
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    const/4 v2, 0x0

    .line 722
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 723
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 727
    :cond_2b
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v2, v2, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result v2

    .line 729
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v5, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x2

    .line 744
    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 745
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 746
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 748
    :goto_45
    monitor-exit v0

    return-void

    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_1c

    throw p0
.end method

.method public final handleLateInteractiveChange(I)V
    .registers 6

    .line 757
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/Notifier$Interactivity;

    if-nez v1, :cond_28

    .line 760
    const-string p0, "PowerManagerNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no Interactivity entry for groupId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    goto :goto_45

    .line 763
    :cond_28
    iget v2, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 764
    iget-boolean v1, v1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v1, :cond_39

    .line 765
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_43

    .line 767
    :cond_39
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 769
    :goto_43
    monitor-exit v0

    return-void

    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_26

    throw p0
.end method

.method public final isChargingFeedbackEnabled(I)Z
    .registers 6

    .line 1214
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charging_sounds_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    move p1, v2

    goto :goto_13

    :cond_12
    move p1, v0

    .line 1216
    :goto_13
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "zen_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_24

    move v1, v2

    goto :goto_25

    :cond_24
    move v1, v0

    .line 1219
    :goto_25
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p0

    if-nez p0, :cond_2f

    move p0, v2

    goto :goto_30

    :cond_2f
    move p0, v0

    :goto_30
    if-eqz p1, :cond_37

    if-eqz v1, :cond_37

    if-nez p0, :cond_37

    return v2

    :cond_37
    return v0
.end method

.method public final synthetic lambda$handleEarlyGlobalInteractiveChange$2()V
    .registers 3

    .line 672
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->onEarlyInteractivityChange(Z)V

    .line 673
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-interface {v0, p0}, Lcom/android/server/policy/WindowManagerPolicy;->startedWakingUpGlobal(I)V

    return-void
.end method

.method public final synthetic lambda$handleEarlyGlobalInteractiveChange$3()V
    .registers 3

    .line 683
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->onEarlyInteractivityChange(Z)V

    .line 684
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-interface {v0, p0}, Lcom/android/server/policy/WindowManagerPolicy;->startedGoingToSleepGlobal(I)V

    return-void
.end method

.method public final synthetic lambda$handleEarlyInteractiveChange$0(II)V
    .registers 3

    .line 656
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->startedWakingUp(II)V

    return-void
.end method

.method public final synthetic lambda$handleEarlyInteractiveChange$1(II)V
    .registers 3

    .line 658
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->startedGoingToSleep(II)V

    return-void
.end method

.method public final synthetic lambda$handleLateGlobalInteractiveChange$4(I)V
    .registers 11

    .line 701
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0xc6

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x1

    .line 702
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 703
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v1, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-static {v1}, Landroid/view/WindowManagerPolicyConstants;->translateWakeReasonToOnReason(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    int-to-long v1, p1

    .line 705
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    .line 706
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v1, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 707
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x69e

    .line 706
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 708
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v8, p1

    .line 709
    invoke-static/range {v3 .. v8}, Lcom/android/server/EventLogTags;->writePowerScreenState(IIJII)V

    .line 711
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-interface {p1, p0}, Lcom/android/server/policy/WindowManagerPolicy;->finishedWakingUpGlobal(I)V

    return-void
.end method

.method public final synthetic lambda$handleLateGlobalInteractiveChange$5(II)V
    .registers 12

    .line 730
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0xc6

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x2

    .line 731
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 732
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    int-to-long v1, p2

    .line 733
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    .line 734
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget v1, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 735
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x69f

    .line 734
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 736
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v8, p2

    .line 737
    invoke-static/range {v3 .. v8}, Lcom/android/server/EventLogTags;->writePowerScreenState(IIJII)V

    .line 740
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    invoke-interface {p1, p0}, Lcom/android/server/policy/WindowManagerPolicy;->finishedGoingToSleepGlobal(I)V

    return-void
.end method

.method public final synthetic lambda$handleLateInteractiveChange$6(II)V
    .registers 3

    .line 765
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->finishedWakingUp(II)V

    return-void
.end method

.method public final synthetic lambda$handleLateInteractiveChange$7(II)V
    .registers 3

    .line 767
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->finishedGoingToSleep(II)V

    return-void
.end method

.method public final synthetic lambda$notifyWakeLockListener$9(ZLjava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;JLandroid/os/IWakeLockCallback;)V
    .registers 24

    move-object/from16 v0, p11

    .line 1229
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/power/feature/PowerManagerFlags;->improveWakelockLatency()Z

    move-result v1

    if-eqz v1, :cond_31

    if-eqz p1, :cond_1f

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    .line 1231
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/power/Notifier;->notifyWakelockAcquisition(Ljava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_31

    :cond_1f
    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    .line 1234
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/power/Notifier;->notifyWakelockRelease(Ljava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_31
    :goto_31
    if-eqz v0, :cond_54

    .line 1241
    :try_start_33
    invoke-interface {v0, p1}, Landroid/os/IWakeLockCallback;->onStateChanged(Z)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37

    return-void

    :catch_37
    move-exception v0

    move-object p0, v0

    .line 1243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Wakelock.mCallback ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is already dead."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PowerManagerNotifier"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_54
    return-void
.end method

.method public final synthetic lambda$notifyWakelockChanging$10(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 13

    .line 1311
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface/range {p0 .. p11}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    move-object p0, v0

    .line 1315
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to notify the wakelock changing from source via Notifier."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    invoke-virtual {p0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1315
    const-string p1, "PowerManagerNotifier"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final synthetic lambda$playChargingStartedFeedback$8(IZ)V
    .registers 12

    .line 1160
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charging_vibration_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_22

    .line 1163
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    iget-object p1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    const-string v7, "Charging started"

    sget-object v8, Lcom/android/server/power/Notifier;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v4, 0x3e8

    invoke-virtual/range {v3 .. v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 1169
    :cond_22
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p2, :cond_2e

    .line 1170
    const-string/jumbo p2, "wireless_charging_started_sound"

    goto :goto_30

    .line 1171
    :cond_2e
    const-string p2, "charging_started_sound"

    .line 1169
    :goto_30
    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1172
    const-string/jumbo p2, "silent"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_44

    .line 1173
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 1177
    :cond_44
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_69

    .line 1179
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    if-eqz p1, :cond_69

    .line 1181
    invoke-virtual {p1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1182
    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V

    .line 1185
    :cond_69
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final lockProfile(I)V
    .registers 3

    .line 1210
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    return-void
.end method

.method public final logWakelockStateChanged(ILjava/lang/String;IILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V
    .registers 15

    .line 1530
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mWakelockTracer:Lcom/android/server/power/WakelockTracer;

    const/4 v7, 0x0

    if-eqz v0, :cond_16

    .line 1531
    sget-object v1, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->ACQUIRE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    if-ne p6, v1, :cond_10

    const/4 v1, 0x1

    :goto_a
    move v5, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    goto :goto_12

    :cond_10
    move v1, v7

    goto :goto_a

    .line 1532
    :goto_12
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/WakelockTracer;->onWakelockEvent(ZLjava/lang/String;IIILandroid/os/WorkSource;)V

    goto :goto_1a

    :cond_16
    move v5, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    .line 1536
    :goto_1a
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    if-nez p1, :cond_1f

    goto :goto_85

    .line 1539
    :cond_1f
    invoke-virtual {p0, v5}, Lcom/android/server/power/Notifier;->getWakelockMonitorTypeForLogging(I)I

    move-result p1

    if-eqz v6, :cond_86

    .line 1540
    invoke-virtual {v6}, Landroid/os/WorkSource;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2c

    goto :goto_86

    :cond_2c
    move p2, v7

    .line 1544
    :goto_2d
    invoke-virtual {v6}, Landroid/os/WorkSource;->size()I

    move-result p3

    if-ge p2, p3, :cond_45

    .line 1545
    iget-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    invoke-virtual {v6, p2}, Landroid/os/WorkSource;->getUid(I)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/os/BatteryStatsInternal;->getOwnerUid(I)I

    move-result p3

    .line 1546
    iget-object p4, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    invoke-virtual {p4, p3, v2, p1, p6}, Lcom/android/server/power/FrameworkStatsLogger;->wakelockStateChanged(ILjava/lang/String;ILcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2d

    .line 1549
    :cond_45
    invoke-virtual {v6}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_85

    .line 1551
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_85

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/WorkSource$WorkChain;

    .line 1552
    new-instance p4, Landroid/os/WorkSource$WorkChain;

    invoke-direct {p4}, Landroid/os/WorkSource$WorkChain;-><init>()V

    .line 1554
    invoke-virtual {p3}, Landroid/os/WorkSource$WorkChain;->getUids()[I

    move-result-object p5

    .line 1555
    invoke-virtual {p3}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object v0

    move v1, v7

    .line 1557
    :goto_69
    invoke-virtual {p3}, Landroid/os/WorkSource$WorkChain;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_7f

    .line 1558
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    aget v4, p5, v1

    invoke-virtual {v3, v4}, Landroid/os/BatteryStatsInternal;->getOwnerUid(I)I

    move-result v3

    .line 1559
    aget-object v4, v0, v1

    invoke-virtual {p4, v3, v4}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 1561
    :cond_7f
    iget-object p3, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    invoke-virtual {p3, v2, p4, p1, p6}, Lcom/android/server/power/FrameworkStatsLogger;->wakelockStateChanged(Ljava/lang/String;Landroid/os/WorkSource$WorkChain;ILcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    goto :goto_4f

    :cond_85
    :goto_85
    return-void

    .line 1541
    :cond_86
    :goto_86
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    invoke-virtual {p2, v3}, Landroid/os/BatteryStatsInternal;->getOwnerUid(I)I

    move-result p2

    .line 1542
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mFrameworkStatsLogger:Lcom/android/server/power/FrameworkStatsLogger;

    invoke-virtual {p0, p2, v2, p1, p6}, Lcom/android/server/power/FrameworkStatsLogger;->wakelockStateChanged(ILjava/lang/String;ILcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    return-void
.end method

.method public notifyScreenTimeoutPolicyChanges(II)V
    .registers 7

    .line 1383
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1384
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 1385
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1386
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerInternal;->getGroupIdForDisplay(I)I

    move-result v2

    if-ne v2, p1, :cond_28

    .line 1387
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    .line 1388
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    .line 1389
    invoke-virtual {v2, p2}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->updateScreenTimeoutPolicyAndNotifyIfNeededLocked(I)V

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_2d

    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1392
    :cond_2b
    monitor-exit v0

    return-void

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_26

    throw p0
.end method

.method public final notifyWakeLockListener(Landroid/os/IWakeLockCallback;Ljava/lang/String;ZIIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24

    .line 1227
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInjector:Lcom/android/server/power/Notifier$Injector;

    invoke-interface {v0}, Lcom/android/server/power/Notifier$Injector;->currentTimeMillis()J

    move-result-wide v11

    .line 1228
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v1, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-object v13, p1

    move-object/from16 v4, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v13}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/Notifier;ZLjava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;JLandroid/os/IWakeLockCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final notifyWakelockAcquisition(Ljava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 26

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v8, p4

    .line 1252
    invoke-virtual {v0, v8}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v6

    if-ltz v6, :cond_4e

    const/16 v1, 0x3e8

    if-ne v2, v1, :cond_18

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v8

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :goto_16
    move v7, v1

    goto :goto_1a

    :cond_18
    const/4 v1, 0x0

    goto :goto_16

    :goto_1a
    if-eqz p5, :cond_2c

    .line 1258
    :try_start_1c
    iget-object v9, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1e} :catch_4e

    move-object/from16 v12, p1

    move/from16 v11, p3

    move-object/from16 v10, p5

    move-object/from16 v13, p7

    move v14, v6

    move v15, v7

    :try_start_28
    invoke-interface/range {v9 .. v15}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_50

    :cond_2c
    move-object/from16 v10, p5

    .line 1261
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v4, p1

    move/from16 v3, p3

    move-object/from16 v5, p7

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_39} :catch_50

    .line 1264
    :try_start_39
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3b} :catch_4b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x28

    const/4 v5, 0x0

    move/from16 v3, p2

    move-object/from16 v4, p6

    :try_start_44
    invoke-virtual/range {v1 .. v7}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_49

    move v2, v3

    goto :goto_50

    :catch_49
    move v2, v3

    goto :goto_50

    :catch_4b
    move/from16 v2, p2

    goto :goto_50

    :catch_4e
    :cond_4e
    move-object/from16 v10, p5

    .line 1273
    :catch_50
    :goto_50
    invoke-virtual {v0, v8}, Lcom/android/server/power/Notifier;->getWakeLockLog(I)Lcom/android/server/power/WakeLockLog;

    move-result-object v1

    invoke-virtual {v0, v2, v10}, Lcom/android/server/power/Notifier;->getUidForWakeLockLog(ILandroid/os/WorkSource;)I

    move-result v2

    move-wide/from16 v4, p8

    move-object v0, v1

    move v3, v8

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/WakeLockLog;->onWakeLockAcquired(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public final notifyWakelockChanging(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 26

    .line 1304
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->improveWakelockLatency()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1305
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 1309
    :cond_23
    iget-object v13, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/power/Notifier;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final notifyWakelockRelease(Ljava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 16

    .line 1280
    invoke-virtual {p0, p4}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    if-ltz v5, :cond_2c

    if-eqz p5, :cond_19

    .line 1284
    :try_start_8
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_a} :catch_16

    move-object v3, p1

    move v2, p3

    move-object v1, p5

    move-object v4, p7

    :try_start_e
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_14

    move-object p1, v1

    :catch_12
    :goto_12
    move v1, p2

    goto :goto_2f

    :catch_14
    move-object p1, v1

    goto :goto_12

    :catch_16
    move-object v3, p1

    move-object p1, p5

    goto :goto_12

    :cond_19
    move-object v3, p1

    move v2, p3

    move-object p1, p5

    move-object v4, p7

    .line 1287
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1f} :catch_12

    move v1, p2

    :try_start_20
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1289
    iget-object p2, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 p3, 0x28

    const/4 p5, 0x0

    invoke-virtual {p2, p3, v1, p6, p5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2b} :catch_2f

    goto :goto_2f

    :cond_2c
    move-object v3, p1

    move v1, p2

    move-object p1, p5

    .line 1295
    :catch_2f
    :goto_2f
    invoke-virtual {p0, p4}, Lcom/android/server/power/Notifier;->getWakeLockLog(I)Lcom/android/server/power/WakeLockLog;

    move-result-object p2

    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/Notifier;->getUidForWakeLockLog(ILandroid/os/WorkSource;)I

    move-result p0

    invoke-virtual {p2, v3, p0, p8, p9}, Lcom/android/server/power/WakeLockLog;->onWakeLockReleased(Ljava/lang/String;IJ)V

    return-void
.end method

.method public onGlobalWakefulnessChangeStarted(IIJ)V
    .registers 10

    .line 572
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 580
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 589
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-boolean v1, p1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eq v1, v0, :cond_60

    .line 591
    iget-boolean p1, p1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    if-eqz p1, :cond_1b

    .line 592
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->handleLateGlobalInteractiveChange()V

    .line 596
    :cond_1b
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setInteractive(Z)V

    .line 597
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/power/feature/PowerManagerFlags;->isPerDisplayWakeByTouchEnabled()Z

    move-result p1

    if-nez p1, :cond_48

    .line 600
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 601
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIds()Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    .line 602
    array-length v2, v1

    const/4 v3, 0x0

    :goto_39
    if-ge v3, v2, :cond_43

    aget v4, v1, v3

    .line 603
    invoke-virtual {p1, v4, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 605
    :cond_43
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/input/InputManagerInternal;->setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V

    .line 610
    :cond_48
    :try_start_48
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p1, v0}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4d} :catch_4d

    :catch_4d
    const/16 p1, 0x21

    .line 612
    invoke-static {p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 617
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iput-boolean v0, p1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    const/4 v0, 0x1

    .line 618
    iput-boolean v0, p1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    .line 619
    iput p2, p1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 620
    iput-wide p3, p1, Lcom/android/server/power/Notifier$Interactivity;->changeStartTime:J

    .line 621
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->handleEarlyGlobalInteractiveChange()V

    :cond_60
    return-void
.end method

.method public onGroupChanged()V
    .registers 2

    .line 863
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->isPerDisplayWakeByTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 864
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->resetDisplayInteractivities()V

    .line 865
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerInternal;->setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V

    :cond_12
    return-void
.end method

.method public onGroupRemoved(I)V
    .registers 3

    .line 851
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 852
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/power/WakefulnessSessionObserver;->removePowerGroup(I)V

    .line 853
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/power/feature/PowerManagerFlags;->isPerDisplayWakeByTouchEnabled()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 854
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->resetDisplayInteractivities()V

    .line 855
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p0}, Lcom/android/server/input/InputManagerInternal;->setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V

    :cond_1c
    return-void
.end method

.method public onGroupWakefulnessChangeStarted(IIIJ)V
    .registers 16

    .line 813
    invoke-static {p2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 816
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/Notifier$Interactivity;

    const/4 v2, 0x1

    if-nez v1, :cond_1c

    .line 819
    new-instance v1, Lcom/android/server/power/Notifier$Interactivity;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/power/Notifier$Interactivity;-><init>(Lcom/android/server/power/Notifier-IA;)V

    .line 820
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v3, v2

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    if-nez v3, :cond_23

    .line 822
    iget-boolean v3, v1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eq v3, v0, :cond_50

    .line 824
    :cond_23
    iget-boolean v3, v1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    if-eqz v3, :cond_2a

    .line 825
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange(I)V

    .line 829
    :cond_2a
    iput-boolean v0, v1, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    .line 830
    iput p3, v1, Lcom/android/server/power/Notifier$Interactivity;->changeReason:I

    .line 831
    iput-wide p4, v1, Lcom/android/server/power/Notifier$Interactivity;->changeStartTime:J

    .line 832
    iput-boolean v2, v1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    .line 833
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->handleEarlyInteractiveChange(I)V

    .line 834
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    move v5, p1

    move v6, p2

    move v7, p3

    move-wide v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/WakefulnessSessionObserver;->onWakefulnessChangeStarted(IIIJ)V

    .line 838
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/power/feature/PowerManagerFlags;->isPerDisplayWakeByTouchEnabled()Z

    move-result p1

    if-eqz p1, :cond_50

    .line 839
    invoke-virtual {p0, v5, v0}, Lcom/android/server/power/Notifier;->updateDisplayInteractivities(IZ)V

    .line 840
    iget-object p1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget-object p0, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p0}, Lcom/android/server/input/InputManagerInternal;->setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V

    :cond_50
    return-void
.end method

.method public onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 11

    if-eqz p3, :cond_e

    .line 383
    :try_start_2
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, p1, p4, p3}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    const/16 p0, 0xb

    const/4 p2, 0x0

    .line 384
    invoke-static {p0, p3, p1, p4, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 388
    :cond_e
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v0, 0xb

    move-object v3, p1

    move v1, p2

    move-object v4, p4

    .line 389
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

.method public onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 11

    if-eqz p3, :cond_e

    .line 358
    :try_start_2
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, p1, p4, p3}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    const/16 p0, 0xb

    const/4 p2, 0x1

    .line 359
    invoke-static {p0, p3, p1, p4, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 363
    :cond_e
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {p0, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/16 v0, 0xb

    move-object v3, p1

    move v1, p2

    move-object v4, p4

    .line 364
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

.method public onProfileTimeout(I)V
    .registers 4

    .line 924
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 925
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 926
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 927
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onScreenPolicyUpdate(II)V
    .registers 6

    .line 968
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 969
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 968
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/power/WakefulnessSessionObserver;->onScreenPolicyUpdate(JII)V

    .line 971
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 972
    :try_start_c
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 973
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 974
    iput p2, v1, Landroid/os/Message;->arg2:I

    const/4 p1, 0x1

    .line 975
    invoke-virtual {v1, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 976
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 977
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw p0
.end method

.method public onUserActivity(III)V
    .registers 6

    .line 879
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p3, p2}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V

    .line 880
    iget-object p3, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 881
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 880
    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/android/server/power/WakefulnessSessionObserver;->notifyUserActivity(JII)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_e

    .line 886
    :catch_e
    iget-object p3, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 887
    :try_start_11
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    .line 888
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 889
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 890
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 891
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 892
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 893
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_2f

    .line 895
    :cond_2d
    :goto_2d
    monitor-exit p3

    return-void

    :goto_2f
    monitor-exit p3
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_2b

    throw p0
.end method

.method public onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V
    .registers 19

    .line 319
    sget-object v6, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->ACQUIRE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/Notifier;->logWakelockStateChanged(ILjava/lang/String;IILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    const/4 v3, 0x1

    move v6, p1

    move-object v8, p3

    move v4, p4

    move v5, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v1, p8

    .line 321
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/Notifier;->notifyWakeLockListener(Landroid/os/IWakeLockCallback;Ljava/lang/String;ZIIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->improveWakelockLatency()Z

    move-result v0

    if-nez v0, :cond_74

    .line 324
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    if-ltz v5, :cond_60

    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_34

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    :goto_32
    move v6, v0

    goto :goto_36

    :cond_34
    const/4 v0, 0x0

    goto :goto_32

    :goto_36
    if-eqz p6, :cond_47

    .line 330
    :try_start_38
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3a} :catch_60

    move-object v3, p2

    move v2, p5

    move-object/from16 v1, p6

    move-object/from16 v4, p7

    :try_start_40
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_43} :catch_45

    move-object v9, v1

    goto :goto_62

    :catch_45
    move-object v9, v1

    goto :goto_62

    :cond_47
    move-object/from16 v9, p6

    .line 333
    :try_start_49
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v3, p2

    move v1, p4

    move v2, p5

    move-object/from16 v4, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 336
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x28

    const/4 v4, 0x0

    move-object v3, p3

    move v2, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_5f} :catch_62

    goto :goto_62

    :catch_60
    :cond_60
    move-object/from16 v9, p6

    .line 343
    :catch_62
    :goto_62
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getWakeLockLog(I)Lcom/android/server/power/WakeLockLog;

    move-result-object p3

    .line 344
    invoke-virtual {p0, p4, v9}, Lcom/android/server/power/Notifier;->getUidForWakeLockLog(ILandroid/os/WorkSource;)I

    move-result p5

    const-wide/16 v0, -0x1

    move/from16 p6, p1

    move-object p4, p2

    move-wide/from16 p7, v0

    .line 343
    invoke-virtual/range {p3 .. p8}, Lcom/android/server/power/WakeLockLog;->onWakeLockAcquired(Ljava/lang/String;IIJ)V

    .line 346
    :cond_74
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver;->onWakeLockAcquired(I)V

    return-void
.end method

.method public onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V
    .registers 35

    move/from16 v1, p9

    move-object/from16 v0, p14

    if-nez v0, :cond_9

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_f

    .line 413
    :cond_9
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v6, v2

    .line 414
    :goto_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v8

    move-object/from16 v0, p0

    .line 415
    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v7

    if-eqz p6, :cond_66

    if-eqz v6, :cond_66

    if-ltz v8, :cond_66

    if-ltz v7, :cond_66

    .line 425
    sget-object v15, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->RELEASE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    move/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p6

    move-object v9, v0

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/power/Notifier;->logWakelockStateChanged(ILjava/lang/String;IILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    move-object v5, v6

    .line 427
    sget-object v6, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->ACQUIRE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    move-object/from16 v0, p0

    move-object/from16 v2, p10

    move/from16 v3, p12

    move/from16 v4, p13

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/Notifier;->logWakelockStateChanged(ILjava/lang/String;IILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    const/16 v0, 0x3e8

    move/from16 v4, p12

    if-ne v4, v0, :cond_60

    const/high16 v0, 0x40000000    # 2.0f

    and-int v0, p9, v0

    if-eqz v0, :cond_60

    const/4 v0, 0x1

    :goto_4c
    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v4, p6

    move-object/from16 v11, p10

    move/from16 v10, p13

    move-object/from16 v12, p15

    move v14, v0

    move-object v9, v5

    move v13, v7

    move/from16 v5, p5

    move-object/from16 v7, p7

    goto :goto_62

    :cond_60
    const/4 v0, 0x0

    goto :goto_4c

    .line 433
    :goto_62
    :try_start_62
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/power/Notifier;->notifyWakelockChanging(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_65} :catch_65

    :catch_65
    return-void

    :cond_66
    move/from16 v4, p12

    move-object v5, v6

    move-object/from16 v0, p8

    move-object/from16 v8, p16

    .line 439
    invoke-static {v0, v8}, Lcom/android/server/power/PowerManagerService;->isSameCallback(Landroid/os/IWakeLockCallback;Landroid/os/IWakeLockCallback;)Z

    move-result v1

    if-nez v1, :cond_98

    const/16 v17, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    .line 440
    invoke-virtual/range {v9 .. v17}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    move/from16 v1, p9

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object/from16 v7, p15

    move-object v6, v5

    move-object v0, v9

    move/from16 v5, p13

    .line 442
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    return-void

    .line 445
    :cond_98
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    move-object/from16 v0, p0

    move/from16 v1, p9

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move/from16 v4, p12

    move-object/from16 v7, p15

    move-object/from16 v8, p16

    move-object v6, v5

    move/from16 v5, p13

    .line 447
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V

    return-void
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;)V
    .registers 19

    const/4 v9, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 458
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;I)V

    return-void
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;Landroid/os/IWakeLockCallback;I)V
    .registers 20

    .line 475
    sget-object v6, Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;->RELEASE:Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/Notifier;->logWakelockStateChanged(ILjava/lang/String;IILandroid/os/WorkSource;Lcom/android/server/power/FrameworkStatsLogger$WakelockEventType;)V

    const/4 v3, 0x0

    move v6, p1

    move-object v8, p3

    move v4, p4

    move v5, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v1, p8

    .line 477
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/Notifier;->notifyWakeLockListener(Landroid/os/IWakeLockCallback;Ljava/lang/String;ZIIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->improveWakelockLatency()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 480
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    if-ltz v5, :cond_4e

    if-eqz p6, :cond_39

    .line 484
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2c} :catch_4e

    move-object v3, p2

    move v2, p5

    move-object/from16 v1, p6

    move-object/from16 v4, p7

    :try_start_32
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_37

    move-object v9, v1

    goto :goto_50

    :catch_37
    move-object v9, v1

    goto :goto_50

    :cond_39
    move-object/from16 v9, p6

    .line 487
    :try_start_3b
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v3, p2

    move v1, p4

    move v2, p5

    move-object/from16 v4, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 489
    iget-object p5, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v0, 0x28

    const/4 v3, 0x0

    invoke-virtual {p5, v0, p4, p3, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_4d} :catch_50

    goto :goto_50

    :catch_4e
    :cond_4e
    move-object/from16 v9, p6

    .line 495
    :catch_50
    :goto_50
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getWakeLockLog(I)Lcom/android/server/power/WakeLockLog;

    move-result-object p3

    .line 496
    invoke-virtual {p0, p4, v9}, Lcom/android/server/power/Notifier;->getUidForWakeLockLog(ILandroid/os/WorkSource;)I

    move-result p4

    const-wide/16 v0, -0x1

    .line 495
    invoke-virtual {p3, p2, p4, v0, v1}, Lcom/android/server/power/WakeLockLog;->onWakeLockReleased(Ljava/lang/String;IJ)V

    .line 498
    :cond_5d
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mWakefulnessSessionObserver:Lcom/android/server/power/WakefulnessSessionObserver;

    move/from16 p2, p9

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/WakefulnessSessionObserver;->onWakeLockReleased(II)V

    return-void
.end method

.method public onWakeUp(ILjava/lang/String;ILjava/lang/String;I)V
    .registers 7

    .line 910
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteWakeUp(Ljava/lang/String;I)V

    if-eqz p4, :cond_e

    .line 912
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 p2, 0x3d

    invoke-virtual {p0, p2, p5, p4}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    :cond_e
    const/16 p0, 0x11a

    .line 917
    invoke-static {p0, p1, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method

.method public onWakefulnessChangeFinished()V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 632
    :goto_2
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 633
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 634
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/Notifier$Interactivity;

    .line 635
    iget-boolean v4, v3, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    if-eqz v4, :cond_21

    .line 636
    iput-boolean v0, v3, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    .line 637
    invoke-virtual {p0, v2}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange(I)V

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 640
    :cond_24
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    iget-boolean v2, v1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    if-eqz v2, :cond_2f

    .line 641
    iput-boolean v0, v1, Lcom/android/server/power/Notifier$Interactivity;->isChanging:Z

    .line 642
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->handleLateGlobalInteractiveChange()V

    :cond_2f
    return-void
.end method

.method public onWiredChargingStarted(I)V
    .registers 4

    .line 954
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 955
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 956
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 957
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 958
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onWirelessChargingStarted(II)V
    .registers 5

    .line 938
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 939
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 940
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 941
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 942
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 943
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final playChargingStartedFeedback(IZ)V
    .registers 6

    .line 1147
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier;->isChargingFeedbackEnabled(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_11

    .line 1151
    :cond_7
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_12

    :goto_11
    return-void

    .line 1158
    :cond_12
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/power/Notifier;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postEnhancedDischargePredictionBroadcast(J)V
    .registers 4

    .line 1034
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public removeScreenTimeoutPolicyListener(ILandroid/os/IScreenTimeoutPolicyListener;)V
    .registers 5

    .line 1350
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1351
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    .line 1352
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    if-nez v1, :cond_11

    .line 1354
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_21

    .line 1357
    :cond_11
    invoke-virtual {v1, p2}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->removeListenerLocked(Landroid/os/IScreenTimeoutPolicyListener;)V

    .line 1359
    invoke-virtual {v1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 1360
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mScreenTimeoutPolicyListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1362
    :cond_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_f

    throw p0
.end method

.method public final resetDisplayInteractivities()V
    .registers 11

    .line 786
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 787
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdsByGroupsIds()Landroid/util/SparseArray;

    move-result-object v0

    .line 788
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 789
    :goto_d
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_50

    .line 790
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 791
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    array-length v6, v5

    move v7, v2

    :goto_1f
    if-ge v7, v6, :cond_4d

    aget v8, v5, v7

    .line 793
    iget-object v9, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v9

    if-lez v9, :cond_35

    .line 794
    iget-object v9, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    .line 795
    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    .line 794
    invoke-virtual {v1, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_4a

    .line 797
    :cond_35
    iget-object v9, p0, Lcom/android/server/power/Notifier;->mInteractivityByGroupId:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/Notifier$Interactivity;

    if-eqz v9, :cond_46

    .line 799
    iget-boolean v9, v9, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    if-eqz v9, :cond_44

    goto :goto_46

    :cond_44
    move v9, v2

    goto :goto_47

    :cond_46
    :goto_46
    const/4 v9, 0x1

    .line 801
    :goto_47
    invoke-virtual {v1, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_4a
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 805
    :cond_50
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public final screenPolicyChanging(II)V
    .registers 3

    .line 1206
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/ScreenUndimDetector;->recordScreenPolicy(II)V

    return-void
.end method

.method public final sendEnhancedDischargePredictionBroadcast()V
    .registers 3

    .line 1038
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.ENHANCED_DISCHARGE_PREDICTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 1039
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1040
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendGoToSleepBroadcast()V
    .registers 10

    .line 1126
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1127
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/IIntentReceiver;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/power/Notifier;->mScreenOnOffOptions:Landroid/os/Bundle;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    return-void

    :cond_18
    const/4 v0, 0x3

    .line 1131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xaa7

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1132
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method public final sendNextBroadcast()V
    .registers 6

    .line 1045
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1046
    :try_start_3
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_1a

    .line 1049
    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-eq v1, v3, :cond_15

    .line 1057
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 1058
    iput v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_49

    :catchall_13
    move-exception p0

    goto :goto_61

    .line 1051
    :cond_15
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 1052
    iput v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_49

    :cond_1a
    if-ne v1, v4, :cond_33

    .line 1063
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_2e

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_2e

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v3, :cond_29

    goto :goto_2e

    .line 1068
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 1069
    monitor-exit v0

    return-void

    .line 1065
    :cond_2e
    :goto_2e
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 1066
    iput v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_49

    .line 1073
    :cond_33
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_45

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_45

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v4, :cond_40

    goto :goto_45

    .line 1078
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 1079
    monitor-exit v0

    return-void

    .line 1075
    :cond_45
    :goto_45
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 1076
    iput v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 1083
    :goto_49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 1084
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 1085
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_13

    const/16 v0, 0xaa5

    .line 1087
    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(II)I

    if-ne v1, v4, :cond_5d

    .line 1090
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    return-void

    .line 1092
    :cond_5d
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast()V

    return-void

    .line 1085
    :goto_61
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_13

    throw p0
.end method

.method public final sendUserActivity(II)V
    .registers 5

    .line 1019
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_b

    .line 1021
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_31

    :cond_b
    const/4 v1, 0x0

    .line 1023
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 1024
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_9

    .line 1025
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1026
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->notifyUserActivity()V

    .line 1027
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerInternal;->notifyUserActivity()V

    .line 1028
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->userActivity(II)V

    .line 1029
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mFaceDownDetector:Lcom/android/server/power/FaceDownDetector;

    invoke-virtual {v0, p2}, Lcom/android/server/power/FaceDownDetector;->userActivity(I)V

    .line 1030
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mScreenUndimDetector:Lcom/android/server/power/ScreenUndimDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/power/ScreenUndimDetector;->userActivity(I)V

    return-void

    .line 1024
    :goto_31
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_9

    throw p0
.end method

.method public final sendWakeUpBroadcast()V
    .registers 10

    .line 1101
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1102
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/IIntentReceiver;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/power/Notifier;->mScreenOnOffOptions:Landroid/os/Bundle;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    return-void

    :cond_18
    const/4 v0, 0x2

    .line 1106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xaa7

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1107
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method public showDismissibleKeyguard()V
    .registers 1

    .line 503
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->showDismissibleKeyguard()V

    return-void
.end method

.method public final showWiredChargingStarted(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1201
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/Notifier;->playChargingStartedFeedback(IZ)V

    .line 1202
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {p0}, Lcom/android/server/power/SuspendBlocker;->release()V

    return-void
.end method

.method public final showWirelessChargingStarted(II)V
    .registers 4

    const/4 v0, 0x1

    .line 1191
    invoke-virtual {p0, p2, v0}, Lcom/android/server/power/Notifier;->playChargingStartedFeedback(IZ)V

    .line 1194
    iget-boolean p2, p0, Lcom/android/server/power/Notifier;->mShowWirelessChargingAnimationConfig:Z

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p2, :cond_f

    .line 1195
    invoke-interface {p2, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showChargingAnimation(I)V

    .line 1197
    :cond_f
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {p0}, Lcom/android/server/power/SuspendBlocker;->release()V

    return-void
.end method

.method public final updateDisplayInteractivities(IZ)V
    .registers 7

    .line 778
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdsForGroup(I)[I

    move-result-object p1

    .line 779
    array-length v0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    aget v2, p1, v1

    .line 780
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mDisplayInteractivities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public final updatePendingBroadcastLocked()V
    .registers 4

    .line 1001
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    if-nez v0, :cond_2b

    iget v0, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-eqz v0, :cond_2b

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_14

    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-eq v0, v1, :cond_2b

    :cond_14
    const/4 v0, 0x1

    .line 1005
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 1006
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 1007
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1008
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1009
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2b
    return-void
.end method
