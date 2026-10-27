.class public Lcom/android/server/power/LowPowerStandbyController;
.super Ljava/lang/Object;
.source "LowPowerStandbyController.java"


# static fields
.field static final DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;


# instance fields
.field public mActiveDuringMaintenance:Z

.field public final mActivityManager:Ljava/util/function/Supplier;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

.field public mEnableCustomPolicy:Z

.field public mEnableStandbyPorts:Z

.field public mEnabledByDefaultConfig:Z

.field public mForceActive:Z

.field public final mHandler:Landroid/os/Handler;

.field public mIdleSinceNonInteractive:Z

.field public mIsActive:Z

.field public mIsDeviceIdle:Z

.field public mIsEnabled:Z

.field public mIsInteractive:Z

.field public mLastInteractiveTimeElapsed:J

.field public final mLocalService:Lcom/android/server/power/LowPowerStandbyControllerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mLowPowerStandbyManagingPackages:Ljava/util/List;

.field public final mOnStandbyTimeoutExpired:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mPhoneCallServiceTracker:Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

.field public mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

.field public final mPolicyFile:Ljava/io/File;

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

.field public final mStandbyPortLocks:Ljava/util/List;

.field public mStandbyTimeoutConfig:I

.field public mSupportedConfig:Z

.field public final mTempAllowlistChangeListener:Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

.field public final mUidAllowedReasons:Landroid/util/SparseIntArray;

