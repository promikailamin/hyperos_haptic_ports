.class public Lcom/android/server/trust/TrustManagerService;
.super Lcom/android/server/SystemService;
.source "TrustManagerService.java"


# static fields
.field public static final DEBUG:Z

.field public static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field public final mActiveAgents:Landroid/util/ArraySet;

.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAlarmLock:Ljava/lang/Object;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public final mArchive:Lcom/android/server/trust/TrustArchive;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:I

.field public final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

.field public final mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

.field public mFaceManager:Landroid/hardware/face/FaceManager;

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mHandler:Landroid/os/Handler;

.field public final mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

.field public volatile mIsInSignificantPlace:Z

.field public final mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

.field public final mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockSettings:Lcom/android/server/locksettings/LockSettingsInternal;

.field public final mLockSettingsStateListener:Lcom/android/server/locksettings/LockSettingsStateListener;

.field final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

.field public final mService:Landroid/os/IBinder;

.field public mSignificantPlaceServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

.field public final mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

.field public mTrustAgentsCanRun:Z

.field public final mTrustListeners:Ljava/util/ArrayList;

.field public final mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

.field public final mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

.field public final mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

.field public final mUserManager:Landroid/os/UserManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mUserTrustState:Landroid/util/SparseArray;

.field public final mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;


