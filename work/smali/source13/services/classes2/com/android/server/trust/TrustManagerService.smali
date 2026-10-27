.class public Lcom/android/server/trust/TrustManagerService;
.super Lcom/android/server/SystemService;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;,
        Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;,
        Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;,
        Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;,
        Lcom/android/server/trust/TrustManagerService$Receiver;,
        Lcom/android/server/trust/TrustManagerService$SettingsAttrs;,
        Lcom/android/server/trust/TrustManagerService$AgentInfo;,
        Lcom/android/server/trust/TrustManagerService$SettingsObserver;,
        Lcom/android/server/trust/TrustManagerService$TimeoutType;,
        Lcom/android/server/trust/TrustManagerService$TrustState;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final ENABLE_ACTIVE_UNLOCK_FLAG:Z

.field private static final MSG_CLEANUP_USER:I = 0x8

.field private static final MSG_DISPATCH_UNLOCK_ATTEMPT:I = 0x3

.field private static final MSG_DISPATCH_UNLOCK_LOCKOUT:I = 0xd

.field private static final MSG_ENABLED_AGENTS_CHANGED:I = 0x4

.field private static final MSG_FLUSH_TRUST_USUALLY_MANAGED:I = 0xa

.field private static final MSG_KEYGUARD_SHOWING_CHANGED:I = 0x6

.field private static final MSG_REFRESH_DEVICE_LOCKED_FOR_USER:I = 0xe

.field private static final MSG_REFRESH_TRUSTABLE_TIMERS_AFTER_AUTH:I = 0x11

.field private static final MSG_REGISTER_LISTENER:I = 0x1

.field private static final MSG_SCHEDULE_TRUST_TIMEOUT:I = 0xf

.field private static final MSG_START_USER:I = 0x7

.field private static final MSG_STOP_USER:I = 0xc

.field private static final MSG_SWITCH_USER:I = 0x9

.field private static final MSG_UNLOCK_USER:I = 0xb

.field private static final MSG_UNREGISTER_LISTENER:I = 0x2

.field private static final MSG_USER_MAY_REQUEST_UNLOCK:I = 0x12

.field private static final MSG_USER_REQUESTED_UNLOCK:I = 0x10

.field private static final PERMISSION_PROVIDE_AGENT:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field private static final PRIV_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/prv/res/android"

.field private static final REFRESH_DEVICE_LOCKED_EXCEPT_USER:Ljava/lang/String; = "except"

.field private static final TAG:Ljava/lang/String; = "TrustManagerService"

.field private static final TRUSTABLE_IDLE_TIMEOUT_IN_MILLIS:J = 0x1b77400L

.field private static final TRUSTABLE_TIMEOUT_IN_MILLIS:J = 0x5265c00L

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static final TRUST_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "TrustManagerService.trustTimeoutForUser"

.field private static final TRUST_TIMEOUT_IN_MILLIS:J = 0xdbba00L

.field private static final TRUST_USUALLY_MANAGED_FLUSH_DELAY:I = 0x1d4c0


# instance fields
.field private final mActiveAgents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/trust/TrustManagerService$AgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mAlarmLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field final mArchive:Lcom/android/server/trust/TrustArchive;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

.field private final mHandler:Landroid/os/Handler;

.field private final mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

.field private final mService:Landroid/os/IBinder;

.field private final mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

.field private final mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

.field private mTrustAgentsCanRun:Z

.field private final mTrustListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/trust/ITrustListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

.field private final mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserIsTrusted:Landroid/util/SparseBooleanArray;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserTrustState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/trust/TrustManagerService$TrustState;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