.field public final mUserReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$EeEPzk3ZTM2BI7CAmcL-4_plZlg(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onStandbyTimeoutExpired()V

    return-void
.end method

.method public static synthetic $r8$lambda$IX7H86JqFnHaBS1I3G468jLAQys(Lcom/android/server/power/LowPowerStandbyController;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->lambda$systemReady$1(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VlqmY3NjyBGLQHnrfE-2CDuKs2Y()Landroid/app/IActivityManager;
    .registers 1

    .line 346
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$iJrqlm2fK1cX03M95O66fv_67Zk(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->lambda$enqueueSavePolicy$2(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/android/server/power/LowPowerStandbyController;)Ljava/util/function/Supplier;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mActivityManager:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/power/LowPowerStandbyController;)Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/power/LowPowerStandbyController;)Lcom/android/server/power/LowPowerStandbyController$Clock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/power/LowPowerStandbyController;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/power/LowPowerStandbyController;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/LowPowerStandbyController;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPhoneCallServiceTracker(Lcom/android/server/power/LowPowerStandbyController;)Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPhoneCallServiceTracker:Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddToAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/LowPowerStandbyController;->addToAllowlistInternal(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menqueueNotifyAllowlistChangedLocked(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyActiveChanged(Lcom/android/server/power/LowPowerStandbyController;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->notifyActiveChanged(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyAllowlistChanged(Lcom/android/server/power/LowPowerStandbyController;[I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->notifyAllowlistChanged([I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyPolicyChanged(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->notifyPolicyChanged(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyStandbyPortsChanged(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->notifyStandbyPortsChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDeviceIdleModeChanged(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onDeviceIdleModeChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monInteractive(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onInteractive()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monNonInteractive(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onNonInteractive()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monStandbyTimeoutExpired(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onStandbyTimeoutExpired()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveFromAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/LowPowerStandbyController;->removeFromAllowlistInternal(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 316
    new-instance v0, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 318
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const/4 v2, 0x1

    .line 320
    const-string v3, "DEFAULT_POLICY"

    invoke-direct {v0, v3, v1, v2, v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;-><init>(Ljava/lang/String;Ljava/util/Set;ILjava/util/Set;)V

    sput-object v0, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 10

    .line 345
    new-instance v3, Lcom/android/server/power/LowPowerStandbyController$RealClock;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/android/server/power/LowPowerStandbyController$RealClock;-><init>(Lcom/android/server/power/LowPowerStandbyController-IA;)V

    new-instance v4, Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    invoke-direct {v4}, Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;-><init>()V

    new-instance v5, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda2;-><init>()V

    new-instance v6, Ljava/io/File;

    .line 347
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "low_power_standby_policy.xml"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 345
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/LowPowerStandbyController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/LowPowerStandbyController$Clock;Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;Ljava/util/function/Supplier;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/LowPowerStandbyController$Clock;Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;Ljava/util/function/Supplier;Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/android/server/power/LowPowerStandbyController$Clock;",
            "Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;",
            "Ljava/util/function/Supplier<",
            "Landroid/app/IActivityManager;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 146
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Landroid/app/AlarmManager$OnAlarmListener;

    .line 148
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/LowPowerStandbyController$LocalService;-><init>(Lcom/android/server/power/LowPowerStandbyController;Lcom/android/server/power/LowPowerStandbyController-IA;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLocalService:Lcom/android/server/power/LowPowerStandbyControllerInternal;

    .line 149
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLowPowerStandbyManagingPackages:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    .line 157
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$1;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mTempAllowlistChangeListener:Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

    .line 175
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPhoneCallServiceTracker:Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

    .line 177
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$2;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$3;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 354
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 355
    new-instance p1, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    .line 356
    iput-object p3, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    .line 357
    new-instance p2, Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    .line 358
    iput-object p4, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    .line 359
    iput-object p5, p0, Lcom/android/server/power/LowPowerStandbyController;->mActivityManager:Ljava/util/function/Supplier;

    .line 360
    iput-object p6, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicyFile:Ljava/io/File;

    return-void
.end method

.method public static writeTagValue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    .line 543
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 544
    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 545
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeTagValue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 535
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 537
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 538
    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 539
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public acquireStandbyPorts(Landroid/os/IBinder;ILjava/util/List;)V
    .registers 6

    .line 979
    invoke-virtual {p0, p3}, Lcom/android/server/power/LowPowerStandbyController;->validatePorts(Ljava/util/List;)V

    .line 981
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/IBinder;ILjava/util/List;)V

    .line 982
    iget-object p3, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 983
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->findIndexOfStandbyPorts(Landroid/os/IBinder;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_16

    .line 984
    monitor-exit p3

    return-void

    :catchall_14
    move-exception p0

    goto :goto_36

    .line 987
    :cond_16
    invoke-virtual {v0}, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->linkToDeath()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 988
    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    iget-boolean p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-virtual {p0, p2}, Lcom/android/server/power/LowPowerStandbyController;->isPackageExempt(I)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 990
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyStandbyPortsChangedLocked()V

    .line 993
    :cond_34
    monitor-exit p3

    return-void

    :goto_36
    monitor-exit p3
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_14

    throw p0
.end method

.method public final addAllowedReasonLocked(II)Z
    .registers 4

    .line 1217
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    or-int/2addr p2, v0

    .line 1219
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    if-eq v0, p2, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final addToAllowlistInternal(II)V
    .registers 5

    .line 1245
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1246
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_b

    .line 1247
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_26

    :cond_b
    if-eqz p2, :cond_24

    .line 1249
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/LowPowerStandbyController;->hasAllowedReasonLocked(II)Z

    move-result v1

    if-nez v1, :cond_24

    .line 1250
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/LowPowerStandbyController;->addAllowedReasonLocked(II)Z

    .line 1251
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_24

    .line 1252
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    .line 1255
    :cond_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_9

    throw p0
.end method

.method public final cancelStandbyTimeoutAlarmLocked()V
    .registers 2

    .line 666
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 1058
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1061
    const-string p1, "Low Power Standby Controller:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1063
    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1064
    :try_start_15
    const-string v1, "mIsActive="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1065
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1066
    const-string v1, "mIsEnabled="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1067
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1068
    const-string v1, "mSupportedConfig="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1069
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1070
    const-string v1, "mEnabledByDefaultConfig="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1071
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1072
    const-string v1, "mStandbyTimeoutConfig="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    iget v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1074
    const-string v1, "mEnableCustomPolicy="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1077
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    if-nez v1, :cond_5d

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz v1, :cond_85

    goto :goto_5d

    :catchall_5a
    move-exception p0

    goto/16 :goto_15b

    .line 1078
    :cond_5d
    :goto_5d
    const-string v1, "mIsInteractive="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1080
    const-string v1, "mLastInteractiveTime="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1081
    iget-wide v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 1082
    const-string v1, "mIdleSinceNonInteractive="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1083
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1084
    const-string v1, "mIsDeviceIdle="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1085
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1088
    :cond_85
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    move-result-object v1

    .line 1089
    const-string v2, "Allowed UIDs="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1090
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object v1

    if-eqz v1, :cond_e9

    .line 1094
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1095
    const-string v2, "mPolicy:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1097
    const-string v2, "mIdentifier="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    const-string v2, "mExemptPackages="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1100
    const-string v2, ","

    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    const-string v2, "mAllowedReasons="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result v2

    invoke-static {v2}, Landroid/os/PowerManager;->lowPowerStandbyAllowedReasonsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    const-string v2, "mAllowedFeatures="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1104
    const-string v2, ","

    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedFeatures()Ljava/util/Set;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1108
    :cond_e9
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1109
    const-string v1, "UID allowed reasons:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    .line 1111
    :goto_f5
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_123

    .line 1112
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-lez v2, :cond_120

    .line 1113
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1114
    const-string v2, ": "

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1115
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 1116
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/PowerManager;->lowPowerStandbyAllowedReasonsToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1115
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_120
    add-int/lit8 v1, v1, 0x1

    goto :goto_f5

    .line 1119
    :cond_123
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1121
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getActiveStandbyPorts()Ljava/util/List;

    move-result-object p0

    .line 1122
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_156

    .line 1123
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1124
    const-string v1, "Active standby ports locks:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1126
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_153

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    .line 1127
    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_13f

    .line 1129
    :cond_153
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1131
    :cond_156
    monitor-exit p1
    :try_end_157
    .catchall {:try_start_15 .. :try_end_157} :catchall_5a

    .line 1132
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 1131
    :goto_15b
    :try_start_15b
    monitor-exit p1
    :try_end_15c
    .catchall {:try_start_15b .. :try_end_15c} :catchall_5a

    throw p0
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 11

    .line 1136
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1137
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1138
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    const-wide v2, 0x10800000001L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1139
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    const-wide v2, 0x10800000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1140
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    const-wide v2, 0x10800000003L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1141
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    const-wide v2, 0x10800000004L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1143
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    const-wide v2, 0x10800000005L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1144
    iget-wide v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    const-wide v3, 0x10300000006L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1146
    iget v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    const-wide v2, 0x10500000007L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1148
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    const-wide v2, 0x10800000008L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1150
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    const-wide v2, 0x10800000009L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1152
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    move-result-object v1

    .line 1153
    array-length v2, v1

    const/4 v3, 0x0

    :goto_67
    if-ge v3, v2, :cond_78

    aget v4, v1, v3

    const-wide v5, 0x2050000000aL

    .line 1154
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    :catchall_76
    move-exception p0

    goto :goto_e1

    .line 1157
    :cond_78
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p0

    if-eqz p0, :cond_dc

    const-wide v1, 0x10b0000000bL

    .line 1159
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1160
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1161
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-wide v5, 0x20900000002L

    .line 1162
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_9b

    .line 1164
    :cond_b0
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result v3

    const-wide v4, 0x10500000003L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1165
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedFeatures()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide v4, 0x20900000004L

    .line 1166
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_c4

    .line 1168
    :cond_d9
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1170
    :cond_dc
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1171
    monitor-exit v0

    return-void

    :goto_e1
    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_3 .. :try_end_e2} :catchall_76

    throw p0
.end method

.method public final enqueueNotifyActiveChangedLocked()V
    .registers 5

    .line 813
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 814
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {p0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final enqueueNotifyAllowlistChangedLocked()V
    .registers 5

    .line 1345
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    move-result-object v0

    .line 1352
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1353
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {p0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final enqueueNotifyPolicyChangedLocked()V
    .registers 5

    .line 774
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 775
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {p0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final enqueueNotifyStandbyPortsChangedLocked()V
    .registers 5

    .line 1374
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1375
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {p0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final enqueueSavePolicy(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .registers 4

    .line 591
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/PowerManager$LowPowerStandbyPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final findIndexOfStandbyPorts(Landroid/os/IBinder;)I
    .registers 4

    const/4 v0, 0x0

    .line 969
    :goto_1
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 970
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;

    invoke-virtual {v1}, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_18

    return v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 p0, -0x1

    return p0
.end method

.method public forceActive(Z)V
    .registers 3

    .line 881
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 882
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mForceActive:Z

    .line 883
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 884
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public getActiveStandbyPorts()Ljava/util/List;
    .registers 6

    .line 1022
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1024
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_47

    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    if-nez v2, :cond_13

    goto :goto_47

    .line 1028
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getExemptPackageAppIdsLocked()Ljava/util/List;

    move-result-object v2

    .line 1029
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;

    .line 1030
    invoke-virtual {v3}, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 1031
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1032
    invoke-virtual {v3}, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->getPorts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1d

    :catchall_43
    move-exception p0

    goto :goto_49

    .line 1036
    :cond_45
    monitor-exit v1

    return-object v0

    .line 1025
    :cond_47
    :goto_47
    monitor-exit v1

    return-object v0

    .line 1037
    :goto_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_43

    throw p0
.end method

.method public final getAllowlistUidsLocked()[I
    .registers 9

    .line 1304
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x1

    .line 1305
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v0

    .line 1306
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 1307
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_24

    .line 1309
    new-array p0, v3, [I

    return-object p0

    .line 1312
    :cond_24
    invoke-virtual {v2}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result v2

    move v4, v3

    .line 1313
    :goto_29
    iget-object v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_4a

    .line 1314
    iget-object v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1315
    iget-object v6, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    and-int/2addr v6, v2

    if-eqz v6, :cond_47

    .line 1316
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 1320
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getExemptPackageAppIdsLocked()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1321
    invoke-virtual {p0, v4, v0}, Lcom/android/server/power/LowPowerStandbyController;->uidsForAppId(ILjava/util/List;)[I

    move-result-object v4

    array-length v5, v4

    move v6, v3

    :goto_68
    if-ge v6, v5, :cond_52

    aget v7, v4, v6

    .line 1322
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    .line 1326
    :cond_76
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 1327
    :goto_7c
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_91

    .line 1328
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    .line 1330
    :cond_91
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    return-object p0
.end method

.method public final getExemptPackageAppIdsLocked()Ljava/util/List;
    .registers 6

    .line 1279
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1280
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p0

    .line 1281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_12

    goto :goto_3c

    .line 1286
    :cond_12
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_1a
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 1289
    :try_start_28
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    .line 1288
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I

    move-result v2

    .line 1290
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1291
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_3b} :catch_1a

    goto :goto_1a

    :cond_3c
    :goto_3c
    return-object v1
.end method

.method public getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;
    .registers 3

    .line 919
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 920
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_c

    const/4 p0, 0x0

    .line 921
    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p0

    goto :goto_1c

    .line 922
    :cond_c
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    if-eqz v1, :cond_18

    .line 923
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/power/LowPowerStandbyController;->policyOrDefault(Landroid/os/PowerManager$LowPowerStandbyPolicy;)Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 925
    :cond_18
    sget-object p0, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    monitor-exit v0

    return-object p0

    .line 927
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_a

    throw p0
.end method

.method public final getPolicyFile()Landroid/util/AtomicFile;
    .registers 2

    .line 595
    new-instance v0, Landroid/util/AtomicFile;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicyFile:Ljava/io/File;

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final hasAllowedReasonLocked(II)Z
    .registers 3

    .line 1210
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    and-int/2addr p0, p2

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public final initSettingsLocked()V
    .registers 5

    .line 437
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 438
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-eqz v1, :cond_18

    .line 439
    const-string v1, "low_power_standby_enabled"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_18

    .line 447
    iget-boolean p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    .line 446
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_18
    return-void
.end method

.method public isActive()Z
    .registers 2

    .line 832
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 833
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 834
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isAllowed(I)Z
    .registers 5

    .line 949
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 950
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    .line 951
    monitor-exit v0

    return v2

    :catchall_c
    move-exception p0

    goto :goto_1d

    .line 954
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    monitor-exit v0

    return v2

    .line 955
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_c

    throw p0
.end method

.method public isAllowed(Ljava/lang/String;)Z
    .registers 5

    .line 959
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 960
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    const/4 v2, 0x1

    if-nez v1, :cond_c

    .line 961
    monitor-exit v0

    return v2

    :catchall_a
    move-exception p0

    goto :goto_24

    .line 964
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedFeatures()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :cond_22
    :goto_22
    monitor-exit v0

    return v2

    .line 965
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_a

    throw p0
.end method

.method public isEnabled()Z
    .registers 3

    .line 844
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-eqz v1, :cond_f

    iget-boolean p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :catchall_d
    move-exception p0

    goto :goto_12

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    .line 846
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method public isPackageExempt(I)Z
    .registers 4

    .line 939
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 940
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, 0x1

    .line 941
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    goto :goto_20

    .line 944
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getExemptPackageAppIdsLocked()Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 945
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_c

    throw p0
.end method

.method public isSupported()Z
    .registers 2

    .line 838
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 839
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 840
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final synthetic lambda$enqueueSavePolicy$2(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .registers 2

    .line 591
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->savePolicy(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V

    return-void
.end method

.method public final synthetic lambda$systemReady$1(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 402
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onDeviceConfigFlagsChanged()V

    return-void
.end method

.method public final loadPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;
    .registers 12

    .line 467
    const-string v0, "LowPowerStandbyController"

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicyFile()Landroid/util/AtomicFile;

    move-result-object p0

    .line 468
    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return-object v2

    .line 475
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_12} :catch_e9
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_12} :catch_59
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_12} :catch_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_12} :catch_59
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_12} :catch_59

    .line 477
    :try_start_12
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 479
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 481
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v2

    .line 484
    :cond_22
    :goto_22
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_bb

    const/4 v10, 0x2

    if-eq v8, v10, :cond_2d

    goto :goto_22

    .line 488
    :cond_2d
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v8

    .line 490
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    if-ne v8, v9, :cond_5f

    .line 492
    const-string v8, "low-power-standby-policy"

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid root tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_12 .. :try_end_53} :catchall_5d

    if-eqz v1, :cond_5c

    .line 524
    :try_start_55
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_58} :catch_e9
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59
    .catch Ljava/lang/NullPointerException; {:try_start_55 .. :try_end_58} :catch_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_55 .. :try_end_58} :catch_59
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_58} :catch_59

    return-object v2

    :catch_59
    move-exception v1

    goto/16 :goto_d1

    :cond_5c
    return-object v2

    :catchall_5d
    move-exception v3

    goto :goto_c6

    .line 499
    :cond_5f
    :try_start_5f
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v8
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_5d

    const-string/jumbo v9, "value"

    sparse-switch v8, :sswitch_data_ea

    goto :goto_a5

    :sswitch_6a
    :try_start_6a
    const-string v8, "exempt-package"

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 504
    invoke-interface {v5, v2, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 499
    :sswitch_7a
    const-string v8, "allowed-reasons"

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 507
    invoke-interface {v5, v2, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_22

    .line 499
    :sswitch_87
    const-string v8, "allowed-features"

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 510
    invoke-interface {v5, v2, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 499
    :sswitch_97
    const-string v8, "identifier"

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 501
    invoke-interface {v5, v2, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 513
    :cond_a5
    :goto_a5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 518
    :cond_bb
    new-instance v5, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    invoke-direct {v5, v7, v3, v6, v4}, Landroid/os/PowerManager$LowPowerStandbyPolicy;-><init>(Ljava/lang/String;Ljava/util/Set;ILjava/util/Set;)V
    :try_end_c0
    .catchall {:try_start_6a .. :try_end_c0} :catchall_5d

    if-eqz v1, :cond_c5

    .line 524
    :try_start_c2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c5
    .catch Ljava/io/FileNotFoundException; {:try_start_c2 .. :try_end_c5} :catch_e9
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_59
    .catch Ljava/lang/NullPointerException; {:try_start_c2 .. :try_end_c5} :catch_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c2 .. :try_end_c5} :catch_59
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c2 .. :try_end_c5} :catch_59

    :cond_c5
    return-object v5

    :goto_c6
    if-eqz v1, :cond_d0

    .line 475
    :try_start_c8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_cc

    goto :goto_d0

    :catchall_cc
    move-exception v1

    :try_start_cd
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d0
    :goto_d0
    throw v3
    :try_end_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_cd .. :try_end_d1} :catch_e9
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d1} :catch_59
    .catch Ljava/lang/NullPointerException; {:try_start_cd .. :try_end_d1} :catch_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cd .. :try_end_d1} :catch_59
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cd .. :try_end_d1} :catch_59

    .line 529
    :goto_d1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read policy file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_e9
    return-object v2

    :sswitch_data_ea
    .sparse-switch
        -0x60775357 -> :sswitch_97
        -0x2d963d3e -> :sswitch_87
        0x5007738a -> :sswitch_7a
        0x79ffd458 -> :sswitch_6a
    .end sparse-switch
.end method

.method public final notifyActiveChanged(Z)V
    .registers 3

    .line 822
    const-class p0, Landroid/os/PowerManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManagerInternal;

    .line 823
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 826
    invoke-virtual {p0, p1}, Landroid/os/PowerManagerInternal;->setLowPowerStandbyActive(Z)V

    .line 827
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setLowPowerStandbyActive(Z)V

    return-void
.end method

.method public final notifyAllowlistChanged([I)V
    .registers 3

    .line 1361
    const-class p0, Landroid/os/PowerManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManagerInternal;

    .line 1362
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 1364
    invoke-virtual {p0, p1}, Landroid/os/PowerManagerInternal;->setLowPowerStandbyAllowlist([I)V

    .line 1365
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setLowPowerStandbyAllowlist([I)V

    return-void
.end method

.method public final notifyEnabledChangedLocked()V
    .registers 2

    .line 769
    const-string v0, "android.os.action.LOW_POWER_STANDBY_ENABLED_CHANGED"

    invoke-virtual {p0, v0}, Lcom/android/server/power/LowPowerStandbyController;->sendExplicitBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public final notifyPolicyChanged(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .registers 2

    .line 783
    const-string p1, "android.os.action.LOW_POWER_STANDBY_POLICY_CHANGED"

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->sendExplicitBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public final notifyStandbyPortsChanged()V
    .registers 2

    .line 1383
    const-string v0, "android.os.action.LOW_POWER_STANDBY_PORTS_CHANGED"

    invoke-virtual {p0, v0}, Lcom/android/server/power/LowPowerStandbyController;->sendExplicitBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public final onDeviceConfigFlagsChanged()V
    .registers 4

    .line 423
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    invoke-virtual {v1}, Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;->enableCustomPolicy()Z

    move-result v1

    .line 425
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    if-eq v2, v1, :cond_18

    .line 426
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyPolicyChangedLocked()V

    .line 427
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    .line 428
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_22

    .line 431
    :cond_18
    :goto_18
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    invoke-virtual {v1}, Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;->enableStandbyPorts()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    .line 432
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_16

    throw p0
.end method

.method public final onDeviceIdleModeChanged()V
    .registers 4

    .line 670
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 671
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    .line 676
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    if-nez v2, :cond_14

    if-eqz v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v1, 0x1

    :goto_15
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    .line 677
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 678
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final onDisabledLocked()V
    .registers 1

    .line 702
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->cancelStandbyTimeoutAlarmLocked()V

    .line 703
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->unregisterListeners()V

    .line 704
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    return-void
.end method

.method public final onEnabledLocked()V
    .registers 2

    .line 687
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 688
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onInteractive()V

    goto :goto_f

    .line 690
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onNonInteractive()V

    .line 693
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->registerListeners()V

    return-void
.end method

.method public final onInteractive()V
    .registers 3

    .line 647
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->cancelStandbyTimeoutAlarmLocked()V

    const/4 v1, 0x1

    .line 649
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    const/4 v1, 0x0

    .line 650
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    .line 651
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    .line 652
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 653
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final onNonInteractive()V
    .registers 5

    .line 628
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 629
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    .line 630
    :try_start_a
    iput-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    .line 631
    iput-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    .line 632
    iput-wide v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    .line 634
    iget v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    if-lez v0, :cond_1a

    .line 635
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->scheduleStandbyTimeoutAlarmLocked()V

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_1f

    .line 638
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 639
    monitor-exit v2

    return-void

    :goto_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_18

    throw p0
.end method

.method public onSettingsChanged()V
    .registers 4

    .line 712
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    .line 714
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateSettingsLocked()V

    .line 716
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eq v2, v1, :cond_1a

    if-eqz v2, :cond_14

    .line 718
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onEnabledLocked()V

    goto :goto_17

    :catchall_12
    move-exception p0

    goto :goto_1c

    .line 720
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onDisabledLocked()V

    .line 723
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->notifyEnabledChangedLocked()V

    .line 725
    :cond_1a
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_12

    throw p0
.end method

.method public final onStandbyTimeoutExpired()V
    .registers 2

    .line 790
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 791
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 792
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final policyChangeAffectsAllowlistLocked(Landroid/os/PowerManager$LowPowerStandbyPolicy;Landroid/os/PowerManager$LowPowerStandbyPolicy;)Z
    .registers 7

    .line 1042
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->policyOrDefault(Landroid/os/PowerManager$LowPowerStandbyPolicy;)Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p1

    .line 1043
    invoke-virtual {p0, p2}, Lcom/android/server/power/LowPowerStandbyController;->policyOrDefault(Landroid/os/PowerManager$LowPowerStandbyPolicy;)Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1045
    :goto_b
    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1d

    .line 1046
    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1049
    :cond_1d
    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result p0

    invoke-virtual {p2}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result v1

    xor-int/2addr p0, v1

    .line 1051
    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object p1

    .line 1052
    invoke-virtual {p2}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object p2

    .line 1051
    invoke-interface {p1, p2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    and-int/2addr p0, v2

    if-nez p0, :cond_39

    if-nez p1, :cond_38

    goto :goto_39

    :cond_38
    return v0

    :cond_39
    :goto_39
    const/4 p0, 0x1

    return p0
.end method

.method public final policyOrDefault(Landroid/os/PowerManager$LowPowerStandbyPolicy;)Landroid/os/PowerManager$LowPowerStandbyPolicy;
    .registers 2

    if-nez p1, :cond_5

    .line 933
    sget-object p0, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    return-object p0

    :cond_5
    return-object p1
.end method

.method public final registerListeners()V
    .registers 6

    .line 729
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 730
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 731
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 732
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 734
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 736
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 737
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 738
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 739
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 740
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 741
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 743
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 744
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUserReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 748
    const-class v0, Lcom/android/server/PowerAllowlistInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerAllowlistInternal;

    .line 749
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mTempAllowlistChangeListener:Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

    invoke-interface {v0, v1}, Lcom/android/server/PowerAllowlistInternal;->registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    .line 751
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPhoneCallServiceTracker:Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->register()V

    return-void
.end method

.method public releaseStandbyPorts(Landroid/os/IBinder;)V
    .registers 4

    .line 1006
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1007
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->findIndexOfStandbyPorts(Landroid/os/IBinder;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_e

    .line 1009
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    goto :goto_32

    .line 1012
    :cond_e
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;

    .line 1013
    invoke-virtual {p1}, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->unlinkToDeath()V

    .line 1014
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p1}, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->isPackageExempt(I)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyStandbyPortsChangedLocked()V

    .line 1017
    :cond_30
    monitor-exit v0

    return-void

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_c

    throw p0
.end method

.method public final removeAllowedReasonLocked(II)Z
    .registers 5

    .line 1226
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    not-int p2, p2

    and-int/2addr p2, v0

    if-nez p2, :cond_18

    .line 1233
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_1d

    .line 1235
    :cond_18
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_1d
    if-eq v0, p2, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    return v1
.end method

.method public final removeFromAllowlistInternal(II)V
    .registers 5

    .line 1263
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1264
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_b

    .line 1265
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_26

    :cond_b
    if-eqz p2, :cond_24

    .line 1267
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/LowPowerStandbyController;->hasAllowedReasonLocked(II)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1268
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/LowPowerStandbyController;->removeAllowedReasonLocked(II)Z

    .line 1269
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_24

    .line 1270
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    .line 1273
    :cond_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_9

    throw p0
.end method

.method public final savePolicy(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .registers 9

    .line 549
    const-string v0, "low-power-standby-policy"

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicyFile()Landroid/util/AtomicFile;

    move-result-object p0

    if-nez p1, :cond_c

    .line 554
    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    return-void

    :cond_c
    const/4 v1, 0x0

    .line 560
    :try_start_d
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 561
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_77

    .line 564
    :try_start_18
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v3

    .line 565
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 566
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 569
    const-string v4, "identifier"

    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/power/LowPowerStandbyController;->writeTagValue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 571
    const-string v6, "exempt-package"

    invoke-static {v3, v6, v5}, Lcom/android/server/power/LowPowerStandbyController;->writeTagValue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :catch_47
    move-exception p1

    move-object v1, v2

    goto :goto_78

    .line 573
    :cond_4a
    const-string v4, "allowed-reasons"

    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/server/power/LowPowerStandbyController;->writeTagValue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    .line 574
    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedFeatures()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 575
    const-string v5, "allowed-features"

    invoke-static {v3, v5, v4}, Lcom/android/server/power/LowPowerStandbyController;->writeTagValue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    .line 579
    :cond_6d
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 580
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 583
    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_76} :catch_47

    return-void

    :catch_77
    move-exception p1

    .line 585
    :goto_78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write policy to file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LowPowerStandbyController"

    invoke-static {v2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public final scheduleStandbyTimeoutAlarmLocked()V
    .registers 12

    .line 658
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    int-to-long v2, v2

    add-long v6, v0, v2

    .line 659
    iget-object v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    const-string v8, "LowPowerStandbyController.StandbyTimeout"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final sendExplicitBroadcast(Ljava/lang/String;)V
    .registers 7

    .line 796
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x50000000

    .line 797
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 798
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 801
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 802
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 803
    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLowPowerStandbyManagingPackages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 804
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 805
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.MANAGE_LOW_POWER_STANDBY"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_21

    :cond_3f
    return-void
.end method

.method public setActiveDuringMaintenance(Z)V
    .registers 5

    .line 866
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 867
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_12

    .line 868
    const-string p0, "LowPowerStandbyController"

    const-string p1, "Low Power Standby settings cannot be changed because it is not supported on this device"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    goto :goto_22

    .line 873
    :cond_12
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power_standby_active_during_maintenance"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 876
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onSettingsChanged()V

    .line 877
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_10

    throw p0
.end method

.method public setEnabled(Z)V
    .registers 5

    .line 850
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 851
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_12

    .line 852
    const-string p0, "LowPowerStandbyController"

    const-string p1, "Low Power Standby cannot be enabled because it is not supported on this device"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    goto :goto_22

    .line 857
    :cond_12
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power_standby_enabled"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 859
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onSettingsChanged()V

    .line 860
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_10

    throw p0
.end method

.method public setPolicy(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .registers 4

    .line 888
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 889
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_12

    .line 890
    const-string p0, "LowPowerStandbyController"

    const-string p1, "Low Power Standby policy cannot be changed because it is not supported on this device"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    goto :goto_3e

    .line 895
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    if-nez v1, :cond_1f

    .line 896
    const-string p0, "LowPowerStandbyController"

    const-string p1, "Custom policies are not enabled."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    monitor-exit v0

    return-void

    .line 903
    :cond_1f
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 904
    monitor-exit v0

    return-void

    .line 907
    :cond_29
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/LowPowerStandbyController;->policyChangeAffectsAllowlistLocked(Landroid/os/PowerManager$LowPowerStandbyPolicy;Landroid/os/PowerManager$LowPowerStandbyPolicy;)Z

    move-result v1

    .line 908
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 909
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->enqueueSavePolicy(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V

    if-eqz v1, :cond_39

    .line 911
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    .line 913
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyPolicyChangedLocked()V

    .line 914
    monitor-exit v0

    return-void

    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_10

    throw p0
.end method

.method public systemReady()V
    .registers 7

    .line 366
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const v2, 0x1110209

    .line 368
    :try_start_c
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v2, :cond_19

    .line 372
    monitor-exit v1

    return-void

    :catchall_16
    move-exception p0

    goto/16 :goto_e8

    .line 375
    :cond_19
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.MANAGE_LOW_POWER_STANDBY"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x100000

    .line 376
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 379
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 380
    iget-object v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mLowPowerStandbyManagingPackages:Ljava/util/List;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 383
    :cond_43
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AlarmManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 384
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    .line 385
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const v2, 0x10e00e0

    .line 387
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    const v2, 0x1110208

    .line 389
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    .line 392
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    .line 394
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "low_power_standby_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 397
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "low_power_standby_active_during_maintenance"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 401
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;->registerPropertyUpdateListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 403
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    invoke-virtual {v0}, Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;->enableCustomPolicy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    .line 404
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    invoke-virtual {v0}, Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;->enableStandbyPorts()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    .line 406
    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    if-eqz v0, :cond_ce

    .line 407
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->loadPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    goto :goto_d2

    .line 409
    :cond_ce
    sget-object v0, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 411
    :goto_d2
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->initSettingsLocked()V

    .line 412
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateSettingsLocked()V

    .line 414
    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz v0, :cond_df

    .line 415
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->registerListeners()V

    .line 417
    :cond_df
    monitor-exit v1
    :try_end_e0
    .catchall {:try_start_c .. :try_end_e0} :catchall_16

    .line 419
    const-class v0, Lcom/android/server/power/LowPowerStandbyControllerInternal;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLocalService:Lcom/android/server/power/LowPowerStandbyControllerInternal;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    .line 417
    :goto_e8
    :try_start_e8
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_16

    throw p0
.end method

.method public final uidsForAppId(ILjava/util/List;)[I
    .registers 5

    .line 1335
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    .line 1336
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 1337
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 1338
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {v1, p0}, Landroid/os/UserHandle;->getUid(I)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_20
    return-object p1
.end method

.method public final unregisterListeners()V
    .registers 3

    .line 755
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 756
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 757
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 759
    const-class v0, Lcom/android/server/PowerAllowlistInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerAllowlistInternal;

    .line 760
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mTempAllowlistChangeListener:Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

    invoke-interface {v0, p0}, Lcom/android/server/PowerAllowlistInternal;->unregisterTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    return-void
.end method

.method public final updateActiveLocked()V
    .registers 6

    .line 600
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 601
    iget-wide v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    .line 603
    :goto_15
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    if-eqz v3, :cond_1f

    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    if-nez v3, :cond_1f

    move v3, v2

    goto :goto_20

    :cond_1f
    move v3, v1

    .line 604
    :goto_20
    iget-boolean v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mForceActive:Z

    if-nez v4, :cond_34

    iget-boolean v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz v4, :cond_35

    iget-boolean v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    if-nez v4, :cond_35

    if-eqz v0, :cond_35

    if-eqz v3, :cond_34

    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mActiveDuringMaintenance:Z

    if-eqz v0, :cond_35

    :cond_34
    move v1, v2

    .line 615
    :cond_35
    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    if-eq v0, v1, :cond_3e

    .line 616
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    .line 620
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyActiveChangedLocked()V

    :cond_3e
    return-void
.end method

.method public final updateSettingsLocked()V
    .registers 6

    .line 454
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 455
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    const-string v1, "low_power_standby_enabled"

    .line 457
    iget-boolean v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    .line 455
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_18

    move v1, v2

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    .line 458
    const-string v1, "low_power_standby_active_during_maintenance"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move v2, v3

    :goto_25
    iput-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mActiveDuringMaintenance:Z

    .line 462
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    return-void
.end method

.method public validatePorts(Ljava/util/List;)V
    .registers 4

    .line 997
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    .line 998
    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->getPortNumber()I

    move-result p1

    if-ltz p1, :cond_1c

    const v0, 0xffff

    if-gt p1, v0, :cond_1c

    goto :goto_4

    .line 1000
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "port out of range:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    return-void
.end method