# direct methods
.method public static synthetic $r8$lambda$2IeA19oNqJkAHcn-oH5HfpKVJk8(Lcom/android/server/trust/TrustManagerService;JI)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/trust/TrustManagerService;->lambda$addEscrowToken$0(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$bWUIXovEmIWITBIyHMbcGejjBkM()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$x4xqpUlqmEqX100QYUq3PQViTyY(Lcom/android/server/trust/TrustManagerService;IZI)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/trust/TrustManagerService;->lambda$notifyDeviceLockedListenersForUser$2(IZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveAgents(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAlarmLock(Lcom/android/server/trust/TrustManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAlarmManager(Lcom/android/server/trust/TrustManagerService;)Landroid/app/AlarmManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceLockedStateListeners(Lcom/android/server/trust/TrustManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIdleTrustableTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsInSignificantPlace(Lcom/android/server/trust/TrustManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/trust/TrustManagerService;->mIsInSignificantPlace:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSignificantPlaceServiceWatcher(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/servicewatcher/ServiceWatcher;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mSignificantPlaceServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStrongAuthTracker(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrustAgentsCanRun(Lcom/android/server/trust/TrustManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrustTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrustUsuallyManagedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrustableTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserTrustState(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsersUnlockedByBiometric(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentUser(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsInSignificantPlace(Lcom/android/server/trust/TrustManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/trust/TrustManagerService;->mIsInSignificantPlace:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddListener(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->addListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maggregateIsActiveUnlockRunning(Lcom/android/server/trust/TrustManagerService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsActiveUnlockRunning(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$maggregateIsTrustManaged(Lcom/android/server/trust/TrustManagerService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcancelBothTrustableAlarms(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->cancelBothTrustableAlarms(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckNewAgentsForUser(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->checkNewAgentsForUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchOnEnabledTrustAgentsChanged(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnEnabledTrustAgentsChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchTrustableDowngrade(Lcom/android/server/trust/TrustManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->dispatchTrustableDowngrade()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchUnlockAttempt(Lcom/android/server/trust/TrustManagerService;ZI)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockAttempt(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchUnlockLockout(Lcom/android/server/trust/TrustManagerService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockLockout(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchUserMayRequestUnlock(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchUserMayRequestUnlock(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchUserRequestedUnlock(Lcom/android/server/trust/TrustManagerService;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUserRequestedUnlock(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetUserTrustStateInner(Lcom/android/server/trust/TrustManagerService;I)Lcom/android/server/trust/TrustManagerService$TrustState;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->getUserTrustStateInner(I)Lcom/android/server/trust/TrustManagerService$TrustState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleScheduleTrustTimeout(Lcom/android/server/trust/TrustManagerService;ZLcom/android/server/trust/TrustManagerService$TimeoutType;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->handleScheduleTrustTimeout(ZLcom/android/server/trust/TrustManagerService$TimeoutType;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misAutomotive(Lcom/android/server/trust/TrustManagerService;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->isAutomotive()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misTrustUsuallyManagedInternal(Lcom/android/server/trust/TrustManagerService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeEnableFactoryTrustAgents(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceLockedListenersForUser(Lcom/android/server/trust/TrustManagerService;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->notifyDeviceLockedListenersForUser(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyKeystoreOfDeviceLockState(Lcom/android/server/trust/TrustManagerService;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->notifyKeystoreOfDeviceLockState(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrefreshTrustableTimers(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshTrustableTimers(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveAgentsOfPackage(Lcom/android/server/trust/TrustManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeAgentsOfPackage(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveListener(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresolveProfileParent(Lcom/android/server/trust/TrustManagerService;I)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateTrust(Lcom/android/server/trust/TrustManagerService;IIZLcom/android/internal/infra/AndroidFuture;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 128
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    const-string v0, "TrustManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    sput-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 317
    new-instance v0, Lcom/android/server/trust/TrustManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/trust/TrustManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;-><init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService$Injector;)V
    .registers 5

    .line 321
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 162
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 163
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Lcom/android/server/trust/TrustManagerService$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;-><init>(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/trust/TrustManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    .line 169
    new-instance v0, Lcom/android/server/trust/TrustArchive;

    invoke-direct {v0}, Lcom/android/server/trust/TrustArchive;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    .line 203
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    .line 239
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 242
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    .line 246
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    .line 253
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 255
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 257
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 260
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    .line 264
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmLock:Ljava/lang/Object;

    .line 269
    new-instance v0, Lcom/android/server/trust/TrustManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$1;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockSettingsStateListener:Lcom/android/server/locksettings/LockSettingsStateListener;

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    .line 283
    iput v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    .line 286
    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mIsInSignificantPlace:Z

    .line 1798
    new-instance v0, Lcom/android/server/trust/TrustManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$3;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    .line 2271
    new-instance v0, Lcom/android/server/trust/TrustManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$5;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 322
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 323
    invoke-virtual {p2}, Lcom/android/server/trust/TrustManagerService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    .line 324
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    .line 325
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 326
    const-class v0, Lcom/android/server/locksettings/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsInternal;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockSettings:Lcom/android/server/locksettings/LockSettingsInternal;

    .line 327
    invoke-virtual {p2}, Lcom/android/server/trust/TrustManagerService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 328
    invoke-virtual {p2}, Lcom/android/server/trust/TrustManagerService$Injector;->getKeyStoreAuthorization()Landroid/security/KeyStoreAuthorization;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 329
    new-instance v0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {p2}, Lcom/android/server/trust/TrustManagerService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;-><init>(Lcom/android/server/trust/TrustManagerService;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    .line 330
    invoke-virtual {p2}, Lcom/android/server/trust/TrustManagerService$Injector;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public static getDefaultFactoryTrustAgent(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 2

    .line 1387
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x104027a

    .line 1388
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1389
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 1392
    :cond_13
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method private isAutomotive()Z
    .registers 2

    .line 396
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSystemTrustAgent(Landroid/content/pm/ResolveInfo;)Z
    .registers 2

    .line 1418
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    return v0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static isWeakOrConvenienceSensor(Landroid/hardware/biometrics/SensorProperties;)Z
    .registers 3

    .line 1765
    invoke-virtual {p0}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    .line 1766
    invoke-virtual {p0}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    move-result p0

    if-nez p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    return v1
.end method


# virtual methods
.method public addEscrowToken([BI)J
    .registers 5

    .line 747
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockSettings:Lcom/android/server/locksettings/LockSettingsInternal;

    new-instance v1, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/locksettings/LockSettingsInternal;->addEscrowToken([BILcom/android/server/locksettings/EscrowTokenStateChangeCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final addListener(Landroid/app/trust/ITrustListener;)V
    .registers 5

    const/4 v0, 0x0

    .line 1620
    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1621
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1c

    return-void

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1625
    :cond_1f
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->notifyListenerIsActiveUnlockRunningInitialState(Landroid/app/trust/ITrustListener;)V

    .line 1627
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    return-void
.end method

.method public final aggregateIsActiveUnlockRunning(I)Z
    .registers 6

    .line 1464
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1467
    :cond_a
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1468
    :try_start_d
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 1469
    sget-object v3, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-eq v2, v3, :cond_21

    sget-object v3, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-eq v2, v3, :cond_21

    .line 1470
    monitor-exit v0

    return v1

    :catchall_1f
    move-exception p0

    goto :goto_45

    .line 1472
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_1f

    move v0, v1

    .line 1473
    :goto_23
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_44

    .line 1474
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1475
    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_41

    .line 1476
    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isTrustableOrWaitingForDowngrade()Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 p0, 0x1

    return p0

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_44
    return v1

    .line 1472
    :goto_45
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_1f

    throw p0
.end method

.method public final aggregateIsTrustManaged(I)Z
    .registers 7

    .line 1519
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TrustManagerService"

    if-nez v0, :cond_1e

    .line 1520
    sget-boolean p0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz p0, :cond_1d

    .line 1524
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1521
    const-string/jumbo p1, "trust not managed due to trust not being allowed for userId=%s"

    invoke-static {v2, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    return v1

    :cond_1e
    move v0, v1

    .line 1528
    :goto_1f
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_52

    .line 1529
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1530
    iget v4, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v4, p1, :cond_4f

    .line 1531
    iget-object v3, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1532
    sget-boolean p0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz p0, :cond_4d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "trust managed for userId=%s"

    invoke-static {v2, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4d
    const/4 p0, 0x1

    return p0

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1537
    :cond_52
    sget-boolean p0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz p0, :cond_64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "trust not managed for userId=%s"

    invoke-static {v2, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_64
    return v1
.end method

.method public final aggregateIsTrustable(I)Z
    .registers 7

    .line 1444
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_13

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "aggregateIsTrustable(userId=%s)"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1445
    :cond_13
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2d

    if-eqz v0, :cond_2c

    .line 1447
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "not trustable because trust not allowed for userId=%s"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    return v3

    :cond_2d
    move v0, v3

    .line 1451
    :goto_2e
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_5d

    .line 1452
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1453
    iget v4, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v4, p1, :cond_5a

    .line 1454
    iget-object v4, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v4}, Lcom/android/server/trust/TrustAgentWrapper;->isTrustable()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 1455
    sget-boolean p0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz p0, :cond_58

    const-string/jumbo p0, "trustable by %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_58
    const/4 p0, 0x1

    return p0

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_5d
    return v3
.end method

.method public final aggregateIsTrusted(I)Z
    .registers 7

    .line 1424
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_13

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "aggregateIsTrusted(userId=%s)"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1425
    :cond_13
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2d

    if-eqz v0, :cond_2c

    .line 1427
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "not trusted because trust not allowed for userId=%s"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    return v3

    :cond_2d
    move v0, v3

    .line 1431
    :goto_2e
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_5d

    .line 1432
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1433
    iget v4, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v4, p1, :cond_5a

    .line 1434
    iget-object v4, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v4}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 1435
    sget-boolean p0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz p0, :cond_58

    const-string/jumbo p0, "trusted by %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_58
    const/4 p0, 0x1

    return p0

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_5d
    return v3
.end method

.method public final cancelBothTrustableAlarms(I)V
    .registers 5

    .line 441
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 442
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    .line 444
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 445
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 447
    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->isQueued()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 448
    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->setQueued(Z)V

    .line 449
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_21
    if-eqz p1, :cond_31

    .line 451
    invoke-virtual {p1}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->isQueued()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 452
    invoke-virtual {p1, v1}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->setQueued(Z)V

    .line 453
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_31
    return-void
.end method

.method public final checkNewAgents()V
    .registers 3

    .line 1306
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1307
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/trust/TrustManagerService;->checkNewAgentsForUser(I)V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method public final checkNewAgentsForUser(I)V
    .registers 9

    .line 1322
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "known_trust_agents_initialized"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_13

    .line 1324
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->initializeKnownAgents(I)V

    return-void

    .line 1328
    :cond_13
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKnownTrustAgents(I)Ljava/util/List;

    move-result-object v0

    .line 1329
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v1

    .line 1331
    new-instance v2, Landroid/util/ArraySet;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 1332
    new-instance v3, Landroid/util/ArraySet;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 1334
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1335
    invoke-virtual {p0, v4}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v5

    .line 1336
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    goto :goto_39

    .line 1339
    :cond_50
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1340
    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->isSystemTrustAgent(Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1341
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 1345
    :cond_5d
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_64

    return-void

    .line 1349
    :cond_64
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1350
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1351
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setKnownTrustAgents(Ljava/util/Collection;I)V

    .line 1354
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->getDefaultFactoryTrustAgent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_7a

    return-void

    .line 1356
    :cond_7a
    invoke-virtual {p0, v3, p1}, Lcom/android/server/trust/TrustManagerService;->enableNewAgents(Ljava/util/Collection;I)V

    return-void
.end method

.method public final createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 3

    .line 2170
    new-instance v0, Lcom/android/server/trust/TrustManagerService$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/trust/TrustManagerService$4;-><init>(Lcom/android/server/trust/TrustManagerService;Landroid/os/Looper;)V

    return-object v0
.end method

.method public final dispatchEscrowTokenActivatedLocked(JI)V
    .registers 7

    const/4 v0, 0x0

    .line 1152
    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1153
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1154
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p3, :cond_1a

    .line 1155
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/trust/TrustAgentWrapper;->onEscrowTokenActivated(JI)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method public final dispatchOnEnabledTrustAgentsChanged(I)V
    .registers 6

    .line 1661
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_20

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnabledTrustAgentsChanged("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, 0x0

    .line 1664
    :goto_21
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4b

    .line 1666
    :try_start_29
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/ITrustListener;

    invoke-interface {v2, p1}, Landroid/app/trust/ITrustListener;->onEnabledTrustAgentsChanged(I)V
    :try_end_34
    .catch Landroid/os/DeadObjectException; {:try_start_29 .. :try_end_34} :catch_3c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_34} :catch_35

    goto :goto_48

    :catch_35
    move-exception v2

    .line 1672
    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    .line 1668
    :catch_3c
    const-string v2, "Removing dead TrustListener."

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_4b
    return-void
.end method

.method public final dispatchOnTrustChanged(ZZIILjava/util/List;)V
    .registers 14

    .line 1641
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_3a

    .line 1642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustChanged("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1642
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    const/4 v0, 0x0

    if-nez p1, :cond_3f

    move v6, v0

    goto :goto_40

    :cond_3f
    move v6, p4

    :goto_40
    move p4, v0

    .line 1646
    :goto_41
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p4, v0, :cond_81

    .line 1648
    :try_start_49
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/trust/ITrustListener;
    :try_end_52
    .catch Landroid/os/DeadObjectException; {:try_start_49 .. :try_end_52} :catch_63
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_52} :catch_5d

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p5

    :try_start_56
    invoke-interface/range {v2 .. v7}, Landroid/app/trust/ITrustListener;->onTrustChanged(ZZIILjava/util/List;)V
    :try_end_59
    .catch Landroid/os/DeadObjectException; {:try_start_56 .. :try_end_59} :catch_6e
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_7a

    :catch_5a
    move-exception v0

    :goto_5b
    move-object p1, v0

    goto :goto_68

    :catch_5d
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p5

    goto :goto_5b

    :catch_63
    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p5

    goto :goto_6e

    .line 1655
    :goto_68
    const-string p2, "Exception while notifying TrustListener."

    invoke-static {v1, p2, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7a

    .line 1651
    :catch_6e
    :goto_6e
    const-string p1, "Removing dead TrustListener."

    invoke-static {v1, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p4, p4, -0x1

    :goto_7a
    add-int/lit8 p4, p4, 0x1

    move p1, v3

    move p2, v4

    move p3, v5

    move-object p5, v7

    goto :goto_41

    :cond_81
    return-void
.end method

.method public final dispatchOnTrustError(Ljava/lang/CharSequence;)V
    .registers 6

    .line 1695
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_20

    .line 1696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustError("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, 0x0

    .line 1698
    :goto_21
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4b

    .line 1700
    :try_start_29
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/ITrustListener;

    invoke-interface {v2, p1}, Landroid/app/trust/ITrustListener;->onTrustError(Ljava/lang/CharSequence;)V
    :try_end_34
    .catch Landroid/os/DeadObjectException; {:try_start_29 .. :try_end_34} :catch_3c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_34} :catch_35

    goto :goto_48

    :catch_35
    move-exception v2

    .line 1706
    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    .line 1702
    :catch_3c
    const-string v2, "Removing dead TrustListener."

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_4b
    return-void
.end method

.method public final dispatchOnTrustManagedChanged(ZI)V
    .registers 7

    .line 1678
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_28

    .line 1679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustManagedChanged("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 v0, 0x0

    .line 1681
    :goto_29
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_53

    .line 1683
    :try_start_31
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/ITrustListener;

    invoke-interface {v2, p1, p2}, Landroid/app/trust/ITrustListener;->onTrustManagedChanged(ZI)V
    :try_end_3c
    .catch Landroid/os/DeadObjectException; {:try_start_31 .. :try_end_3c} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3c} :catch_3d

    goto :goto_50

    :catch_3d
    move-exception v2

    .line 1689
    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    .line 1685
    :catch_44
    const-string v2, "Removing dead TrustListener."

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :goto_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_53
    return-void
.end method

.method public final dispatchTrustableDowngrade()V
    .registers 5

    const/4 v0, 0x0

    .line 1492
    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1493
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1494
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget v3, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v2, v3, :cond_1c

    .line 1495
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->downgradeToTrustable()V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

.method public final dispatchUnlockAttempt(ZI)V
    .registers 7

    .line 1542
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_17

    .line 1543
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TrustManagerService"

    const-string v2, "dispatchUnlockAttempt(successful=%s, userId=%s)"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    const/4 v0, 0x0

    if-eqz p1, :cond_33

    .line 1546
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v1, p2}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->allowTrustFromUnlock(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1548
    invoke-virtual {p0, p2, v0, v2, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V

    .line 1549
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1552
    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_4f

    .line 1553
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1554
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p2, :cond_4c

    .line 1555
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockAttempt(Z)V

    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_4f
    return-void
.end method

.method public final dispatchUnlockLockout(II)V
    .registers 6

    const/4 v0, 0x0

    .line 1589
    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1590
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1591
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p2, :cond_1a

    .line 1592
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockLockout(I)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method public final dispatchUserMayRequestUnlock(I)V
    .registers 5

    .line 1577
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 1578
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TrustManagerService"

    const-string v2, "dispatchUserMayRequestUnlock(user=%s)"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    const/4 v0, 0x0

    .line 1580
    :goto_14
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 1581
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1582
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p1, :cond_2d

    .line 1583
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->onUserMayRequestUnlock()V

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_30
    return-void
.end method

.method public final dispatchUserRequestedUnlock(IZ)V
    .registers 6

    .line 1561
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_17

    .line 1565
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1566
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1562
    const-string v1, "TrustManagerService"

    const-string v2, "dispatchUserRequestedUnlock(user=%s, dismissKeyguard=%s)"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    const/4 v0, 0x0

    .line 1568
    :goto_18
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 1569
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1570
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p1, :cond_31

    .line 1571
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1, p2}, Lcom/android/server/trust/TrustAgentWrapper;->onUserRequestedUnlock(Z)V

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_34
    return-void
.end method

.method public final enableNewAgents(Ljava/util/Collection;I)V
    .registers 4

    .line 1361
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1365
    :cond_7
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1366
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1367
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    return-void
.end method

.method public final getBiometricSids(I)[J
    .registers 3

    .line 1712
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/biometrics/BiometricManager;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 1714
    new-array p0, p0, [J

    return-object p0

    .line 1716
    :cond_10
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds(I)[J

    move-result-object p0

    return-object p0
.end method

.method public final getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .registers 3

    if-eqz p1, :cond_13

    .line 1270
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_7

    goto :goto_13

    .line 1271
    :cond_7
    new-instance p0, Landroid/content/ComponentName;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSettingsAttrs(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/server/trust/TrustManagerService$SettingsAttrs;
    .registers 10

    .line 1211
    const-string p0, "android.service.trust.trustagent"

    const-string v0, "TrustManagerService"

    const/4 v1, 0x0

    if-eqz p2, :cond_dc

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_dc

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_11

    goto/16 :goto_dc

    :cond_11
    const/4 v3, 0x0

    .line 1219
    :try_start_12
    invoke-virtual {v2, p1, p0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_16} :catch_99
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_16} :catch_8a
    .catchall {:try_start_12 .. :try_end_16} :catchall_83

    if-nez v2, :cond_35

    .line 1222
    :try_start_18
    const-string p1, "Can\'t find %s meta-data"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_21} :catch_31
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_21} :catch_2d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_21} :catch_2a
    .catchall {:try_start_18 .. :try_end_21} :catchall_27

    if-eqz v2, :cond_26

    .line 1250
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_26
    return-object v1

    :catchall_27
    move-exception p0

    move-object v1, v2

    goto :goto_84

    :catch_2a
    move-exception p0

    move-object v4, v1

    goto :goto_8d

    :catch_2d
    move-exception p0

    move-object v4, v1

    goto/16 :goto_96

    :catch_31
    move-exception p0

    move-object v4, v1

    goto/16 :goto_9c

    .line 1225
    :cond_35
    :try_start_35
    iget-object p0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    .line 1226
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    .line 1228
    :goto_41
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v5, :cond_4c

    if-eq v4, v6, :cond_4c

    goto :goto_41

    .line 1232
    :cond_4c
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1233
    const-string/jumbo v5, "trust-agent"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 1234
    const-string p0, "Meta-data does not start with trust-agent tag"

    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_5e} :catch_31
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_5e} :catch_2d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_5e} :catch_2a
    .catchall {:try_start_35 .. :try_end_5e} :catchall_27

    .line 1250
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v1

    .line 1237
    :cond_62
    :try_start_62
    sget-object v4, Lcom/android/internal/R$styleable;->TrustAgent:[I

    .line 1238
    invoke-virtual {p0, p1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 1239
    invoke-virtual {p0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_62 .. :try_end_6c} :catch_31
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6c} :catch_2d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_6c} :catch_2a
    .catchall {:try_start_62 .. :try_end_6c} :catchall_27

    .line 1240
    :try_start_6c
    const-string v5, "http://schemas.android.com/apk/prv/res/android"

    const-string/jumbo v6, "unlockProfile"

    invoke-interface {p1, v5, v6, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 1242
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_78
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6c .. :try_end_78} :catch_81
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_78} :catch_7f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6c .. :try_end_78} :catch_7d
    .catchall {:try_start_6c .. :try_end_78} :catchall_27

    .line 1250
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    move-object p0, v1

    goto :goto_9f

    :catch_7d
    move-exception p0

    goto :goto_8d

    :catch_7f
    move-exception p0

    goto :goto_96

    :catch_81
    move-exception p0

    goto :goto_9c

    :catchall_83
    move-exception p0

    :goto_84
    if-eqz v1, :cond_89

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1251
    :cond_89
    throw p0

    :catch_8a
    move-exception p0

    move-object v2, v1

    move-object v4, v2

    :goto_8d
    if-eqz v2, :cond_9f

    .line 1250
    :goto_8f
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_9f

    :catch_93
    move-exception p0

    move-object v2, v1

    move-object v4, v2

    :goto_96
    if-eqz v2, :cond_9f

    goto :goto_8f

    :catch_99
    move-exception p0

    move-object v2, v1

    move-object v4, v2

    :goto_9c
    if-eqz v2, :cond_9f

    goto :goto_8f

    :cond_9f
    :goto_9f
    if-eqz p0, :cond_af

    .line 1253
    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error parsing : %s"

    invoke-static {v0, p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_af
    if-nez v4, :cond_b2

    return-object v1

    :cond_b2
    const/16 p0, 0x2f

    .line 1263
    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_d2

    .line 1264
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1266
    :cond_d2
    new-instance p0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;-><init>(Landroid/content/ComponentName;Z)V

    return-object p0

    :cond_dc
    :goto_dc
    return-object v1
.end method

.method public final getTrustGrantedMessages(I)Ljava/util/List;
    .registers 6

    .line 1501
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1502
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1505
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1506
    :goto_14
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 1507
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1508
    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_4d

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 1509
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 1510
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->shouldDisplayTrustGrantedMessage()Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 1511
    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->getMessage()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 1512
    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->getMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_50
    return-object v0
.end method

.method public final getUserTrustStateInner(I)Lcom/android/server/trust/TrustManagerService$TrustState;
    .registers 4

    .line 989
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    monitor-enter v0

    .line 990
    :try_start_3
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/server/trust/TrustManagerService$TrustState;->UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/trust/TrustManagerService$TrustState;

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 991
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final handleScheduleTrustTimeout(ZLcom/android/server/trust/TrustManagerService$TimeoutType;)V
    .registers 7

    .line 414
    iget v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    .line 415
    sget-boolean v1, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v1, :cond_15

    .line 419
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object v1

    .line 416
    const-string v2, "TrustManagerService"

    const-string v3, "handleScheduleTrustTimeout(shouldOverride=%s, timeoutType=%s)"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    :cond_15
    sget-object v1, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    if-ne p2, v1, :cond_1e

    const/4 p2, 0x0

    .line 426
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->handleScheduleTrustableTimeouts(IZZ)V

    return-void

    .line 429
    :cond_1e
    invoke-virtual {p0, v0, p1}, Lcom/android/server/trust/TrustManagerService;->handleScheduleTrustedTimeout(IZ)V

    return-void
.end method

.method public final handleScheduleTrustableTimeouts(IZZ)V
    .registers 4

    .line 491
    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->setUpIdleTimeout(IZ)V

    .line 492
    invoke-virtual {p0, p1, p3}, Lcom/android/server/trust/TrustManagerService;->setUpHardTimeout(IZ)V

    return-void
.end method

.method public final handleScheduleTrustedTimeout(IZ)V
    .registers 16

    .line 458
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_17

    .line 462
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 463
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 459
    const-string v3, "handleScheduleTrustedTimeout(userId=%s, shouldOverride=%s)"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba00

    add-long v8, v2, v4

    .line 466
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;

    if-eqz v2, :cond_45

    if-nez p2, :cond_3e

    .line 470
    invoke-virtual {v2}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->isQueued()Z

    move-result p1

    if-eqz p1, :cond_3e

    if-eqz v0, :cond_3d

    .line 471
    const-string p0, "Found existing trust timeout alarm. Skipping."

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void

    .line 474
    :cond_3e
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :goto_43
    move-object v11, v2

    goto :goto_54

    .line 476
    :cond_45
    new-instance v2, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;

    invoke-direct {v2, p0, p1}, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    .line 477
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    :goto_54
    if-eqz v0, :cond_63

    .line 481
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\tSetting up trust timeout alarm triggering at elapsedRealTime=%s"

    invoke-static {v1, p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_63
    const/4 p1, 0x1

    .line 483
    invoke-virtual {v11, p1}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->setQueued(Z)V

    .line 484
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v10, "TrustManagerService.trustTimeoutForUser"

    iget-object v12, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final initializeKnownAgents(I)V
    .registers 5

    .line 1371
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v0

    .line 1373
    new-instance v1, Landroid/util/ArraySet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 1374
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1375
    invoke-virtual {p0, v2}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 1377
    :cond_2b
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setKnownTrustAgents(Ljava/util/Collection;I)V

    .line 1378
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "known_trust_agents_initialized"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public isDeviceLockedInner(I)Z
    .registers 4

    .line 995
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 996
    :try_start_3
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 997
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isEscrowTokenActive(JI)Z
    .registers 4

    .line 758
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mLockSettings:Lcom/android/server/locksettings/LockSettingsInternal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsInternal;->isEscrowTokenActive(JI)Z

    move-result p0

    return p0
.end method

.method public final isTrustUsuallyManagedInternal(I)Z
    .registers 5

    .line 2134
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 2135
    :try_start_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_15

    .line 2137
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    goto :goto_3a

    .line 2139
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_13

    .line 2141
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v0

    .line 2142
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    .line 2143
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_31

    .line 2146
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_38

    .line 2149
    :cond_31
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2150
    monitor-exit v1

    return v0

    .line 2152
    :goto_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_1f .. :try_end_39} :catchall_2f

    throw p0

    .line 2139
    :goto_3a
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_13

    throw p0
.end method

.method public final isVisibleBackgroundUser(I)Z
    .registers 3

    .line 1110
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isVisibleBackgroundUsersSupported()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1113
    :cond_a
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_18

    .line 1114
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 1116
    :cond_18
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result p0

    return p0
.end method

.method public final isWeakUnlockMethodEnabled(I)Z
    .registers 8

    .line 1732
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isBiometricAllowedForUser(ZI)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "TrustManagerService"

    if-eqz v0, :cond_63

    .line 1733
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v4, 0x0

    .line 1734
    invoke-virtual {v0, v4, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    .line 1736
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v4, :cond_3d

    and-int/lit8 v5, v0, 0x20

    if-nez v5, :cond_3d

    .line 1738
    invoke-virtual {v4, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplates(I)Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 1740
    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorProperties()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/SensorProperties;

    .line 1739
    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->isWeakOrConvenienceSensor(Landroid/hardware/biometrics/SensorProperties;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1741
    const-string p0, "User is unlockable by non-strong fingerprint auth"

    invoke-static {v3, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1745
    :cond_3d
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v4, :cond_63

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_63

    .line 1747
    invoke-virtual {v4, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 1748
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->getSensorProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/SensorProperties;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->isWeakOrConvenienceSensor(Landroid/hardware/biometrics/SensorProperties;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1749
    const-string p0, "User is unlockable by non-strong face auth"

    invoke-static {v3, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1755
    :cond_63
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->getUserTrustStateInner(I)Lcom/android/server/trust/TrustManagerService$TrustState;

    move-result-object v0

    sget-object v4, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-eq v0, v4, :cond_79

    .line 1756
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->isAutomotive()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result p0

    if-eqz p0, :cond_78

    goto :goto_79

    :cond_78
    return v1

    .line 1757
    :cond_79
    :goto_79
    const-string p0, "User is unlockable by trust agent"

    invoke-static {v3, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final synthetic lambda$addEscrowToken$0(JI)V
    .registers 4

    .line 749
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/trust/TrustManagerService;->dispatchEscrowTokenActivatedLocked(JI)V

    return-void
.end method

.method public final synthetic lambda$notifyDeviceLockedListenersForUser$2(IZI)V
    .registers 5

    .line 2531
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2532
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_19

    .line 2533
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/android/internal/policy/IDeviceLockedStateListener;

    .line 2534
    invoke-interface {p0, p2}, Lcom/android/internal/policy/IDeviceLockedStateListener;->onDeviceLockedStateChanged(Z)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    :cond_19
    return-void

    :catch_1a
    move-exception p0

    .line 2537
    const-string p1, "TrustManagerService"

    const-string p2, "Service died"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public lockUser(I)V
    .registers 3

    .line 770
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 773
    :try_start_7
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    return-void

    .line 775
    :catch_10
    const-string p0, "TrustManagerService"

    const-string p1, "Error locking screen when called from trust agent"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final maybeActiveUnlockRunningChanged(I)V
    .registers 5

    .line 1001
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1002
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsActiveUnlockRunning(I)Z

    move-result v1

    if-ne v0, v1, :cond_d

    goto :goto_29

    .line 1006
    :cond_d
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v0, 0x0

    .line 1007
    :goto_13
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 1008
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/ITrustListener;

    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/trust/TrustManagerService;->notifyListenerIsActiveUnlockRunning(Landroid/app/trust/ITrustListener;ZI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_29
    :goto_29
    return-void
.end method

.method public final maybeEnableFactoryTrustAgents(I)V
    .registers 10

    .line 1275
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "trust_agents_initialized"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 1279
    :cond_11
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1280
    invoke-virtual {p0, v0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v0

    .line 1281
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->getDefaultFactoryTrustAgent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_25

    move v2, v4

    .line 1283
    :cond_25
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 1285
    const-string v6, "TrustManagerService"

    if-eqz v2, :cond_4b

    .line 1286
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabling "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because it is a default agent."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 1289
    :cond_4b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1290
    invoke-virtual {p0, v2}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1291
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->isSystemTrustAgent(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 1292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Leaving agent "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " disabled because package is not a system package."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 1296
    :cond_7f
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 1300
    :cond_83
    :goto_83
    invoke-virtual {p0, v5, p1}, Lcom/android/server/trust/TrustManagerService;->enableNewAgents(Ljava/util/Collection;I)V

    .line 1301
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v4, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final notifyDeviceLockedListenersForUser(IZ)V
    .registers 6

    .line 2526
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 2527
    :try_start_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1d

    const/4 v2, 0x0

    .line 2529
    :try_start_a
    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/trust/TrustManagerService;IZ)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1f

    .line 2542
    :try_start_16
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2544
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    goto :goto_26

    :catchall_1f
    move-exception p1

    .line 2542
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2543
    throw p1

    .line 2544
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_1d

    throw p0
.end method

.method public final notifyKeystoreOfDeviceLockState(IZ)V
    .registers 5

    if-eqz p2, :cond_1e

    .line 1138
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isProfileWithUnifiedChallenge(I)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 1139
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    move-result p2

    goto :goto_10

    :cond_f
    move p2, p1

    .line 1141
    :goto_10
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->getBiometricSids(I)[J

    move-result-object v1

    .line 1142
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->isWeakUnlockMethodEnabled(I)Z

    move-result p0

    .line 1141
    invoke-virtual {v0, p1, v1, p0}, Landroid/security/KeyStoreAuthorization;->onDeviceLocked(I[JZ)I

    return-void

    .line 1147
    :cond_1e
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/security/KeyStoreAuthorization;->onDeviceUnlocked(I[B)I

    return-void
.end method

.method public final notifyListenerIsActiveUnlockRunning(Landroid/app/trust/ITrustListener;ZI)V
    .registers 4

    .line 1609
    const-string p0, "TrustManagerService"

    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/app/trust/ITrustListener;->onIsActiveUnlockRunningChanged(ZI)V
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 1613
    const-string p2, "Exception while notifying TrustListener."

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 1611
    :catch_d
    const-string p1, "TrustListener dead while trying to notify Active Unlock running state"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    return-void
.end method

.method public final notifyListenerIsActiveUnlockRunningInitialState(Landroid/app/trust/ITrustListener;)V
    .registers 6

    .line 1598
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 1600
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 1601
    invoke-virtual {p0, v2}, Lcom/android/server/trust/TrustManagerService;->aggregateIsActiveUnlockRunning(I)Z

    move-result v3

    .line 1602
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/trust/TrustManagerService;->notifyListenerIsActiveUnlockRunning(Landroid/app/trust/ITrustListener;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    return-void
.end method

.method public final notifyTrustAgentsOfDeviceLockState(IZ)V
    .registers 6

    const/4 v0, 0x0

    .line 1120
    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 1121
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1122
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p1, :cond_22

    if-eqz p2, :cond_1d

    .line 1124
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceLocked()V

    goto :goto_22

    .line 1126
    :cond_1d
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceUnlocked()V

    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method

.method public onBootPhase(I)V
    .registers 6

    .line 340
    invoke-virtual {p0}, Lcom/android/server/SystemService;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_74

    :cond_7
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_45

    .line 345
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->checkNewAgents()V

    .line 346
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 347
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/trust/TrustManagerService$Receiver;->register(Landroid/content/Context;)V

    .line 351
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    .line 352
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 353
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/FaceManager;

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void

    :cond_45
    const/16 v0, 0x258

    if-ne p1, v0, :cond_6c

    .line 355
    iput-boolean v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    const/4 p1, -0x1

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 357
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    .line 359
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string v0, "com.android.trust.provider.SignificantPlaceProvider.BIND"

    const/4 v1, 0x0

    .line 360
    invoke-static {p1, v0, v1, v1, v1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object v0

    new-instance v1, Lcom/android/server/trust/TrustManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/trust/TrustManagerService$2;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    .line 359
    const-string v2, "TrustManagerService"

    invoke-static {p1, v2, v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mSignificantPlaceServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    .line 387
    invoke-interface {p1}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    return-void

    :cond_6c
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_74

    const/4 p1, 0x0

    .line 389
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(I)V

    :cond_74
    :goto_74
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 335
    const-string/jumbo v0, "trust"

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 1773
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 1778
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 1793
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 1783
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    .line 1788
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public refreshAgentList(I)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 784
    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v3, "TrustManagerService"

    if-eqz v2, :cond_18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "refreshAgentList(userIdOrAll=%s)"

    invoke-static {v3, v5, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 785
    :cond_18
    iget-boolean v4, v0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    if-nez v4, :cond_24

    if-eqz v2, :cond_2cb

    .line 786
    const-string v0, "Did not refresh agent list because agents cannot run."

    invoke-static {v3, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4b

    if-gez v1, :cond_4b

    .line 790
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refreshAgentList(userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): Invalid user handle, must be USER_ALL or a specific user."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "here"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 794
    :cond_4b
    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-ne v1, v2, :cond_5a

    .line 798
    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v5

    goto :goto_68

    .line 800
    :cond_5a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 801
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    :goto_68
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 805
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 806
    iget-object v8, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 808
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_78
    :goto_78
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_281

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    if-eqz v9, :cond_78

    .line 809
    iget-boolean v12, v9, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v12, :cond_78

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_78

    iget-boolean v12, v9, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v12, :cond_95

    goto :goto_78

    .line 811
    :cond_95
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v12

    if-nez v12, :cond_b0

    .line 812
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_78

    .line 813
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    .line 816
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    .line 813
    const-string/jumbo v10, "refreshAgentList: skipping user %s: switchToByUser=false"

    invoke-static {v3, v10, v9}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_78

    .line 820
    :cond_b0
    iget-object v12, v0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget v13, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v13}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v12

    if-nez v12, :cond_cf

    .line 821
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_78

    .line 822
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    .line 825
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    .line 822
    const-string/jumbo v10, "refreshAgentList: skipping user %s: user not started"

    invoke-static {v3, v10, v9}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_78

    .line 829
    :cond_cf
    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v12

    if-nez v12, :cond_ec

    .line 830
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_78

    .line 831
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    .line 834
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    .line 831
    const-string/jumbo v10, "refreshAgentList: skipping user %s: no secure credential"

    invoke-static {v3, v10, v9}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_78

    .line 839
    :cond_ec
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v12

    .line 840
    iget v13, v9, Landroid/content/pm/UserInfo;->id:I

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v13}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v13

    and-int/lit8 v13, v13, 0x10

    if-eqz v13, :cond_fd

    const/4 v13, 0x1

    goto :goto_fe

    :cond_fd
    const/4 v13, 0x0

    .line 844
    :goto_fe
    iget v15, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v15}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v15

    .line 845
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_120

    .line 846
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_78

    .line 847
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    .line 850
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    .line 847
    const-string/jumbo v10, "refreshAgentList: skipping user %s: no agents enabled by user"

    invoke-static {v3, v10, v9}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_78

    .line 854
    :cond_120
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v4, v11}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v11

    .line 855
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_12a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_78

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 856
    invoke-virtual {v0, v2}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v10

    .line 858
    invoke-interface {v15, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_15c

    .line 859
    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v2, :cond_15a

    .line 863
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    .line 864
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v2, v10}, [Ljava/lang/Object;

    move-result-object v2

    .line 860
    const-string/jumbo v10, "refreshAgentList: skipping %s u%s: not enabled by user"

    invoke-static {v3, v10, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15a
    :goto_15a
    const/4 v2, -0x1

    goto :goto_12a

    :cond_15c
    move-object/from16 v17, v6

    if-eqz v13, :cond_189

    .line 869
    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    .line 870
    invoke-virtual {v12, v14, v10, v6}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_16e

    .line 872
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_189

    .line 873
    :cond_16e
    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v2, :cond_186

    .line 877
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    .line 878
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 874
    const-string/jumbo v6, "refreshAgentList: skipping %s u%s: not allowed by DPM"

    invoke-static {v3, v6, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_186
    move-object/from16 v6, v17

    goto :goto_15a

    .line 883
    :cond_189
    new-instance v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    invoke-direct {v6, v14}, Lcom/android/server/trust/TrustManagerService$AgentInfo;-><init>(Lcom/android/server/trust/TrustManagerService-IA;)V

    .line 884
    iput-object v10, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    .line 885
    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    iput v14, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 886
    iget-object v14, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v14, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1af

    .line 887
    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    iput-object v14, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->label:Ljava/lang/CharSequence;

    .line 888
    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 889
    invoke-virtual {v0, v4, v2}, Lcom/android/server/trust/TrustManagerService;->getSettingsAttrs(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    move-result-object v14

    iput-object v14, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    goto :goto_1bd

    .line 891
    :cond_1af
    iget-object v14, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v14, v6}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 892
    iget-object v14, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v14, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 896
    :goto_1bd
    iget-object v14, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    if-eqz v14, :cond_1cd

    .line 897
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v2, v2, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v2, :cond_1cd

    iget-boolean v2, v14, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;->canUnlockProfile:Z

    if-eqz v2, :cond_1cd

    const/4 v2, 0x1

    goto :goto_1ce

    :cond_1cd
    const/4 v2, 0x0

    :goto_1ce
    if-eqz v2, :cond_1e7

    .line 902
    sget-boolean v14, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v14, :cond_1e7

    .line 903
    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    .line 908
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v10, v14}, [Ljava/lang/Object;

    move-result-object v14

    move/from16 v18, v2

    .line 903
    const-string/jumbo v2, "refreshAgentList: trustagent %s of user %s can unlock user profile."

    invoke-static {v3, v2, v14}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e9

    :cond_1e7
    move/from16 v18, v2

    .line 912
    :goto_1e9
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v14}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v2

    if-nez v2, :cond_20f

    if-nez v18, :cond_20f

    .line 914
    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v2, :cond_209

    .line 915
    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    .line 919
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v10}, [Ljava/lang/Object;

    move-result-object v2

    .line 915
    const-string/jumbo v6, "refreshAgentList: skipping user %s\'s trust agent %s: FBE still locked and the agent cannot unlock user profile."

    invoke-static {v3, v6, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_209
    :goto_209
    move-object/from16 v6, v17

    :goto_20b
    const/4 v2, -0x1

    const/4 v14, 0x0

    goto/16 :goto_12a

    .line 925
    :cond_20f
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v14}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v2

    if-nez v2, :cond_24b

    .line 926
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v14}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v2

    const/16 v14, 0x8

    if-eq v2, v14, :cond_24b

    const/4 v14, 0x1

    if-ne v2, v14, :cond_22a

    if-nez v18, :cond_24c

    .line 930
    :cond_22a
    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v2, :cond_209

    .line 931
    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    .line 935
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    .line 937
    invoke-virtual {v6, v10}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v6

    .line 936
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 931
    const-string/jumbo v6, "refreshAgentList: skipping user %s: prevented by StrongAuthTracker = 0x%s"

    invoke-static {v3, v6, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_209

    :cond_24b
    const/4 v14, 0x1

    .line 945
    :cond_24c
    iget-object v2, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    if-nez v2, :cond_269

    .line 946
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v14, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v4

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 947
    invoke-virtual {v4, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-direct {v2, v14, v0, v4, v10}, Lcom/android/server/trust/TrustAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iput-object v2, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    goto :goto_26b

    :cond_269
    move-object/from16 v18, v4

    .line 950
    :goto_26b
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_279

    .line 951
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_27c

    .line 953
    :cond_279
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_27c
    move-object/from16 v6, v17

    move-object/from16 v4, v18

    goto :goto_20b

    :cond_281
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 959
    :goto_283
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v2, v6, :cond_2ac

    .line 960
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    const/4 v8, -0x1

    if-eq v1, v8, :cond_296

    .line 961
    iget v8, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v1, v8, :cond_2a9

    .line 962
    :cond_296
    iget-object v8, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v8}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v8

    if-eqz v8, :cond_29f

    const/4 v4, 0x1

    .line 965
    :cond_29f
    iget-object v8, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v8}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 966
    iget-object v8, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_2a9
    add-int/lit8 v2, v2, 0x1

    goto :goto_283

    .line 970
    :cond_2ac
    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v2, :cond_2be

    .line 976
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v5, v7, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 971
    const-string/jumbo v5, "refreshAgentList: userInfos=%s, obsoleteAgents=%s, trustMayHaveChanged=%s"

    invoke-static {v3, v5, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2be
    if-eqz v4, :cond_2cb

    const/4 v8, -0x1

    if-ne v1, v8, :cond_2c7

    .line 981
    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    return-void

    :cond_2c7
    const/4 v2, 0x0

    .line 983
    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    :cond_2cb
    return-void
.end method

.method public final refreshDeviceLockedForUser(I)V
    .registers 3

    const/16 v0, -0x2710

    .line 1013
    invoke-virtual {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(II)V

    return-void
.end method

.method public final refreshDeviceLockedForUser(II)V
    .registers 14

    const/4 v0, -0x1

    if-eq p1, v0, :cond_29

    if-gez p1, :cond_29

    .line 1025
    const-string v1, "TrustManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshDeviceLockedForUser(userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): Invalid user handle, must be USER_ALL or a specific user."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, v0

    :cond_29
    if-ne p1, v0, :cond_32

    .line 1031
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object p1

    goto :goto_41

    .line 1033
    :cond_32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    .line 1037
    :goto_41
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1039
    :goto_47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e2

    .line 1040
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    if-eqz v3, :cond_de

    .line 1042
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_de

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_de

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v4, :cond_65

    goto/16 :goto_de

    .line 1046
    :cond_65
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 1047
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    .line 1049
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v6

    if-nez v6, :cond_88

    .line 1050
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v3

    if-eqz v3, :cond_de

    if-nez v5, :cond_de

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1051
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isProfileWithUnifiedChallenge(I)Z

    move-result v3

    if-nez v3, :cond_de

    .line 1055
    invoke-virtual {p0, v4, v1}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    goto/16 :goto_de

    .line 1060
    :cond_88
    invoke-virtual {p0, v4}, Lcom/android/server/trust/TrustManagerService;->getUserTrustStateInner(I)Lcom/android/server/trust/TrustManagerService$TrustState;

    move-result-object v3

    sget-object v6, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    const/4 v7, 0x1

    if-ne v3, v6, :cond_93

    move v3, v7

    goto :goto_94

    :cond_93
    move v3, v1

    .line 1065
    :goto_94
    iget v6, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v6, v4, :cond_b9

    .line 1066
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    monitor-enter v6

    .line 1067
    :try_start_9b
    iget-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v4, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v8

    .line 1068
    monitor-exit v6
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_b6

    .line 1070
    :try_start_a2
    invoke-interface {v0}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v6
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_a6} :catch_a7

    goto :goto_b0

    :catch_a7
    move-exception v6

    .line 1072
    const-string v9, "TrustManagerService"

    const-string v10, "Unable to check keyguard lock state"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    :goto_b0
    if-ne p2, v4, :cond_b4

    move v9, v7

    goto :goto_cc

    :cond_b4
    move v9, v1

    goto :goto_cc

    :catchall_b6
    move-exception p0

    .line 1068
    :try_start_b7
    monitor-exit v6
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw p0

    .line 1075
    :cond_b9
    invoke-virtual {p0, v4}, Lcom/android/server/trust/TrustManagerService;->isVisibleBackgroundUser(I)Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 1076
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v4}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v6

    xor-int/2addr v6, v7

    move v8, v1

    move v9, v8

    goto :goto_cc

    :cond_c9
    move v8, v1

    move v9, v8

    move v6, v7

    :goto_cc
    if-eqz v5, :cond_d5

    if-eqz v6, :cond_d5

    if-nez v3, :cond_d5

    if-nez v8, :cond_d5

    goto :goto_d6

    :cond_d5
    move v7, v1

    :goto_d6
    if-eqz v7, :cond_db

    if-eqz v9, :cond_db

    goto :goto_de

    .line 1085
    :cond_db
    invoke-virtual {p0, v4, v7}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    :cond_de
    :goto_de
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_47

    :cond_e2
    return-void
.end method

.method public final refreshTrustableTimers(I)V
    .registers 5

    .line 435
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_14

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TrustManagerService"

    const-string/jumbo v2, "refreshTrustableTimers(userId=%s)"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    const/4 v0, 0x1

    .line 436
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/trust/TrustManagerService;->handleScheduleTrustableTimeouts(IZZ)V

    return-void
.end method

.method public final removeAgentsOfPackage(Ljava/lang/String;)V
    .registers 8

    .line 1175
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_51

    .line 1176
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1177
    iget-object v4, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resetting agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TrustManagerService"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v4, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v4}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v4

    if-eqz v4, :cond_44

    move v2, v1

    .line 1182
    :cond_44
    iget-object v3, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 1183
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_4e
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_51
    if-eqz v2, :cond_56

    .line 1187
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    :cond_56
    return-void
.end method

.method public removeEscrowToken(JI)Z
    .registers 4

    .line 754
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mLockSettings:Lcom/android/server/locksettings/LockSettingsInternal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsInternal;->removeEscrowToken(JI)Z

    move-result p0

    return p0
.end method

.method public final removeListener(Landroid/app/trust/ITrustListener;)V
    .registers 5

    const/4 v0, 0x0

    .line 1631
    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 1632
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_21

    .line 1633
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_24
    return-void
.end method

.method public resetAgent(Landroid/content/ComponentName;I)V
    .registers 10

    .line 1193
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ltz v0, :cond_52

    .line 1194
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1195
    iget-object v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    iget v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne p2, v5, :cond_4f

    .line 1196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resetting agent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TrustManagerService"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v5

    if-eqz v5, :cond_45

    move v3, v1

    .line 1200
    :cond_45
    iget-object v4, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v4}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 1201
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_52
    if-eqz v3, :cond_57

    .line 1205
    invoke-virtual {p0, p2, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 1207
    :cond_57
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    return-void
.end method

.method public final resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .registers 8

    .line 1396
    sget-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const v1, 0xc0080

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p2

    .line 1400
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1401
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1402
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_27

    goto :goto_16

    .line 1403
    :cond_27
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_2c

    goto :goto_16

    .line 1404
    :cond_2c
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1405
    const-string v3, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {p1, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5e

    .line 1407
    invoke-virtual {p0, v1}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping agent "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " because package does not have permission "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrustManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 1412
    :cond_5e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_62
    return-object v0
.end method

.method public final resolveProfileParent(I)I
    .registers 4

    .line 2157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2159
    :try_start_4
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 2161
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 2165
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_18
    move-exception p0

    goto :goto_1e

    :cond_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2166
    throw p0
.end method

.method public final scheduleTrustTimeout(ZZ)V
    .registers 6

    .line 400
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_18

    .line 404
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 405
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 401
    const-string v1, "TrustManagerService"

    const-string/jumbo v2, "scheduleTrustTimeout(override=%s, isTrustable=%s)"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    :cond_18
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 410
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setDeviceLockedForUser(IZ)V
    .registers 7

    .line 1091
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1092
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eq v1, p2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    move v1, v2

    .line 1093
    :goto_d
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1094
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_38

    if-eqz v1, :cond_37

    .line 1096
    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->notifyTrustAgentsOfDeviceLockState(IZ)V

    .line 1097
    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->notifyKeystoreOfDeviceLockState(IZ)V

    .line 1098
    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->notifyDeviceLockedListenersForUser(IZ)V

    .line 1101
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p1

    array-length v0, p1

    :goto_25
    if-ge v2, v0, :cond_37

    aget v1, p1, v2

    .line 1102
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1103
    invoke-virtual {p0, v1, p2}, Lcom/android/server/trust/TrustManagerService;->notifyKeystoreOfDeviceLockState(IZ)V

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_37
    return-void

    :catchall_38
    move-exception p0

    .line 1094
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public final setUpHardTimeout(IZ)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 532
    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v3, "TrustManagerService"

    if-eqz v2, :cond_1c

    .line 536
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 537
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 533
    const-string/jumbo v5, "setUpHardTimeout(userId=%s, overrideHardTimeout=%s)"

    invoke-static {v3, v5, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    :cond_1c
    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.SCHEDULE_EXACT_ALARM"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    if-eqz v4, :cond_38

    .line 544
    invoke-virtual {v4}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->isQueued()Z

    move-result v5

    if-eqz v5, :cond_38

    if-eqz p2, :cond_37

    goto :goto_38

    :cond_37
    return-void

    .line 546
    :cond_38
    :goto_38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    add-long v11, v5, v7

    if-nez v4, :cond_4f

    .line 548
    new-instance v4, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    invoke-direct {v4, v0, v1}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    .line 549
    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4d
    :goto_4d
    move-object v14, v4

    goto :goto_57

    :cond_4f
    if-eqz p2, :cond_4d

    .line 551
    iget-object v1, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_4d

    :goto_57
    if-eqz v2, :cond_66

    .line 558
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 554
    const-string v2, "\tSetting up trustable hard timeout alarm triggering at elapsedRealTime=%s"

    invoke-static {v3, v2, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_66
    const/4 v1, 0x1

    .line 560
    invoke-virtual {v14, v1}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->setQueued(Z)V

    .line 561
    iget-object v9, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v13, "TrustManagerService.trustTimeoutForUser"

    iget-object v15, v0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final setUpIdleTimeout(IZ)V
    .registers 16

    .line 496
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_18

    .line 500
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 501
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 497
    const-string/jumbo v3, "setUpIdleTimeout(userId=%s, overrideIdleTimeout=%s)"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x1b77400

    add-long v8, v2, v4

    .line 504
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    .line 505
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SCHEDULE_EXACT_ALARM"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4a

    if-nez p2, :cond_43

    .line 509
    invoke-virtual {v2}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->isQueued()Z

    move-result p1

    if-eqz p1, :cond_43

    if-eqz v0, :cond_42

    .line 510
    const-string p0, "Found existing trustable timeout alarm. Skipping."

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return-void

    .line 513
    :cond_43
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :goto_48
    move-object v11, v2

    goto :goto_55

    .line 515
    :cond_4a
    new-instance v2, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    invoke-direct {v2, p0, p1}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    .line 516
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_48

    :goto_55
    if-eqz v0, :cond_64

    .line 523
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 520
    const-string p2, "\tSetting up trustable idle timeout alarm triggering at elapsedRealTime=%s"

    invoke-static {v1, p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_64
    const/4 p1, 0x1

    .line 525
    invoke-virtual {v11, p1}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->setQueued(Z)V

    .line 526
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v10, "TrustManagerService.trustTimeoutForUser"

    iget-object v12, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    .registers 2

    .line 780
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public unlockUserWithToken(J[BI)V
    .registers 5

    .line 762
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mLockSettings:Lcom/android/server/locksettings/LockSettingsInternal;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsInternal;->unlockUserWithToken(J[BI)Z

    return-void
.end method

.method public updateDevicePolicyFeatures()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 1162
    :goto_2
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 1163
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 1164
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1165
    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()Z

    move-result v2

    or-int/2addr v1, v2

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_24
    if-eqz v1, :cond_2b

    .line 1169
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    invoke-virtual {p0}, Lcom/android/server/trust/TrustArchive;->logDevicePolicyChanged()V

    :cond_2b
    return-void
.end method

.method public updateTrust(II)V
    .registers 4

    const/4 v0, 0x0

    .line 609
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IILcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public updateTrust(IILcom/android/internal/infra/AndroidFuture;)V
    .registers 5

    const/4 v0, 0x0

    .line 617
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public final updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V
    .registers 28

    move-object/from16 v0, p0

    move/from16 v3, p1

    move-object/from16 v6, p4

    .line 625
    sget-boolean v1, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v1, :cond_2a

    .line 626
    const-string v1, "TrustManagerService"

    const-string/jumbo v2, "updateTrust(userId=%s, flags=%s, isFromUnlock=%s, resultCallbackPresent=%s)"

    .line 629
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 630
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 631
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 632
    invoke-static {v6}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v4, v5, v7, v8}, [Ljava/lang/Object;

    move-result-object v4

    .line 626
    invoke-static {v1, v2, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    :cond_2a
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v1

    .line 635
    invoke-virtual {v0, v1, v3}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustManagedChanged(ZI)V

    .line 636
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 637
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result v2

    if-eq v2, v1, :cond_42

    .line 638
    invoke-virtual {v0, v3, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrustUsuallyManaged(IZ)V

    .line 641
    :cond_42
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v1

    .line 642
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustable(I)Z

    move-result v2

    .line 647
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    const/4 v8, 0x1

    .line 650
    :try_start_4f
    invoke-interface {v4}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v4
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_53} :catch_55

    xor-int/2addr v4, v8

    goto :goto_56

    :catch_55
    const/4 v4, 0x0

    .line 654
    :goto_56
    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    monitor-enter v5

    .line 655
    :try_start_59
    iget-object v9, v0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v9, v10, :cond_65

    move v9, v8

    goto :goto_66

    :cond_65
    const/4 v9, 0x0

    .line 656
    :goto_66
    iget-object v11, v0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v11, v12, :cond_72

    move v11, v8

    goto :goto_73

    :cond_72
    const/4 v11, 0x0

    :goto_73
    if-eqz v11, :cond_7b

    and-int/lit8 v13, p2, 0x4

    if-eqz v13, :cond_7b

    move v13, v8

    goto :goto_7c

    :cond_7b
    const/4 v13, 0x0

    :goto_7c
    if-nez v4, :cond_8e

    if-nez p3, :cond_8e

    if-nez v13, :cond_8e

    .line 660
    invoke-direct {v0}, Lcom/android/server/trust/TrustManagerService;->isAutomotive()Z

    move-result v14

    if-eqz v14, :cond_89

    goto :goto_8e

    :cond_89
    const/4 v14, 0x0

    goto :goto_8f

    :catchall_8b
    move-exception v0

    goto/16 :goto_156

    :cond_8e
    :goto_8e
    move v14, v8

    .line 661
    :goto_8f
    iget v15, v0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v3, v15, :cond_95

    move v15, v8

    goto :goto_96

    :cond_95
    const/4 v15, 0x0

    .line 663
    :goto_96
    sget-boolean v16, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v16, :cond_be

    .line 664
    const-string v7, "TrustManagerService"

    const-string/jumbo v8, "updateTrust: alreadyUnlocked=%s, wasTrusted=%s, wasTrustable=%s, renewingTrust=%s, canMoveToTrusted=%s, updatingTrustForCurrentUser=%s"

    .line 669
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 670
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 671
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 672
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 673
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 674
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    filled-new-array/range {v17 .. v22}, [Ljava/lang/Object;

    move-result-object v13

    .line 664
    invoke-static {v7, v8, v13}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_be
    if-eqz v1, :cond_c5

    if-eqz v9, :cond_c5

    .line 679
    monitor-exit v5

    goto/16 :goto_155

    :cond_c5
    if-eqz v1, :cond_cd

    if-eqz v14, :cond_cd

    if-eqz v15, :cond_cd

    move-object v12, v10

    goto :goto_d8

    :cond_cd
    if-eqz v2, :cond_d6

    if-nez v9, :cond_d3

    if-eqz v11, :cond_d6

    :cond_d3
    if-eqz v15, :cond_d6

    goto :goto_d8

    .line 689
    :cond_d6
    sget-object v12, Lcom/android/server/trust/TrustManagerService$TrustState;->UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    :goto_d8
    if-eqz v16, :cond_e6

    .line 691
    const-string v1, "TrustManagerService"

    const-string/jumbo v2, "updateTrust: pendingTrustState=%s"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v1, v2, v7}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    :cond_e6
    iget-object v1, v0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 694
    monitor-exit v5
    :try_end_ec
    .catchall {:try_start_59 .. :try_end_ec} :catchall_8b

    if-ne v12, v10, :cond_f0

    const/4 v1, 0x1

    goto :goto_f1

    :cond_f0
    const/4 v1, 0x0

    :goto_f1
    if-nez v4, :cond_f7

    if-eqz v1, :cond_f7

    const/4 v2, 0x1

    goto :goto_f8

    :cond_f7
    const/4 v2, 0x0

    :goto_f8
    if-eqz v16, :cond_10e

    .line 699
    const-string v4, "TrustManagerService"

    const-string/jumbo v5, "updateTrust: isNowTrusted=%s, newlyUnlocked=%s"

    .line 702
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 703
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 699
    invoke-static {v4, v5, v7}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    :cond_10e
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->maybeActiveUnlockRunningChanged(I)V

    .line 707
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->getTrustGrantedMessages(I)Ljava/util/List;

    move-result-object v5

    move/from16 v4, p2

    .line 706
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustChanged(ZZIILjava/util/List;)V

    if-eq v1, v9, :cond_12b

    .line 709
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    if-eqz v1, :cond_12b

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_127

    const/4 v7, 0x1

    goto :goto_128

    :cond_127
    const/4 v7, 0x0

    .line 715
    :goto_128
    invoke-virtual {v0, v7, v7}, Lcom/android/server/trust/TrustManagerService;->scheduleTrustTimeout(ZZ)V

    :cond_12b
    if-eqz v2, :cond_141

    if-eqz v6, :cond_141

    if-eqz v16, :cond_138

    .line 723
    const-string v1, "TrustManagerService"

    const-string v2, "calling back with UNLOCKED_BY_GRANT"

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_138
    new-instance v1, Landroid/service/trust/GrantTrustResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/service/trust/GrantTrustResult;-><init>(I)V

    invoke-virtual {v6, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    :cond_141
    if-nez v9, :cond_145

    if-eqz v11, :cond_155

    .line 728
    :cond_145
    sget-object v1, Lcom/android/server/trust/TrustManagerService$TrustState;->UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v12, v1, :cond_155

    if-eqz v16, :cond_152

    .line 729
    const-string v1, "TrustManagerService"

    const-string v2, "Trust was revoked, destroy trustable alarms"

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_152
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->cancelBothTrustableAlarms(I)V

    :cond_155
    :goto_155
    return-void

    .line 694
    :goto_156
    :try_start_156
    monitor-exit v5
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_8b

    throw v0
.end method

.method public final updateTrustAll()V
    .registers 4

    .line 599
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 600
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 601
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    goto :goto_a

    :cond_1d
    return-void
.end method

.method public final updateTrustUsuallyManaged(IZ)V
    .registers 5

    .line 735
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 736
    :try_start_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 737
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1d

    .line 740
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 741
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    .line 742
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x1d4c0

    .line 741
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_1d
    move-exception p0

    .line 737
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public waitForIdle()V
    .registers 4

    .line 2130
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method