.field private mVirtualDeviceManager:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActiveAgents(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlarmLock(Lcom/android/server/trust/TrustManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlarmManager(Lcom/android/server/trust/TrustManagerService;)Landroid/app/AlarmManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIdleTrustableTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsObserver(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$SettingsObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStrongAuthTracker(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrustAgentsCanRun(Lcom/android/server/trust/TrustManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrustTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrustUsuallyManagedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrustableTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserIsTrusted(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserTrustState(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsersUnlockedByBiometric(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVirtualDeviceManager(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mVirtualDeviceManager:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentUser(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVirtualDeviceManager(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mVirtualDeviceManager:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddListener(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->addListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maggregateIsTrustManaged(Lcom/android/server/trust/TrustManagerService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$maggregateIsTrusted(Lcom/android/server/trust/TrustManagerService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdispatchTrustableDowngrade(Lcom/android/server/trust/TrustManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->dispatchTrustableDowngrade()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchUnlockAttempt(Lcom/android/server/trust/TrustManagerService;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockAttempt(ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchUnlockLockout(Lcom/android/server/trust/TrustManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockLockout(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchUserMayRequestUnlock(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchUserMayRequestUnlock(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchUserRequestedUnlock(Lcom/android/server/trust/TrustManagerService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUserRequestedUnlock(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBiometricSids(Lcom/android/server/trust/TrustManagerService;I)[J
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->getBiometricSids(I)[J

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleScheduleTrustTimeout(Lcom/android/server/trust/TrustManagerService;ZLcom/android/server/trust/TrustManagerService$TimeoutType;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->handleScheduleTrustTimeout(ZLcom/android/server/trust/TrustManagerService$TimeoutType;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misTrustUsuallyManagedInternal(Lcom/android/server/trust/TrustManagerService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmaybeEnableFactoryTrustAgents(Lcom/android/server/trust/TrustManagerService;Lcom/android/internal/widget/LockPatternUtils;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeLockScreen(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->maybeLockScreen(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshTrustableTimers(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshTrustableTimers(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveAgentsOfPackage(Lcom/android/server/trust/TrustManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeAgentsOfPackage(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveListener(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresolveProfileParent(Lcom/android/server/trust/TrustManagerService;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTrust(Lcom/android/server/trust/TrustManagerService;IIZLcom/android/internal/infra/AndroidFuture;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 115
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    const-string v2, "TrustManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    sput-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 164
    const-string v0, "fw.enable_active_unlock_flag"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/trust/TrustManagerService;->ENABLE_ACTIVE_UNLOCK_FLAG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 235
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 149
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Lcom/android/server/trust/TrustManagerService$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;-><init>(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/trust/TrustManagerService$Receiver-IA;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    .line 153
    new-instance v0, Lcom/android/server/trust/TrustArchive;

    invoke-direct {v0}, Lcom/android/server/trust/TrustArchive;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    .line 160
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    .line 174
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    .line 205
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 208
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    .line 212
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    .line 219
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 221
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 223
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmLock:Ljava/lang/Object;

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    .line 232
    iput v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    .line 1398
    new-instance v0, Lcom/android/server/trust/TrustManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$1;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    .line 1743
    new-instance v0, Lcom/android/server/trust/TrustManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$2;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    .line 1822
    new-instance v1, Lcom/android/server/trust/TrustManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/trust/TrustManagerService$3;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 236
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 237
    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    .line 238
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 239
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 240
    new-instance v1, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-direct {v1, p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;-><init>(Lcom/android/server/trust/TrustManagerService;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    .line 241
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 242
    new-instance v1, Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;-><init>(Lcom/android/server/trust/TrustManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    .line 243
    return-void
.end method

.method private addListener(Landroid/app/trust/ITrustListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    .line 1289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1290
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1c

    .line 1291
    return-void

    .line 1289
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1294
    .end local v0    # "i":I
    :cond_1f
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    .line 1296
    return-void
.end method

.method private aggregateIsTrustManaged(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1222
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1223
    return v1

    .line 1225
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 1226
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1227
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_29

    .line 1228
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1229
    const/4 v1, 0x1

    return v1

    .line 1225
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1233
    .end local v0    # "i":I
    :cond_2c
    return v1
.end method

.method private aggregateIsTrustable(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1173
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1174
    return v1

    .line 1176
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 1177
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1178
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_29

    .line 1179
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isTrustable()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1180
    const/4 v1, 0x1

    return v1

    .line 1176
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1184
    .end local v0    # "i":I
    :cond_2c
    return v1
.end method

.method private aggregateIsTrusted(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1158
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1159
    return v1

    .line 1161
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 1162
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1163
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_29

    .line 1164
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1165
    const/4 v1, 0x1

    return v1

    .line 1161
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1169
    .end local v0    # "i":I
    :cond_2c
    return v1
.end method

.method private dispatchDeviceLocked(IZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "isLocked"    # Z

    .line 954
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 955
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 956
    .local v1, "agent":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p1, :cond_22

    .line 957
    if-eqz p2, :cond_1d

    .line 958
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceLocked()V

    goto :goto_22

    .line 960
    :cond_1d
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceUnlocked()V

    .line 954
    .end local v1    # "agent":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 964
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method private dispatchEscrowTokenActivatedLocked(JI)V
    .registers 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 967
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 968
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 969
    .local v1, "agent":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p3, :cond_1a

    .line 970
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/trust/TrustAgentWrapper;->onEscrowTokenActivated(JI)V

    .line 967
    .end local v1    # "agent":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 973
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method private dispatchOnTrustChanged(ZIILjava/util/List;)V
    .registers 9
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1309
    .local p4, "trustGrantedMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_3b

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustChanged("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1311
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1310
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :cond_3b
    if-nez p1, :cond_3e

    const/4 p3, 0x0

    .line 1314
    :cond_3e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3f
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6c

    .line 1316
    :try_start_47
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/ITrustListener;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/app/trust/ITrustListener;->onTrustChanged(ZIILjava/util/List;)V
    :try_end_52
    .catch Landroid/os/DeadObjectException; {:try_start_47 .. :try_end_52} :catch_5a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_52} :catch_53

    goto :goto_68

    .line 1321
    :catch_53
    move-exception v2

    .line 1322
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    .line 1317
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_5a
    move-exception v2

    .line 1318
    .local v2, "e":Landroid/os/DeadObjectException;
    const-string v3, "Removing dead TrustListener."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1320
    nop

    .end local v2    # "e":Landroid/os/DeadObjectException;
    add-int/lit8 v0, v0, -0x1

    .line 1323
    :goto_68
    nop

    .line 1314
    :goto_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 1325
    .end local v0    # "i":I
    :cond_6c
    return-void
.end method

.method private dispatchOnTrustError(Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 1345
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_23

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustError("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_51

    .line 1350
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/ITrustListener;

    invoke-interface {v2, p1}, Landroid/app/trust/ITrustListener;->onTrustError(Ljava/lang/CharSequence;)V
    :try_end_37
    .catch Landroid/os/DeadObjectException; {:try_start_2c .. :try_end_37} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_37} :catch_38

    goto :goto_4d

    .line 1355
    :catch_38
    move-exception v2

    .line 1356
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 1351
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_3f
    move-exception v2

    .line 1352
    .local v2, "e":Landroid/os/DeadObjectException;
    const-string v3, "Removing dead TrustListener."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1354
    nop

    .end local v2    # "e":Landroid/os/DeadObjectException;
    add-int/lit8 v0, v0, -0x1

    .line 1357
    :goto_4d
    nop

    .line 1348
    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1359
    .end local v0    # "i":I
    :cond_51
    return-void
.end method

.method private dispatchOnTrustManagedChanged(ZI)V
    .registers 7
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .line 1328
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_2d

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustManagedChanged("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_2d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2e
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5b

    .line 1333
    :try_start_36
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/ITrustListener;

    invoke-interface {v2, p1, p2}, Landroid/app/trust/ITrustListener;->onTrustManagedChanged(ZI)V
    :try_end_41
    .catch Landroid/os/DeadObjectException; {:try_start_36 .. :try_end_41} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_41} :catch_42

    goto :goto_57

    .line 1338
    :catch_42
    move-exception v2

    .line 1339
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 1334
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_49
    move-exception v2

    .line 1335
    .local v2, "e":Landroid/os/DeadObjectException;
    const-string v3, "Removing dead TrustListener."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1337
    nop

    .end local v2    # "e":Landroid/os/DeadObjectException;
    add-int/lit8 v0, v0, -0x1

    .line 1340
    :goto_57
    nop

    .line 1331
    :goto_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 1342
    .end local v0    # "i":I
    :cond_5b
    return-void
.end method

.method private dispatchTrustableDowngrade()V
    .registers 5

    .line 1195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1196
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1197
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget v3, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v2, v3, :cond_1c

    .line 1198
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->downgradeToTrustable()V

    .line 1195
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1201
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method private dispatchUnlockAttempt(ZI)V
    .registers 6
    .param p1, "successful"    # Z
    .param p2, "userId"    # I

    .line 1237
    if-eqz p1, :cond_1c

    .line 1238
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->allowTrustFromUnlock(I)V

    .line 1240
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v2, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V

    .line 1241
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1244
    :cond_1c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 1245
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1246
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p2, :cond_36

    .line 1247
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockAttempt(Z)V

    .line 1244
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1250
    .end local v0    # "i":I
    :cond_39
    return-void
.end method

.method private dispatchUnlockLockout(II)V
    .registers 6
    .param p1, "timeoutMs"    # I
    .param p2, "userId"    # I

    .line 1278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1279
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1280
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p2, :cond_1a

    .line 1281
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockLockout(I)V

    .line 1278
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1284
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method private dispatchUserMayRequestUnlock(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1266
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchUserMayRequestUnlock(user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 1270
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1271
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p1, :cond_3c

    .line 1272
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onUserMayRequestUnlock()V

    .line 1269
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1275
    .end local v0    # "i":I
    :cond_3f
    return-void
.end method

.method private dispatchUserRequestedUnlock(IZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "dismissKeyguard"    # Z

    .line 1253
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchUserRequestedUnlock(user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dismissKeyguard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_2c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_49

    .line 1258
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1259
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p1, :cond_46

    .line 1260
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2, p2}, Lcom/android/server/trust/TrustAgentWrapper;->onUserRequestedUnlock(Z)V

    .line 1257
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1263
    .end local v0    # "i":I
    :cond_49
    return-void
.end method

.method private getBiometricSids(I)[J
    .registers 4
    .param p1, "userId"    # I

    .line 1362
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    .line 1363
    .local v0, "biometricManager":Landroid/hardware/biometrics/BiometricManager;
    if-nez v0, :cond_e

    .line 1364
    const/4 v1, 0x0

    return-object v1

    .line 1366
    :cond_e
    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds(I)[J

    move-result-object v1

    return-object v1
.end method

.method private getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .registers 5
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 1082
    if-eqz p1, :cond_15

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_7

    goto :goto_15

    .line 1083
    :cond_7
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1082
    :cond_15
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDefaultFactoryTrustAgent(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1126
    const v1, 0x1040264

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1127
    .local v0, "defaultTrustAgent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1128
    const/4 v1, 0x0

    return-object v1

    .line 1130
    :cond_13
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private getSettingsAttrs(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/server/trust/TrustManagerService$SettingsAttrs;
    .registers 19
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 1027
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "TrustManagerService"

    const/4 v4, 0x0

    if-eqz v2, :cond_e3

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_e3

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_15

    goto/16 :goto_e3

    .line 1029
    :cond_15
    const/4 v5, 0x0

    .line 1030
    .local v5, "cn":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1032
    .local v6, "canUnlockProfile":Z
    const/4 v7, 0x0

    .line 1033
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v8, 0x0

    .line 1035
    .local v8, "caughtException":Ljava/lang/Exception;
    :try_start_19
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v9, "android.service.trust.trustagent"

    invoke-virtual {v0, v1, v9}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v7, v0

    .line 1037
    if-nez v7, :cond_30

    .line 1038
    const-string v0, "Can\'t find android.service.trust.trustagent meta-data"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_29} :catch_91
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_29} :catch_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_29} :catch_87
    .catchall {:try_start_19 .. :try_end_29} :catchall_80

    .line 1039
    nop

    .line 1066
    if-eqz v7, :cond_2f

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1039
    :cond_2f
    return-object v4

    .line 1041
    :cond_30
    :try_start_30
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 1042
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    .line 1044
    .local v9, "attrs":Landroid/util/AttributeSet;
    :goto_3c
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    move v11, v10

    .local v11, "type":I
    const/4 v12, 0x1

    const/4 v13, 0x2

    if-eq v10, v12, :cond_48

    if-eq v11, v13, :cond_48

    goto :goto_3c

    .line 1048
    :cond_48
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1049
    .local v10, "nodeName":Ljava/lang/String;
    const-string/jumbo v12, "trust-agent"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_61

    .line 1050
    const-string v12, "Meta-data does not start with trust-agent tag"

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_5a} :catch_91
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_5a} :catch_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_5a} :catch_87
    .catchall {:try_start_30 .. :try_end_5a} :catchall_80

    .line 1051
    nop

    .line 1066
    if-eqz v7, :cond_60

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1051
    :cond_60
    return-object v4

    .line 1053
    :cond_61
    :try_start_61
    sget-object v12, Lcom/android/internal/R$styleable;->TrustAgent:[I

    .line 1054
    invoke-virtual {v0, v9, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 1055
    .local v12, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    .line 1056
    const-string v13, "http://schemas.android.com/apk/prv/res/android"

    const-string/jumbo v14, "unlockProfile"

    const/4 v15, 0x0

    invoke-interface {v9, v13, v14, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    move v6, v13

    .line 1058
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_7a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_61 .. :try_end_7a} :catch_91
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_7a} :catch_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_61 .. :try_end_7a} :catch_87
    .catchall {:try_start_61 .. :try_end_7a} :catchall_80

    .line 1066
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v9    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v11    # "type":I
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    if-eqz v7, :cond_96

    :goto_7c
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_96

    :catchall_80
    move-exception v0

    if-eqz v7, :cond_86

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1067
    :cond_86
    throw v0

    .line 1063
    :catch_87
    move-exception v0

    .line 1064
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v8, v0

    .line 1066
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v7, :cond_96

    goto :goto_7c

    .line 1061
    :catch_8c
    move-exception v0

    .line 1062
    .local v0, "e":Ljava/io/IOException;
    move-object v8, v0

    .line 1066
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v7, :cond_96

    goto :goto_7c

    .line 1059
    :catch_91
    move-exception v0

    .line 1060
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v8, v0

    .line 1066
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v7, :cond_96

    goto :goto_7c

    .line 1068
    :cond_96
    :goto_96
    if-eqz v8, :cond_b3

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing : "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1070
    return-object v4

    .line 1072
    :cond_b3
    if-nez v5, :cond_b6

    .line 1073
    return-object v4

    .line 1075
    :cond_b6
    const/16 v0, 0x2f

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_d9

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1078
    :cond_d9
    new-instance v0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v0, v3, v6}, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;-><init>(Landroid/content/ComponentName;Z)V

    return-object v0

    .line 1028
    .end local v5    # "cn":Ljava/lang/String;
    .end local v6    # "canUnlockProfile":Z
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "caughtException":Ljava/lang/Exception;
    :cond_e3
    :goto_e3
    return-object v4
.end method

.method private getTrustGrantedMessages(I)Ljava/util/List;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1204
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1208
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1209
    .local v0, "trustGrantedMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_54

    .line 1210
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1211
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_51

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 1212
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 1213
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->shouldDisplayTrustGrantedMessage()Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 1214
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->getMessage()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 1215
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->getMessage()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1218
    .end local v1    # "i":I
    :cond_54
    return-object v0
.end method

.method private handleScheduleTrustTimeout(ZLcom/android/server/trust/TrustManagerService$TimeoutType;)V
    .registers 5
    .param p1, "shouldOverride"    # Z
    .param p2, "timeoutType"    # Lcom/android/server/trust/TrustManagerService$TimeoutType;

    .line 376
    iget v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    .line 377
    .local v0, "userId":I
    sget-object v1, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    if-ne p2, v1, :cond_b

    .line 381
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/trust/TrustManagerService;->handleScheduleTrustableTimeouts(IZZ)V

    goto :goto_e

    .line 384
    :cond_b
    invoke-direct {p0, v0, p1}, Lcom/android/server/trust/TrustManagerService;->handleScheduleTrustedTimeout(IZ)V

    .line 386
    :goto_e
    return-void
.end method

.method private handleScheduleTrustableTimeouts(IZZ)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "overrideIdleTimeout"    # Z
    .param p3, "overrideHardTimeout"    # Z

    .line 419
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->setUpIdleTimeout(IZ)V

    .line 420
    invoke-direct {p0, p1, p3}, Lcom/android/server/trust/TrustManagerService;->setUpHardTimeout(IZ)V

    .line 421
    return-void
.end method

.method private handleScheduleTrustedTimeout(IZ)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "shouldOverride"    # Z

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xdbba00

    add-long/2addr v0, v2

    .line 396
    .local v0, "when":J
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;

    .line 399
    .local v2, "alarm":Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;
    const-string v3, "TrustManagerService"

    if-eqz v2, :cond_30

    .line 400
    if-nez p2, :cond_2a

    invoke-virtual {v2}, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->isQueued()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 401
    sget-boolean v4, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v4, :cond_29

    const-string v4, "Found existing trust timeout alarm. Skipping."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_29
    return-void

    .line 404
    :cond_2a
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_3f

    .line 406
    :cond_30
    new-instance v4, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;

    invoke-direct {v4, p0, p1}, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    move-object v2, v4

    .line 407
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :goto_3f
    sget-boolean v4, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v4, :cond_48

    const-string v4, "\tSetting up trust timeout alarm"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_48
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->setQueued(Z)V

    .line 412
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-object v10, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const-string v8, "TrustManagerService.trustTimeoutForUser"

    move-wide v6, v0

    move-object v9, v2

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 415
    return-void
.end method

.method private isTrustUsuallyManagedInternal(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1709
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1710
    :try_start_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    .line 1711
    .local v1, "i":I
    if-ltz v1, :cond_13

    .line 1712
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1714
    .end local v1    # "i":I
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_37

    .line 1716
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v1

    .line 1717
    .local v1, "persistedValue":Z
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    .line 1718
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 1719
    .local v0, "i":I
    if-ltz v0, :cond_2d

    .line 1721
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    monitor-exit v2

    return v3

    .line 1724
    :cond_2d
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1725
    monitor-exit v2

    return v1

    .line 1727
    .end local v0    # "i":I
    :catchall_34
    move-exception v0

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_34

    throw v0

    .line 1714
    .end local v1    # "persistedValue":Z
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V
    .registers 19
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userId"    # I

    .line 1087
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "trust_agents_initialized"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_15

    .line 1089
    return-void

    .line 1091
    :cond_15
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1092
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {v0, v2, v1}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v5

    .line 1093
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/trust/TrustManagerService;->getDefaultFactoryTrustAgent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v6

    .line 1094
    .local v6, "defaultAgent":Landroid/content/ComponentName;
    const/4 v7, 0x1

    if-eqz v6, :cond_29

    move v4, v7

    .line 1095
    .local v4, "shouldUseDefaultAgent":Z
    :cond_29
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 1097
    .local v8, "discoveredAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const-string v9, "TrustManagerService"

    if-eqz v4, :cond_52

    .line 1098
    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1099
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Enabling "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " because it is a default agent."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 1101
    :cond_52
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_56
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_91

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 1102
    .local v11, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {v0, v11}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v12

    .line 1103
    .local v12, "componentName":Landroid/content/ComponentName;
    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1104
    .local v13, "applicationInfoFlags":I
    and-int/lit8 v14, v13, 0x1

    if-nez v14, :cond_8d

    .line 1105
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Leaving agent "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " disabled because package is not a system package."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    goto :goto_56

    .line 1109
    :cond_8d
    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1110
    .end local v11    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "applicationInfoFlags":I
    goto :goto_56

    .line 1113
    :cond_91
    :goto_91
    invoke-virtual/range {p1 .. p2}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v9

    .line 1114
    .local v9, "previouslyEnabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1115
    move-object/from16 v10, p1

    invoke-virtual {v10, v8, v1}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    .line 1116
    iget-object v11, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v3, v7, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1118
    return-void
.end method

.method private maybeLockScreen(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 346
    iget v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-eq p1, v0, :cond_5

    .line 347
    return-void

    .line 350
    :cond_5
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->getLockWhenTrustLost()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 351
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_18

    const-string v0, "Locking device because trust was lost"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_18
    :try_start_18
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_21

    .line 356
    goto :goto_27

    .line 354
    :catch_21
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Error locking screen when trust was lost"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;

    .line 361
    .local v0, "alarm":Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;
    if-eqz v0, :cond_46

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->getTrustAgentsNonrenewableTrust()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 362
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 363
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->setQueued(Z)V

    .line 366
    .end local v0    # "alarm":Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;
    :cond_46
    return-void
.end method

.method private refreshDeviceLockedForUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 862
    const/16 v0, -0x2710

    invoke-direct {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(II)V

    .line 863
    return-void
.end method

.method private refreshDeviceLockedForUser(II)V
    .registers 19
    .param p1, "userId"    # I
    .param p2, "unlockedUser"    # I

    .line 873
    move-object/from16 v1, p0

    move/from16 v0, p1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_32

    if-gez v0, :cond_32

    .line 874
    const-string v3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refreshDeviceLockedForUser(userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): Invalid user handle, must be USER_ALL or a specific user."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "here"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 876
    const/4 v0, -0x1

    move v3, v0

    .end local p1    # "userId":I
    .local v0, "userId":I
    goto :goto_33

    .line 879
    .end local v0    # "userId":I
    .restart local p1    # "userId":I
    :cond_32
    move v3, v0

    .end local p1    # "userId":I
    .local v3, "userId":I
    :goto_33
    if-ne v3, v2, :cond_3d

    .line 880
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .local v0, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_4c

    .line 882
    .end local v0    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .restart local v0    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    .line 886
    .end local v0    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v2, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_4c
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    .line 888
    .local v4, "wm":Landroid/view/IWindowManager;
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_52
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_e7

    .line 889
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 891
    .local v6, "info":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_e1

    iget-boolean v0, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v0, :cond_e1

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e1

    iget-boolean v0, v6, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v0, :cond_73

    .line 892
    move/from16 v9, p2

    goto/16 :goto_e3

    .line 895
    :cond_73
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    .line 896
    .local v7, "id":I
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v8

    .line 898
    .local v8, "secure":Z
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_94

    .line 899
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_91

    if-nez v8, :cond_91

    .line 900
    invoke-direct {v1, v7, v9}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    move/from16 v9, p2

    goto/16 :goto_e3

    .line 899
    :cond_91
    move/from16 v9, p2

    goto :goto_e3

    .line 905
    :cond_94
    invoke-direct {v1, v7}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v10

    .line 906
    .local v10, "trusted":Z
    const/4 v11, 0x1

    .line 907
    .local v11, "showingKeyguard":Z
    const/4 v12, 0x0

    .line 908
    .local v12, "biometricAuthenticated":Z
    const/4 v13, 0x0

    .line 910
    .local v13, "currentUserIsUnlocked":Z
    iget v0, v1, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    const/4 v14, 0x1

    if-ne v0, v7, :cond_cb

    .line 911
    iget-object v15, v1, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    monitor-enter v15

    .line 912
    :try_start_a3
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v7, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    move v12, v0

    .line 913
    monitor-exit v15
    :try_end_ab
    .catchall {:try_start_a3 .. :try_end_ab} :catchall_c4

    .line 915
    :try_start_ab
    invoke-interface {v4}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v0
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_af} :catch_b1

    move v11, v0

    .line 918
    goto :goto_bb

    .line 916
    :catch_b1
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 917
    .local v0, "e":Landroid/os/RemoteException;
    const-string v15, "TrustManagerService"

    const-string v9, "Unable to check keyguard lock state"

    invoke-static {v15, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 919
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_bb
    move/from16 v9, p2

    if-ne v9, v7, :cond_c1

    move v0, v14

    goto :goto_c2

    :cond_c1
    const/4 v0, 0x0

    :goto_c2
    move v13, v0

    goto :goto_cd

    .line 913
    :catchall_c4
    move-exception v0

    move/from16 v9, p2

    :goto_c7
    :try_start_c7
    monitor-exit v15
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c9

    throw v0

    :catchall_c9
    move-exception v0

    goto :goto_c7

    .line 910
    :cond_cb
    move/from16 v9, p2

    .line 921
    :goto_cd
    if-eqz v8, :cond_d6

    if-eqz v11, :cond_d6

    if-nez v10, :cond_d6

    if-nez v12, :cond_d6

    goto :goto_d7

    :cond_d6
    const/4 v14, 0x0

    :goto_d7
    move v0, v14

    .line 923
    .local v0, "deviceLocked":Z
    if-eqz v0, :cond_dd

    if-eqz v13, :cond_dd

    .line 925
    goto :goto_e3

    .line 928
    :cond_dd
    invoke-direct {v1, v7, v0}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    goto :goto_e3

    .line 891
    .end local v0    # "deviceLocked":Z
    .end local v7    # "id":I
    .end local v8    # "secure":Z
    .end local v10    # "trusted":Z
    .end local v11    # "showingKeyguard":Z
    .end local v12    # "biometricAuthenticated":Z
    .end local v13    # "currentUserIsUnlocked":Z
    :cond_e1
    move/from16 v9, p2

    .line 888
    .end local v6    # "info":Landroid/content/pm/UserInfo;
    :goto_e3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_52

    :cond_e7
    move/from16 v9, p2

    .line 930
    .end local v5    # "i":I
    return-void
.end method

.method private refreshTrustableTimers(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 390
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/trust/TrustManagerService;->handleScheduleTrustableTimeouts(IZZ)V

    .line 392
    return-void
.end method

.method private removeAgentsOfPackage(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 990
    const/4 v0, 0x0

    .line 991
    .local v0, "trustMayHaveChanged":Z
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_53

    .line 992
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 993
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 994
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting agent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TrustManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 996
    const/4 v0, 0x1

    .line 998
    :cond_46
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 999
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 991
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_50
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1002
    .end local v1    # "i":I
    :cond_53
    if-eqz v0, :cond_58

    .line 1003
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    .line 1005
    :cond_58
    return-void
.end method

.method private removeListener(Landroid/app/trust/ITrustListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    .line 1299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 1300
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_21

    .line 1301
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1302
    return-void

    .line 1299
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1305
    .end local v0    # "i":I
    :cond_24
    return-void
.end method

.method private resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .registers 12
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1134
    sget-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const v1, 0xc0080

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 1138
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1139
    .local v1, "allowedAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1140
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_27

    goto :goto_16

    .line 1141
    :cond_27
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_2e

    goto :goto_16

    .line 1142
    :cond_2e
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1143
    .local v4, "packageName":Ljava/lang/String;
    const-string v5, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {p1, v5, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_67

    .line 1145
    invoke-direct {p0, v3}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    .line 1146
    .local v6, "name":Landroid/content/ComponentName;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " because package does not have permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "TrustManagerService"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    goto :goto_16

    .line 1150
    .end local v6    # "name":Landroid/content/ComponentName;
    :cond_67
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_16

    .line 1152
    :cond_6b
    return-object v1
.end method

.method private resolveProfileParent(I)I
    .registers 6
    .param p1, "userId"    # I

    .line 1731
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1733
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1734
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_18

    .line 1735
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1d

    .line 1739
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1735
    return v3

    .line 1737
    :cond_18
    nop

    .line 1739
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1737
    return p1

    .line 1739
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1740
    throw v2
.end method

.method private scheduleTrustTimeout(ZZ)V
    .registers 7
    .param p1, "override"    # Z
    .param p2, "isTrustableTimeout"    # Z

    .line 369
    move v0, p1

    .line 370
    .local v0, "shouldOverride":I
    move v1, p2

    .line 371
    .local v1, "trustableTimeout":I
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 372
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 373
    return-void
.end method

.method private setDeviceLockedForUser(IZ)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "locked"    # Z

    .line 934
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 935
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eq v1, p2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    move v1, v2

    .line 936
    .local v1, "changed":Z
    :goto_d
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 937
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_40

    .line 938
    if-eqz v1, :cond_3f

    .line 939
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchDeviceLocked(IZ)V

    .line 940
    nop

    .line 941
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->getBiometricSids(I)[J

    move-result-object v0

    .line 940
    const/4 v3, 0x0

    invoke-static {p2, p1, v3, v0}, Landroid/security/Authorization;->onLockScreenEvent(ZI[B[J)I

    .line 944
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    array-length v4, v0

    :goto_28
    if-ge v2, v4, :cond_3f

    aget v5, v0, v2

    .line 945
    .local v5, "profileHandle":I
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 946
    nop

    .line 947
    invoke-direct {p0, v5}, Lcom/android/server/trust/TrustManagerService;->getBiometricSids(I)[J

    move-result-object v6

    .line 946
    invoke-static {p2, v5, v3, v6}, Landroid/security/Authorization;->onLockScreenEvent(ZI[B[J)I

    .line 944
    .end local v5    # "profileHandle":I
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 951
    :cond_3f
    return-void

    .line 937
    .end local v1    # "changed":Z
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method private setUpHardTimeout(IZ)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "overrideHardTimeout"    # Z

    .line 448
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SCHEDULE_EXACT_ALARM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    .line 453
    .local v0, "alarm":Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->isQueued()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz p2, :cond_52

    .line 455
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    .line 456
    .local v1, "when":J
    if-nez v0, :cond_30

    .line 457
    new-instance v3, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    invoke-direct {v3, p0, p1}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    move-object v0, v3

    .line 458
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_37

    .line 459
    :cond_30
    if-eqz p2, :cond_37

    .line 460
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 462
    :cond_37
    :goto_37
    sget-boolean v3, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v3, :cond_42

    const-string v3, "TrustManagerService"

    const-string v4, "\tSetting up trustable hard timeout alarm"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_42
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->setQueued(Z)V

    .line 464
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    iget-object v11, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const-string v9, "TrustManagerService.trustTimeoutForUser"

    move-wide v7, v1

    move-object v10, v0

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 468
    .end local v1    # "when":J
    :cond_52
    return-void
.end method

.method private setUpIdleTimeout(IZ)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "overrideIdleTimeout"    # Z

    .line 424
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x1b77400

    add-long/2addr v0, v2

    .line 425
    .local v0, "when":J
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    .line 426
    .local v2, "alarm":Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SCHEDULE_EXACT_ALARM"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v3, "TrustManagerService"

    if-eqz v2, :cond_34

    .line 430
    if-nez p2, :cond_2e

    invoke-virtual {v2}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->isQueued()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 431
    sget-boolean v4, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v4, :cond_2d

    const-string v4, "Found existing trustable timeout alarm. Skipping."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_2d
    return-void

    .line 434
    :cond_2e
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_3f

    .line 436
    :cond_34
    new-instance v4, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    invoke-direct {v4, p0, p1}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    move-object v2, v4

    .line 437
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    :goto_3f
    sget-boolean v4, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v4, :cond_48

    const-string v4, "\tSetting up trustable idle timeout alarm"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_48
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->setQueued(Z)V

    .line 442
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-object v10, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const-string v8, "TrustManagerService.trustTimeoutForUser"

    move-wide v6, v0

    move-object v9, v2

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 445
    return-void
.end method

.method private updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "flags"    # I
    .param p3, "isFromUnlock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/service/trust/GrantTrustResult;",
            ">;)V"
        }
    .end annotation

    .line 522
    .local p4, "resultCallback":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/trust/GrantTrustResult;>;"
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->ENABLE_ACTIVE_UNLOCK_FLAG:Z

    if-eqz v0, :cond_8

    .line 523
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/trust/TrustManagerService;->updateTrustWithRenewableUnlock(IIZLcom/android/internal/infra/AndroidFuture;)V

    goto :goto_b

    .line 525
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/trust/TrustManagerService;->updateTrustWithNonrenewableTrust(IIZ)V

    .line 527
    :goto_b
    return-void
.end method

.method private updateTrustAll()V
    .registers 6

    .line 496
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 497
    .local v0, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 498
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 499
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_a

    .line 500
    :cond_1d
    return-void
.end method

.method private updateTrustUsuallyManaged(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "managed"    # Z

    .line 652
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 653
    :try_start_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 654
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1d

    .line 657
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 658
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    .line 659
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    .line 658
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 661
    return-void

    .line 654
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private updateTrustWithNonrenewableTrust(IIZ)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "flags"    # I
    .param p3, "isFromUnlock"    # Z

    .line 530
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v0

    .line 531
    .local v0, "managed":Z
    invoke-direct {p0, v0, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustManagedChanged(ZI)V

    .line 532
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 533
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result v1

    if-eq v1, v0, :cond_18

    .line 534
    invoke-direct {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrustUsuallyManaged(IZ)V

    .line 537
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v1

    .line 538
    .local v1, "trusted":Z
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 539
    .local v2, "wm":Landroid/view/IWindowManager;
    const/4 v3, 0x1

    .line 541
    .local v3, "showingKeyguard":Z
    :try_start_21
    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v4
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_25} :catch_27

    move v3, v4

    .line 543
    goto :goto_28

    .line 542
    :catch_27
    move-exception v4

    .line 546
    :goto_28
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    monitor-enter v4

    .line 547
    :try_start_2b
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService;->mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->getTrustAgentsNonrenewableTrust()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_98

    .line 551
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eq v5, v1, :cond_3f

    move v5, v6

    goto :goto_40

    :cond_3f
    move v5, v7

    .line 552
    .local v5, "changed":Z
    :goto_40
    if-eqz v1, :cond_4e

    if-eqz v3, :cond_48

    if-nez p3, :cond_48

    if-nez v5, :cond_4e

    :cond_48
    iget v8, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne p1, v8, :cond_4e

    move v8, v6

    goto :goto_4f

    :cond_4e
    move v8, v7

    :goto_4f
    move v1, v8

    .line 555
    sget-boolean v8, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v8, :cond_98

    .line 556
    const-string v8, "TrustManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Extend unlock setting trusted as "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " && "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v3, :cond_73

    move v10, v6

    goto :goto_74

    :cond_73
    move v10, v7

    .line 557
    :goto_74
    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " && "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne p1, v10, :cond_88

    move v10, v6

    goto :goto_89

    :cond_88
    move v10, v7

    .line 558
    :goto_89
    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 556
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .end local v5    # "changed":Z
    :cond_98
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eq v5, v1, :cond_a1

    goto :goto_a2

    :cond_a1
    move v6, v7

    :goto_a2
    move v5, v6

    .line 562
    .restart local v5    # "changed":Z
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 563
    monitor-exit v4
    :try_end_a9
    .catchall {:try_start_2b .. :try_end_a9} :catchall_bf

    .line 564
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->getTrustGrantedMessages(I)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, p1, p2, v4}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustChanged(ZIILjava/util/List;)V

    .line 565
    if-eqz v5, :cond_be

    .line 566
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    .line 567
    if-nez v1, :cond_bb

    .line 568
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->maybeLockScreen(I)V

    goto :goto_be

    .line 570
    :cond_bb
    invoke-direct {p0, v7, v7}, Lcom/android/server/trust/TrustManagerService;->scheduleTrustTimeout(ZZ)V

    .line 573
    :cond_be
    :goto_be
    return-void

    .line 563
    .end local v5    # "changed":Z
    :catchall_bf
    move-exception v5

    :try_start_c0
    monitor-exit v4
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw v5
.end method

.method private updateTrustWithRenewableUnlock(IIZLcom/android/internal/infra/AndroidFuture;)V
    .registers 23
    .param p1, "userId"    # I
    .param p2, "flags"    # I
    .param p3, "isFromUnlock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/service/trust/GrantTrustResult;",
            ">;)V"
        }
    .end annotation

    .line 580
    .local p4, "resultCallback":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/trust/GrantTrustResult;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    invoke-direct/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v5

    .line 581
    .local v5, "managed":Z
    invoke-direct {v1, v5, v2}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustManagedChanged(ZI)V

    .line 582
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, v2}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 583
    invoke-direct/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result v0

    if-eq v0, v5, :cond_20

    .line 584
    invoke-direct {v1, v2, v5}, Lcom/android/server/trust/TrustManagerService;->updateTrustUsuallyManaged(IZ)V

    .line 587
    :cond_20
    invoke-direct/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v6

    .line 588
    .local v6, "trustedByAtLeastOneAgent":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustable(I)Z

    move-result v7

    .line 593
    .local v7, "trustableByAtLeastOneAgent":Z
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v8

    .line 594
    .local v8, "wm":Landroid/view/IWindowManager;
    const/4 v9, 0x0

    .line 596
    .local v9, "alreadyUnlocked":Z
    const/4 v10, 0x1

    :try_start_2e
    invoke-interface {v8}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v0
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_32} :catch_35

    xor-int/2addr v0, v10

    move v9, v0

    .line 598
    goto :goto_36

    .line 597
    :catch_35
    move-exception v0

    .line 600
    :goto_36
    iget-object v11, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    monitor-enter v11

    .line 601
    :try_start_39
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v12, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v0, v12, :cond_45

    move v0, v10

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    .line 602
    .local v0, "wasTrusted":Z
    :goto_46
    iget-object v12, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    sget-object v14, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v12, v14, :cond_52

    move v12, v10

    goto :goto_53

    :cond_52
    const/4 v12, 0x0

    .line 603
    .local v12, "wasTrustable":Z
    :goto_53
    if-eqz v12, :cond_5b

    and-int/lit8 v14, v3, 0x4

    if-eqz v14, :cond_5b

    move v14, v10

    goto :goto_5c

    :cond_5b
    const/4 v14, 0x0

    .line 605
    .local v14, "renewingTrust":Z
    :goto_5c
    if-nez v9, :cond_65

    if-nez p3, :cond_65

    if-eqz v14, :cond_63

    goto :goto_65

    :cond_63
    const/4 v15, 0x0

    goto :goto_66

    :cond_65
    :goto_65
    move v15, v10

    .line 606
    .local v15, "canMoveToTrusted":Z
    :goto_66
    iget v13, v1, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I
    :try_end_68
    .catchall {:try_start_39 .. :try_end_68} :catchall_105

    if-ne v2, v13, :cond_6c

    move v13, v10

    goto :goto_6d

    :cond_6c
    const/4 v13, 0x0

    .line 608
    .local v13, "upgradingTrustForCurrentUser":Z
    :goto_6d
    if-eqz v6, :cond_78

    if-eqz v0, :cond_78

    .line 610
    :try_start_71
    monitor-exit v11

    return-void

    .line 622
    .end local v0    # "wasTrusted":Z
    .end local v12    # "wasTrustable":Z
    .end local v13    # "upgradingTrustForCurrentUser":Z
    .end local v14    # "renewingTrust":Z
    .end local v15    # "canMoveToTrusted":Z
    :catchall_73
    move-exception v0

    move/from16 v17, v5

    goto/16 :goto_108

    .line 611
    .restart local v0    # "wasTrusted":Z
    .restart local v12    # "wasTrustable":Z
    .restart local v13    # "upgradingTrustForCurrentUser":Z
    .restart local v14    # "renewingTrust":Z
    .restart local v15    # "canMoveToTrusted":Z
    :cond_78
    if-eqz v6, :cond_83

    if-eqz v15, :cond_83

    if-eqz v13, :cond_83

    .line 613
    sget-object v17, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    move-object/from16 v10, v17

    .local v17, "pendingTrustState":Lcom/android/server/trust/TrustManagerService$TrustState;
    goto :goto_94

    .line 614
    .end local v17    # "pendingTrustState":Lcom/android/server/trust/TrustManagerService$TrustState;
    :cond_83
    if-eqz v7, :cond_90

    if-nez v0, :cond_89

    if-eqz v12, :cond_90

    :cond_89
    if-eqz v13, :cond_90

    .line 616
    sget-object v17, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;
    :try_end_8d
    .catchall {:try_start_71 .. :try_end_8d} :catchall_73

    move-object/from16 v10, v17

    .restart local v17    # "pendingTrustState":Lcom/android/server/trust/TrustManagerService$TrustState;
    goto :goto_94

    .line 618
    .end local v17    # "pendingTrustState":Lcom/android/server/trust/TrustManagerService$TrustState;
    :cond_90
    :try_start_90
    sget-object v17, Lcom/android/server/trust/TrustManagerService$TrustState;->UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;
    :try_end_92
    .catchall {:try_start_90 .. :try_end_92} :catchall_105

    move-object/from16 v10, v17

    .line 621
    .local v10, "pendingTrustState":Lcom/android/server/trust/TrustManagerService$TrustState;
    :goto_94
    move/from16 v17, v5

    .end local v5    # "managed":Z
    .local v17, "managed":Z
    :try_start_96
    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 622
    .end local v13    # "upgradingTrustForCurrentUser":Z
    .end local v14    # "renewingTrust":Z
    .end local v15    # "canMoveToTrusted":Z
    monitor-exit v11
    :try_end_9c
    .catchall {:try_start_96 .. :try_end_9c} :catchall_10a

    .line 623
    sget-boolean v5, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v5, :cond_b9

    const-string v11, "TrustManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "pendingTrustState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_b9
    sget-object v11, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v10, v11, :cond_bf

    const/4 v11, 0x1

    goto :goto_c0

    :cond_bf
    const/4 v11, 0x0

    .line 626
    .local v11, "isNowTrusted":Z
    :goto_c0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->getTrustGrantedMessages(I)Ljava/util/List;

    move-result-object v13

    invoke-direct {v1, v11, v2, v3, v13}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustChanged(ZIILjava/util/List;)V

    .line 627
    if-eq v11, v0, :cond_dc

    .line 628
    invoke-direct/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    .line 629
    if-nez v11, :cond_d2

    .line 630
    invoke-direct/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->maybeLockScreen(I)V

    goto :goto_dc

    .line 632
    :cond_d2
    and-int/lit8 v13, v3, 0x4

    if-eqz v13, :cond_d8

    const/4 v13, 0x1

    goto :goto_d9

    :cond_d8
    const/4 v13, 0x0

    .line 636
    .local v13, "isTrustableTimeout":Z
    :goto_d9
    invoke-direct {v1, v13, v13}, Lcom/android/server/trust/TrustManagerService;->scheduleTrustTimeout(ZZ)V

    .line 641
    .end local v13    # "isTrustableTimeout":Z
    :cond_dc
    :goto_dc
    if-nez v9, :cond_e0

    const/4 v13, 0x1

    goto :goto_e1

    :cond_e0
    const/4 v13, 0x0

    .line 642
    .local v13, "wasLocked":Z
    :goto_e1
    if-eqz v13, :cond_ea

    sget-object v14, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v10, v14, :cond_ea

    const/16 v16, 0x1

    goto :goto_ec

    :cond_ea
    const/16 v16, 0x0

    :goto_ec
    move/from16 v14, v16

    .line 643
    .local v14, "shouldSendCallback":Z
    if-eqz v14, :cond_104

    .line 644
    if-eqz v4, :cond_104

    .line 645
    if-eqz v5, :cond_fb

    const-string v5, "TrustManagerService"

    const-string v15, "calling back with UNLOCKED_BY_GRANT"

    invoke-static {v5, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_fb
    new-instance v5, Landroid/service/trust/GrantTrustResult;

    const/4 v15, 0x1

    invoke-direct {v5, v15}, Landroid/service/trust/GrantTrustResult;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 649
    :cond_104
    return-void

    .line 622
    .end local v0    # "wasTrusted":Z
    .end local v10    # "pendingTrustState":Lcom/android/server/trust/TrustManagerService$TrustState;
    .end local v11    # "isNowTrusted":Z
    .end local v12    # "wasTrustable":Z
    .end local v13    # "wasLocked":Z
    .end local v14    # "shouldSendCallback":Z
    .end local v17    # "managed":Z
    .restart local v5    # "managed":Z
    :catchall_105
    move-exception v0

    move/from16 v17, v5

    .end local v5    # "managed":Z
    .restart local v17    # "managed":Z
    :goto_108
    :try_start_108
    monitor-exit v11
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_10a

    throw v0

    :catchall_10a
    move-exception v0

    goto :goto_108
.end method


# virtual methods
.method public addEscrowToken([BI)J
    .registers 5
    .param p1, "token"    # [B
    .param p2, "userId"    # I

    .line 664
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v1, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v0

    return-wide v0
.end method

.method isDeviceLockedInner(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 856
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 857
    :try_start_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 858
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public isEscrowTokenActive(JI)Z
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 675
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isEscrowTokenActive(JI)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$addEscrowToken$0$com-android-server-trust-TrustManagerService(JI)V
    .registers 4
    .param p1, "handle"    # J
    .param p3, "userid"    # I

    .line 666
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/trust/TrustManagerService;->dispatchEscrowTokenActivatedLocked(JI)V

    .line 667
    return-void
.end method

.method public lockUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 687
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 690
    :try_start_6
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    .line 693
    goto :goto_17

    .line 691
    :catch_f
    move-exception v0

    .line 692
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TrustManagerService"

    const-string v2, "Error locking screen when called from trust agent"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"    # I

    .line 252
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 254
    return-void

    .line 256
    :cond_7
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2a

    .line 257
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 258
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;->register(Landroid/content/Context;)V

    .line 259
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    goto :goto_42

    .line 260
    :cond_2a
    const/16 v0, 0x258

    if-ne p1, v0, :cond_38

    .line 261
    iput-boolean v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    .line 262
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 263
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    goto :goto_42

    .line 264
    :cond_38
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_42

    .line 265
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 267
    :cond_42
    :goto_42
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    const-string/jumbo v1, "trust"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/trust/TrustManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 248
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 7
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1373
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1374
    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 7
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1378
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1379
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 7
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1393
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1394
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 8
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 1383
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1384
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 7
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1388
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1389
    return-void
.end method

.method refreshAgentList(I)V
    .registers 27
    .param p1, "userIdOrAll"    # I

    .line 701
    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v3, "TrustManagerService"

    if-eqz v2, :cond_27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshAgentList("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_27
    iget-boolean v2, v0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    if-nez v2, :cond_2c

    .line 703
    return-void

    .line 705
    :cond_2c
    const/4 v2, -0x1

    if-eq v1, v2, :cond_56

    if-gez v1, :cond_56

    .line 706
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refreshAgentList(userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): Invalid user handle, must be USER_ALL or a specific user."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "here"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    const/4 v1, -0x1

    .line 710
    .end local p1    # "userIdOrAll":I
    .local v1, "userIdOrAll":I
    :cond_56
    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 713
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-ne v1, v2, :cond_65

    .line 714
    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v5

    .local v5, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_73

    .line 716
    .end local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_65
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .restart local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    :goto_73
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 721
    .local v6, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 722
    .local v7, "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/trust/TrustManagerService$AgentInfo;>;"
    iget-object v8, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 724
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_83
    :goto_83
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3b1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 725
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v9, :cond_3a4

    iget-boolean v11, v9, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v11, :cond_3a4

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_3a4

    iget-boolean v11, v9, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v11, :cond_a0

    .line 726
    goto :goto_83

    .line 727
    :cond_a0
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v11

    const-string/jumbo v12, "refreshAgentList: skipping user "

    if-nez v11, :cond_ca

    .line 728
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_83

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": switchToByUser=false"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 732
    :cond_ca
    iget-object v11, v0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget v13, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v13}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v11

    if-nez v11, :cond_f5

    .line 733
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_83

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": user not started"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 737
    :cond_f5
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v11

    if-nez v11, :cond_11f

    .line 738
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_83

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": no secure credential"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_83

    .line 743
    :cond_11f
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v11

    .line 744
    .local v11, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget v13, v9, Landroid/content/pm/UserInfo;->id:I

    const/4 v14, 0x0

    invoke-virtual {v11, v14, v13}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v13

    .line 745
    .local v13, "disabledFeatures":I
    and-int/lit8 v15, v13, 0x10

    if-eqz v15, :cond_130

    const/4 v15, 0x1

    goto :goto_131

    :cond_130
    const/4 v15, 0x0

    .line 748
    .local v15, "disableTrustAgents":Z
    :goto_131
    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v2

    .line 749
    .local v2, "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_160

    .line 750
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_15d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ": no agents enabled by user"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15d
    const/4 v2, -0x1

    goto/16 :goto_83

    .line 754
    :cond_160
    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v0, v4, v10}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v10

    .line 755
    .local v10, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_16a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_393

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 756
    .local v14, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v18, v5

    .end local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v18, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {v0, v14}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v5

    .line 758
    .local v5, "name":Landroid/content/ComponentName;
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 v20, v2

    .end local v2    # "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v20, "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const-string v2, " u"

    move-object/from16 v21, v6

    .end local v6    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .local v21, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string/jumbo v6, "refreshAgentList: skipping "

    if-nez v19, :cond_1ca

    .line 759
    sget-boolean v19, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v19, :cond_1c0

    move-object/from16 v19, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 760
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ": not enabled by user"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 759
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, v18

    move-object/from16 v8, v19

    goto :goto_1c4

    :cond_1c0
    move-object/from16 v19, v8

    move-object/from16 v5, v18

    :goto_1c4
    move-object/from16 v2, v20

    move-object/from16 v6, v21

    const/4 v14, 0x0

    goto :goto_16a

    .line 764
    :cond_1ca
    move-object/from16 v19, v8

    if-eqz v15, :cond_218

    .line 765
    iget v8, v9, Landroid/content/pm/UserInfo;->id:I

    .line 766
    move-object/from16 v22, v10

    const/4 v10, 0x0

    .end local v10    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v22, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v11, v10, v5, v8}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v8

    .line 768
    .local v8, "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    if-eqz v8, :cond_1df

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_21a

    .line 769
    :cond_1df
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_20b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 770
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ": not allowed by DPM"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 769
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20b
    move-object/from16 v5, v18

    move-object/from16 v8, v19

    move-object/from16 v2, v20

    move-object/from16 v6, v21

    move-object/from16 v10, v22

    const/4 v14, 0x0

    goto/16 :goto_16a

    .line 764
    .end local v8    # "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    .end local v22    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_218
    move-object/from16 v22, v10

    .line 775
    .end local v10    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v22    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_21a
    new-instance v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/android/server/trust/TrustManagerService$AgentInfo;-><init>(Lcom/android/server/trust/TrustManagerService$AgentInfo-IA;)V

    .line 776
    .local v2, "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iput-object v5, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    .line 777
    iget v8, v9, Landroid/content/pm/UserInfo;->id:I

    iput v8, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 778
    iget-object v8, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_241

    .line 779
    invoke-virtual {v14, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->label:Ljava/lang/CharSequence;

    .line 780
    invoke-virtual {v14, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 781
    invoke-direct {v0, v4, v14}, Lcom/android/server/trust/TrustManagerService;->getSettingsAttrs(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    move-result-object v8

    iput-object v8, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    goto :goto_250

    .line 783
    :cond_241
    iget-object v8, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 784
    .local v8, "index":I
    iget-object v10, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    move-object v2, v10

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 787
    .end local v8    # "index":I
    :goto_250
    const/4 v8, 0x0

    .line 788
    .local v8, "directUnlock":Z
    iget-object v10, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    if-eqz v10, :cond_265

    .line 789
    iget-object v10, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v10, v10, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v10, :cond_263

    iget-object v10, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    iget-boolean v10, v10, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;->canUnlockProfile:Z

    if-eqz v10, :cond_263

    const/4 v10, 0x1

    goto :goto_264

    :cond_263
    const/4 v10, 0x0

    :goto_264
    move v8, v10

    .line 793
    :cond_265
    if-eqz v8, :cond_295

    .line 794
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_295

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshAgentList: trustagent "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, "of user "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "can unlock user profile."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_295
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v10}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v6

    if-nez v6, :cond_2d8

    if-nez v8, :cond_2d8

    .line 800
    sget-boolean v6, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v6, :cond_2cb

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "\'s trust agent "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ": FBE still locked and  the agent cannot unlock user profile."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2cb
    move-object/from16 v5, v18

    move-object/from16 v8, v19

    move-object/from16 v2, v20

    move-object/from16 v6, v21

    move-object/from16 v10, v22

    const/4 v14, 0x0

    goto/16 :goto_16a

    .line 806
    :cond_2d8
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v10}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v6

    if-nez v6, :cond_350

    .line 807
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v10}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v6

    .line 808
    .local v6, "flag":I
    const/16 v10, 0x8

    if-eq v6, v10, :cond_34b

    .line 809
    const/4 v10, 0x1

    if-ne v6, v10, :cond_2f7

    if-nez v8, :cond_2f4

    goto :goto_2f7

    :cond_2f4
    move-object/from16 v23, v4

    goto :goto_352

    .line 811
    :cond_2f7
    :goto_2f7
    sget-boolean v16, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v16, :cond_33a

    .line 812
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v23, v4

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .local v23, "pm":Landroid/content/pm/PackageManager;
    iget v4, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ": prevented by StrongAuthTracker = 0x"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    move/from16 v24, v6

    .end local v6    # "flag":I
    .local v24, "flag":I
    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    .line 814
    invoke-virtual {v10, v6}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 812
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, v18

    move-object/from16 v8, v19

    move-object/from16 v2, v20

    move-object/from16 v6, v21

    move-object/from16 v10, v22

    move-object/from16 v4, v23

    const/4 v14, 0x0

    goto/16 :goto_16a

    .line 811
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "flag":I
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "flag":I
    :cond_33a
    move-object/from16 v23, v4

    move/from16 v24, v6

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "flag":I
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "flag":I
    move-object/from16 v5, v18

    move-object/from16 v8, v19

    move-object/from16 v2, v20

    move-object/from16 v6, v21

    move-object/from16 v10, v22

    const/4 v14, 0x0

    goto/16 :goto_16a

    .line 808
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "flag":I
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "flag":I
    :cond_34b
    move-object/from16 v23, v4

    move/from16 v24, v6

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "flag":I
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "flag":I
    goto :goto_352

    .line 806
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "flag":I
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_350
    move-object/from16 v23, v4

    .line 821
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    :goto_352
    iget-object v4, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    if-nez v4, :cond_36f

    .line 822
    new-instance v4, Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 823
    invoke-virtual {v10, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    move-object/from16 v24, v3

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v4, v6, v0, v10, v3}, Lcom/android/server/trust/TrustAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iput-object v4, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    goto :goto_371

    .line 821
    :cond_36f
    move-object/from16 v24, v3

    .line 826
    :goto_371
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37f

    .line 827
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_382

    .line 829
    :cond_37f
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 831
    .end local v2    # "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .end local v5    # "name":Landroid/content/ComponentName;
    .end local v8    # "directUnlock":Z
    .end local v14    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_382
    move-object/from16 v5, v18

    move-object/from16 v8, v19

    move-object/from16 v2, v20

    move-object/from16 v6, v21

    move-object/from16 v10, v22

    move-object/from16 v4, v23

    move-object/from16 v3, v24

    const/4 v14, 0x0

    goto/16 :goto_16a

    .line 755
    .end local v18    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v20    # "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v21    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v22    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .local v2, "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .local v5, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v6, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v10    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_393
    move-object/from16 v20, v2

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    move-object/from16 v18, v5

    move-object/from16 v21, v6

    move-object/from16 v19, v8

    move-object/from16 v22, v10

    .line 832
    .end local v2    # "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v10    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v13    # "disabledFeatures":I
    .end local v15    # "disableTrustAgents":Z
    .restart local v18    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v21    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    const/4 v2, -0x1

    goto/16 :goto_83

    .line 725
    .end local v18    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v21    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v6    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v9    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3a4
    move-object/from16 v24, v3

    move-object/from16 v23, v4

    move-object/from16 v18, v5

    move-object/from16 v21, v6

    move-object/from16 v19, v8

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v18    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v21    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    const/4 v2, -0x1

    goto/16 :goto_83

    .line 834
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v18    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v21    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v6    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_3b1
    move-object/from16 v23, v4

    move-object/from16 v18, v5

    move-object/from16 v21, v6

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v18    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v21    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 835
    .local v2, "trustMayHaveChanged":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3b9
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_3e2

    .line 836
    invoke-virtual {v7, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 837
    .local v4, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    const/4 v5, -0x1

    if-eq v1, v5, :cond_3cc

    iget v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v1, v5, :cond_3df

    .line 838
    :cond_3cc
    iget-object v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v5

    if-eqz v5, :cond_3d5

    .line 839
    const/4 v2, 0x1

    .line 841
    :cond_3d5
    iget-object v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 842
    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 835
    .end local v4    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_3df
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b9

    .line 846
    .end local v3    # "i":I
    :cond_3e2
    if-eqz v2, :cond_3ef

    .line 847
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3eb

    .line 848
    invoke-direct/range {p0 .. p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    goto :goto_3ef

    .line 850
    :cond_3eb
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 853
    :cond_3ef
    :goto_3ef
    return-void
.end method

.method public removeEscrowToken(JI)Z
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 671
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    move-result v0

    return v0
.end method

.method public resetAgent(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1008
    const/4 v0, 0x0

    .line 1009
    .local v0, "trustMayHaveChanged":Z
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_53

    .line 1010
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1011
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne p2, v3, :cond_50

    .line 1012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting agent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TrustManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1014
    const/4 v0, 0x1

    .line 1016
    :cond_46
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 1017
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 1009
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_50
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1020
    .end local v1    # "i":I
    :cond_53
    if-eqz v0, :cond_59

    .line 1021
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 1023
    :cond_59
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1024
    return-void
.end method

.method showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 697
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustError(Ljava/lang/CharSequence;)V

    .line 698
    return-void
.end method

.method public unlockUserWithToken(J[BI)V
    .registers 6
    .param p1, "handle"    # J
    .param p3, "token"    # [B
    .param p4, "userId"    # I

    .line 679
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->unlockUserWithToken(J[BI)Z

    .line 680
    return-void
.end method

.method updateDevicePolicyFeatures()V
    .registers 5

    .line 976
    const/4 v0, 0x0

    .line 977
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 978
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 979
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 980
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()Z

    .line 981
    const/4 v0, 0x1

    .line 977
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 984
    .end local v1    # "i":I
    :cond_23
    if-eqz v0, :cond_2a

    .line 985
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustArchive;->logDevicePolicyChanged()V

    .line 987
    :cond_2a
    return-void
.end method

.method public updateTrust(II)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IILcom/android/internal/infra/AndroidFuture;)V

    .line 507
    return-void
.end method

.method public updateTrust(IILcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/service/trust/GrantTrustResult;",
            ">;)V"
        }
    .end annotation

    .line 514
    .local p3, "resultCallback":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/trust/GrantTrustResult;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V

    .line 515
    return-void
.end method
