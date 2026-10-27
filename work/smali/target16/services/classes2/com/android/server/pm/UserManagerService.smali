.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# static fields
.field static final BOOT_STRATEGY_DO_NOT_OVERRIDE:I = -0x1

.field static final BOOT_STRATEGY_TO_HSU_FOR_PROVISIONED_DEVICE:I = 0x1

.field static final BOOT_STRATEGY_TO_PREVIOUS_OR_FIRST_SWITCHABLE_USER:I = 0x0

.field static final MAX_RECENTLY_REMOVED_IDS_SIZE:I = 0x64

.field static final MAX_USER_ID:I = 0x53e1

.field static final MIN_USER_ID:I = 0xa

.field public static final PRIVATE_SPACE_AUTO_LOCK_INACTIVITY_ALARM_WINDOW_MS:J

.field public static final USER_INFO_DIR:Ljava/lang/String;

.field public static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field public final ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

.field public mAmInternal:Landroid/app/ActivityManagerInternal;

.field public mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public final mAppRestrictionsLock:Ljava/lang/Object;

.field public final mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field public final mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field public mBootUser:I

.field public final mBootUserLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field public final mConfigurationChangeReceiver:Landroid/content/BroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public mCurrentBootPhase:I

.field public final mDeathPredictor:Lcom/android/server/pm/UserFilter$DeathPredictor;

.field public final mDeviceInactivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mDeviceOwnerUserId:I

.field public mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public final mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field public final mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

.field public mForceEphemeralUsers:Z

.field public final mGuestRestrictions:Landroid/os/Bundle;

.field public final mHandler:Landroid/os/Handler;

.field public final mInternalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public mIsDeviceInactivityBroadcastReceiverRegistered:Z

.field public mKeyguardLockedStateListener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

.field public final mLastConfiguration:Landroid/content/res/Configuration;

.field public final mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockSettingsInternal:Lcom/android/server/locksettings/LockSettingsInternal;

.field public final mNameConverter:Ljava/util/function/Function;

.field public mNextSerialNumber:I

.field public final mNonComplianceLogger:Lcom/android/server/pm/MultiuserNonComplianceLogger;

.field public final mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mOwnerNameTypedValue:Landroid/util/TypedValue;

.field public final mPackagesLock:Ljava/lang/Object;

.field public final mPerfUserListFile:Ljava/io/File;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPrivateSpaceAutoLockSettingsObserver:Lcom/android/server/pm/UserManagerService$SettingsObserver;

.field public mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

.field public final mRecentlyRemovedIds:Ljava/util/LinkedList;

.field public final mRemovingUserIds:Landroid/util/SparseBooleanArray;

.field public final mRestrictionsLock:Ljava/lang/Object;

.field public mStorageManagerInternal:Lcom/android/server/StorageManagerInternal;

.field public final mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

.field public mUpdatingSystemUserMode:Z

.field public final mUser0Allocations:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

.field public mUserIds:[I

.field public mUserIdsIncludingPreCreated:[I

.field public final mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

.field public final mUserLifecycleListeners:Ljava/util/ArrayList;

.field public final mUserListFile:Ljava/io/File;

.field public final mUserRestrictionToken:Landroid/os/IBinder;

.field public final mUserRestrictionsListeners:Ljava/util/ArrayList;

.field public final mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

.field public mUserTypeVersion:I

.field public final mUserTypes:Landroid/util/ArrayMap;

.field public mUserVersion:I

.field public final mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

.field public final mUsers:Landroid/util/SparseArray;

.field public final mUsersDir:Ljava/io/File;

.field public final mUsersLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$7Q1F1-uOhY87LkwKE9YjWMosBEg(Lcom/android/server/pm/UserManagerService;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->lambda$getUserListFile$6(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C-MtsZoJCM7oLXWlNRCmL2qcz18(Lcom/android/server/pm/UserManagerService;IILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->lambda$getUserFile$7(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GtXGV-DWzChsBxUg4EoO3z6nIxc(Landroid/os/IUserRestrictionsListener;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 4

    .line 3926
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/os/IUserRestrictionsListener;->onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 3928
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to invoke listener: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3929
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3928
    const-string p1, "IUserRestrictionsListener"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$HE-UvjdWdRLiXaegBrlRYxjZk8E(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->lambda$updateUserRestrictionsInternalLR$5(Landroid/os/Bundle;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IDqJCV1QygbphXUPbZPRN4aTFhA(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->lambda$setQuietModeEnabledAsync$1(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PKWXbs83FcCmzLX_vwuwoMrgZNI(Lcom/android/server/pm/UserManagerService;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->lambda$someUserHasAccountNoChecks$9(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UiS2XWKpcqjTpLGlGMFs8sVoEGY(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->lambda$new$3(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WsmJA-sCi2rhYVoGKfzJb0jgGOk(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->lambda$convertPreCreatedUserIfPossible$8(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yIybRUvnMFarqB2JHfYXkMUsauk(Lcom/android/server/pm/UserManagerService;ILjava/util/List;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->onPullAtom(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppRestrictionsLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackagesLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPm(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestrictionsLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserJourneyLogger(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserJourneyLogger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserLifecycleListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserRestrictionsListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserVisibilityMediator(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserVisibilityMediator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentBootPhase(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mCurrentBootPhase:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDeviceOwnerUserId(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmForceEphemeralUsers(Lcom/android/server/pm/UserManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddUserInfoFlags(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->addUserInfoFlags(Landroid/content/pm/UserInfo;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyUserRestrictionsLR(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelPendingAutoLockAlarms(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cancelPendingAutoLockAlarms()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupPartialUsers(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cleanupPartialUsers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupPreCreatedUsers(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cleanupPreCreatedUsers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishRemoveUser(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->finishRemoveUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetActivityManagerInternal(Lcom/android/server/pm/UserManagerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCommunalProfileIdUnchecked(Lcom/android/server/pm/UserManagerService;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCommunalProfileIdUnchecked()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetEffectiveUserRestrictions(Lcom/android/server/pm/UserManagerService;I)Landroid/os/Bundle;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetMainUserIdUnchecked(Lcom/android/server/pm/UserManagerService;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetProfileIdsLU(Lcom/android/server/pm/UserManagerService;ILjava/lang/String;ZZ)Landroid/util/IntArray;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(ILjava/lang/String;ZZ)Landroid/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetProfileIdsLU(Lcom/android/server/pm/UserManagerService;ILjava/lang/String;ZZZ)Landroid/util/IntArray;
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(ILjava/lang/String;ZZZ)Landroid/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetProfileParentIdUnchecked(Lcom/android/server/pm/UserManagerService;I)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentIdUnchecked(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetSupervisingProfileId(Lcom/android/server/pm/UserManagerService;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getSupervisingProfileId()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserDataLU(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserDataNoChecks(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserInfoLU(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserInfoNoChecks(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserPropertiesInternal(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserProperties;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserTypeDetails(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserTypeDetailsNoChecks(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserTypeDetails;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minvalidateOwnerNameIfNecessary(Lcom/android/server/pm/UserManagerService;Landroid/content/res/Resources;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->invalidateOwnerNameIfNecessary(Landroid/content/res/Resources;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misProfileUnchecked(Lcom/android/server/pm/UserManagerService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isProfileUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mregisterStatsCallbacks(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->registerStatsCallbacks()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveUserState(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveUserWithProfilesUnchecked(Lcom/android/server/pm/UserManagerService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserWithProfilesUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendUserInfoChangedBroadcast(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDefaultCrossProfileIntentFilters(Lcom/android/server/pm/UserManagerService;ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setDefaultCrossProfileIntentFilters(ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDevicePolicyUserRestrictionsInner(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLastEnteredForegroundTimeToNow(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->setLastEnteredForegroundTimeToNow(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartCommunalProfile(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->startCommunalProfile()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteBitmapLP(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteUserLP(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteUserListLP(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smfindRestrictionsFilesLAr(Ljava/nio/file/Path;)Ljava/util/Map;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->findRestrictionsFilesLAr(Ljava/nio/file/Path;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smisAutoLockForPrivateSpaceEnabled()Z
    .registers 1

    .line 0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isAutoLockForPrivateSpaceEnabled()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 364
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x37

    .line 365
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/UserManagerService;->PRIVATE_SPACE_AUTO_LOCK_INACTIVITY_ALARM_WINDOW_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 1117
    new-instance v4, Lcom/android/server/pm/UserJourneyLogger;

    invoke-direct {v4}, Lcom/android/server/pm/UserJourneyLogger;-><init>()V

    const-string v0, "mPackagesLock"

    .line 1118
    invoke-static {v0}, Lcom/android/internal/util/NamedLock;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1117
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Lcom/android/server/pm/UserJourneyLogger;Ljava/lang/Object;Ljava/io/File;Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Lcom/android/server/pm/UserJourneyLogger;Ljava/lang/Object;Ljava/io/File;Landroid/util/SparseArray;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/UserDataPreparer;",
            "Lcom/android/server/pm/UserJourneyLogger;",
            "Ljava/lang/Object;",
            "Ljava/io/File;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/UserManagerService$UserData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    .line 1135
    invoke-direct {v0}, Landroid/os/IUserManager$Stub;-><init>()V

    const/4 v3, 0x2

    .line 403
    invoke-static {v3}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 404
    const-string v3, "mRestrictionsLock"

    invoke-static {v3}, Lcom/android/internal/util/NamedLock;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    .line 406
    const-string v3, "mAppRestrictionsLock"

    invoke-static {v3}, Lcom/android/internal/util/NamedLock;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    .line 417
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionToken:Landroid/os/IBinder;

    .line 432
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mBootUserLatch:Ljava/util/concurrent/CountDownLatch;

    .line 538
    new-instance v3, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v3}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 553
    new-instance v3, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v3}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 562
    new-instance v3, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v3}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 571
    new-instance v3, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v3}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 574
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 585
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 589
    new-instance v3, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mDeathPredictor:Lcom/android/server/pm/UserFilter$DeathPredictor;

    .line 595
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    const/16 v3, -0x2710

    .line 612
    iput v3, v0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    const/4 v5, 0x0

    .line 617
    iput v5, v0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 618
    iput v5, v0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    .line 622
    new-instance v6, Lcom/android/server/pm/UserManagerService$LocalService;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService-IA;)V

    iput-object v6, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 624
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    .line 628
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    .line 672
    const-string v8, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    iput-object v8, v0, Lcom/android/server/pm/UserManagerService;->ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

    .line 675
    new-instance v8, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v8, v0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v8, v0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    .line 689
    iput-boolean v5, v0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    .line 691
    new-instance v8, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v8, v0}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v8, v0, Lcom/android/server/pm/UserManagerService;->mDeviceInactivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 906
    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v8, v0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    .line 908
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    iput-object v8, v0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    .line 910
    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    iput-object v8, v0, Lcom/android/server/pm/UserManagerService;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 912
    new-instance v8, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v8, v0}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v8, v0, Lcom/android/server/pm/UserManagerService;->mConfigurationChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1005
    new-instance v8, Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-direct {v8, v0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v8, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    .line 1010
    iput v3, v0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    .line 1014
    new-instance v3, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mNameConverter:Ljava/util/function/Function;

    .line 1136
    iput-object v1, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v3, p2

    .line 1137
    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v3, p4

    .line 1138
    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 1139
    iput-object v2, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    if-eqz p7, :cond_d7

    move-object/from16 v3, p7

    goto :goto_dc

    .line 1140
    :cond_d7
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    :goto_dc
    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 1141
    new-instance v3, Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {v3, v0}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 1142
    new-instance v9, Lcom/android/server/pm/MultiuserNonComplianceLogger;

    invoke-direct {v9, v3}, Lcom/android/server/pm/MultiuserNonComplianceLogger;-><init>(Landroid/os/Handler;)V

    iput-object v9, v0, Lcom/android/server/pm/UserManagerService;->mNonComplianceLogger:Lcom/android/server/pm/MultiuserNonComplianceLogger;

    .line 1143
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v15, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v13, 0x18

    invoke-direct/range {v10 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v10, v0, Lcom/android/server/pm/UserManagerService;->mInternalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 1145
    new-instance v9, Lcom/android/server/pm/UserVisibilityMediator;

    invoke-direct {v9, v3}, Lcom/android/server/pm/UserVisibilityMediator;-><init>(Landroid/os/Handler;)V

    iput-object v9, v0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    move-object/from16 v9, p3

    .line 1146
    iput-object v9, v0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    .line 1147
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypes()Landroid/util/ArrayMap;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    .line 1148
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getContextResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v0, v10, v4}, Lcom/android/server/pm/UserManagerService;->invalidateOwnerNameIfNecessary(Landroid/content/res/Resources;Z)V

    .line 1149
    monitor-enter p5

    .line 1150
    :try_start_117
    new-instance v4, Ljava/io/File;

    sget-object v10, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    move-object/from16 v11, p6

    invoke-direct {v4, v11, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    .line 1151
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1153
    new-instance v10, Ljava/io/File;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v4, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1154
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 1155
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1fd

    const/4 v12, -0x1

    invoke-static {v10, v11, v12, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1158
    new-instance v10, Ljava/io/File;

    const-string/jumbo v11, "userlist.xml"

    invoke-direct {v10, v4, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v10, v0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 1159
    new-instance v10, Ljava/io/File;

    const-string/jumbo v11, "user.list"

    invoke-direct {v10, v4, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v10, v0, Lcom/android/server/pm/UserManagerService;->mPerfUserListFile:Ljava/io/File;

    .line 1160
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 1161
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V

    .line 1162
    sput-object v0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    .line 1163
    monitor-exit p5
    :try_end_158
    .catchall {:try_start_117 .. :try_end_158} :catchall_17e

    .line 1164
    new-instance v2, Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-direct {v2, v0, v9}, Lcom/android/server/pm/UserSystemPackageInstaller;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;)V

    iput-object v2, v0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 1165
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1166
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1167
    invoke-virtual {v8, v5, v5}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->put(II)V

    .line 1168
    iput-object v7, v0, Lcom/android/server/pm/UserManagerService;->mUser0Allocations:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1169
    new-instance v1, Lcom/android/server/pm/UserManagerService$SettingsObserver;

    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/UserManagerService$SettingsObserver;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockSettingsObserver:Lcom/android/server/pm/UserManagerService$SettingsObserver;

    .line 1170
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->emulateSystemUserModeIfNeeded()V

    .line 1171
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->initPropertyInvalidatedCaches()V

    return-void

    :catchall_17e
    move-exception v0

    .line 1163
    :try_start_17f
    monitor-exit p5
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_17e

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;)V
    .registers 13

    .line 1128
    new-instance v4, Lcom/android/server/pm/UserJourneyLogger;

    invoke-direct {v4}, Lcom/android/server/pm/UserJourneyLogger;-><init>()V

    .line 1129
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1128
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Lcom/android/server/pm/UserJourneyLogger;Ljava/lang/Object;Ljava/io/File;Landroid/util/SparseArray;)V

    return-void
.end method

.method public static final checkCreateUsersPermission(I)V
    .registers 4

    const v0, -0x972d

    and-int/2addr v0, p0

    if-nez v0, :cond_24

    .line 4735
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2a

    .line 4736
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4739
    :cond_24
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_2b

    :goto_2a
    return-void

    .line 4740
    :cond_2b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to create an user  with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkCreateUsersPermission(Ljava/lang/String;)V
    .registers 4

    .line 4687
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4688
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V
    .registers 4

    .line 4638
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_33

    if-nez v0, :cond_b

    goto :goto_33

    .line 4645
    :cond_b
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 4646
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_33

    .line 4651
    :cond_1c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    :goto_33
    return-void
.end method

.method public static final checkManageUsersPermission(Ljava/lang/String;)V
    .registers 4

    .line 4671
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4672
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkQueryOrCreateUsersPermission(Ljava/lang/String;)V
    .registers 4

    .line 4720
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4721
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS, CREATE_USERS, or QUERY_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkQueryUsersPermission(Ljava/lang/String;)V
    .registers 4

    .line 4703
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4704
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or QUERY_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkSystemOrRoot(Ljava/lang/String;)V
    .registers 4

    .line 4811
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    .line 4812
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_26

    if-nez v0, :cond_f

    goto :goto_26

    .line 4813
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only system may: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_26
    return-void
.end method

.method public static checkUserTypeConsistency(I)Z
    .registers 2

    and-int/lit16 v0, p0, 0x120c

    .line 6771
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->isAtMostOneFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    and-int/lit16 v0, p0, 0x1400

    .line 6772
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->isAtMostOneFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    and-int/lit16 p0, p0, 0x1800

    .line 6773
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->isAtMostOneFlag(I)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)Z
    .registers 3

    .line 6196
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    .line 6197
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6198
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 6199
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_c

    .line 8517
    const-string p1, "<unknown>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 8519
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    sub-long/2addr p2, p4

    .line 8520
    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 8521
    const-string p2, " ago"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8522
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static enforceCurrentUserIfVisibleBackgroundEnabled()V
    .registers 7

    .line 2944
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2947
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2948
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2950
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-eqz v0, :cond_43

    if-eq v0, v3, :cond_43

    .line 2960
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    .line 2961
    invoke-virtual {v4, v0, v3}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_43

    .line 2962
    :cond_22
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid calling user on devices that enable visible background users. callingUserId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " currentUserId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_41
    .catchall {:try_start_f .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v0

    goto :goto_47

    .line 2968
    :cond_43
    :goto_43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2969
    throw v0
.end method

.method public static findRestrictionsFilesLAr(Ljava/nio/file/Path;)Ljava/util/Map;
    .registers 8

    .line 7652
    const-string v0, "glob:res_*.xml"

    .line 7653
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v0

    .line 7655
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7656
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object p0

    .line 7657
    :try_start_13
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    const/4 v4, 0x0

    .line 7658
    new-array v4, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 7659
    invoke-interface {v3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7663
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    sub-int/2addr v5, v6

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 7664
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_13 .. :try_end_4b} :catchall_4c

    goto :goto_17

    :catchall_4c
    move-exception v0

    goto :goto_52

    .line 7667
    :cond_4e
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->close()V

    return-object v1

    :goto_52
    if-eqz p0, :cond_5c

    .line 7656
    :try_start_54
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5c
    :goto_5c
    throw v0
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .registers 2

    .line 1019
    const-class v0, Lcom/android/server/pm/UserManagerService;

    monitor-enter v0

    .line 1020
    :try_start_3
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 1021
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static getMaxUsersOfTypePerParent(Lcom/android/server/pm/UserTypeDetails;)I
    .registers 1

    .line 9122
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowedPerParent()I

    move-result p0

    return p0
.end method

.method public static getRedacted(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 8054
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_chars"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final hasCreateUsersPermission()Z
    .registers 1

    .line 4780
    const-string v0, "android.permission.CREATE_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final hasManageUsersOrPermission(Ljava/lang/String;)Z
    .registers 3

    .line 4769
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4770
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission(I)Z

    move-result v1

    if-nez v1, :cond_13

    .line 4771
    invoke-static {p0, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static final hasManageUsersPermission()Z
    .registers 1

    .line 4750
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4751
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission(I)Z

    move-result v0

    return v0
.end method

.method public static hasManageUsersPermission(I)Z
    .registers 2

    const/16 v0, 0x3e8

    .line 4759
    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz p0, :cond_15

    const-string v0, "android.permission.MANAGE_USERS"

    .line 4761
    invoke-static {v0, p0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public static hasPermissionGranted(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 4656
    invoke-static {p0, p1, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0

    if-nez p0, :cond_9

    return v1

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static final hasQueryOrCreateUsersPermission()Z
    .registers 2

    .line 4799
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasCreateUsersPermission()Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "android.permission.QUERY_USERS"

    .line 4800
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public static final hasQueryUsersPermission()Z
    .registers 1

    .line 4789
    const-string v0, "android.permission.QUERY_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final initPropertyInvalidatedCaches()V
    .registers 0

    .line 1179
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 1180
    invoke-static {}, Landroid/os/UserManager;->invalidateQuietModeEnabledCache()V

    .line 1181
    invoke-static {}, Landroid/os/UserManager;->invalidateStaticUserProperties()V

    .line 1182
    invoke-static {}, Landroid/os/UserManager;->invalidateUserPropertiesCache()V

    .line 1183
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    .line 1184
    invoke-static {}, Landroid/os/UserManager;->invalidateUserRestriction()V

    return-void
.end method

.method public static isAtMostOneFlag(I)Z
    .registers 2

    .line 0
    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static isAutoLockForPrivateSpaceEnabled()Z
    .registers 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static isCreationOverrideEnabled()Z
    .registers 2

    .line 4450
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const-string v0, "debug.user.creation_override"

    .line 4451
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    return v1
.end method

.method public static isSameProfileGroup(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .registers 4

    .line 2028
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_13

    iget p0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_11

    iget p1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne p0, p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static isUserTypeEligibleForPreCreation(Lcom/android/server/pm/UserTypeDetails;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 6876
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v1

    if-nez v1, :cond_18

    .line 6877
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.os.usertype.full.RESTRICTED"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    return v0
.end method

.method public static packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 8050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".xml"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printNullableUser(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .registers 3

    .line 8382
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p1, -0x2710

    if-ne p2, p1, :cond_12

    .line 8384
    const-string p1, "N/A"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 8386
    :cond_12
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public static readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .registers 8

    .line 7619
    const-string v0, "UserManagerService"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7620
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7621
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_17

    return-object v1

    :cond_17
    const/4 v3, 0x0

    .line 7627
    :try_start_18
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 7628
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v4

    .line 7629
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 7630
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4a

    .line 7631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read restrictions file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7632
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7631
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_42} :catch_48
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_42} :catch_48
    .catchall {:try_start_18 .. :try_end_42} :catchall_46

    .line 7641
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :catchall_46
    move-exception p0

    goto :goto_75

    :catch_48
    move-exception v2

    goto :goto_59

    .line 7635
    :cond_4a
    :goto_4a
    :try_start_4a
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_55

    .line 7636
    invoke-static {v1, v2, v4}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_54} :catch_48
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_54} :catch_48
    .catchall {:try_start_4a .. :try_end_54} :catchall_46

    goto :goto_4a

    .line 7641
    :cond_55
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    .line 7639
    :goto_59
    :try_start_59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_46

    .line 7641
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :goto_75
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 7642
    throw p0
.end method

.method public static readBundleEntry(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 5

    .line 7716
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7717
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 7718
    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 7719
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_9

    :cond_13
    return-object v0
.end method

.method public static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 9

    .line 7673
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ca

    .line 7674
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "entry"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 7675
    const-string v0, "key"

    const/4 v2, 0x0

    invoke-interface {p2, v2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7676
    const-string/jumbo v3, "type"

    invoke-interface {p2, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7677
    const-string v4, "m"

    const/4 v5, -0x1

    invoke-interface {p2, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_60

    .line 7679
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2d
    :goto_2d
    if-lez v2, :cond_53

    .line 7680
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_53

    if-ne v3, v1, :cond_2d

    .line 7682
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 7683
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_2d

    .line 7687
    :cond_53
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 7688
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7689
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 7690
    :cond_60
    const-string v1, "B"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 7691
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 7692
    :cond_70
    const-string v1, "BA"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 7693
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 7694
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7695
    :goto_81
    invoke-static {p2, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 7696
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v3

    .line 7697
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 7700
    :cond_8f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    .line 7699
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void

    .line 7702
    :cond_9f
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 7703
    const-string p2, "b"

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b7

    .line 7704
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 7705
    :cond_b7
    const-string p2, "i"

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c7

    .line 7706
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    .line 7708
    :cond_c7
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ca
    return-void
.end method

.method public static writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .registers 8

    .line 7736
    const-string/jumbo v0, "restrictions"

    const/4 v1, 0x0

    .line 7738
    :try_start_4
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_2a

    .line 7739
    :try_start_8
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v3

    .line 7740
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7741
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 7743
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7744
    invoke-static {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 7745
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7747
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 7748
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception p0

    move-object v1, v2

    goto :goto_2b

    :catch_2a
    move-exception p0

    .line 7750
    :goto_2b
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 7751
    const-string p1, "UserManagerService"

    const-string v0, "Error writing application restrictions list"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 5

    .line 7727
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 7728
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p2

    .line 7729
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 7730
    invoke-static {p1, v0}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    return-void
.end method

.method public static writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 12

    .line 7757
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7758
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 7759
    const-string v4, "entry"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7760
    const-string v5, "key"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7762
    instance-of v1, v2, Ljava/lang/Boolean;

    const-string/jumbo v5, "type"

    if-eqz v1, :cond_38

    .line 7763
    const-string v1, "b"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7764
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_c4

    .line 7765
    :cond_38
    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_4a

    .line 7766
    const-string v1, "i"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7767
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_c4

    .line 7768
    :cond_4a
    const-string v1, ""

    if-eqz v2, :cond_b6

    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_53

    goto :goto_b6

    .line 7771
    :cond_53
    instance-of v6, v2, Landroid/os/Bundle;

    const-string v7, "B"

    if-eqz v6, :cond_62

    .line 7772
    invoke-interface {p1, v3, v5, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7773
    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V

    goto :goto_c4

    .line 7774
    :cond_62
    instance-of v6, v2, [Landroid/os/Parcelable;

    const/4 v8, 0x0

    if-eqz v6, :cond_90

    .line 7775
    const-string v1, "BA"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7776
    check-cast v2, [Landroid/os/Parcelable;

    .line 7777
    array-length v1, v2

    :goto_6f
    if-ge v8, v1, :cond_c4

    aget-object v6, v2, v8

    .line 7778
    instance-of v9, v6, Landroid/os/Bundle;

    if-eqz v9, :cond_88

    .line 7781
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7782
    invoke-interface {p1, v3, v5, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7783
    check-cast v6, Landroid/os/Bundle;

    invoke-static {v6, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 7784
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_6f

    .line 7779
    :cond_88
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bundle-array can only hold Bundles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7787
    :cond_90
    const-string/jumbo v6, "sa"

    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7788
    check-cast v2, [Ljava/lang/String;

    .line 7789
    const-string v5, "m"

    array-length v6, v2

    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 7790
    array-length v5, v2

    :goto_9f
    if-ge v8, v5, :cond_c4

    aget-object v6, v2, v8

    .line 7791
    const-string/jumbo v7, "value"

    invoke-interface {p1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v6, :cond_ac

    goto :goto_ad

    :cond_ac
    move-object v6, v1

    .line 7792
    :goto_ad
    invoke-interface {p1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7793
    invoke-interface {p1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_9f

    .line 7769
    :cond_b6
    :goto_b6
    const-string/jumbo v6, "s"

    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v2, :cond_c1

    .line 7770
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    :cond_c1
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7796
    :cond_c4
    :goto_c4
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_8

    :cond_c9
    return-void
.end method


# virtual methods
.method public addRemovingUserId(I)V
    .registers 3

    .line 7251
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7252
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 7253
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public addRemovingUserIdLocked(I)V
    .registers 4

    .line 7261
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 7262
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7264
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_1e

    .line 7265
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_1e
    return-void
.end method

.method public final addUserDataLU(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 3

    .line 7862
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    .line 7863
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v0, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final addUserInfoFlags(Landroid/content/pm/UserInfo;I)V
    .registers 4

    .line 2452
    iget p0, p1, Landroid/content/pm/UserInfo;->flags:I

    not-int v0, p0

    and-int/2addr p2, v0

    if-lez p2, :cond_c

    or-int/2addr p0, p2

    .line 2454
    iput p0, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 2455
    invoke-static {p2}, Landroid/os/UserManager;->invalidateOnUserInfoFlagChange(I)V

    :cond_c
    return-void
.end method

.method public addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V
    .registers 4

    .line 3916
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_13

    .line 3923
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    new-instance v0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda9;-><init>(Landroid/os/IUserRestrictionsListener;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService$LocalService;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    return-void

    .line 3917
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Non-system caller"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final applyDefaultUserSettings(Lcom/android/server/pm/UserTypeDetails;I)V
    .registers 12

    .line 6639
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getDefaultSystemSettings()Landroid/os/Bundle;

    move-result-object v0

    .line 6640
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getDefaultSecureSettings()Landroid/os/Bundle;

    move-result-object p1

    .line 6641
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_90

    .line 6645
    :cond_16
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    .line 6646
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    .line 6648
    :goto_28
    const-string v5, "UserManagerService"

    if-ge v4, v1, :cond_55

    .line 6649
    aget-object v6, v2, v4

    .line 6650
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 6651
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 6650
    invoke-static {v7, v6, v8, p2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_52

    .line 6653
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to insert default system setting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 6657
    :cond_55
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    .line 6658
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_65
    if-ge v3, v0, :cond_90

    .line 6661
    aget-object v2, v1, v3

    .line 6662
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 6663
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6662
    invoke-static {v4, v2, v6, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_8d

    .line 6665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert default secure setting: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    :cond_90
    :goto_90
    return-void
.end method

.method public final applyUserRestrictionsForAllUsersLR()V
    .registers 2

    .line 4136
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0}, Lcom/android/server/pm/RestrictionsSet;->removeAllRestrictions()V

    .line 4140
    new-instance v0, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 4162
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final applyUserRestrictionsLR(I)V
    .registers 3

    const/4 v0, 0x0

    .line 4125
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 4126
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    return-void
.end method

.method public final areThereMultipleSwitchableUsers()Z
    .registers 5

    const/4 v0, 0x1

    .line 3344
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    .line 3346
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3347
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v2, :cond_20

    return v0

    :cond_20
    move v2, v0

    goto :goto_b

    :cond_22
    return v1
.end method

.method public autoLockPrivateSpace()V
    .registers 5

    .line 873
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPrivateProfileUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_29

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-locking private space with user-id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 879
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 877
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabledAsync(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public final broadcastProfileAvailabilityChanges(Landroid/content/pm/UserInfo;Landroid/os/UserHandle;ZZ)V
    .registers 9

    .line 2045
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2047
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/UserManagerService;->getAvailabilityIntentAction(ZZ)Ljava/lang/String;

    move-result-object v1

    .line 2046
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2048
    const-string v1, "android.intent.extra.QUIET_MODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2049
    const-string p3, "android.intent.extra.USER"

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2051
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    .line 2050
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2052
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_43

    .line 2053
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p3

    if-nez p3, :cond_40

    .line 2057
    const-string p3, "broadcastProfileAvailabilityChanges(profile=%s, parent=%s): not calling dmpi.broadcastIntentToManifestReceivers() because dpmi is null"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "UserManagerService"

    invoke-static {v3, p3, v2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_43

    .line 2061
    :cond_40
    invoke-virtual {p3, v0, p2, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    :cond_43
    :goto_43
    const/high16 p3, 0x50000000

    .line 2065
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2070
    new-instance p3, Landroid/app/BroadcastOptions;

    invoke-direct {p3}, Landroid/app/BroadcastOptions;-><init>()V

    const/4 v2, 0x2

    .line 2071
    invoke-virtual {p3, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object p3

    .line 2072
    invoke-virtual {p3, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object p3

    if-eqz p4, :cond_5b

    .line 2075
    const-string p4, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    goto :goto_5d

    .line 2076
    :cond_5b
    const-string p4, "android.intent.action.PROFILE_AVAILABLE"

    .line 2077
    :goto_5d
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 2074
    invoke-virtual {p3, p4, p1}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object p1

    .line 2078
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 2079
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final canAddMoreProfilesToUser(Lcom/android/server/pm/UserTypeDetails;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 4470
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Lcom/android/server/pm/UserTypeDetails;IZ)Z

    move-result p0

    return p0
.end method

.method public final canAddMoreProfilesToUser(Lcom/android/server/pm/UserTypeDetails;IZ)Z
    .registers 4

    if-eqz p1, :cond_10

    .line 4487
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getRemainingCreatableProfileCount(Lcom/android/server/pm/UserTypeDetails;IZ)I

    move-result p0

    if-gtz p0, :cond_e

    .line 4488
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z
    .registers 5

    .line 4463
    const-string v0, "get the remaining number of profiles that can be added to the given user."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 4465
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserTypeDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Lcom/android/server/pm/UserTypeDetails;IZ)Z

    move-result p0

    return p0
.end method

.method public final canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z
    .registers 3

    const/4 v0, 0x0

    .line 4298
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getRemainingCreatableUserCount(Lcom/android/server/pm/UserTypeDetails;I)I

    move-result p0

    if-gtz p0, :cond_f

    .line 4299
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    return v0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public canAddMoreUsersOfType(Ljava/lang/String;)Z
    .registers 3

    .line 4427
    const-string v0, "check if more users can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 4428
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p1, :cond_17

    .line 4429
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public canAddPrivateProfile(I)Z
    .registers 4

    .line 3393
    const-string v0, "canAddPrivateProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 3405
    const-string v0, "android.os.usertype.profile.PRIVATE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "no_add_private_profile"

    .line 3406
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    return v1
.end method

.method public canHaveRestrictedProfile(I)Z
    .registers 3

    .line 3370
    const-string v0, "canHaveRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3371
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->canHaveRestrictedProfileNoChecks(I)Z

    move-result p0

    return p0
.end method

.method public final canHaveRestrictedProfileNoChecks(I)Z
    .registers 7

    .line 3375
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 3378
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3379
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    .line 3380
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_33

    .line 3383
    :cond_19
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v2

    if-nez v2, :cond_23

    .line 3384
    monitor-exit v0

    return v3

    :catchall_21
    move-exception p0

    goto :goto_35

    .line 3386
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_21

    .line 3387
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 3388
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_32

    :cond_31
    return v3

    :cond_32
    :goto_32
    return v1

    .line 3381
    :cond_33
    :goto_33
    :try_start_33
    monitor-exit v0

    return v3

    .line 3386
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_21

    throw p0
.end method

.method public canSwitchToHeadlessSystemUser()Z
    .registers 2

    .line 9384
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getContextResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111006b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final cancelPendingAutoLockAlarms()V
    .registers 3

    .line 708
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_13

    .line 709
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    if-eqz p0, :cond_13

    .line 710
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_13
    return-void
.end method

.method public final checkAdminStatusChangeAllowed(I)V
    .registers 4

    .line 4829
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string/jumbo v1, "no_grant_admin"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 4830
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_14

    return-void

    .line 4831
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Admin status change is restricted. The DISALLOW_GRANT_ADMIN restriction is applied either on the current or the target user."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .registers 4

    .line 3131
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_38

    .line 3132
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_38

    .line 3135
    :cond_d
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_38

    .line 3138
    :cond_14
    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    .line 3139
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 3138
    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_38

    .line 3142
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "You need INTERACT_ACROSS_USERS or MANAGE_USERS permission to: check "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    :goto_38
    return-void
.end method

.method public final checkQueryOrCreateUsersPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .registers 4

    .line 3188
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_10

    .line 3189
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_10

    .line 3192
    :cond_d
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public final checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .registers 4

    .line 3159
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_38

    .line 3160
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_38

    .line 3163
    :cond_d
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryUsersPermission()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_38

    .line 3166
    :cond_14
    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    .line 3167
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 3166
    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_38

    .line 3170
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "You need INTERACT_ACROSS_USERS, MANAGE_USERS, or QUERY_USERS permission to: check "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    :goto_38
    return-void
.end method

.method public final cleanupPartialUsers()V
    .registers 9

    .line 1300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1302
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v2, :cond_43

    .line 1304
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1305
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_27

    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v6, :cond_40

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_80

    :cond_27
    :goto_27
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eqz v6, :cond_40

    .line 1306
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 1308
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    :cond_3d
    const/4 v6, 0x1

    .line 1310
    iput-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1313
    :cond_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_25

    .line 1314
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_48
    if-ge v3, v1, :cond_7f

    .line 1316
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1317
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing partially created user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_7f
    return-void

    .line 1313
    :goto_80
    :try_start_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_25

    throw p0
.end method

.method public final cleanupPreCreatedUsers()V
    .registers 8

    .line 1329
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1330
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v1, :cond_36

    .line 1333
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1334
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v6, :cond_33

    .line 1335
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    const/16 v6, 0x40

    .line 1337
    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/UserManagerService;->addUserInfoFlags(Landroid/content/pm/UserInfo;I)V

    const/4 v6, 0x1

    .line 1338
    iput-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    goto :goto_33

    :catchall_31
    move-exception p0

    goto :goto_64

    :cond_33
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1341
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_31

    .line 1342
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3b
    if-ge v3, v0, :cond_63

    .line 1344
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1345
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing pre-created user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_63
    return-void

    .line 1341
    :goto_64
    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_31

    throw p0
.end method

.method public clearSeedAccountData(I)V
    .registers 4

    .line 8121
    const-string v0, "Cannot clear seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 8122
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8124
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_14

    .line 8125
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    if-nez p1, :cond_18

    .line 8126
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_16

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception p0

    goto :goto_23

    :catchall_16
    move-exception p0

    goto :goto_21

    .line 8127
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->clearSeedAccountData()V

    .line 8128
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_16

    .line 8129
    :try_start_1c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 8130
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_14

    return-void

    .line 8128
    :goto_21
    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_16

    :try_start_22
    throw p0

    .line 8130
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_14

    throw p0
.end method

.method public final computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;
    .registers 5

    .line 3840
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictionsNonNull(I)Landroid/os/Bundle;

    move-result-object v0

    .line 3842
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictionsNonNull(I)Landroid/os/Bundle;

    move-result-object v1

    .line 3844
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictionsNonNull(I)Landroid/os/Bundle;

    move-result-object p0

    .line 3846
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_20

    return-object v0

    .line 3850
    :cond_20
    invoke-static {v0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 3851
    invoke-static {p1, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 3852
    invoke-static {p1, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final convertPreCreatedUserIfPossible(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .registers 11

    .line 6718
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6719
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getPreCreatedUserLU(Ljava/lang/String;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 6720
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_e2

    const/4 v0, 0x0

    if-nez v1, :cond_c

    return-object v0

    .line 6724
    :cond_c
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v2

    .line 6725
    :try_start_f
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->has(I)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 6726
    const-string p0, "UserManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot reuse pre-created user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " because it didn\'t stop yet"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6728
    monitor-exit v2

    return-object v0

    :catchall_3c
    move-exception p0

    goto/16 :goto_e0

    .line 6730
    :cond_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_3c

    .line 6731
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 6732
    iget v3, v2, Landroid/content/pm/UserInfo;->flags:I

    or-int/2addr v3, p2

    .line 6733
    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkUserTypeConsistency(I)Z

    move-result v4

    if-nez v4, :cond_8b

    .line 6734
    const-string p0, "UserManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot reuse pre-created user "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " of type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because flags are inconsistent. Flags ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6736
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "); preCreatedUserFlags ( "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 6737
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6734
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 6740
    :cond_8b
    const-string v0, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reusing pre-created user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and bestowing on it flags "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6741
    invoke-static {p2}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6740
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6742
    iput-object p3, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 6743
    iput v3, v2, Landroid/content/pm/UserInfo;->flags:I

    const/4 p1, 0x0

    .line 6744
    iput-boolean p1, v2, Landroid/content/pm/UserInfo;->preCreated:Z

    const/4 p1, 0x1

    .line 6745
    iput-boolean p1, v2, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    .line 6746
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCreationTime()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/content/pm/UserInfo;->creationTime:J

    .line 6748
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6749
    :try_start_ca
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 6750
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 6751
    monitor-exit p1
    :try_end_d1
    .catchall {:try_start_ca .. :try_end_d1} :catchall_dd

    .line 6752
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 6753
    new-instance p1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, v2, p4}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-object v2

    :catchall_dd
    move-exception p0

    .line 6751
    :try_start_de
    monitor-exit p1
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    throw p0

    .line 6730
    :goto_e0
    :try_start_e0
    monitor-exit v2
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_3c

    throw p0

    :catchall_e2
    move-exception p0

    .line 6720
    :try_start_e3
    monitor-exit v0
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw p0
.end method

.method public createProfileForUserEvenWhenDisallowedWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 14

    .line 6233
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 6235
    :try_start_b
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_f
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_b .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception v0

    move-object p0, v0

    .line 6238
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 7

    .line 6216
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    .line 6218
    :try_start_3
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_7
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_3 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception v0

    move-object p0, v0

    .line 6220
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 10

    .line 6970
    const-string/jumbo v0, "setupRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 6971
    const-string v3, "android.os.usertype.full.RESTRICTED"

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 6973
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 6975
    :try_start_15
    const-string/jumbo v0, "no_modify_accounts"

    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 6978
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "location_mode"

    iget v4, p0, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-static {v0, v2, v5, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6981
    const-string/jumbo v0, "no_share_location"

    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_38

    .line 6983
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_38
    move-exception v0

    move-object p0, v0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6984
    throw p0
.end method

.method public final createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 14

    .line 6321
    invoke-static {p2}, Landroid/os/UserManager;->isUserTypeCloneProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 6322
    const-string/jumbo v1, "no_add_clone_profile"

    goto :goto_21

    .line 6323
    :cond_a
    invoke-static {p2}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 6324
    const-string/jumbo v1, "no_add_managed_profile"

    goto :goto_21

    .line 6325
    :cond_14
    invoke-static {p2}, Landroid/os/UserManager;->isUserTypePrivateProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 6326
    const-string/jumbo v1, "no_add_private_profile"

    goto :goto_21

    .line 6325
    :cond_1e
    const-string/jumbo v1, "no_add_user"

    .line 6329
    :goto_21
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const-string v3, "Cannot add user"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(Ljava/lang/String;ILjava/lang/String;)V

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_3a

    .line 6334
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string v2, "Cannot create ADMIN user"

    .line 6333
    const-string/jumbo v3, "no_grant_admin"

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3a
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 6338
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .registers 18

    .line 6349
    new-instance v8, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v8}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 6350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createUser-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6351
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/4 v1, -0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    .line 6354
    :try_start_2a
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/UserManagerService;->createUserInternalUncheckedNoTracing(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_4b

    if-eqz v0, :cond_3a

    .line 6359
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    invoke-virtual {v2, p0, v0}, Lcom/android/server/pm/UserJourneyLogger;->logUserCreateJourneyFinish(ILandroid/content/pm/UserInfo;)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    goto :goto_47

    .line 6361
    :cond_3a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 6363
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v4

    const/4 v5, -0x1

    const/4 v3, 0x4

    move-object v6, p2

    move v7, p3

    .line 6361
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/UserJourneyLogger;->logNullUserJourneyError(IIILjava/lang/String;I)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 6365
    :goto_47
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-object v0

    :catchall_4b
    move-exception v0

    .line 6361
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 6363
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v4

    const/4 v5, -0x1

    const/4 v3, 0x4

    move-object v6, p2

    move v7, p3

    .line 6361
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/UserJourneyLogger;->logNullUserJourneyError(IIILjava/lang/String;I)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 6365
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6366
    throw v0
.end method

.method public final createUserInternalUncheckedNoTracing(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    const/16 v6, 0x64

    move-object/from16 v7, p1

    .line 6375
    invoke-virtual {v0, v7, v6}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 6376
    iget-object v6, v0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserTypeDetails;

    const/4 v13, 0x1

    if-nez v6, :cond_33

    .line 6378
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot create user of invalid user type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v13}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 6382
    :cond_33
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    .line 6383
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v1

    or-int v1, p3, v1

    .line 6384
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkUserTypeConsistency(I)Z

    move-result v7

    if-nez v7, :cond_68

    .line 6385
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot add user. Flags ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6386
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") and userTypeDetails ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") are inconsistent."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6385
    invoke-virtual {v0, v7, v13}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    :cond_68
    and-int/lit16 v7, v1, 0x800

    if-eqz v7, :cond_89

    .line 6392
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot add user. Flags ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6393
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") indicated SYSTEM user, which cannot be created."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6392
    invoke-virtual {v0, v7, v13}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 6397
    :cond_89
    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v7

    if-nez v7, :cond_aa

    .line 6398
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot add a user of disabled type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 6402
    :cond_aa
    invoke-virtual {v0, v12}, Lcom/android/server/pm/UserManagerService;->doSystemFeaturesSupportUserType(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_cb

    .line 6404
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot add user due to lack of underlying feature support for type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x9

    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 6410
    :cond_cb
    iget-object v7, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7

    .line 6411
    :try_start_ce
    iget-boolean v8, v0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    if-eqz v8, :cond_d4

    or-int/lit16 v1, v1, 0x100

    .line 6414
    :cond_d4
    monitor-exit v7
    :try_end_d5
    .catchall {:try_start_ce .. :try_end_d5} :catchall_397

    if-nez v3, :cond_e6

    if-gez v2, :cond_e6

    .line 6417
    invoke-static {v6}, Lcom/android/server/pm/UserManagerService;->isUserTypeEligibleForPreCreation(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v7

    if-eqz v7, :cond_e6

    .line 6418
    invoke-virtual {v0, v12, v1, v9, v5}, Lcom/android/server/pm/UserManagerService;->convertPreCreatedUserIfPossible(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_e6

    return-object v7

    .line 6425
    :cond_e6
    const-class v7, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 6426
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 6427
    invoke-interface {v7}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryLow()Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 6428
    const-string v7, "Cannot add user. Not enough space on disk."

    const/4 v8, 0x5

    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    :cond_fa
    and-int/lit16 v7, v1, 0x4000

    if-eqz v7, :cond_100

    move v15, v13

    goto :goto_101

    :cond_100
    const/4 v15, 0x0

    .line 6434
    :goto_101
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v16

    .line 6435
    invoke-static {v12}, Landroid/os/UserManager;->isUserTypeGuest(Ljava/lang/String;)Z

    move-result v17

    .line 6436
    invoke-static {v12}, Landroid/os/UserManager;->isUserTypeRestricted(Ljava/lang/String;)Z

    move-result v18

    .line 6437
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails;->isProfileParentRequired()Z

    move-result v7

    .line 6439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 6444
    :try_start_115
    iget-object v8, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_118
    .catchall {:try_start_115 .. :try_end_118} :catchall_2f3

    const/16 v10, -0x2710

    if-eq v2, v10, :cond_145

    .line 6447
    :try_start_11c
    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_13b

    .line 6448
    :try_start_11f
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v21

    .line 6449
    monitor-exit v11
    :try_end_124
    .catchall {:try_start_11f .. :try_end_124} :catchall_142

    if-nez v21, :cond_13f

    .line 6451
    :try_start_126
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot find user data for parent user "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11, v13}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V
    :try_end_13a
    .catchall {:try_start_126 .. :try_end_13a} :catchall_13b

    goto :goto_13f

    :catchall_13b
    move-exception v0

    move-object v1, v8

    goto/16 :goto_391

    :cond_13f
    :goto_13f
    move-object/from16 v14, v21

    goto :goto_148

    :catchall_142
    move-exception v0

    .line 6449
    :try_start_143
    monitor-exit v11
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_142

    :try_start_144
    throw v0

    :cond_145
    const/16 v21, 0x0

    goto :goto_13f

    :goto_148
    if-eqz v15, :cond_16a

    .line 6457
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result v13

    if-eq v13, v10, :cond_16a

    .line 6459
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot add user with FLAG_MAIN as main user already exists (id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    invoke-virtual {v0, v10, v11}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 6465
    :cond_16a
    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerService;->canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v10

    if-nez v10, :cond_18a

    .line 6466
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot add more users of type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ". Maximum number of that type already exists."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    invoke-virtual {v0, v10, v11}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    :cond_18a
    if-eqz v7, :cond_1af

    .line 6484
    invoke-virtual {v0, v6, v2}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Lcom/android/server/pm/UserTypeDetails;I)Z

    move-result v7

    if-nez v7, :cond_1af

    .line 6485
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot add more profiles of type "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " for user "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x6

    invoke-virtual {v0, v7, v11}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    :cond_1af
    if-eqz v18, :cond_1cc

    .line 6490
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->canHaveRestrictedProfileNoChecks(I)Z

    move-result v7

    if-nez v7, :cond_1cc

    .line 6491
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot add restricted profile for user "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v0, v7, v10}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V
    :try_end_1cc
    .catchall {:try_start_144 .. :try_end_1cc} :catchall_13b

    :cond_1cc
    move-object v7, v8

    .line 6496
    :try_start_1cd
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId()I

    move-result v8

    .line 6497
    const-string v10, "UserManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Creating user "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " of type "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6498
    invoke-static {v8}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 6500
    iget-object v13, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_1f9
    .catchall {:try_start_1cd .. :try_end_1f9} :catchall_38f

    if-eqz v14, :cond_20a

    .line 6502
    :try_start_1fb
    iget-object v10, v14, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v10
    :try_end_201
    .catchall {:try_start_1fb .. :try_end_201} :catchall_206

    if-eqz v10, :cond_20a

    or-int/lit16 v1, v1, 0x100

    goto :goto_20a

    :catchall_206
    move-exception v0

    move-object v1, v7

    goto/16 :goto_38d

    :cond_20a
    :goto_20a
    if-eqz v3, :cond_20e

    and-int/lit16 v1, v1, -0x101

    :cond_20e
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_214

    or-int/lit16 v1, v1, 0x2000

    :cond_214
    move v11, v1

    move-object v1, v7

    .line 6517
    :try_start_216
    new-instance v7, Landroid/content/pm/UserInfo;

    const/4 v10, 0x0

    move/from16 p2, v15

    const/16 v15, -0x2710

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6518
    iget v9, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iput v9, v7, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 6519
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getCreationTime()J

    move-result-wide v9

    iput-wide v9, v7, Landroid/content/pm/UserInfo;->creationTime:J

    const/4 v10, 0x1

    .line 6520
    iput-boolean v10, v7, Landroid/content/pm/UserInfo;->partial:Z

    .line 6521
    iput-boolean v3, v7, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 6522
    sget-object v9, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v9, v7, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 6523
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v9

    if-eqz v9, :cond_249

    if-eq v2, v15, :cond_249

    .line 6524
    invoke-virtual {v0, v2, v12}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(ILjava/lang/String;)I

    move-result v9

    iput v9, v7, Landroid/content/pm/UserInfo;->profileBadge:I

    goto :goto_249

    :catchall_246
    move-exception v0

    goto/16 :goto_38d

    .line 6526
    :cond_249
    :goto_249
    new-instance v9, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v9}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 6527
    iput-object v7, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 6528
    new-instance v10, Landroid/content/pm/UserProperties;

    .line 6529
    invoke-virtual {v6}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserPropertiesReference()Landroid/content/pm/UserProperties;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/pm/UserProperties;-><init>(Landroid/content/pm/UserProperties;)V

    iput-object v10, v9, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    .line 6530
    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->addUserDataLU(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 6531
    monitor-exit v13
    :try_end_25f
    .catchall {:try_start_216 .. :try_end_25f} :catchall_246

    .line 6532
    :try_start_25f
    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 6533
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    if-eqz v14, :cond_296

    if-eqz v16, :cond_281

    .line 6536
    iget-object v10, v14, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v10, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v11, v15, :cond_27a

    .line 6537
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    iput v11, v10, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 6538
    invoke-virtual {v0, v14}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_27a

    :catchall_277
    move-exception v0

    goto/16 :goto_391

    .line 6540
    :cond_27a
    :goto_27a
    iget-object v10, v14, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v10, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    goto :goto_296

    :cond_281
    if-eqz v18, :cond_296

    .line 6542
    iget-object v10, v14, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v10, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v11, v15, :cond_290

    .line 6543
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    iput v11, v10, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 6544
    invoke-virtual {v0, v14}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 6546
    :cond_290
    iget-object v10, v14, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v10, v7, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 6549
    :cond_296
    :goto_296
    monitor-exit v1
    :try_end_297
    .catchall {:try_start_25f .. :try_end_297} :catchall_277

    .line 6551
    :try_start_297
    const-string v1, "createUserStorageKeys"

    invoke-virtual {v4, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6552
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getStorageManagerInternal()Lcom/android/server/StorageManagerInternal;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v10

    invoke-virtual {v1, v8, v10}, Lcom/android/server/StorageManagerInternal;->createUserStorageKeys(IZ)V

    .line 6553
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6558
    const-string/jumbo v1, "prepareUserData"

    invoke-virtual {v4, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6559
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v10, 0x1

    invoke-virtual {v1, v7, v10}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(Landroid/content/pm/UserInfo;I)V

    .line 6560
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6562
    const-string v1, "LSS.createNewUser"

    invoke-virtual {v4, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6563
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getLockSettingsInternal()Lcom/android/server/locksettings/LockSettingsInternal;

    move-result-object v1

    iget v10, v7, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v1, v8, v10}, Lcom/android/server/locksettings/LockSettingsInternal;->createNewUser(II)V

    .line 6564
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6566
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 6567
    invoke-virtual {v1, v12}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 6568
    const-string v10, "PM.createNewUser"

    invoke-virtual {v4, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6569
    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v11, p6

    invoke-virtual {v10, v8, v1, v11}, Lcom/android/server/pm/PackageManagerService;->createNewUser(ILjava/util/Set;[Ljava/lang/String;)V

    .line 6570
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6572
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v17, :cond_2f6

    .line 6575
    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v10
    :try_end_2e9
    .catchall {:try_start_297 .. :try_end_2e9} :catchall_2f3

    .line 6576
    :try_start_2e9
    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 6577
    monitor-exit v10

    goto :goto_307

    :catchall_2f0
    move-exception v0

    monitor-exit v10
    :try_end_2f2
    .catchall {:try_start_2e9 .. :try_end_2f2} :catchall_2f0

    :try_start_2f2
    throw v0

    :catchall_2f3
    move-exception v0

    goto/16 :goto_393

    .line 6579
    :cond_2f6
    invoke-virtual {v6, v1}, Lcom/android/server/pm/UserTypeDetails;->addDefaultRestrictionsTo(Landroid/os/Bundle;)V

    if-eqz p2, :cond_307

    .line 6581
    const-string/jumbo v10, "no_outgoing_calls"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6582
    const-string/jumbo v10, "no_sms"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6585
    :cond_307
    :goto_307
    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_30a
    .catchall {:try_start_2f2 .. :try_end_30a} :catchall_2f3

    .line 6586
    :try_start_30a
    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v11, v8, v1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 6587
    monitor-exit v10
    :try_end_310
    .catchall {:try_start_30a .. :try_end_310} :catchall_38a

    const/4 v10, 0x0

    .line 6589
    :try_start_311
    iput-boolean v10, v7, Landroid/content/pm/UserInfo;->partial:Z

    .line 6590
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    .line 6592
    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_319
    .catchall {:try_start_311 .. :try_end_319} :catchall_2f3

    .line 6593
    :try_start_319
    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 6594
    monitor-exit v10
    :try_end_31d
    .catchall {:try_start_319 .. :try_end_31d} :catchall_387

    .line 6595
    :try_start_31d
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 6597
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PM.onNewUserCreated-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 6598
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(IZ)V

    .line 6599
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 6600
    invoke-virtual {v0, v6, v8}, Lcom/android/server/pm/UserManagerService;->applyDefaultUserSettings(Lcom/android/server/pm/UserTypeDetails;I)V

    .line 6601
    invoke-virtual {v0, v8, v6, v1, v2}, Lcom/android/server/pm/UserManagerService;->setDefaultCrossProfileIntentFilters(ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V

    if-eqz v3, :cond_380

    .line 6608
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting pre-created user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6609
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0
    :try_end_364
    .catchall {:try_start_31d .. :try_end_364} :catchall_2f3

    .line 6611
    :try_start_364
    invoke-interface {v0, v8}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_367
    .catch Landroid/os/RemoteException; {:try_start_364 .. :try_end_367} :catch_368
    .catchall {:try_start_364 .. :try_end_367} :catchall_2f3

    goto :goto_383

    :catch_368
    move-exception v0

    .line 6613
    :try_start_369
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not start pre-created user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_383

    .line 6616
    :cond_380
    invoke-virtual {v0, v7, v5}, Lcom/android/server/pm/UserManagerService;->dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    :try_end_383
    .catchall {:try_start_369 .. :try_end_383} :catchall_2f3

    .line 6620
    :goto_383
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v7

    :catchall_387
    move-exception v0

    .line 6594
    :try_start_388
    monitor-exit v10
    :try_end_389
    .catchall {:try_start_388 .. :try_end_389} :catchall_387

    :try_start_389
    throw v0
    :try_end_38a
    .catchall {:try_start_389 .. :try_end_38a} :catchall_2f3

    :catchall_38a
    move-exception v0

    .line 6587
    :try_start_38b
    monitor-exit v10
    :try_end_38c
    .catchall {:try_start_38b .. :try_end_38c} :catchall_38a

    :try_start_38c
    throw v0
    :try_end_38d
    .catchall {:try_start_38c .. :try_end_38d} :catchall_2f3

    .line 6531
    :goto_38d
    :try_start_38d
    monitor-exit v13
    :try_end_38e
    .catchall {:try_start_38d .. :try_end_38e} :catchall_246

    :try_start_38e
    throw v0

    :catchall_38f
    move-exception v0

    move-object v1, v7

    .line 6549
    :goto_391
    monitor-exit v1
    :try_end_392
    .catchall {:try_start_38e .. :try_end_392} :catchall_277

    :try_start_392
    throw v0
    :try_end_393
    .catchall {:try_start_392 .. :try_end_393} :catchall_2f3

    .line 6620
    :goto_393
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6621
    throw v0

    :catchall_397
    move-exception v0

    .line 6414
    :try_start_398
    monitor-exit v7
    :try_end_399
    .catchall {:try_start_398 .. :try_end_399} :catchall_397

    throw v0
.end method

.method public createUserWithAttributes(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/os/UserHandle;
    .registers 15

    .line 6286
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    .line 6288
    invoke-virtual {p0, p5, p6}, Lcom/android/server/pm/UserManagerService;->someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    const/16 v5, -0x2710

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 6295
    :try_start_10
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_14
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_10 .. :try_end_14} :catch_2c

    move-object p1, v1

    if-eqz p4, :cond_1e

    .line 6301
    iget-object p2, p1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    iget p3, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, p3, p4}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 6304
    :cond_1e
    iget p2, p0, Landroid/content/pm/UserInfo;->id:I

    move-object p4, p6

    const/4 p6, 0x1

    move-object p3, p5

    move-object p5, p7

    invoke-virtual/range {p1 .. p6}, Lcom/android/server/pm/UserManagerService;->setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    .line 6306
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :catch_2c
    move-exception v0

    move-object p0, v0

    .line 6297
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0

    .line 6289
    :cond_33
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0
.end method

.method public createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 10

    .line 6247
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    const/16 v4, -0x2710

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 6249
    :try_start_a
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_e
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_a .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception v0

    move-object p0, v0

    .line 6252
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public final dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .registers 6

    .line 6807
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 6808
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 6809
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;

    invoke-interface {v2, p1, p2}, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;->onUserCreated(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_1a
    move-exception p0

    goto/16 :goto_9e

    .line 6811
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1a

    .line 6814
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.USER_ADDED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 6815
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 6817
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6818
    const-string v0, "android.intent.extra.user_handle"

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6821
    const-string v0, "android.intent.extra.USER"

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6822
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 6824
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_56

    const-string/jumbo v0, "users_guest_created"

    goto :goto_63

    .line 6825
    :cond_56
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_60

    const-string/jumbo v0, "users_demo_created"

    goto :goto_63

    :cond_60
    const-string/jumbo v0, "users_user_created"

    :goto_63
    const/4 v1, 0x1

    .line 6824
    invoke-static {p2, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6827
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p2

    if-eqz p2, :cond_75

    .line 6828
    iget p2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/UserManagerService;->sendProfileAddedBroadcast(II)V

    return-void

    .line 6831
    :cond_75
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "user_switcher_enabled"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9d

    .line 6833
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getContextResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11101ac

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 6835
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "user_switcher_enabled"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9d
    return-void

    .line 6811
    :goto_9e
    :try_start_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_1a

    throw p0
.end method

.method public final doSystemFeaturesSupportUserType(Ljava/lang/String;)Z
    .registers 5

    .line 4219
    invoke-static {p1}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 4220
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string p1, "android.software.managed_users"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 4222
    :cond_10
    invoke-static {p1}, Landroid/os/UserManager;->isUserTypePrivateProfile(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_41

    .line 4223
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "android.hardware.type.embedded"

    invoke-virtual {p1, v2, v1}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_40

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "android.hardware.type.watch"

    .line 4224
    invoke-virtual {p1, v2, v1}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_40

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "android.software.leanback"

    .line 4225
    invoke-virtual {p1, v2, v1}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_40

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string p1, "android.hardware.type.automotive"

    .line 4226
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_40

    return v0

    :cond_40
    return v1

    :cond_41
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15

    .line 8205
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v0, "UserManagerService"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 8207
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 8208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 8209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p1, -0x1

    const/4 v8, 0x0

    if-eqz p3, :cond_51

    .line 8211
    array-length v0, p3

    if-lez v0, :cond_51

    .line 8212
    aget-object v0, p3, v8

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_44a

    :goto_2c
    move v0, p1

    goto :goto_4e

    :sswitch_2e
    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_2c

    :cond_37
    const/4 v0, 0x2

    goto :goto_4e

    :sswitch_39
    const-string v1, "--non-compliance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_2c

    :cond_42
    move v0, v2

    goto :goto_4e

    :sswitch_44
    const-string v1, "--visibility-mediator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_2c

    :cond_4d
    move v0, v8

    :goto_4e
    packed-switch v0, :pswitch_data_458

    :cond_51
    move-object v0, p0

    move-object v1, p2

    goto :goto_84

    .line 8214
    :pswitch_54
    aget-object p1, p3, v2

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->dumpUser(Ljava/io/PrintWriter;ILjava/lang/StringBuilder;JJ)V

    return-void

    :pswitch_60
    move-object v0, p0

    move-object v1, p2

    .line 8220
    array-length p0, p3

    if-le p0, v2, :cond_76

    aget-object p0, p3, v2

    const-string/jumbo p1, "reset"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_76

    .line 8221
    iget-object p0, v0, Lcom/android/server/pm/UserManagerService;->mNonComplianceLogger:Lcom/android/server/pm/MultiuserNonComplianceLogger;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/MultiuserNonComplianceLogger;->reset(Ljava/io/PrintWriter;)V

    return-void

    .line 8223
    :cond_76
    iget-object p0, v0, Lcom/android/server/pm/UserManagerService;->mNonComplianceLogger:Lcom/android/server/pm/MultiuserNonComplianceLogger;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/MultiuserNonComplianceLogger;->dump(Ljava/io/PrintWriter;)V

    return-void

    :pswitch_7c
    move-object v0, p0

    move-object v1, p2

    .line 8217
    iget-object p0, v0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, v1, p3}, Lcom/android/server/pm/UserVisibilityMediator;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    .line 8229
    :goto_84
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    .line 8230
    const-string p2, "Current user"

    invoke-static {v1, p2, p0}, Lcom/android/server/pm/UserManagerService;->printNullableUser(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 8232
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 8233
    iget-object p2, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p2

    .line 8234
    :try_start_93
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_432

    .line 8235
    :try_start_96
    const-string v2, "Users:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v10, v8

    .line 8236
    :goto_9c
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v10, v2, :cond_b9

    .line 8237
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v2, :cond_af

    goto :goto_b2

    .line 8241
    :cond_af
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V

    :goto_b2
    add-int/lit8 v10, v10, 0x1

    goto :goto_9c

    :catchall_b5
    move-exception v0

    move-object p0, v0

    goto/16 :goto_445

    .line 8243
    :cond_b9
    monitor-exit v9
    :try_end_ba
    .catchall {:try_start_96 .. :try_end_ba} :catchall_b5

    .line 8245
    :try_start_ba
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 8246
    const-string v2, "Device properties:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8247
    const-string v2, "  Device policy global restrictions:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8248
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_ca
    .catchall {:try_start_ba .. :try_end_ca} :catchall_432

    .line 8249
    :try_start_ca
    const-string v3, "    "

    iget-object v4, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 8251
    invoke-virtual {v4, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object p1

    .line 8249
    invoke-static {v1, v3, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8252
    monitor-exit v2
    :try_end_d6
    .catchall {:try_start_ca .. :try_end_d6} :catchall_441

    .line 8253
    :try_start_d6
    const-string p1, "  Guest restrictions:"

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8254
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter p1
    :try_end_de
    .catchall {:try_start_d6 .. :try_end_de} :catchall_432

    .line 8255
    :try_start_de
    const-string v2, "    "

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8256
    monitor-exit p1
    :try_end_e6
    .catchall {:try_start_de .. :try_end_e6} :catchall_43d

    .line 8257
    :try_start_e6
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 8258
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_ec
    .catchall {:try_start_e6 .. :try_end_ec} :catchall_432

    .line 8259
    :try_start_ec
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_10f

    .line 8260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Recently removed userIds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10f

    :catchall_10b
    move-exception v0

    move-object p0, v0

    goto/16 :goto_43b

    .line 8262
    :cond_10f
    :goto_10f
    monitor-exit p1
    :try_end_110
    .catchall {:try_start_ec .. :try_end_110} :catchall_10b

    .line 8263
    :try_start_110
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter p1
    :try_end_113
    .catchall {:try_start_110 .. :try_end_113} :catchall_432

    .line 8264
    :try_start_113
    const-string v2, "  Started users state: ["

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8265
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    move v3, v8

    :goto_121
    if-ge v3, v2, :cond_153

    .line 8267
    iget-object v4, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 8268
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 8269
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x3d

    .line 8270
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 8271
    invoke-static {v5}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v2, -0x1

    if-eq v3, v4, :cond_150

    .line 8272
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_150

    :catchall_14c
    move-exception v0

    move-object p0, v0

    goto/16 :goto_439

    :cond_150
    :goto_150
    add-int/lit8 v3, v3, 0x1

    goto :goto_121

    :cond_153
    const/16 v2, 0x5d

    .line 8274
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 8275
    monitor-exit p1
    :try_end_159
    .catchall {:try_start_113 .. :try_end_159} :catchall_14c

    .line 8276
    :try_start_159
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_15c
    .catchall {:try_start_159 .. :try_end_15c} :catchall_432

    .line 8277
    :try_start_15c
    const-string v2, "  Cached user IDs: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8278
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8279
    const-string v2, "  Cached user IDs (including pre-created): "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8280
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8281
    monitor-exit p1
    :try_end_179
    .catchall {:try_start_15c .. :try_end_179} :catchall_435

    .line 8282
    :try_start_179
    monitor-exit p2
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_432

    .line 8284
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 8285
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p1, v1, p3}, Lcom/android/server/pm/UserVisibilityMediator;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8286
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 8289
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 8290
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result p1

    if-eqz p1, :cond_193

    .line 8291
    const-string p1, " Creation override mode is enabled"

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8293
    :cond_193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Supports switchable users: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8294
    invoke-static {}, Landroid/os/UserManager;->getMaxSwitchableUsers()I

    move-result p1

    .line 8295
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Max switchable users: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8296
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getContextResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e00fd

    .line 8297
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    if-eq p1, p2, :cond_1e9

    .line 8299
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (built-in value: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8301
    :cond_1e9
    iget-object p3, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter p3

    .line 8302
    :try_start_1ec
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getSwitchableUsersForQuotaCountLU()I

    move-result p2

    if-lt p2, p1, :cond_1fc

    .line 8303
    const-string p1, " (limit reached)"

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1fc

    :catchall_1f8
    move-exception v0

    move-object p0, v0

    goto/16 :goto_430

    .line 8305
    :cond_1fc
    :goto_1fc
    monitor-exit p3
    :try_end_1fd
    .catchall {:try_start_1ec .. :try_end_1fd} :catchall_1f8

    .line 8306
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 8307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  All guests ephemeral: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getContextResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x11101d3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Force ephemeral users: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8310
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result p1

    .line 8311
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Is headless-system mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8312
    sget-boolean p2, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    if-eq p1, p2, :cond_256

    .line 8313
    const-string p2, "  (differs from the current default build value)"

    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8315
    :cond_256
    const-string/jumbo p2, "persist.debug.user_mode_emulation"

    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_271

    .line 8316
    const-string p2, "  (emulated by \'cmd user set-system-user-mode-emulation\')"

    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8317
    iget-boolean p2, v0, Lcom/android/server/pm/UserManagerService;->mUpdatingSystemUserMode:Z

    if-eqz p2, :cond_271

    .line 8318
    const-string p2, "  (and being updated after boot)"

    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_271
    if-eqz p1, :cond_2aa

    .line 8322
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Can switch to headless system user: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getContextResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x111006b

    .line 8323
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8322
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  HSUM Boot Strategy: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getHsumBootStrategy()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8327
    :cond_2aa
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Is main user permanent admin: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->isMainUserPermanentAdmin()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  User version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Owner name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8331
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Guest name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getGuestName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8332
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Unnamed user name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUnnamedUserName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8336
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter p1

    .line 8337
    :try_start_323
    const-string p2, "Boot user"

    iget p3, v0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    invoke-static {v1, p2, p3}, Lcom/android/server/pm/UserManagerService;->printNullableUser(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 8338
    const-string p2, "Device owner user"

    iget p3, v0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-static {v1, p2, p3}, Lcom/android/server/pm/UserManagerService;->printNullableUser(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 8339
    monitor-exit p1
    :try_end_332
    .catchall {:try_start_323 .. :try_end_332} :catchall_42c

    .line 8341
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can add private profile: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerService;->canAddPrivateProfile(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8343
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 8344
    const-string p0, "Number of listeners for"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8345
    iget-object p0, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    monitor-enter p0

    .line 8346
    :try_start_355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  restrictions: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8347
    monitor-exit p0
    :try_end_370
    .catchall {:try_start_355 .. :try_end_370} :catchall_428

    .line 8348
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter p1

    .line 8349
    :try_start_373
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  user lifecycle events: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8350
    monitor-exit p1
    :try_end_38e
    .catchall {:try_start_373 .. :try_end_38e} :catchall_424

    .line 8353
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 8354
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "User types version: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8355
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "User types ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " types):"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8356
    :goto_3c6
    iget-object p0, v0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    if-ge v8, p0, :cond_3ff

    .line 8357
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "    "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p1, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8358
    iget-object p0, v0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    const-string p1, "        "

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/UserTypeDetails;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3c6

    .line 8361
    :cond_3ff
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 8362
    iget-object p0, v0, Lcom/android/server/pm/UserManagerService;->mNonComplianceLogger:Lcom/android/server/pm/MultiuserNonComplianceLogger;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/MultiuserNonComplianceLogger;->dump(Ljava/io/PrintWriter;)V

    .line 8369
    new-instance p0, Landroid/util/IndentingPrintWriter;

    invoke-direct {p0, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 8371
    :try_start_40c
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 8372
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_414
    .catchall {:try_start_40c .. :try_end_414} :catchall_418

    .line 8373
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->close()V

    return-void

    :catchall_418
    move-exception v0

    move-object p1, v0

    .line 8369
    :try_start_41a
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_41d
    .catchall {:try_start_41a .. :try_end_41d} :catchall_41e

    goto :goto_423

    :catchall_41e
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_423
    throw p1

    :catchall_424
    move-exception v0

    move-object p0, v0

    .line 8350
    :try_start_426
    monitor-exit p1
    :try_end_427
    .catchall {:try_start_426 .. :try_end_427} :catchall_424

    throw p0

    :catchall_428
    move-exception v0

    move-object p1, v0

    .line 8347
    :try_start_42a
    monitor-exit p0
    :try_end_42b
    .catchall {:try_start_42a .. :try_end_42b} :catchall_428

    throw p1

    :catchall_42c
    move-exception v0

    move-object p0, v0

    .line 8339
    :try_start_42e
    monitor-exit p1
    :try_end_42f
    .catchall {:try_start_42e .. :try_end_42f} :catchall_42c

    throw p0

    .line 8305
    :goto_430
    :try_start_430
    monitor-exit p3
    :try_end_431
    .catchall {:try_start_430 .. :try_end_431} :catchall_1f8

    throw p0

    :catchall_432
    move-exception v0

    move-object p0, v0

    goto :goto_447

    :catchall_435
    move-exception v0

    move-object p0, v0

    .line 8281
    :try_start_437
    monitor-exit p1
    :try_end_438
    .catchall {:try_start_437 .. :try_end_438} :catchall_435

    :try_start_438
    throw p0
    :try_end_439
    .catchall {:try_start_438 .. :try_end_439} :catchall_432

    .line 8275
    :goto_439
    :try_start_439
    monitor-exit p1
    :try_end_43a
    .catchall {:try_start_439 .. :try_end_43a} :catchall_14c

    :try_start_43a
    throw p0
    :try_end_43b
    .catchall {:try_start_43a .. :try_end_43b} :catchall_432

    .line 8262
    :goto_43b
    :try_start_43b
    monitor-exit p1
    :try_end_43c
    .catchall {:try_start_43b .. :try_end_43c} :catchall_10b

    :try_start_43c
    throw p0
    :try_end_43d
    .catchall {:try_start_43c .. :try_end_43d} :catchall_432

    :catchall_43d
    move-exception v0

    move-object p0, v0

    .line 8256
    :try_start_43f
    monitor-exit p1
    :try_end_440
    .catchall {:try_start_43f .. :try_end_440} :catchall_43d

    :try_start_440
    throw p0
    :try_end_441
    .catchall {:try_start_440 .. :try_end_441} :catchall_432

    :catchall_441
    move-exception v0

    move-object p0, v0

    .line 8252
    :try_start_443
    monitor-exit v2
    :try_end_444
    .catchall {:try_start_443 .. :try_end_444} :catchall_441

    :try_start_444
    throw p0
    :try_end_445
    .catchall {:try_start_444 .. :try_end_445} :catchall_432

    .line 8243
    :goto_445
    :try_start_445
    monitor-exit v9
    :try_end_446
    .catchall {:try_start_445 .. :try_end_446} :catchall_b5

    :try_start_446
    throw p0

    .line 8282
    :goto_447
    monitor-exit p2
    :try_end_448
    .catchall {:try_start_446 .. :try_end_448} :catchall_432

    throw p0

    nop

    :sswitch_data_44a
    .sparse-switch
        -0x4a601e52 -> :sswitch_44
        0x44c84cbb -> :sswitch_39
        0x4f7b216b -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_458
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_60
        :pswitch_54
    .end packed-switch
.end method

.method public final dumpUser(Ljava/io/PrintWriter;ILjava/lang/StringBuilder;JJ)V
    .registers 17

    const/4 v2, -0x2

    if-ne p2, v2, :cond_16

    .line 8393
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v2

    .line 8394
    const-string v3, "Current user: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_17

    .line 8396
    const-string v0, "Cannot determine current user"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_16
    move v2, p2

    .line 8402
    :cond_17
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8

    .line 8403
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v3, :cond_41

    .line 8405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8406
    monitor-exit v8

    return-void

    :catchall_3f
    move-exception v0

    goto :goto_4c

    :cond_41
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    move-wide v6, p6

    move-object v2, v3

    move-object v3, p3

    .line 8408
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V

    .line 8409
    monitor-exit v8

    return-void

    :goto_4c
    monitor-exit v8
    :try_end_4d
    .catchall {:try_start_1a .. :try_end_4d} :catchall_3f

    throw v0
.end method

.method public final dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V
    .registers 16

    .line 8415
    iget-object v7, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 8416
    iget v2, v7, Landroid/content/pm/UserInfo;->id:I

    .line 8417
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 8418
    const-string v3, " serialNo="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v7, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 8419
    const-string v3, " isPrimary="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 8420
    iget v3, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v4, v7, Landroid/content/pm/UserInfo;->id:I

    if-eq v3, v4, :cond_36

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_36

    .line 8422
    const-string v3, " parentId="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 8425
    :cond_36
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 8426
    const-string v3, " <removing> "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8428
    :cond_43
    iget-boolean v3, v7, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_4c

    .line 8429
    const-string v3, " <partial>"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8431
    :cond_4c
    iget-boolean v3, v7, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v3, :cond_55

    .line 8432
    const-string v3, " <pre-created>"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8434
    :cond_55
    iget-boolean v3, v7, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v3, :cond_5e

    .line 8435
    const-string v3, " <converted>"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8437
    :cond_5e
    iget-boolean v3, v7, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v3, :cond_67

    .line 8438
    const-string v3, " <guestToRemove>"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8440
    :cond_67
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 8441
    const-string v3, "    Type: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v7, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8442
    const-string v3, "    Flags: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v7, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8443
    iget v3, v7, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v3}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8444
    const-string v3, "    State: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8446
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v3

    .line 8447
    :try_start_99
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    const/4 v5, -0x1

    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result v2

    .line 8448
    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_99 .. :try_end_a1} :catchall_1c0

    .line 8449
    invoke-static {v2}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8450
    const-string v2, "    Created: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8451
    iget-wide v5, v7, Landroid/content/pm/UserInfo;->creationTime:J

    move-object v1, p1

    move-object v2, p3

    move-wide v3, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 8453
    const-string v2, "    Last logged in: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8454
    iget-wide v5, v7, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 8456
    const-string v2, "    Last logged in fingerprint: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8457
    iget-object v2, v7, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8459
    const-string v2, "    Start time: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8460
    iget-wide v5, p2, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    move-object v2, p3

    move-wide v3, p6

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 8462
    const-string v2, "    Unlock time: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8463
    iget-wide v5, p2, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 8465
    const-string v2, "    Last entered foreground: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8466
    iget-wide v5, p2, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    move-object v2, p3

    move-wide v3, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 8470
    const-string v2, "    Has profile owner: false"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8472
    const-string v2, "    Restrictions:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8473
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8474
    :try_start_fa
    const-string v3, "      "

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v5, v7, Landroid/content/pm/UserInfo;->id:I

    .line 8475
    invoke-virtual {v4, v5}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    .line 8474
    invoke-static {p1, v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8476
    const-string v3, "    Device policy restrictions:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8477
    const-string v3, "      "

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v5, v7, Landroid/content/pm/UserInfo;->id:I

    .line 8479
    invoke-virtual {v4, v5}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    .line 8477
    invoke-static {p1, v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8480
    const-string v3, "    Effective restrictions:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8481
    const-string v3, "      "

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v4, v7, Landroid/content/pm/UserInfo;->id:I

    .line 8483
    invoke-virtual {v0, v4}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 8481
    invoke-static {p1, v3, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8484
    monitor-exit v2
    :try_end_12c
    .catchall {:try_start_fa .. :try_end_12c} :catchall_1bd

    .line 8486
    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v0, :cond_149

    .line 8487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8488
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 8491
    :cond_149
    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v0, :cond_18f

    .line 8492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Seed account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8493
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 8494
    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_183

    .line 8495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         account type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8496
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 8498
    :cond_183
    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_18f

    .line 8499
    const-string v0, "         account options exist"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8500
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 8504
    :cond_18f
    const-string v0, "    Can have profile: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8505
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8507
    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1a4

    .line 8508
    const-string v2, "    "

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/UserProperties;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8511
    :cond_1a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Ignore errors preparing storage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8512
    invoke-virtual {p2}, Lcom/android/server/pm/UserManagerService$UserData;->getIgnorePrepareStorageErrors()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8511
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_1bd
    move-exception v0

    .line 8484
    :try_start_1be
    monitor-exit v2
    :try_end_1bf
    .catchall {:try_start_1be .. :try_end_1bf} :catchall_1bd

    throw v0

    :catchall_1c0
    move-exception v0

    .line 8448
    :try_start_1c1
    monitor-exit v3
    :try_end_1c2
    .catchall {:try_start_1c1 .. :try_end_1c2} :catchall_1c0

    throw v0
.end method

.method public final emulateSystemUserModeIfNeeded()V
    .registers 13

    .line 4956
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_14

    .line 4959
    :cond_7
    const-string/jumbo v0, "persist.debug.user_mode_emulation"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_14
    return-void

    .line 4963
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isDefaultHeadlessSystemUserMode()Z

    move-result v0

    .line 4966
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4967
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_34

    .line 4968
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v3, :cond_3a

    .line 4970
    const-string p0, "UserManagerService"

    const-string v0, "emulateSystemUserModeIfNeeded(): no system user data"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4971
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_37

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception p0

    goto/16 :goto_10c

    :catchall_37
    move-exception p0

    goto/16 :goto_10a

    .line 4973
    :cond_3a
    :try_start_3a
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result v4

    .line 4974
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    if-eqz v0, :cond_49

    .line 4978
    const-string v7, "android.os.usertype.system.HEADLESS"

    and-int/lit16 v8, v6, -0x4401

    goto :goto_4d

    .line 4981
    :cond_49
    const-string v7, "android.os.usertype.full.SYSTEM"

    or-int/lit16 v8, v6, 0x4400

    .line 4985
    :goto_4d
    iget-object v5, v5, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 4986
    const-string p0, "UserManagerService"

    const-string v0, "emulateSystemUserModeIfNeeded(): system user type is already %s, returning"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4988
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_3a .. :try_end_61} :catchall_37

    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_34

    return-void

    .line 4990
    :cond_63
    :try_start_63
    const-string v5, "UserManagerService"

    const-string v9, "Persisting emulated system user data: type changed from %s to %s, flags changed from %s to %s"

    iget-object v10, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v10, v10, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 4993
    invoke-static {v6}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v10, v7, v6, v11}, [Ljava/lang/Object;

    move-result-object v6

    .line 4990
    invoke-static {v5, v9, v6}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4995
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object v7, v5, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 4996
    iput v8, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 4997
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 5000
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    if-eqz v0, :cond_cd

    if-eqz v3, :cond_94

    .line 5002
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_94

    goto :goto_104

    .line 5004
    :cond_94
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isMainUserPermanentAdmin()Z

    move-result v0

    if-eqz v0, :cond_104

    .line 5007
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getEarliestCreatedFullUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_104

    .line 5009
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Designating user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to be Main"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5010
    iget v3, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 5011
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_104

    :cond_cd
    if-eqz v3, :cond_fd

    .line 5019
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_fd

    .line 5020
    const-string v0, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transferring Main to user 0 from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5021
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v4, v4, -0x4001

    iput v4, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 5022
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_104

    .line 5024
    :cond_fd
    const-string v0, "UserManagerService"

    const-string v3, "Designated user 0 to be Main"

    invoke-static {v0, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5027
    :cond_104
    :goto_104
    monitor-exit v2
    :try_end_105
    .catchall {:try_start_63 .. :try_end_105} :catchall_37

    .line 5028
    :try_start_105
    monitor-exit v1
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_34

    const/4 v0, 0x1

    .line 5031
    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mUpdatingSystemUserMode:Z

    return-void

    .line 5027
    :goto_10a
    :try_start_10a
    monitor-exit v2
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_37

    :try_start_10b
    throw p0

    .line 5028
    :goto_10c
    monitor-exit v1
    :try_end_10d
    .catchall {:try_start_10b .. :try_end_10d} :catchall_34

    throw p0
.end method

.method public enforceCrossProfileIntentFilterAccess(IIIZ)V
    .registers 5

    .line 3499
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/UserManagerService;->isCrossProfileIntentFilterAccessible(IIZ)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 3501
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CrossProfileIntentFilter cannot be accessed by user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceUserRestriction(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 9085
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 9086
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_1f

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_21

    :cond_1f
    const-string p2, ""

    :goto_21
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is enabled."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9088
    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9089
    new-instance p1, Landroid/os/UserManager$CheckedUserOperationException;

    const/16 p2, 0xa

    invoke-direct {p1, p0, p2}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3d
    return-void
.end method

.method public final ensureCanModifyQuietMode(Ljava/lang/String;IIZZ)V
    .registers 7

    .line 2217
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->verifyCallingPackage(Ljava/lang/String;I)V

    .line 2219
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_31

    :cond_a
    if-nez p4, :cond_4a

    if-nez p5, :cond_42

    .line 2230
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    invoke-virtual {p0, p4, p3}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 2234
    const-string p0, "android.permission.MODIFY_QUIET_MODE"

    invoke-static {p0, p2}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_31

    .line 2240
    :cond_21
    const-class p0, Landroid/content/pm/ShortcutServiceInternal;

    .line 2241
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutServiceInternal;

    if-eqz p0, :cond_32

    .line 2244
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ShortcutServiceInternal;->isForegroundDefaultLauncher(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_32

    :goto_31
    return-void

    .line 2249
    :cond_32
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can\'t modify quiet mode, caller is neither foreground default launcher nor has MANAGE_USERS/MODIFY_QUIET_MODE permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2231
    :cond_3a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "MANAGE_USERS permission is required to modify quiet mode for a different profile group."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2227
    :cond_42
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "MANAGE_USERS permission is required to disable quiet mode without credentials."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2223
    :cond_4a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "MANAGE_USERS permission is required to start intent after disabling quiet mode."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public evictCredentialEncryptionKey(I)V
    .registers 5

    .line 2585
    const-string v0, "evict CE key"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2586
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2587
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2589
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isProfileUnchecked(I)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x3

    goto :goto_16

    :cond_15
    const/4 p0, 0x2

    .line 2593
    :goto_16
    :try_start_16
    invoke-interface {v0, p1, p0}, Landroid/app/IActivityManager;->restartUserInBackground(II)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1f
    .catchall {:try_start_16 .. :try_end_19} :catchall_1d

    .line 2597
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1d
    move-exception p0

    goto :goto_25

    :catch_1f
    move-exception p0

    .line 2595
    :try_start_20
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    .line 2597
    :goto_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2598
    throw p0
.end method

.method public exists(I)Z
    .registers 2

    if-eqz p1, :cond_d

    .line 3472
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public final fallbackToSingleUserLP()V
    .registers 8

    .line 5618
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isDefaultHeadlessSystemUserMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5619
    const-string v0, "android.os.usertype.system.HEADLESS"

    :goto_8
    move-object v6, v0

    goto :goto_d

    .line 5620
    :cond_a
    const-string v0, "android.os.usertype.full.SYSTEM"

    goto :goto_8

    .line 5621
    :goto_d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 5622
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v1

    or-int/lit8 v5, v1, 0x10

    .line 5623
    new-instance v1, Landroid/content/pm/UserInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 5625
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 5626
    new-instance v2, Landroid/content/pm/UserProperties;

    .line 5627
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserPropertiesReference()Landroid/content/pm/UserProperties;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/UserProperties;-><init>(Landroid/content/pm/UserProperties;)V

    iput-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    const/16 v2, 0xa

    .line 5628
    iput v2, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/16 v2, 0xb

    .line 5629
    iput v2, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 5630
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeVersion()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    .line 5632
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5633
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails;->addDefaultRestrictionsTo(Landroid/os/Bundle;)V

    .line 5634
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 5635
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5636
    :try_start_51
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 5637
    monitor-exit v3

    goto :goto_5d

    :catchall_59
    move-exception v0

    move-object p0, v0

    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_59

    throw p0

    .line 5640
    :cond_5d
    :goto_5d
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 5642
    const-string v0, "UserManagerService"

    const-string v2, "Creating system user: %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5643
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 5644
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    return-void
.end method

.method public final finishRemoveUser(I)V
    .registers 13

    .line 7352
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishRemoveUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7355
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7356
    :try_start_19
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 7357
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_a7

    if-eqz v0, :cond_49

    .line 7358
    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v1, :cond_49

    .line 7359
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing a pre-created user with user id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7361
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    .line 7362
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void

    .line 7366
    :cond_49
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v1, 0x0

    .line 7367
    :goto_4d
    :try_start_4d
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_66

    .line 7368
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;

    invoke-interface {v3, v0}, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;->onUserRemoved(Landroid/content/pm/UserInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :catchall_63
    move-exception v0

    move-object p0, v0

    goto :goto_a5

    .line 7370
    :cond_66
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_4d .. :try_end_67} :catchall_63

    .line 7374
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 7376
    :try_start_6b
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 7377
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7378
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7381
    const-string v0, "android.intent.extra.USER"

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7382
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v3

    new-instance v5, Lcom/android/server/pm/UserManagerService$7;

    invoke-direct {v5, p0, p1}, Lcom/android/server/pm/UserManagerService$7;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const-string p0, "android.permission.MANAGE_USERS"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I
    :try_end_9b
    .catchall {:try_start_6b .. :try_end_9b} :catchall_9f

    .line 7401
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_9f
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7402
    throw p0

    .line 7370
    :goto_a5
    :try_start_a5
    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_63

    throw p0

    :catchall_a7
    move-exception v0

    move-object p0, v0

    .line 7357
    :try_start_a9
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a7

    throw p0
.end method

.method public final getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .registers 2

    .line 9216
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_e

    .line 9217
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 9219
    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    .line 7527
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5

    .line 7532
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_14

    .line 7533
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_28

    .line 7534
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get application restrictions for other user/app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 7539
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 7541
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->getApplicationRestrictionsPerAdminForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    goto :goto_34

    :cond_33
    const/4 p0, 0x0

    :goto_34
    if-eqz p0, :cond_5a

    .line 7543
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_5a

    .line 7546
    :cond_3d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_53

    .line 7549
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 7548
    const-string p2, "UserManagerService"

    const-string v0, "Application restriction list contains more than one (%d) element; returning first"

    invoke-static {p2, v0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7551
    :cond_53
    invoke-interface {p0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    .line 7544
    :cond_5a
    :goto_5a
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getAvailabilityIntentAction(ZZ)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_a

    if-eqz p1, :cond_7

    .line 2036
    const-string p0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    return-object p0

    .line 2037
    :cond_7
    const-string p0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    return-object p0

    :cond_a
    if-eqz p1, :cond_f

    .line 2039
    const-string p0, "android.intent.action.PROFILE_UNAVAILABLE"

    return-object p0

    .line 2040
    :cond_f
    const-string p0, "android.intent.action.PROFILE_AVAILABLE"

    return-object p0
.end method

.method public getBootUser()I
    .registers 2

    .line 1459
    const-string v0, "Get boot user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 1461
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getBootUserUnchecked()I

    move-result p0
    :try_end_9
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_5 .. :try_end_9} :catch_a

    return p0

    :catch_a
    move-exception p0

    .line 1463
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public getBootUser(Z)I
    .registers 10

    const-wide/32 v0, 0x493e0

    .line 1519
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1512
    const-string v3, "UserManagerService"

    if-eqz p1, :cond_54

    .line 1513
    new-instance p1, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 1514
    const-string/jumbo v4, "wait-boot-user"

    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1516
    :try_start_16
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBootUserLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2e

    .line 1517
    const-string v4, "Sleeping for boot user to be set. Max sleep for Time: %d"

    .line 1519
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    .line 1517
    invoke-static {v3, v4, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2e

    :catch_2c
    move-exception v0

    goto :goto_42

    .line 1521
    :cond_2e
    :goto_2e
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBootUserLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 1522
    const-string v0, "Boot user not set. Timeout: %d"

    .line 1523
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1522
    invoke-static {v3, v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_41} :catch_2c

    goto :goto_51

    .line 1526
    :goto_42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x0

    .line 1527
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "InterruptedException during wait for boot user."

    invoke-static {v3, v0, v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1529
    :cond_51
    :goto_51
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1532
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getBootUserUnchecked()I

    move-result p0

    return p0
.end method

.method public final getBootUserBasedOnProvisioning()I
    .registers 4

    .line 1537
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    return v2

    :cond_10
    const/4 v0, 0x1

    .line 1542
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getFirstSwitchableUser(Z)I

    move-result p0

    const/16 v1, -0x2710

    if-eq p0, v1, :cond_29

    .line 1546
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 1544
    const-string v1, "UserManagerService"

    const-string v2, "Boot user is first switchable full user %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    .line 1550
    :cond_29
    new-instance p0, Landroid/os/UserManager$CheckedUserOperationException;

    const-string v1, "No switchable full user found"

    invoke-direct {p0, v1, v0}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final getBootUserUnchecked()I
    .registers 5

    .line 1481
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1482
    :try_start_3
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_43

    .line 1483
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v1, :cond_32

    .line 1484
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1485
    const-string v1, "UserManagerService"

    const-string v2, "Using provided boot user: %d"

    iget v3, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1486
    iget p0, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    monitor-exit v0

    return p0

    :catchall_30
    move-exception p0

    goto :goto_73

    .line 1488
    :cond_32
    const-string v1, "UserManagerService"

    const-string v2, "Provided boot user cannot be switched to: %d"

    iget v3, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    .line 1489
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1488
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1492
    :cond_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_30

    .line 1494
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1495
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getHsumBootStrategy()I

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_67

    .line 1502
    const-string v1, "UserManagerService"

    const-string v2, "Unknown HSUM boot strategy: %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1503
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPreviousOrFirstSwitchableUser()I

    move-result p0

    return p0

    .line 1500
    :cond_67
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getBootUserBasedOnProvisioning()I

    move-result p0

    return p0

    .line 1498
    :cond_6c
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPreviousOrFirstSwitchableUser()I

    move-result p0

    return p0

    :cond_71
    const/4 p0, 0x0

    return p0

    .line 1492
    :goto_73
    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_30

    throw p0
.end method

.method public getCommunalProfileId()I
    .registers 2

    .line 1624
    const-string v0, "get communal profile user id"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1625
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCommunalProfileIdUnchecked()I

    move-result p0

    return p0
.end method

.method public final getCommunalProfileIdUnchecked()I
    .registers 7

    .line 1630
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1631
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2f

    .line 1633
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1634
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isCommunalProfile()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 1635
    iget p0, v3, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :catchall_2a
    move-exception p0

    goto :goto_33

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1638
    :cond_2f
    monitor-exit v0

    const/16 p0, -0x2710

    return p0

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_2a

    throw p0
.end method

.method public final getContextResources()Landroid/content/res/Resources;
    .registers 1

    .line 1243
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public final getCreationTime()J
    .registers 5

    .line 6801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0xdc46c32800L

    cmp-long p0, v0, v2

    if-lez p0, :cond_e

    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCredentialOwnerProfile(I)I
    .registers 5

    .line 1917
    const-string v0, "get the credential owner"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1918
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1920
    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_29

    .line 1921
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_27

    .line 1922
    :try_start_14
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 1924
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_21

    .line 1929
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 1926
    :cond_23
    :try_start_23
    monitor-exit v2

    goto :goto_29

    :goto_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_21

    :try_start_26
    throw p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    goto :goto_2d

    .line 1929
    :cond_29
    :goto_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1930
    throw p0
.end method

.method public final getCrossProfileIntentFilterAccessControl(I)I
    .registers 2

    .line 3482
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 3483
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentFilterAccessControl()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getCrossProfileIntentFilterAccessControl(II)I
    .registers 3

    .line 3566
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getCrossProfileIntentFilterAccessControl(I)I

    move-result p1

    .line 3567
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getCrossProfileIntentFilterAccessControl(I)I

    move-result p0

    .line 3568
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getCurrentAllowedNumberOfUsers(Ljava/lang/String;)I
    .registers 5

    .line 4187
    const-string v0, "get the current allowed number of users."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 4188
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    .line 4192
    :cond_11
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4193
    :try_start_14
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result p1

    .line 4194
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService;->getRemainingCreatableUserCount(Lcom/android/server/pm/UserTypeDetails;I)I

    move-result p0

    add-int/2addr p1, p0

    monitor-exit v2

    return p1

    :catchall_1f
    move-exception p0

    .line 4195
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public getCurrentAndTargetUserIds()Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/16 v0, -0x2710

    .line 2987
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2983
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    if-nez p0, :cond_19

    .line 2985
    const-string p0, "UserManagerService"

    const-string v1, "getCurrentAndTargetUserId() called too early, ActivityManagerInternal is not set yet"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 2989
    :cond_19
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentAndTargetUserIds()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentUserId()I
    .registers 2

    .line 3001
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    if-nez p0, :cond_10

    .line 3003
    const-string p0, "UserManagerService"

    const-string v0, "getCurrentUserId() called too early, ActivityManagerInternal is not set yet"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x2710

    return p0

    .line 3007
    :cond_10
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p0

    return p0
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 3760
    const-string v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3761
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 3762
    :try_start_8
    new-instance v1, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception p0

    .line 3763
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2

    .line 9207
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_e

    .line 9208
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 9209
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 9211
    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object p0
.end method

.method public final getEarliestCreatedFullUser()Landroid/content/pm/UserInfo;
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5600
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    .line 5604
    :goto_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_35

    .line 5605
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 5606
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v5

    if-eqz v5, :cond_32

    iget-wide v5, v4, Landroid/content/pm/UserInfo;->creationTime:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_32

    cmp-long v7, v5, v2

    if-gez v7, :cond_32

    move-object v0, v4

    move-wide v2, v5

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_35
    return-object v0
.end method

.method public final getEffectiveUserRestrictions(I)Landroid/os/Bundle;
    .registers 4

    .line 3866
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3867
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_17

    .line 3869
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v1

    .line 3870
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_19

    .line 3872
    :cond_17
    :goto_17
    monitor-exit v0

    return-object v1

    .line 3873
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_15

    throw p0
.end method

.method public final getFirstSwitchableUser(Z)I
    .registers 7

    .line 1579
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1580
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_32

    .line 1582
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1583
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v4

    if-eqz v4, :cond_2f

    if-eqz p1, :cond_29

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_36

    .line 1584
    :cond_29
    :goto_29
    iget-object p0, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 1585
    monitor-exit v0

    return p0

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1588
    :cond_32
    monitor-exit v0

    const/16 p0, -0x2710

    return p0

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_27

    throw p0
.end method

.method public getFreeProfileBadgeLU(ILjava/lang/String;)I
    .registers 10

    .line 9143
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 9144
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_3b

    .line 9146
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 9148
    iget-object v5, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    iget v5, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v5, p1, :cond_38

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 9150
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_38

    .line 9151
    iget v4, v4, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 9154
    :cond_3b
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfTypePerParent(Ljava/lang/String;)I

    move-result p0

    move p1, v2

    :goto_40
    if-ge p1, p0, :cond_50

    .line 9160
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4d

    return p1

    :cond_4d
    add-int/lit8 p1, p1, 0x1

    goto :goto_40

    :cond_50
    return v2
.end method

.method public getGuestName()Ljava/lang/String;
    .registers 2

    .line 5654
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v0, 0x10404bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGuestUsers()Ljava/util/List;
    .registers 8

    .line 6996
    const-string v0, "getGuestUsers"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 6997
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6998
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6999
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_41

    .line 7001
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 7002
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-eqz v5, :cond_3e

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_3e

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v5, :cond_3e

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 7003
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 7004
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_43

    :cond_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 7007
    :cond_41
    monitor-exit v1

    return-object v0

    :goto_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_d .. :try_end_44} :catchall_3c

    throw p0
.end method

.method public getHeadlessSystemUserName()Ljava/lang/String;
    .registers 2

    .line 5663
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v0, 0x10404c0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getHsumBootStrategy()I
    .registers 5

    .line 1468
    const-string/jumbo v0, "persist.user.hsum_boot_strategy"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1470
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getContextResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x10e00be

    .line 1471
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-eq v2, v1, :cond_25

    .line 1474
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1473
    const-string v0, "UserManagerService"

    const-string v1, "%s overriding HSUM boot strategy to %d"

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_25
    return p0
.end method

.method public getInternalForInjectorOnly()Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    .line 1251
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    return-object p0
.end method

.method public final getLockSettingsInternal()Lcom/android/server/locksettings/LockSettingsInternal;
    .registers 2

    .line 9224
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockSettingsInternal:Lcom/android/server/locksettings/LockSettingsInternal;

    if-nez v0, :cond_e

    .line 9225
    const-class v0, Lcom/android/server/locksettings/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockSettingsInternal:Lcom/android/server/locksettings/LockSettingsInternal;

    .line 9227
    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLockSettingsInternal:Lcom/android/server/locksettings/LockSettingsInternal;

    return-object p0
.end method

.method public getMainDisplayIdAssignedToUser(I)I
    .registers 5

    .line 3054
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_33

    .line 3055
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 3056
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_33

    .line 3057
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller from user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to get the main display for ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3061
    :cond_33
    :goto_33
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->getMainDisplayAssignedToUser(I)I

    move-result p0

    return p0
.end method

.method public getMainUserId()I
    .registers 2

    .line 1399
    const-string v0, "get main user id"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mNonComplianceLogger:Lcom/android/server/pm/MultiuserNonComplianceLogger;

    invoke-virtual {v0}, Lcom/android/server/pm/MultiuserNonComplianceLogger;->logGetMainUserCall()V

    .line 1401
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result p0

    return p0
.end method

.method public final getMainUserIdUnchecked()I
    .registers 2

    .line 1405
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1406
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserLU()Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_c

    const/16 p0, -0x2710

    goto :goto_e

    .line 1407
    :cond_c
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 1408
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final getMainUserLU()Landroid/content/pm/UserInfo;
    .registers 6

    .line 1413
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_27

    .line 1415
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1416
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isMainUnlogged()Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_24

    return-object v2

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMaxUsersOfType(Lcom/android/server/pm/UserTypeDetails;)I
    .registers 2

    .line 4202
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowed()I

    move-result p0

    return p0
.end method

.method public getMaxUsersOfTypePerParent(Ljava/lang/String;)I
    .registers 2

    .line 9114
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p0, :cond_f

    .line 9115
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfTypePerParent(Lcom/android/server/pm/UserTypeDetails;)I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public getName(Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 2666
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;
    .registers 3

    .line 2670
    iget-object p2, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz p2, :cond_5

    return-object p2

    .line 2673
    :cond_5
    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez p2, :cond_19

    .line 2679
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 2680
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getHeadlessSystemUserName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2683
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2685
    :cond_19
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isMainUnlogged()Z

    move-result p2

    if-eqz p2, :cond_24

    .line 2686
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2688
    :cond_24
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 2689
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getGuestName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2691
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUnnamedUserName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNextAvailableId()I
    .registers 6

    .line 8014
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8015
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v1

    if-ltz v1, :cond_d

    .line 8017
    monitor-exit v0

    return v1

    :catchall_b
    move-exception p0

    goto :goto_54

    .line 8021
    :cond_d
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_42

    .line 8022
    const-string v1, "UserManagerService"

    const-string v2, "All available IDs are used. Recycling LRU ids."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8023
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 8024
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 8025
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_27

    .line 8027
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v1

    .line 8029
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_b

    .line 8031
    invoke-static {}, Landroid/os/UserManager;->invalidateStaticUserProperties()V

    .line 8032
    invoke-static {}, Landroid/os/UserManager;->invalidateUserPropertiesCache()V

    if-ltz v1, :cond_4c

    return v1

    .line 8034
    :cond_4c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No user id available!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8029
    :goto_54
    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_b

    throw p0
.end method

.method public final getNumberOfUsersOfType(Ljava/lang/String;)I
    .registers 9

    .line 4406
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4407
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v2, v1, :cond_39

    .line 4409
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4410
    iget-object v5, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_36

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 4412
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_36

    iget-boolean v4, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v4, :cond_36

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_3b

    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4417
    :cond_39
    monitor-exit v0

    return v3

    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_34

    throw p0
.end method

.method public getOwnerName()Ljava/lang/String;
    .registers 1

    .line 5649
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 9194
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 9195
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 9197
    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public final getPreCreatedUserLU(Ljava/lang/String;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 7

    .line 6852
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_54

    .line 6854
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 6856
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v4, :cond_51

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_51

    iget-object v3, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 6857
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_50

    .line 6858
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found pre-created user of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", but it\'s not initialized yet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 6859
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6858
    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    :cond_50
    return-object v2

    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_54
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreInstallableSystemPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 6791
    const-string v0, "getPreInstallableSystemPackages"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 6792
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 6793
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 6797
    :cond_f
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final getPreviousOrFirstSwitchableUser()I
    .registers 4

    .line 1562
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPreviousUserToEnterForeground()I

    move-result v0

    .line 1563
    const-string v1, "UserManagerService"

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_18

    .line 1564
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Previous foreground user was %d"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_18
    const/4 v0, 0x0

    .line 1568
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getFirstSwitchableUser(Z)I

    move-result p0

    if-eq p0, v2, :cond_2d

    .line 1570
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "No previous user. First switchable user is %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    .line 1574
    :cond_2d
    new-instance p0, Landroid/os/UserManager$CheckedUserOperationException;

    const-string v0, "No switchable users found"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public getPreviousUserToEnterForeground()I
    .registers 12

    .line 1600
    const-string v0, "get previous user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v0

    .line 1604
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1605
    :try_start_c
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v3, -0x2710

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_17
    if-ge v6, v2, :cond_47

    .line 1607
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1608
    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    if-eq v9, v0, :cond_44

    .line 1609
    iget-boolean v10, v8, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v10, :cond_44

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_44

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 1610
    invoke-virtual {v8, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_44

    .line 1611
    iget-wide v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    cmp-long v10, v7, v4

    if-lez v10, :cond_44

    move-wide v4, v7

    move v3, v9

    goto :goto_44

    :catchall_42
    move-exception p0

    goto :goto_49

    :cond_44
    :goto_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 1618
    :cond_47
    monitor-exit v1

    return v3

    :goto_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_c .. :try_end_4a} :catchall_42

    throw p0
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .registers 7

    .line 1384
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1385
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1386
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_33

    .line 1388
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1389
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_30

    .line 1390
    monitor-exit v0

    return-object v3

    :catchall_2e
    move-exception p0

    goto :goto_36

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1393
    :cond_33
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_2e

    throw p0
.end method

.method public final getPrivateProfileUserId()I
    .registers 7

    .line 1431
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1432
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_22

    aget v4, v1, v3

    .line 1433
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 1434
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1435
    iget p0, v4, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :catchall_1d
    move-exception p0

    goto :goto_26

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1438
    :cond_22
    monitor-exit v0

    const/16 p0, -0x2710

    return p0

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_1d

    throw p0
.end method

.method public getProfileAccessibilityLabelResId(I)I
    .registers 3

    .line 2855
    const-string v0, "getProfileAccessibilityLabelResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2857
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 2858
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p1, :cond_17

    if-nez p0, :cond_12

    goto :goto_17

    .line 2862
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getAccessibilityString()I

    move-result p0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x0

    return p0
.end method

.method public getProfileIds(ILjava/lang/String;ZZ)[I
    .registers 8

    .line 1808
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_1a

    .line 1809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting profiles related to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1811
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1813
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_31

    .line 1814
    :try_start_21
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(ILjava/lang/String;ZZ)Landroid/util/IntArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2e

    .line 1817
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_2e
    move-exception p0

    .line 1815
    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    .line 1817
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1818
    throw p0
.end method

.method public getProfileIds(IZ)[I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1795
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIds(ILjava/lang/String;ZZ)[I

    move-result-object p0

    return-object p0
.end method

.method public getProfileIdsExcludingHidden(IZ)[I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1903
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIds(ILjava/lang/String;ZZ)[I

    move-result-object p0

    return-object p0
.end method

.method public final getProfileIdsLU(ILjava/lang/String;ZZ)Landroid/util/IntArray;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1847
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(ILjava/lang/String;ZZZ)Landroid/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method public final getProfileIdsLU(ILjava/lang/String;ZZZ)Landroid/util/IntArray;
    .registers 12

    .line 1859
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1860
    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    if-nez p1, :cond_12

    goto :goto_6e

    .line 1865
    :cond_12
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_6e

    .line 1867
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-nez p5, :cond_2e

    .line 1868
    invoke-static {p1, v3}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-nez v4, :cond_2e

    goto :goto_6b

    :cond_2e
    if-eqz p5, :cond_37

    .line 1871
    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupOrIsAlwaysVisible(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-nez v4, :cond_37

    goto :goto_6b

    :cond_37
    if-eqz p3, :cond_40

    .line 1874
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_40

    goto :goto_6b

    .line 1877
    :cond_40
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    goto :goto_6b

    .line 1880
    :cond_4b
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_50

    goto :goto_6b

    :cond_50
    if-eqz p2, :cond_5b

    .line 1883
    iget-object v4, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    goto :goto_6b

    :cond_5b
    if-eqz p4, :cond_66

    .line 1886
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->isProfileHidden(I)Z

    move-result v4

    if-eqz v4, :cond_66

    goto :goto_6b

    .line 1889
    :cond_66
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    :goto_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_6e
    :goto_6e
    return-object v0
.end method

.method public getProfileLabelResId(I)I
    .registers 3

    .line 2842
    const-string v0, "getProfileLabelResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2844
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 2845
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p1, :cond_19

    if-nez p0, :cond_12

    goto :goto_19

    .line 2849
    :cond_12
    iget p1, p1, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2850
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserTypeDetails;->getLabel(I)I

    move-result p0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return p0
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 3

    .line 1986
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1991
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1992
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 1993
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw p0

    .line 1987
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You need MANAGE_USERS or INTERACT_ACROSS_USERS permission to get the profile parent"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProfileParentId(I)I
    .registers 3

    .line 1998
    const-string v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1999
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentIdUnchecked(I)I

    move-result p0

    return p0
.end method

.method public final getProfileParentIdUnchecked(I)I
    .registers 3

    .line 2003
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2004
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_d

    .line 2006
    monitor-exit v0

    return p1

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 2008
    :cond_d
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    .line 2009
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method public final getProfileParentLU(I)Landroid/content/pm/UserInfo;
    .registers 4

    .line 2015
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2019
    :cond_8
    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v0, p1, :cond_16

    const/16 p1, -0x2710

    if-ne v0, p1, :cond_11

    goto :goto_16

    .line 2023
    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0

    :cond_16
    :goto_16
    return-object v1
.end method

.method public getProfileType(I)Ljava/lang/String;
    .registers 3

    .line 2883
    const-string v0, "getProfileType"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2884
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2885
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 2887
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_1b

    :catchall_17
    move-exception p0

    goto :goto_20

    :cond_19
    const-string p0, ""

    :goto_1b
    monitor-exit v0

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    .line 2889
    monitor-exit v0

    return-object p0

    .line 2890
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_17

    throw p0
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .registers 8

    .line 1775
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_1c

    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting profiles related to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_20

    .line 1779
    :cond_1c
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasCreateUsersPermission()Z

    move-result v0

    .line 1781
    :goto_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1783
    :try_start_24
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_34

    const/4 v4, 0x0

    .line 1784
    :try_start_28
    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/android/server/pm/UserManagerService;->getProfilesLU(ILjava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_31

    .line 1787
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_31
    move-exception p0

    .line 1785
    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    .line 1787
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1788
    throw p0
.end method

.method public final getProfilesLU(ILjava/lang/String;ZZ)Ljava/util/List;
    .registers 7

    const/4 v0, 0x0

    .line 1825
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(ILjava/lang/String;ZZ)Landroid/util/IntArray;

    move-result-object p1

    .line 1827
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1828
    :goto_e
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p3

    if-ge v0, p3, :cond_39

    .line 1829
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->get(I)I

    move-result p3

    .line 1830
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object p3, p3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-nez p4, :cond_2f

    .line 1833
    new-instance v1, Landroid/content/pm/UserInfo;

    invoke-direct {v1, p3}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    const/4 p3, 0x0

    .line 1834
    iput-object p3, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1835
    iput-object p3, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    goto :goto_33

    .line 1837
    :cond_2f
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1839
    :goto_33
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_39
    return-object p2
.end method

.method public final getRemainingCreatableProfileCount(Lcom/android/server/pm/UserTypeDetails;IZ)I
    .registers 8

    .line 4520
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4522
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    .line 4523
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/UserInfo;->canHaveProfile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_3b

    .line 4527
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1, v2, v2}, Lcom/android/server/pm/UserManagerService;->getProfileIds(ILjava/lang/String;ZZ)[I

    move-result-object p2

    array-length p2, p2

    if-lez p2, :cond_24

    if-eqz p3, :cond_24

    const/4 p3, 0x1

    goto :goto_25

    :cond_24
    move p3, v2

    .line 4532
    :goto_25
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/UserManagerService;->getRemainingCreatableUserCount(Lcom/android/server/pm/UserTypeDetails;I)I

    move-result p0

    .line 4535
    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfTypePerParent(Lcom/android/server/pm/UserTypeDetails;)I

    move-result p1

    sub-int/2addr p1, p2

    add-int/2addr p1, p3

    .line 4538
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_39
    move-exception p0

    goto :goto_3d

    .line 4524
    :cond_3b
    :goto_3b
    monitor-exit v0

    return v2

    .line 4539
    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_39

    throw p0
.end method

.method public getRemainingCreatableProfileCount(Ljava/lang/String;I)I
    .registers 4

    .line 4497
    const-string v0, "get the remaining number of profiles that can be added to the given user."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 4499
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserTypeDetails;

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 4501
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->getRemainingCreatableProfileCount(Lcom/android/server/pm/UserTypeDetails;IZ)I

    move-result p0

    return p0

    :cond_15
    return v0
.end method

.method public final getRemainingCreatableUserCount(Lcom/android/server/pm/UserTypeDetails;I)I
    .registers 7

    .line 4327
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 4330
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->doSystemFeaturesSupportUserType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 4333
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_1a

    return v1

    .line 4337
    :cond_1a
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4338
    :try_start_1d
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result v2

    .line 4339
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 4342
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfType(Lcom/android/server/pm/UserTypeDetails;)I

    move-result v3

    sub-int/2addr v3, v2

    add-int/2addr v3, p2

    .line 4344
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubjectToSwitchableUserMaximum(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 4345
    invoke-static {}, Landroid/os/UserManager;->getMaxSwitchableUsers()I

    move-result p1

    .line 4346
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getSwitchableUsersForQuotaCountLU()I

    move-result p0

    sub-int/2addr p1, p0

    add-int/2addr p1, p2

    .line 4347
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_49
    move-exception p0

    goto :goto_51

    .line 4350
    :cond_4b
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    monitor-exit v0

    return p0

    .line 4351
    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_1d .. :try_end_52} :catchall_49

    throw p0
.end method

.method public getRemainingCreatableUserCount(Ljava/lang/String;)I
    .registers 3

    .line 4307
    const-string v0, "get the remaining number of users that can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 4308
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserTypeDetails;

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 4310
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getRemainingCreatableUserCount(Lcom/android/server/pm/UserTypeDetails;I)I

    move-result p0

    return p0

    :cond_15
    return v0
.end method

.method public getSeedAccountName(I)Ljava/lang/String;
    .registers 3

    .line 8094
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 8095
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8096
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    goto :goto_12

    .line 8097
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    :goto_12
    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 8098
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getSeedAccountOptions(I)Landroid/os/PersistableBundle;
    .registers 3

    .line 8112
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 8113
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8114
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    goto :goto_12

    .line 8115
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    :goto_12
    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 8116
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getSeedAccountType(I)Ljava/lang/String;
    .registers 3

    .line 8103
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 8104
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8105
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    goto :goto_12

    .line 8106
    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    :goto_12
    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 8107
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final getStorageManagerInternal()Lcom/android/server/StorageManagerInternal;
    .registers 2

    .line 9232
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerInternal;

    if-nez v0, :cond_e

    .line 9233
    const-class v0, Lcom/android/server/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StorageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerInternal;

    .line 9235
    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerInternal;

    return-object p0
.end method

.method public final getSupervisingProfileId()I
    .registers 7

    .line 1644
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1645
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2f

    .line 1647
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1648
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSupervisingProfile()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 1649
    iget p0, v3, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :catchall_2a
    move-exception p0

    goto :goto_33

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1652
    :cond_2f
    monitor-exit v0

    const/16 p0, -0x2710

    return p0

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_2a

    throw p0
.end method

.method public final getSwitchableUsersForQuotaCountLU()I
    .registers 7

    .line 4614
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_2d

    .line 4617
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4618
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 4620
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubjectToSwitchableUserMaximum(Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v3, :cond_2a

    add-int/lit8 v2, v2, 0x1

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_2d
    return v2
.end method

.method public final getUidForPackage(Ljava/lang/String;)I
    .registers 5

    .line 7596
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7598
    :try_start_4
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v2, 0x400000

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_1b
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 7603
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7604
    throw p0

    .line 7603
    :catch_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, -0x1

    return p0
.end method

.method public getUnnamedUserName()Ljava/lang/String;
    .registers 2

    .line 5659
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v0, 0x1040aad

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .registers 3

    .line 1352
    const-string v0, "get user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 1353
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1354
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 1355
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getUserBadgeColorResId(I)I
    .registers 4

    .line 2767
    const-string v0, "getUserBadgeColorResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2769
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2770
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz v0, :cond_1f

    if-eqz p0, :cond_1f

    .line 2771
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_1f

    .line 2775
    :cond_18
    iget p1, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserTypeDetails;->getBadgeColor(I)I

    move-result p0

    return p0

    .line 2772
    :cond_1f
    :goto_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested badge dark color for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserBadgeDarkColorResId(I)I
    .registers 4

    .line 2783
    const-string v0, "getUserBadgeDarkColorResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2785
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2786
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz v0, :cond_1f

    if-eqz p0, :cond_1f

    .line 2787
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_1f

    .line 2791
    :cond_18
    iget p1, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserTypeDetails;->getDarkThemeBadgeColor(I)I

    move-result p0

    return p0

    .line 2788
    :cond_1f
    :goto_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested badge color for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserBadgeLabelResId(I)I
    .registers 4

    .line 2750
    const-string v0, "getUserBadgeLabelResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2752
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2753
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz v0, :cond_1f

    if-eqz p0, :cond_1f

    .line 2754
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_1f

    .line 2758
    :cond_18
    iget p1, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2759
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserTypeDetails;->getBadgeLabel(I)I

    move-result p0

    return p0

    .line 2755
    :cond_1f
    :goto_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested badge label for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserBadgeNoBackgroundResId(I)I
    .registers 3

    .line 2818
    const-string v0, "getUserBadgeNoBackgroundResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2820
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 2821
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_17

    .line 2825
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getBadgeNoBackground()I

    move-result p0

    return p0

    .line 2822
    :cond_17
    :goto_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested badge (no background) for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserBadgeResId(I)I
    .registers 3

    .line 2807
    const-string v0, "getUserBadgeResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2808
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 2809
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_17

    .line 2813
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getBadgePlain()I

    move-result p0

    return p0

    .line 2810
    :cond_17
    :goto_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested badge for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserCreationTime(I)J
    .registers 5

    .line 7838
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 7840
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    if-ne v0, p1, :cond_10

    .line 7842
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    goto :goto_20

    :catchall_e
    move-exception p0

    goto :goto_2f

    .line 7844
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 7845
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v0, :cond_1f

    .line 7846
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    .line 7849
    :goto_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_e

    if-eqz p0, :cond_26

    .line 7854
    iget-wide p0, p0, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide p0

    .line 7851
    :cond_26
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "userId can only be the calling user or a profile associated with this user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7849
    :goto_2f
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_e

    throw p0
.end method

.method public final getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 4

    .line 3441
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v0, :cond_1a

    .line 3443
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_1a

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x0

    return-object p0

    :cond_1a
    return-object v0
.end method

.method public final getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 3

    .line 3465
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3466
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 3467
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;
    .registers 9

    .line 5707
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5708
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".backup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    .line 5709
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".reservecopy"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5711
    new-instance v0, Lcom/android/server/pm/ResilientAtomicFile;

    new-instance v6, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, p1}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/16 v4, 0x1f9

    const-string/jumbo v5, "user info"

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    return-object v0
.end method

.method public getUserHandle(I)I
    .registers 8

    .line 7826
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7827
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1c

    aget v4, v1, v3

    .line 7828
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 7829
    iget v5, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v5, p1, :cond_19

    monitor-exit v0

    return v4

    :catchall_17
    move-exception p0

    goto :goto_1f

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1c
    const/4 p0, -0x1

    .line 7832
    monitor-exit v0

    return p0

    .line 7833
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_17

    throw p0
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 3687
    const-string v0, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 3692
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3693
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_49

    .line 3694
    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_17

    goto :goto_49

    .line 3699
    :cond_17
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 3700
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 3701
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->isSameUserOrProfileGroupOrTargetIsCommunal(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result p0

    if-nez p0, :cond_2d

    .line 3702
    const-string p0, "get the icon of a user who is not related"

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_61

    .line 3705
    :cond_2d
    :goto_2d
    iget-object p0, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez p0, :cond_33

    .line 3706
    monitor-exit v0

    return-object v2

    .line 3709
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_2b

    .line 3712
    :try_start_34
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x10000000

    invoke-static {p1, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_3f} :catch_40

    return-object p0

    :catch_40
    move-exception p0

    .line 3715
    const-string p1, "UserManagerService"

    const-string v0, "Couldn\'t find icon file"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    .line 3695
    :cond_49
    :goto_49
    :try_start_49
    const-string p0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserIcon: unknown user #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3696
    monitor-exit v0

    return-object v2

    .line 3709
    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_49 .. :try_end_62} :catchall_2b

    throw p0

    .line 3688
    :cond_63
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get user icon"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUserIconBadgeResId(I)I
    .registers 3

    .line 2796
    const-string v0, "getUserIconBadgeResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2797
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 2798
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_17

    .line 2802
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getIconBadge()I

    move-result p0

    return p0

    .line 2799
    :cond_17
    :goto_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested icon badge for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserIds()[I
    .registers 2

    .line 4874
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4875
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 4876
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getUserIdsIncludingPreCreated()[I
    .registers 2

    .line 4907
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4908
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 4909
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 3

    .line 2641
    const-string/jumbo v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2642
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2643
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 2644
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final getUserInfoLU(I)Landroid/content/pm/UserInfo;
    .registers 5

    .line 3430
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 3432
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_30

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_30

    .line 3433
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getUserInfo: unknown user #"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_30
    if-eqz v0, :cond_35

    .line 3436
    iget-object p0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    return-object p0

    :cond_35
    return-object v1
.end method

.method public final getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    .registers 3

    .line 3454
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3455
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz p0, :cond_12

    .line 3456
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    goto :goto_13

    :catchall_10
    move-exception p0

    goto :goto_15

    :cond_12
    const/4 p0, 0x0

    :goto_13
    monitor-exit v0

    return-object p0

    .line 3457
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_10

    throw p0
.end method

.method public getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;
    .registers 1

    .line 9391
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    return-object p0
.end method

.method public final getUserListFile()Lcom/android/server/pm/ResilientAtomicFile;
    .registers 2

    .line 5078
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserListFile(Ljava/io/File;)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public final getUserListFile(Ljava/io/File;)Lcom/android/server/pm/ResilientAtomicFile;
    .registers 9

    .line 5082
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".backup"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5083
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5084
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".reservecopy"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5086
    new-instance v0, Lcom/android/server/pm/ResilientAtomicFile;

    new-instance v6, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/UserManagerService;)V

    const/16 v4, 0x1f9

    const-string/jumbo v5, "user list"

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    return-object v0
.end method

.method public getUserLogoutability(I)I
    .registers 3

    .line 3313
    const-string v0, "getUserLogoutability"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3315
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->canSwitchToHeadlessSystemUser()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    if-nez p1, :cond_17

    const/4 p0, 0x1

    return p0

    .line 3323
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserSwitchability(I)I

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x2

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 3

    .line 3079
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3080
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    .line 3081
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1b

    .line 3083
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "You need MANAGE_USERS, CREATE_USERS, QUERY_USERS, or GET_ACCOUNTS_PRIVILEGED permissions to: get user name"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3086
    :cond_1b
    :goto_1b
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3087
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3088
    :try_start_22
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 3089
    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz p0, :cond_34

    .line 3090
    monitor-exit v1

    return-object p0

    :catchall_32
    move-exception p0

    goto :goto_38

    .line 3092
    :cond_34
    const-string p0, ""

    monitor-exit v1

    return-object p0

    .line 3093
    :goto_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_32

    throw p0
.end method

.method public getUserPropertiesCopy(I)Landroid/content/pm/UserProperties;
    .registers 5

    .line 2718
    const-string v0, "getUserProperties"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2719
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 2721
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    .line 2722
    :goto_16
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    .line 2723
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryUsersPermission()Z

    move-result v1

    .line 2724
    new-instance v2, Landroid/content/pm/UserProperties;

    invoke-direct {v2, p0, p1, v0, v1}, Landroid/content/pm/UserProperties;-><init>(Landroid/content/pm/UserProperties;ZZZ)V

    return-object v2

    .line 2727
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot access properties for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;
    .registers 3

    .line 2732
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2733
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 2735
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    goto :goto_12

    .line 2737
    :cond_f
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method public getUserRemovability(I)I
    .registers 3

    .line 9252
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9253
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRemovabilityLockedLU(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 9254
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public getUserRemovabilityLockedLU(I)I
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, -0x4

    return p0

    .line 7307
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v0, :cond_10

    const/4 p0, -0x3

    return p0

    .line 7311
    :cond_10
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->isNonRemovableMainUser(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 p0, -0x5

    return p0

    .line 7314
    :cond_1a
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 p0, 0x2

    return p0

    .line 7317
    :cond_24
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne p1, v1, :cond_2a

    const/4 p0, -0x7

    return p0

    .line 7320
    :cond_2a
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isNonRemovableLastAdminUserLU(Landroid/content/pm/UserInfo;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, -0x6

    return p0

    :cond_34
    const/4 p0, 0x3

    return p0
.end method

.method public final getUserRemovalRestrictionOptional(I)Ljava/util/Optional;
    .registers 4

    .line 7154
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7155
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 7156
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_33

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_14

    .line 7157
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v0

    goto :goto_15

    :cond_14
    move v1, p1

    :goto_15
    if-eqz p0, :cond_1e

    .line 7158
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_1e

    move p1, v0

    :cond_1e
    if-eqz v1, :cond_25

    .line 7160
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_25
    if-eqz p1, :cond_2b

    .line 7164
    const-string/jumbo p0, "no_remove_managed_profile"

    goto :goto_2e

    .line 7165
    :cond_2b
    const-string/jumbo p0, "no_remove_user"

    .line 7162
    :goto_2e
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :catchall_33
    move-exception p0

    .line 7156
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public getUserRestrictionSource(Ljava/lang/String;I)I
    .registers 4

    .line 3947
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 3950
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    :goto_b
    if-ltz p1, :cond_1b

    .line 3951
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v0}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v0

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, -0x1

    goto :goto_b

    :cond_1b
    return p2
.end method

.method public getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .registers 7

    .line 3959
    const-string v0, "call getUserRestrictionSources."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryUsersPermission(Ljava/lang/String;)V

    .line 3962
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3963
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 3966
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3969
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3970
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    const/16 v2, -0x2710

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3974
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 3976
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_31
    return-object v0
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .registers 3

    .line 3987
    const-string v0, "getUserRestrictions"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 3988
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getUserSerialNumber(I)I
    .registers 3

    .line 7802
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7803
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 7804
    iget p0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    goto :goto_f

    :catchall_c
    move-exception p0

    goto :goto_11

    :cond_e
    const/4 p0, -0x1

    :goto_f
    monitor-exit v0

    return p0

    .line 7805
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_c

    throw p0
.end method

.method public getUserStartRealtime()J
    .registers 5

    .line 3098
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3099
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3100
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 3102
    iget-wide v2, p0, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    monitor-exit v1

    return-wide v2

    :catchall_15
    move-exception p0

    goto :goto_1b

    :cond_17
    const-wide/16 v2, 0x0

    .line 3104
    monitor-exit v1

    return-wide v2

    .line 3105
    :goto_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_15

    throw p0
.end method

.method public getUserStatusBarIconResId(I)I
    .registers 3

    .line 2830
    const-string v0, "getUserStatusBarIconResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2832
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 2833
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_17

    .line 2837
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getStatusBarIcon()I

    move-result p0

    return p0

    .line 2834
    :cond_17
    :goto_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested status bar icon for non-badged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getUserSwitchability(I)I
    .registers 9

    .line 3244
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 3248
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 3249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserSwitchability-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3253
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.telecom"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5c

    .line 3254
    const-string v1, "TM.isInCall"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3255
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3257
    :try_start_3a
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    if-eqz v1, :cond_50

    .line 3259
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_4e

    if-eqz v1, :cond_50

    move v1, v2

    goto :goto_51

    :catchall_4e
    move-exception p0

    goto :goto_58

    :cond_50
    move v1, v3

    .line 3263
    :goto_51
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3265
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_5d

    .line 3263
    :goto_58
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3264
    throw p0

    :cond_5c
    move v1, v3

    .line 3267
    :goto_5d
    const-string v4, "hasUserRestriction-DISALLOW_USER_SWITCH"

    invoke-virtual {v0, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3268
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    const-string/jumbo v5, "no_user_switch"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6f

    or-int/lit8 v1, v1, 0x2

    .line 3271
    :cond_6f
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3274
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result p1

    if-nez p1, :cond_a4

    .line 3275
    const-string p1, "getInt-ALLOW_USER_SWITCHING_WHEN_SYSTEM_USER_LOCKED"

    invoke-virtual {v0, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3276
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 3277
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "allow_user_switching_when_system_user_locked"

    .line 3276
    invoke-static {p1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_8c

    goto :goto_8d

    :cond_8c
    move v2, v3

    .line 3279
    :goto_8d
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3280
    const-string p1, "isUserUnlocked-USER_SYSTEM"

    invoke-virtual {v0, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3281
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result p0

    .line 3282
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v2, :cond_a4

    if-nez p0, :cond_a4

    or-int/lit8 v1, v1, 0x4

    .line 3288
    :cond_a4
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return v1

    .line 3245
    :cond_a8
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You need MANAGE_USERS or INTERACT_ACROSS_USERS permission to getUserSwitchability"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 2635
    iget-object p1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_7

    :cond_6
    move-object p1, v0

    :goto_7
    if-eqz p1, :cond_12

    .line 2636
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    return-object p0

    :cond_12
    return-object v0
.end method

.method public final getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;
    .registers 2

    .line 2627
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeNoChecks(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 2628
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUserTypeNoChecks(I)Ljava/lang/String;
    .registers 3

    .line 2616
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2617
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 2618
    iget-object p0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_f

    :catchall_c
    move-exception p0

    goto :goto_11

    :cond_e
    const/4 p0, 0x0

    :goto_f
    monitor-exit v0

    return-object p0

    .line 2619
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_c

    throw p0
.end method

.method public getUserUnlockRealtime()J
    .registers 4

    .line 3110
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3111
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 3113
    iget-wide v1, p0, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    monitor-exit v0

    return-wide v1

    :catchall_15
    move-exception p0

    goto :goto_1b

    :cond_17
    const-wide/16 v1, 0x0

    .line 3115
    monitor-exit v0

    return-wide v1

    .line 3116
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_15

    throw p0
.end method

.method public getUsers(Lcom/android/server/pm/UserFilter;Ljava/util/function/Function;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserFilter;",
            "Ljava/util/function/Function<",
            "Landroid/content/pm/UserInfo;",
            "Landroid/content/pm/UserInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 1732
    const-string v0, "converter cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1733
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(Lcom/android/server/pm/UserFilter;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 3

    .line 1658
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1659
    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUsersInternal(Lcom/android/server/pm/UserFilter;Ljava/util/function/Function;)Ljava/util/List;
    .registers 9

    .line 1738
    const-string v0, "filter cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1739
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1740
    :try_start_8
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1741
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_42

    .line 1743
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1744
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDeathPredictor:Lcom/android/server/pm/UserFilter$DeathPredictor;

    invoke-virtual {p1, v5, v4}, Lcom/android/server/pm/UserFilter;->matches(Lcom/android/server/pm/UserFilter$DeathPredictor;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-eqz v5, :cond_3f

    if-nez p2, :cond_36

    .line 1746
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :catchall_34
    move-exception p0

    goto :goto_44

    .line 1748
    :cond_36
    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1752
    :cond_42
    monitor-exit v0

    return-object v1

    .line 1753
    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_34

    throw p0
.end method

.method public getUsersInternal(ZZZ)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1686
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1687
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1688
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_47

    .line 1690
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-eqz p1, :cond_2a

    .line 1691
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_44

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_49

    :cond_2a
    :goto_2a
    if-eqz p2, :cond_36

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1692
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_44

    :cond_36
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v5, :cond_3b

    goto :goto_44

    :cond_3b
    if-eqz p3, :cond_41

    .line 1697
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1698
    :cond_41
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1700
    :cond_47
    monitor-exit v0

    return-object v1

    .line 1701
    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_28

    throw p0
.end method

.method public getUsersWithUnresolvedNames(ZZ)Ljava/util/List;
    .registers 4

    .line 1670
    const-string v0, "get users with unresolved names"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1672
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleUsers()[I
    .registers 3

    .line 3040
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3044
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3046
    :try_start_c
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1a

    .line 3048
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3049
    throw p0

    .line 3041
    :cond_1f
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to get list of visible users"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasBadge(I)Z
    .registers 3

    .line 2743
    const-string v0, "hasBadge"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2744
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 2745
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .registers 5

    .line 3993
    const-string v0, "hasBaseUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 3994
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    .line 3997
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3998
    :try_start_10
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 3999
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 v1, 0x1

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_24

    :cond_22
    :goto_22
    monitor-exit v0

    return v1

    .line 4000
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_20

    throw p0
.end method

.method public hasRestrictedProfiles(I)Z
    .registers 8

    .line 3411
    const-string v0, "hasRestrictedProfiles"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3412
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3413
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_2c

    .line 3415
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3416
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq p1, v5, :cond_29

    iget v4, v4, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v4, p1, :cond_29

    const/4 p0, 0x1

    .line 3418
    monitor-exit v0

    return p0

    :catchall_27
    move-exception p0

    goto :goto_2e

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3421
    :cond_2c
    monitor-exit v0

    return v2

    .line 3422
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_27

    throw p0
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .registers 4

    .line 3879
    const-string v0, "hasUserRestriction"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 3881
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->userExists(I)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 3884
    :cond_d
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .registers 7

    .line 3890
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    .line 3893
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    move v3, v1

    .line 3894
    :goto_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 3895
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 3896
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 3897
    invoke-virtual {v4, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    return v0

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2c
    return v1
.end method

.method public final initDefaultGuestRestrictions()V
    .registers 4

    .line 3746
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 3747
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 3748
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    const-string v2, "android.os.usertype.full.GUEST"

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserTypeDetails;

    if-nez v1, :cond_22

    .line 3750
    const-string p0, "UserManagerService"

    const-string v1, "Can\'t set default guest restrictions: type doesn\'t exist."

    invoke-static {p0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    goto :goto_29

    .line 3753
    :cond_22
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/UserTypeDetails;->addDefaultRestrictionsTo(Landroid/os/Bundle;)V

    .line 3755
    :cond_27
    monitor-exit v0

    return-void

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_20

    throw p0
.end method

.method public final initPrivateSpaceAutoLockTimer(I)V
    .registers 3

    .line 758
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cancelPendingAutoLockAlarms()V

    .line 759
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    if-eqz v0, :cond_f

    .line 760
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->getUserId()I

    move-result v0

    if-eq v0, p1, :cond_e

    goto :goto_f

    :cond_e
    return-void

    .line 761
    :cond_f
    :goto_f
    new-instance v0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    return-void
.end method

.method public final initializeAndRegisterKeyguardLockedStateListener()V
    .registers 5

    .line 793
    const-string v0, "UserManagerService"

    new-instance v1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mKeyguardLockedStateListener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    .line 796
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/KeyguardManager;

    .line 797
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 798
    const-string v2, "Adding keyguard locked state listener"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mKeyguardLockedStateListener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    invoke-virtual {v1, v2, p0}, Landroid/app/KeyguardManager;->addKeyguardLockedStateListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    .line 802
    const-string v1, "Error adding keyguard locked listener "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public installAllowlistedSystemPackages(ZZLandroid/util/ArraySet;)Z
    .registers 5

    .line 6785
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    if-nez p1, :cond_b

    iget-boolean p0, p0, Lcom/android/server/pm/UserManagerService;->mUpdatingSystemUserMode:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    invoke-virtual {v0, p0, p2, p3}, Lcom/android/server/pm/UserSystemPackageInstaller;->installAllowlistedSystemPackages(ZZLandroid/util/ArraySet;)Z

    move-result p0

    return p0
.end method

.method public final invalidateOwnerNameIfNecessary(Landroid/content/res/Resources;Z)V
    .registers 5

    .line 5667
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    if-nez p2, :cond_15

    .line 5668
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    iget p2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_14

    goto :goto_15

    :cond_14
    return-void

    .line 5669
    :cond_15
    :goto_15
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    const/4 v0, 0x1

    const v1, 0x104073d

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 5670
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    .line 5671
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p1, :cond_2d

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5673
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    return-void
.end method

.method public isAdminUser(I)Z
    .registers 3

    .line 3215
    const-string v0, "isAdminUser"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 3216
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3217
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 3218
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p0

    if-eqz p0, :cond_18

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

    .line 3219
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_16

    throw p0
.end method

.method public final isAutoLockingPrivateSpaceOnRestartsEnabled()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isCrossProfileIntentFilterAccessible(IIZ)Z
    .registers 4

    .line 3524
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getCrossProfileIntentFilterAccessControl(II)I

    move-result p0

    const/16 p1, 0xa

    const/4 p2, 0x0

    if-ne p1, p0, :cond_10

    .line 3531
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot()Z

    move-result p1

    if-nez p1, :cond_10

    return p2

    :cond_10
    const/16 p1, 0x14

    if-ne p1, p0, :cond_1d

    if-eqz p3, :cond_1c

    .line 3541
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot()Z

    move-result p0

    if-nez p0, :cond_1d

    :cond_1c
    return p2

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public isCurrentUserOrRunningProfileOfCurrentUser(I)Z
    .registers 4

    .line 3017
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    .line 3023
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isProfileUnchecked(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3024
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentIdUnchecked(I)I

    move-result v1

    if-ne v1, v0, :cond_19

    .line 3026
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isUserRunning(I)Z

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public final isDefaultHeadlessSystemUserMode()Z
    .registers 3

    .line 4933
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    if-nez p0, :cond_9

    .line 4934
    sget-boolean p0, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    return p0

    .line 4937
    :cond_9
    const-string/jumbo p0, "persist.debug.user_mode_emulation"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4938
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 4939
    const-string v1, "headless"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 p0, 0x1

    return p0

    .line 4940
    :cond_20
    const-string v1, "full"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 p0, 0x0

    return p0

    .line 4941
    :cond_2a
    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 4942
    const-string v1, "isDefaultHeadlessSystemUserMode(): ignoring invalid valued of property %s: %s"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "UserManagerService"

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4948
    :cond_3d
    sget-boolean p0, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    return p0
.end method

.method public isDemoUser(I)Z
    .registers 5

    .line 3197
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_29

    .line 3198
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_29

    .line 3199
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You need MANAGE_USERS permission to query if u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is a demo user"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3203
    :cond_29
    :goto_29
    const-string/jumbo v0, "ro.boot.arc_demo_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_35

    return v2

    .line 3207
    :cond_35
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3208
    :try_start_38
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 3209
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result p0

    if-eqz p0, :cond_48

    move v1, v2

    goto :goto_48

    :catchall_46
    move-exception p0

    goto :goto_4a

    :cond_48
    :goto_48
    monitor-exit v0

    return v1

    .line 3210
    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_38 .. :try_end_4b} :catchall_46

    throw p0
.end method

.method public isForegroundUserAdmin()Z
    .registers 4

    .line 3067
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v0

    const/16 v1, -0x2710

    const/4 v2, 0x0

    if-eq v0, v1, :cond_20

    .line 3069
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3070
    :try_start_c
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 3071
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 v2, 0x1

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_1e

    :cond_1c
    :goto_1c
    monitor-exit v1

    return v2

    .line 3072
    :goto_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_1a

    throw p0

    :cond_20
    return v2
.end method

.method public isHeadlessSystemUserMode()Z
    .registers 3

    .line 4915
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4916
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 4917
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 4918
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public isLastFullAdminUserLU(Landroid/content/pm/UserInfo;)Z
    .registers 8

    .line 9276
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_4c

    .line 9279
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v2, v1

    :goto_15
    if-ge v2, v0, :cond_4a

    .line 9281
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 9282
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_47

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_47

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v4, :cond_34

    goto :goto_47

    .line 9286
    :cond_34
    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    if-eq v4, v5, :cond_47

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 9287
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v3

    if-eqz v3, :cond_47

    return v1

    :cond_47
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_4a
    const/4 p0, 0x1

    return p0

    :cond_4c
    :goto_4c
    return v1
.end method

.method public isMainUser(I)Z
    .registers 3

    .line 1425
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mNonComplianceLogger:Lcom/android/server/pm/MultiuserNonComplianceLogger;

    invoke-virtual {v0}, Lcom/android/server/pm/MultiuserNonComplianceLogger;->logIsMainUserCall()V

    .line 1426
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 1427
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isMainUnlogged()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public isMainUserPermanentAdmin()Z
    .registers 2

    .line 9298
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getContextResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101e9

    .line 9299
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final isNonRemovableLastAdminUserLU(Landroid/content/pm/UserInfo;)Z
    .registers 4

    .line 9264
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getContextResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 9269
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isLastFullAdminUserLU(Landroid/content/pm/UserInfo;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final isNonRemovableMainUser(Landroid/content/pm/UserInfo;)Z
    .registers 2

    .line 9243
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isMainUserPermanentAdmin()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isPreCreated(I)Z
    .registers 3

    .line 3224
    const-string v0, "isPreCreated"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 3225
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3226
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 3227
    iget-boolean p0, p0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :catchall_14
    move-exception p0

    goto :goto_19

    :cond_16
    const/4 p0, 0x0

    :goto_17
    monitor-exit v0

    return p0

    .line 3228
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_14

    throw p0
.end method

.method public isProfile(I)Z
    .registers 3

    .line 2866
    const-string v0, "isProfile"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2867
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isProfileUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public final isProfileHidden(I)Z
    .registers 2

    .line 1909
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getProfileApiVisibility()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_c

    return p1

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isProfileUnchecked(I)Z
    .registers 3

    .line 2871
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2872
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 2873
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :catchall_11
    move-exception p0

    goto :goto_16

    :cond_13
    const/4 p0, 0x0

    :goto_14
    monitor-exit v0

    return p0

    .line 2874
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_11

    throw p0
.end method

.method public isQuietModeEnabled(I)Z
    .registers 4

    .line 2348
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2350
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1a

    .line 2351
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 2352
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1f

    if-eqz p0, :cond_1c

    .line 2353
    :try_start_d
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_1c

    .line 2356
    :cond_14
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    goto :goto_22

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    .line 2354
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1a

    return p0

    :catchall_1f
    move-exception p0

    .line 2352
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    throw p0

    .line 2357
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_1a

    throw p0
.end method

.method public isRestricted(I)Z
    .registers 4

    .line 3359
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_1b

    .line 3360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "query isRestricted for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 3362
    :cond_1b
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3363
    :try_start_1e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_26

    const/4 p0, 0x0

    goto :goto_2a

    .line 3364
    :cond_26
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p0

    :goto_2a
    monitor-exit v0

    return p0

    :catchall_2c
    move-exception p0

    .line 3365
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public isSameProfileGroup(II)Z
    .registers 4

    if-ne p1, p2, :cond_4

    const/4 p0, 0x1

    return p0

    .line 1937
    :cond_4
    const-string v0, "check if in the same profile group"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryUsersPermission(Ljava/lang/String;)V

    .line 1938
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    return p0
.end method

.method public final isSameProfileGroupNoChecks(II)Z
    .registers 5

    .line 1959
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1960
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_e

    .line 1962
    monitor-exit v0

    return v1

    :catchall_c
    move-exception p0

    goto :goto_1c

    .line 1964
    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_16

    .line 1966
    monitor-exit v0

    return v1

    .line 1968
    :cond_16
    invoke-static {p1, p0}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1969
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_c

    throw p0
.end method

.method public final isSameProfileGroupOrIsAlwaysVisible(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .registers 6

    .line 1947
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    return v2

    .line 1948
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1949
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    move-result v0

    if-eqz v0, :cond_17

    return v2

    .line 1952
    :cond_17
    iget v0, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 1953
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    move-result p0

    if-nez p0, :cond_2d

    .line 1954
    :cond_27
    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result p0

    if-eqz p0, :cond_2e

    :cond_2d
    return v2

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public final isSameUserOrProfileGroupOrTargetIsCommunal(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .registers 5

    .line 1976
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    iget v0, p2, Landroid/content/pm/UserInfo;->id:I

    const/4 v1, 0x1

    if-ne p0, v0, :cond_8

    return v1

    .line 1980
    :cond_8
    iget p0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 p1, -0x2710

    if-eq p0, p1, :cond_13

    iget p1, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne p0, p1, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 7

    .line 3907
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_f

    .line 3910
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserRestrictionsUtils;->isSettingRestrictedForUser(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    return p0

    .line 3908
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Non-system caller"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isUserForeground(I)Z
    .registers 5

    .line 2914
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_33

    .line 2915
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 2916
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_33

    .line 2917
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller from user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to check if another user ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is running in the foreground"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2922
    :cond_33
    :goto_33
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    if-ne p1, p0, :cond_3b

    const/4 p0, 0x1

    return p0

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

.method public isUserNameSet(I)Z
    .registers 5

    .line 7810
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 7811
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 7812
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v2

    if-nez v2, :cond_21

    if-ne v1, p1, :cond_19

    const-string v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    .line 7813
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_21

    .line 7815
    :cond_19
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You need MANAGE_USERS, CREATE_USERS, QUERY_USERS, or GET_ACCOUNTS_PRIVILEGED permissions to: get whether user name is set"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7818
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7819
    :try_start_24
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 7820
    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz p0, :cond_32

    const/4 p0, 0x1

    goto :goto_33

    :catchall_30
    move-exception p0

    goto :goto_35

    :cond_32
    const/4 p0, 0x0

    :goto_33
    monitor-exit v0

    return p0

    .line 7821
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_30

    throw p0
.end method

.method public isUserOfType(ILjava/lang/String;)Z
    .registers 4

    .line 2607
    const-string v0, "check user type"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    if-eqz p2, :cond_13

    .line 2608
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeNoChecks(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public isUserRunning(I)Z
    .registers 3

    .line 2908
    const-string v0, "isUserRunning"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2909
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result p0

    return p0
.end method

.method public isUserSwitcherEnabled(I)Z
    .registers 6

    .line 3295
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3297
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getContextResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110266

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 3295
    const-string/jumbo v2, "user_switcher_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    move v0, v2

    goto :goto_1f

    :cond_1e
    move v0, v1

    .line 3300
    :goto_1f
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    if-eqz v3, :cond_39

    const-string/jumbo v3, "no_user_switch"

    .line 3301
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_39

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 3302
    invoke-static {p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_39

    if-eqz v0, :cond_39

    return v2

    :cond_39
    return v1
.end method

.method public isUserSwitcherEnabled(ZI)Z
    .registers 5

    .line 3333
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->isUserSwitcherEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-nez p1, :cond_1b

    .line 3337
    const-string/jumbo p1, "no_add_user"

    .line 3338
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 3339
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->areThereMultipleSwitchableUsers()Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    return v1

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public final isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z
    .registers 2

    .line 4442
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_f

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public isUserTypeEnabled(Ljava/lang/String;)Z
    .registers 3

    .line 4435
    const-string v0, "check if user type is enabled."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 4436
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p1, :cond_17

    .line 4437
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserTypeSubjectToSwitchableUserMaximum(Landroid/content/pm/UserInfo;)Z
    .registers 2

    .line 4245
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 4246
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubjectToSwitchableUserMaximum(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserTypeSubjectToSwitchableUserMaximum(Lcom/android/server/pm/UserTypeDetails;)Z
    .registers 2

    .line 4239
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->supportsSwitchTo()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 4240
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->isGuest()Z

    move-result p0

    if-nez p0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->isDemo()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public isUserTypeSubtypeOfFull(Ljava/lang/String;)Z
    .registers 2

    .line 2696
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p0, :cond_12

    .line 2697
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isFull()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isUserTypeSubtypeOfProfile(Ljava/lang/String;)Z
    .registers 2

    .line 2702
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p0, :cond_12

    .line 2703
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isUserTypeSubtypeOfSystem(Ljava/lang/String;)Z
    .registers 2

    .line 2708
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p0, :cond_12

    .line 2709
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isSystem()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isUserUnlocked(I)Z
    .registers 3

    .line 2902
    const-string v0, "isUserUnlocked"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2903
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result p0

    return p0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .registers 3

    .line 2895
    const-string v0, "isUserUnlockingOrUnlocked"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2897
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result p0

    return p0
.end method

.method public isUserVisible(I)Z
    .registers 5

    .line 2927
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_33

    .line 2928
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 2929
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_33

    .line 2930
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller from user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to check if another user ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is visible"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2935
    :cond_33
    :goto_33
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(I)Z

    move-result p0

    return p0
.end method

.method public isUserVisibleOnDisplay(II)Z
    .registers 3

    .line 3035
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(II)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$convertPreCreatedUserIfPossible$8(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .registers 6

    .line 6754
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(IZ)V

    .line 6755
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    .line 6756
    const-class p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 6757
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    if-eqz p0, :cond_1a

    .line 6759
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Landroid/service/voice/VoiceInteractionManagerInternal;->onPreCreatedUserConversion(I)V

    :cond_1a
    return-void
.end method

.method public final synthetic lambda$getUserFile$7(IILjava/lang/String;)V
    .registers 4

    .line 5713
    const-string p2, "UserManagerService"

    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5715
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 5717
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    :cond_e
    return-void
.end method

.method public final synthetic lambda$getUserListFile$6(ILjava/lang/String;)V
    .registers 3

    .line 5088
    const-string p1, "UserManagerService"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5090
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUserList()V

    return-void
.end method

.method public final synthetic lambda$new$3(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .registers 2

    .line 1014
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$setQuietModeEnabledAsync$1(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .registers 5

    .line 891
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$someUserHasAccountNoChecks$9(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    .line 8173
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 8174
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/UserManagerService;->someUserHasSeedAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    .line 8173
    :goto_16
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$updateUserRestrictionsInternalLR$5(Landroid/os/Bundle;I)V
    .registers 4

    .line 4067
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionToken:Landroid/os/IBinder;

    invoke-interface {v0, p1, p0, p2}, Lcom/android/internal/app/IAppOpsService;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    .line 4069
    :catch_8
    const-string p0, "UserManagerService"

    const-string p1, "Unable to notify AppOpsService of UserRestrictions"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final logQuietModeEnabled(IZLjava/lang/String;)V
    .registers 10

    .line 2321
    const-string v0, "UserManagerService"

    const-string/jumbo v1, "requestQuietModeEnabled called by package %s, with enableQuietMode %b."

    .line 2324
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p3, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 2321
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2326
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2327
    :try_start_13
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    .line 2328
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_5e

    if-nez p0, :cond_1b

    return-void

    .line 2332
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2333
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_30

    .line 2334
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v2

    :goto_2d
    sub-long v2, v0, v2

    goto :goto_35

    .line 2335
    :cond_30
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-wide v2, p1, Landroid/content/pm/UserInfo;->creationTime:J

    goto :goto_2d

    :goto_35
    const/16 p1, 0x37

    .line 2337
    invoke-static {p1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 2338
    invoke-static {v4}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    .line 2339
    invoke-virtual {p1, p3}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    .line 2340
    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    .line 2341
    invoke-virtual {p1, v2, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    .line 2342
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 2343
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService$UserData;->setLastRequestQuietModeEnabledMillis(J)V

    return-void

    :catchall_5e
    move-exception p0

    .line 2328
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p0
.end method

.method public final logRemoveResultError(IILjava/lang/String;)V
    .registers 5

    const/4 p0, -0x7

    .line 7328
    const-string v0, "UserManagerService"

    if-eq p1, p0, :cond_5b

    const/4 p0, -0x6

    if-eq p1, p0, :cond_4d

    const/4 p0, -0x5

    if-eq p1, p0, :cond_3f

    const/4 p0, -0x4

    if-eq p1, p0, :cond_31

    const/4 p0, -0x3

    if-eq p1, p0, :cond_23

    const/4 p0, 0x2

    if-eq p1, p0, :cond_15

    return-void

    .line 7340
    :cond_15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    .line 7339
    const-string p1, "User %d can not be %s, it is already scheduled for removal."

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7333
    :cond_23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "User %d can not be %s, invalid user id provided."

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7330
    :cond_31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "User %d can not be %s, system user cannot be removed."

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7337
    :cond_3f
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    .line 7336
    const-string p1, "User %d can not be %s, main user cannot be removed when it\'s a permanent admin user."

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7343
    :cond_4d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    .line 7342
    const-string p1, "User %d can not be %s, last admin user cannot be removed."

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7345
    :cond_5b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "User %d can not be %s because it\'s the device owner"

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public makeInitialized(I)V
    .registers 6

    .line 3722
    const-string v0, "makeInitialized"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3725
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3726
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v1, :cond_2f

    .line 3727
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_19

    goto :goto_2f

    .line 3731
    :cond_19
    iget v2, v1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_27

    or-int/lit8 v2, v2, 0x10

    .line 3732
    iput v2, v1, Landroid/content/pm/UserInfo;->flags:I

    const/4 v1, 0x1

    goto :goto_28

    :catchall_25
    move-exception p0

    goto :goto_47

    :cond_27
    const/4 v1, 0x0

    .line 3735
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_25

    if-eqz v1, :cond_2e

    .line 3737
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    :cond_2e
    return-void

    .line 3728
    :cond_2f
    :goto_2f
    :try_start_2f
    const-string p0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeInitialized: unknown user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    monitor-exit v0

    return-void

    .line 3735
    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_2f .. :try_end_48} :catchall_25

    throw p0
.end method

.method public markGuestForDeletion(I)Z
    .registers 9

    .line 7019
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 7020
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "no_remove_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 7022
    const-string p0, "UserManagerService"

    const-string p1, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 7026
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7029
    :try_start_23
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_6c

    .line 7030
    :try_start_26
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_4c

    .line 7031
    :try_start_29
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz p1, :cond_62

    if-eqz v5, :cond_62

    .line 7032
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_3e

    goto :goto_62

    .line 7035
    :cond_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_60

    .line 7036
    :try_start_3f
    iget-object p1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-nez p1, :cond_4e

    .line 7037
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_4c

    .line 7051
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_4c
    move-exception p0

    goto :goto_6a

    .line 7044
    :cond_4e
    :try_start_4e
    iget-object p1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v2, 0x1

    iput-boolean v2, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    const/16 v4, 0x40

    .line 7047
    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/UserManagerService;->addUserInfoFlags(Landroid/content/pm/UserInfo;I)V

    .line 7048
    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 7049
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_4c

    .line 7051
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_60
    move-exception p0

    goto :goto_68

    .line 7033
    :cond_62
    :goto_62
    :try_start_62
    monitor-exit v4
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_60

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_4c

    .line 7051
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 7035
    :goto_68
    :try_start_68
    monitor-exit v4
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_60

    :try_start_69
    throw p0

    .line 7049
    :goto_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_4c

    :try_start_6b
    throw p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p0

    .line 7051
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7052
    throw p0
.end method

.method public final markUserForRemovalIfNecessaryLU(Landroid/content/pm/UserInfo;)V
    .registers 6

    .line 1277
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_27

    .line 1281
    :cond_7
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v0, :cond_c

    goto :goto_27

    .line 1285
    :cond_c
    iget-wide v0, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getContextResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_28

    :goto_27
    return-void

    .line 1293
    :cond_28
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    const/4 v0, 0x1

    .line 1294
    iput-boolean v0, p1, Landroid/content/pm/UserInfo;->partial:Z

    const/16 v0, 0x40

    .line 1295
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->addUserInfoFlags(Landroid/content/pm/UserInfo;I)V

    return-void
.end method

.method public maybeScheduleAlarmToAutoLockPrivateSpace()V
    .registers 5

    .line 717
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 718
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    .line 721
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result v2

    .line 718
    const-string/jumbo v3, "private_space_auto_lock"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    .line 722
    const-string v2, "UserManagerService"

    if-eq v0, v1, :cond_25

    .line 725
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 724
    const-string v0, "Not scheduling auto-lock on inactivity,preference is set to %d"

    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 728
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPrivateProfileUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_47

    .line 730
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->isQuietModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 732
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 731
    const-string v0, "Not scheduling auto-lock alarm for %d, quiet mode already enabled"

    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_41
    const-wide/32 v1, 0x493e0

    .line 735
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->scheduleAlarmToAutoLockPrivateSpace(IJ)V

    :cond_47
    return-void
.end method

.method public onBeforeStartUser(I)V
    .registers 7

    .line 7926
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 7930
    :cond_7
    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 7931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBeforeStartUser-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7933
    sget-object v2, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 7935
    const-string/jumbo v4, "prepareUserData"

    invoke-virtual {v1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7936
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(Landroid/content/pm/UserInfo;I)V

    .line 7937
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7938
    const-string/jumbo v0, "reconcileAppsData"

    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7939
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->reconcileAppsData(IIZ)V

    .line 7941
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz p1, :cond_5e

    .line 7944
    const-string v0, "applyUserRestrictions"

    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7945
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7946
    :try_start_53
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 7947
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_5b

    .line 7948
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_5e

    :catchall_5b
    move-exception p0

    .line 7947
    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p0

    .line 7950
    :cond_5e
    :goto_5e
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public onBeforeUnlockUser(I)V
    .registers 7

    .line 7958
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 7963
    :cond_7
    sget-object v1, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 7966
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 7967
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareUserData-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7968
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(Landroid/content/pm/UserInfo;I)V

    .line 7969
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 7971
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getStorageManagerInternal()Lcom/android/server/StorageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerInternal;->markCeStoragePrepared(I)V

    .line 7973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reconcileAppsData-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7974
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1, v4, v1}, Landroid/content/pm/PackageManagerInternal;->reconcileAppsData(IIZ)V

    .line 7976
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final onPullAtom(ILjava/util/List;)I
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x27a8

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v3, :cond_64

    .line 6898
    invoke-virtual {v0, v6, v6, v5}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object v1

    .line 6900
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_61

    move v7, v5

    :goto_18
    if-ge v7, v3, :cond_61

    .line 6903
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 6904
    iget-object v9, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 6905
    invoke-static {v9}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_2c

    .line 6909
    iget-object v9, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    :goto_2a
    move-object v13, v9

    goto :goto_2e

    :cond_2c
    const/4 v9, 0x0

    goto :goto_2a

    .line 6912
    :goto_2e
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v9

    .line 6913
    :try_start_31
    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    .line 6914
    invoke-virtual {v10, v11, v4}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3f

    move/from16 v19, v6

    goto :goto_41

    :cond_3f
    move/from16 v19, v5

    .line 6915
    :goto_41
    monitor-exit v9
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_5e

    .line 6917
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    iget v14, v8, Landroid/content/pm/UserInfo;->flags:I

    iget-wide v9, v8, Landroid/content/pm/UserInfo;->creationTime:J

    move/from16 v20, v5

    iget-wide v4, v8, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    move-wide v15, v9

    const/16 v10, 0x27a8

    move-wide/from16 v17, v4

    invoke-static/range {v10 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIILjava/lang/String;IJJZ)Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v20

    const/4 v4, -0x1

    goto :goto_18

    :catchall_5e
    move-exception v0

    .line 6915
    :try_start_5f
    monitor-exit v9
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v0

    :cond_61
    move/from16 v20, v5

    goto :goto_92

    :cond_64
    move/from16 v20, v5

    const/16 v3, 0x27b0

    if-ne v1, v3, :cond_93

    .line 6929
    invoke-static {}, Landroid/os/UserManager;->getMaxSwitchableUsers()I

    move-result v1

    if-le v1, v6, :cond_92

    .line 6931
    invoke-static {}, Landroid/os/UserManager;->getMaxSwitchableUsers()I

    move-result v1

    const/4 v4, -0x1

    .line 6933
    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerService;->isUserSwitcherEnabled(I)Z

    move-result v5

    .line 6934
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v7

    if-eqz v7, :cond_89

    const-string/jumbo v7, "no_add_user"

    .line 6935
    invoke-virtual {v0, v7, v4}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_89

    goto :goto_8b

    :cond_89
    move/from16 v6, v20

    .line 6930
    :goto_8b
    invoke-static {v3, v1, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZZ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_92
    :goto_92
    return v20

    .line 6940
    :cond_93
    const-string v0, "UserManagerService"

    const-string v2, "Unexpected atom tag: %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 8198
    new-instance v0, Lcom/android/server/pm/UserManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/pm/UserManagerServiceShellCommand;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserSystemPackageInstaller;Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 8200
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onUserLoggedIn(I)V
    .registers 7

    .line 7994
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 7995
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_d

    goto :goto_28

    .line 8000
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0xdc46c32800L

    cmp-long v3, v1, v3

    if-lez v3, :cond_1e

    .line 8002
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-wide v1, v3, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 8004
    :cond_1e
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    sget-object v1, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 8005
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    return-void

    .line 7996
    :cond_28
    :goto_28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "userForeground: unknown user #"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 12

    .line 6261
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v0, :cond_10

    .line 6262
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v1

    :goto_e
    move v5, v1

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_e

    .line 6264
    :goto_12
    invoke-static {v5}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    .line 6266
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->isUserTypeEligibleForPreCreation(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v0

    const-string v1, "cannot pre-create user of type %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6268
    const-string v0, "Pre-creating user of type %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v6, -0x2710

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p1

    .line 6271
    :try_start_35
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_39
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_35 .. :try_end_39} :catch_3a

    return-object p0

    :catch_3a
    move-exception v0

    move-object p0, v0

    .line 6275
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public final propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 6

    .line 4086
    invoke-static {p2, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4090
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 4091
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 4093
    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 3

    .line 6948
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 6949
    iput-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 6950
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6951
    :try_start_a
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->addUserDataLU(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 6952
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 6953
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    return-object v0

    :catchall_12
    move-exception p0

    .line 6952
    :try_start_13
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final readUserLP(II)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 10

    .line 5968
    const-string v0, "UserManagerService"

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v1

    const/4 v2, 0x0

    .line 5971
    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_31
    .catchall {:try_start_7 .. :try_end_b} :catchall_25

    if-nez v3, :cond_29

    .line 5973
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User info not found, returning null, user id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_27
    .catchall {:try_start_d .. :try_end_21} :catchall_25

    .line 5983
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object v2

    :catchall_25
    move-exception p0

    goto :goto_54

    :catch_27
    move-exception v2

    goto :goto_35

    .line 5976
    :cond_29
    :try_start_29
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/pm/UserManagerService;->readUserLP(ILjava/io/InputStream;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2d} :catch_27
    .catchall {:try_start_29 .. :try_end_2d} :catchall_25

    .line 5983
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object p0

    :catch_31
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 5979
    :goto_35
    :try_start_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading user info, user id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5980
    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    .line 5981
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->readUserLP(II)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0
    :try_end_50
    .catchall {:try_start_35 .. :try_end_50} :catchall_25

    .line 5983
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object p0

    :goto_54
    if-eqz v1, :cond_5e

    .line 5968
    :try_start_56
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5e
    :goto_5e
    throw p0
.end method

.method public readUserLP(ILjava/io/InputStream;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 51
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v2, p1

    .line 6019
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 6021
    :goto_8
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_13

    if-eq v3, v5, :cond_13

    goto :goto_8

    :cond_13
    const/4 v6, 0x0

    if-eq v3, v4, :cond_2d

    .line 6027
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2d
    const/4 v7, -0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, -0x2710

    if-ne v3, v4, :cond_259

    .line 6031
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, "user"

    invoke-virtual {v3, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_259

    .line 6032
    const-string v3, "id"

    invoke-interface {v1, v6, v3, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_52

    .line 6034
    const-string v0, "UserManagerService"

    const-string v1, "User id does not match the file name"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    .line 6037
    :cond_52
    const-string/jumbo v3, "serialNumber"

    invoke-interface {v1, v6, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 6038
    const-string v12, "flags"

    invoke-interface {v1, v6, v12, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    .line 6039
    const-string/jumbo v13, "type"

    invoke-interface {v1, v6, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6d

    .line 6040
    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    goto :goto_6e

    :cond_6d
    move-object v13, v6

    .line 6041
    :goto_6e
    const-string v14, "icon"

    invoke-interface {v1, v6, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 6042
    const-string v15, "created"

    invoke-interface {v1, v6, v15, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v15

    .line 6043
    const-string v7, "lastLoggedIn"

    invoke-interface {v1, v6, v7, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v17

    .line 6044
    const-string v7, "lastLoggedInFingerprint"

    invoke-interface {v1, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6046
    const-string v4, "lastEnteredForeground"

    .line 6047
    invoke-interface {v1, v6, v4, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v20

    .line 6048
    const-string/jumbo v4, "profileGroupId"

    invoke-interface {v1, v6, v4, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 6050
    const-string/jumbo v9, "profileBadge"

    invoke-interface {v1, v6, v9, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 6051
    const-string/jumbo v10, "restrictedProfileParentId"

    invoke-interface {v1, v6, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    .line 6053
    const-string/jumbo v10, "partial"

    invoke-interface {v1, v6, v10, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    .line 6054
    const-string/jumbo v5, "preCreated"

    invoke-interface {v1, v6, v5, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 6055
    const-string v2, "convertedFromPreCreated"

    invoke-interface {v1, v6, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    move/from16 v25, v2

    .line 6056
    const-string v2, "guestToRemove"

    invoke-interface {v1, v6, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 6058
    const-string/jumbo v8, "seedAccountName"

    invoke-interface {v1, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move/from16 v27, v2

    .line 6059
    const-string/jumbo v2, "seedAccountType"

    invoke-interface {v1, v6, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v8, :cond_d7

    if-eqz v2, :cond_d2

    goto :goto_d7

    :cond_d2
    const/16 v26, 0x0

    :goto_d4
    move-object/from16 v28, v6

    goto :goto_da

    :cond_d7
    :goto_d7
    const/16 v26, 0x1

    goto :goto_d4

    .line 6064
    :goto_da
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    move-object/from16 v38, v2

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    const-wide/16 v22, 0x0

    const/16 v37, 0x1

    .line 6065
    :goto_f4
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    move/from16 v39, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_232

    const/4 v3, 0x3

    if-ne v2, v3, :cond_107

    .line 6066
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v6, :cond_232

    const/4 v3, 0x3

    :cond_107
    if-eq v2, v3, :cond_22e

    const/4 v3, 0x4

    if-ne v2, v3, :cond_10e

    goto/16 :goto_22e

    .line 6070
    :cond_10e
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 6071
    const-string/jumbo v3, "name"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 6072
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22e

    .line 6074
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v29, v2

    goto/16 :goto_22e

    .line 6076
    :cond_12a
    const-string/jumbo v3, "restrictions"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 6077
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v33, v2

    goto/16 :goto_22e

    .line 6078
    :cond_13b
    const-string v3, "device_policy_restrictions"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14b

    .line 6079
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v34, v2

    goto/16 :goto_22e

    .line 6080
    :cond_14b
    const-string v3, "device_policy_local_restrictions"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16c

    const/16 v2, 0xa

    move/from16 v3, p3

    if-ge v3, v2, :cond_167

    .line 6085
    const-string v2, "device_policy_local_restrictions"

    .line 6086
    invoke-static {v1, v2}, Lcom/android/server/pm/RestrictionsSet;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v2

    .line 6088
    invoke-virtual {v2}, Lcom/android/server/pm/RestrictionsSet;->mergeAll()Landroid/os/Bundle;

    move-result-object v2

    :goto_163
    move-object/from16 v35, v2

    goto/16 :goto_22e

    .line 6090
    :cond_167
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_163

    .line 6092
    :cond_16c
    const-string v3, "device_policy_global_restrictions"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17c

    .line 6093
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v36, v2

    goto/16 :goto_22e

    .line 6094
    :cond_17c
    const-string v3, "guestRestrictions"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ac

    .line 6095
    :cond_184
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_22e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_22e

    const/4 v3, 0x2

    if-ne v2, v3, :cond_184

    .line 6098
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22e

    .line 6099
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v2

    .line 6100
    :try_start_1a1
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 6101
    invoke-static {v1, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V

    .line 6102
    monitor-exit v2

    goto/16 :goto_22e

    :catchall_1a9
    move-exception v0

    monitor-exit v2
    :try_end_1ab
    .catchall {:try_start_1a1 .. :try_end_1ab} :catchall_1a9

    throw v0

    .line 6107
    :cond_1ac
    const-string v3, "account"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 6108
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22e

    .line 6110
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v30, v2

    goto :goto_22e

    .line 6112
    :cond_1c2
    const-string/jumbo v3, "seedAccountOptions"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d4

    .line 6113
    invoke-static {v1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    move-object/from16 v31, v2

    const/16 v26, 0x1

    goto :goto_22e

    .line 6115
    :cond_1d4
    const-string/jumbo v3, "userProperties"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fb

    .line 6118
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserTypeDetails;

    if-nez v2, :cond_1ef

    .line 6120
    const-string v0, "UserManagerService"

    const-string v1, "User has properties but no user type!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v28

    .line 6124
    :cond_1ef
    invoke-virtual {v2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserPropertiesReference()Landroid/content/pm/UserProperties;

    move-result-object v2

    .line 6125
    new-instance v3, Landroid/content/pm/UserProperties;

    invoke-direct {v3, v1, v2}, Landroid/content/pm/UserProperties;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/content/pm/UserProperties;)V

    move-object/from16 v32, v3

    goto :goto_22e

    .line 6126
    :cond_1fb
    const-string v3, "lastRequestQuietModeEnabledCall"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_215

    .line 6127
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22e

    .line 6129
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide/from16 v22, v2

    goto :goto_22e

    .line 6131
    :cond_215
    const-string v3, "ignorePrepareStorageErrors"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22e

    .line 6132
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22e

    .line 6134
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move/from16 v37, v2

    :cond_22e
    :goto_22e
    move/from16 v3, v39

    goto/16 :goto_f4

    :cond_232
    move v0, v4

    move v1, v5

    move v2, v9

    move v5, v12

    move-object v6, v13

    move-object v4, v14

    move-wide v13, v15

    move-wide/from16 v42, v20

    move-wide/from16 v40, v22

    move/from16 v20, v26

    move-object/from16 v3, v29

    move-object/from16 v9, v30

    move-object/from16 v19, v31

    move-object/from16 v16, v32

    move-object/from16 p3, v34

    move-object/from16 v28, v35

    move/from16 v26, v10

    move v15, v11

    move-wide/from16 v11, v17

    move-object/from16 v17, v33

    move-object/from16 v18, v38

    move-object v10, v8

    move-object v8, v7

    move/from16 v7, v39

    goto :goto_287

    :cond_259
    move-object/from16 v28, v6

    move/from16 v7, p1

    move v0, v11

    move v15, v0

    move-object/from16 p3, v28

    move-object/from16 v3, p3

    move-object v4, v3

    move-object v6, v4

    move-object v8, v6

    move-object v9, v8

    move-object v10, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v36, v19

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v37, 0x1

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    .line 6141
    :goto_287
    new-instance v21, Landroid/content/pm/UserInfo;

    move-object/from16 v22, v9

    move v9, v1

    move-object/from16 v1, v21

    move-object/from16 v21, v22

    move/from16 v24, v0

    move/from16 v44, v2

    move-object/from16 v22, v10

    move/from16 v23, v15

    move/from16 v15, v25

    move/from16 v10, v26

    move/from16 v0, v27

    move-object/from16 v45, v28

    move-object/from16 v46, v36

    move/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6142
    iput v7, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 6143
    iput-wide v13, v1, Landroid/content/pm/UserInfo;->creationTime:J

    .line 6144
    iput-wide v11, v1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 6145
    iput-object v8, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 6146
    iput-boolean v10, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 6147
    iput-boolean v9, v1, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 6148
    iput-boolean v15, v1, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    .line 6149
    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    move/from16 v4, v24

    .line 6150
    iput v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v9, v44

    .line 6151
    iput v9, v1, Landroid/content/pm/UserInfo;->profileBadge:I

    move/from16 v11, v23

    .line 6152
    iput v11, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 6155
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 6156
    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v1, v21

    .line 6157
    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    move-object/from16 v8, v22

    .line 6158
    iput-object v8, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    move-object/from16 v1, v18

    .line 6159
    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    move/from16 v1, v20

    .line 6160
    iput-boolean v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    move-object/from16 v1, v19

    .line 6161
    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    move-object/from16 v1, v16

    .line 6162
    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    move-wide/from16 v3, v40

    .line 6163
    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/UserManagerService$UserData;->setLastRequestQuietModeEnabledMillis(J)V

    move-wide/from16 v3, v42

    .line 6164
    iput-wide v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    if-eqz v37, :cond_2f0

    .line 6166
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService$UserData;->setIgnorePrepareStorageErrors()V

    :cond_2f0
    move-object/from16 v1, p0

    .line 6169
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v17, :cond_2fe

    .line 6171
    :try_start_2f7
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    move-object/from16 v5, v17

    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    :cond_2fe
    move-object/from16 v4, v45

    goto :goto_303

    :catchall_301
    move-exception v0

    goto :goto_32a

    :goto_303
    if-eqz v4, :cond_316

    .line 6174
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v5, v2, v4}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    if-eqz p3, :cond_313

    .line 6176
    const-string v2, "UserManagerService"

    const-string v4, "Seeing both legacy and current local restrictions in xml"

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_313
    :goto_313
    move-object/from16 v2, v46

    goto :goto_320

    :cond_316
    if-eqz p3, :cond_313

    .line 6179
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    move-object/from16 v5, p3

    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    goto :goto_313

    :goto_320
    if-eqz v2, :cond_328

    .line 6182
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 6185
    :cond_328
    monitor-exit v3

    return-object v0

    :goto_32a
    monitor-exit v3
    :try_end_32b
    .catchall {:try_start_2f7 .. :try_end_32b} :catchall_301

    throw v0
.end method

.method public final readUserListLP()V
    .registers 13

    .line 5098
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserListFile()Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v0

    const/4 v1, 0x0

    .line 5101
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_10e
    .catchall {:try_start_5 .. :try_end_9} :catchall_1a

    if-nez v2, :cond_20

    .line 5103
    :try_start_b
    const-string v1, "UserManagerService"

    const-string/jumbo v3, "userlist.xml not found, fallback to single user"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5104
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_1d
    .catchall {:try_start_b .. :try_end_16} :catchall_1a

    .line 5175
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :catchall_1a
    move-exception p0

    goto/16 :goto_11c

    :catch_1d
    move-exception v1

    goto/16 :goto_112

    .line 5108
    :cond_20
    :try_start_20
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    .line 5110
    :goto_24
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2f

    if-eq v4, v6, :cond_2f

    goto :goto_24

    :cond_2f
    if-eq v4, v5, :cond_3f

    .line 5116
    const-string v1, "UserManagerService"

    const-string v3, "Unable to read user list"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5117
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3b} :catch_1d
    .catchall {:try_start_20 .. :try_end_3b} :catchall_1a

    .line 5175
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :cond_3f
    const/4 v4, -0x1

    .line 5121
    :try_start_40
    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 5122
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "users"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 5123
    const-string/jumbo v4, "nextSerialNumber"

    iget v7, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 5124
    invoke-interface {v3, v1, v4, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 5125
    const-string/jumbo v4, "version"

    iget v7, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 5126
    invoke-interface {v3, v1, v4, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 5127
    const-string/jumbo v4, "userTypeConfigVersion"

    iget v7, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    .line 5128
    invoke-interface {v3, v1, v4, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    :cond_70
    const/4 v4, 0x0

    .line 5131
    :cond_71
    :goto_71
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7

    if-eq v7, v6, :cond_e6

    if-ne v7, v5, :cond_71

    .line 5133
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 5134
    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 5135
    const-string v7, "id"

    invoke-interface {v3, v1, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iget v8, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/UserManagerService;->readUserLP(II)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v7

    if-eqz v7, :cond_71

    .line 5139
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_97} :catch_1d
    .catchall {:try_start_40 .. :try_end_97} :catchall_1a

    .line 5140
    :try_start_97
    invoke-virtual {p0, v7}, Lcom/android/server/pm/UserManagerService;->addUserDataLU(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 5141
    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v9, :cond_a7

    iget-object v10, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    if-gt v9, v10, :cond_ae

    goto :goto_a7

    :catchall_a5
    move-exception v1

    goto :goto_b5

    .line 5143
    :cond_a7
    :goto_a7
    iget-object v9, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    add-int/2addr v9, v6

    iput v9, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 5145
    :cond_ae
    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p0, v7}, Lcom/android/server/pm/UserManagerService;->markUserForRemovalIfNecessaryLU(Landroid/content/pm/UserInfo;)V

    .line 5146
    monitor-exit v8

    goto :goto_71

    :goto_b5
    monitor-exit v8
    :try_end_b6
    .catchall {:try_start_97 .. :try_end_b6} :catchall_a5

    :try_start_b6
    throw v1

    .line 5148
    :cond_b7
    const-string v8, "guestRestrictions"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 5150
    :cond_bf
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    if-eq v4, v6, :cond_e4

    const/4 v7, 0x3

    if-eq v4, v7, :cond_e4

    if-ne v4, v5, :cond_bf

    .line 5153
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "restrictions"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 5154
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v4
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_da} :catch_1d
    .catchall {:try_start_b6 .. :try_end_da} :catchall_1a

    .line 5155
    :try_start_da
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 5156
    invoke-static {v3, v7}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V

    .line 5157
    monitor-exit v4

    goto :goto_e4

    :catchall_e1
    move-exception v1

    monitor-exit v4
    :try_end_e3
    .catchall {:try_start_da .. :try_end_e3} :catchall_e1

    :try_start_e3
    throw v1

    :cond_e4
    :goto_e4
    move v4, v6

    goto :goto_71

    .line 5166
    :cond_e6
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 5167
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP()V

    .line 5168
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->updateUsersWithFeatureFlags(Z)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_ef} :catch_1d
    .catchall {:try_start_e3 .. :try_end_ef} :catchall_1a

    .line 5175
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 5177
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5178
    :try_start_f5
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_10a

    .line 5179
    const-string v0, "UserManagerService"

    const-string v2, "mUsers is empty, fallback to single user"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5180
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    goto :goto_10a

    :catchall_108
    move-exception p0

    goto :goto_10c

    .line 5182
    :cond_10a
    :goto_10a
    monitor-exit v1

    return-void

    :goto_10c
    monitor-exit v1
    :try_end_10d
    .catchall {:try_start_f5 .. :try_end_10d} :catchall_108

    throw p0

    :catch_10e
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    .line 5171
    :goto_112
    :try_start_112
    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    .line 5172
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V
    :try_end_118
    .catchall {:try_start_112 .. :try_end_118} :catchall_1a

    .line 5175
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :goto_11c
    if-eqz v0, :cond_126

    .line 5098
    :try_start_11e
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_121
    .catchall {:try_start_11e .. :try_end_121} :catchall_122

    goto :goto_126

    :catchall_122
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_126
    :goto_126
    throw p0
.end method

.method public reconcileUsers(Ljava/lang/String;)V
    .registers 4

    .line 7985
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/pm/UserDataPreparer;->reconcileUsers(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final registerStatsCallbacks()V
    .registers 6

    .line 6882
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 6883
    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/UserManagerService;)V

    const/16 v3, 0x27a8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 6888
    new-instance v2, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/UserManagerService;)V

    const/16 p0, 0x27b0

    invoke-virtual {v0, p0, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public removeUser(I)Z
    .registers 7

    .line 7064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUser u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7065
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 7067
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRemovalRestrictionOptional(I)Ljava/util/Optional;

    move-result-object v0

    .line 7068
    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5b

    .line 7069
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    .line 7070
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 7071
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot remove user. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is enabled."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 7074
    :cond_5b
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mCurrentBootPhase:I

    const/16 v2, 0x226

    if-ge v0, v2, :cond_67

    .line 7075
    const-string p0, "Cannot remove user, removeUser is called too early during boot. ActivityManager is not ready yet."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 7079
    :cond_67
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserWithProfilesUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public final removeUserDataLU(I)V
    .registers 2

    .line 7871
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    .line 7872
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .registers 3

    .line 7140
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 7141
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserWithProfilesUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public removeUserInfo(I)V
    .registers 3

    .line 6960
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6961
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserDataLU(I)V

    .line 6962
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final removeUserInfoFlags(Landroid/content/pm/UserInfo;I)V
    .registers 3

    .line 2467
    iget p0, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr p2, p0

    if-lez p2, :cond_b

    xor-int/2addr p0, p2

    .line 2469
    iput p0, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 2470
    invoke-static {p2}, Landroid/os/UserManager;->invalidateOnUserInfoFlagChange(I)V

    :cond_b
    return-void
.end method

.method public final removeUserState(I)V
    .registers 6

    .line 7406
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing user state of user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7410
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getLockSettingsInternal()Lcom/android/server/locksettings/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsInternal;->removeUser(I)V

    .line 7415
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getStorageManagerInternal()Lcom/android/server/StorageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerInternal;->destroyUserStorageKeys(I)V
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_41

    :catch_25
    move-exception v0

    .line 7418
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying storage keys for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed, continuing anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7423
    :goto_41
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V

    .line 7426
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->destroyUserData(II)V

    .line 7430
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7431
    :try_start_4f
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserDataLU(I)V

    .line 7432
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ActivityManagerInternal;->onUserRemoved(I)V

    .line 7433
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_9e

    .line 7434
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v1

    .line 7435
    :try_start_5d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->delete(I)V

    .line 7436
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_9b

    .line 7437
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7438
    :try_start_66
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    .line 7439
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    .line 7440
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    .line 7442
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 7443
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    goto :goto_83

    :catchall_81
    move-exception p0

    goto :goto_99

    .line 7445
    :cond_83
    :goto_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_66 .. :try_end_84} :catchall_81

    .line 7447
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7448
    :try_start_87
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 7449
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_96

    .line 7451
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/ResilientAtomicFile;->delete()V

    .line 7452
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    return-void

    :catchall_96
    move-exception p0

    .line 7449
    :try_start_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw p0

    .line 7445
    :goto_99
    :try_start_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_81

    throw p0

    :catchall_9b
    move-exception p0

    .line 7436
    :try_start_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw p0

    :catchall_9e
    move-exception p0

    .line 7433
    :try_start_9f
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw p0
.end method

.method public final removeUserUnchecked(I)Z
    .registers 10

    .line 7169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7172
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_73

    .line 7173
    :try_start_7
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_21

    .line 7174
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRemovabilityLockedLU(I)I

    move-result v4

    .line 7175
    const-string/jumbo v5, "removed"

    invoke-virtual {p0, v4, p1, v5}, Lcom/android/server/pm/UserManagerService;->logRemoveResultError(IILjava/lang/String;)V

    const/4 v5, 0x3

    if-eq v4, v5, :cond_27

    .line 7177
    invoke-static {v4}, Landroid/os/UserManager;->isRemoveResultSuccessful(I)Z

    move-result p0

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_24

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_21

    .line 7245
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_21
    move-exception p0

    goto/16 :goto_ba

    :catchall_24
    move-exception p0

    goto/16 :goto_b8

    .line 7179
    :cond_27
    :try_start_27
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    .line 7180
    const-string v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7181
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 7182
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_27 .. :try_end_49} :catchall_24

    .line 7186
    :try_start_49
    iget-object v3, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/content/pm/UserInfo;->partial:Z

    .line 7187
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    .line 7190
    iget-object v3, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/16 v6, 0x40

    invoke-virtual {p0, v3, v6}, Lcom/android/server/pm/UserManagerService;->addUserInfoFlags(Landroid/content/pm/UserInfo;I)V

    .line 7191
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 7192
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_49 .. :try_end_5c} :catchall_21

    .line 7194
    :try_start_5c
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/4 v3, 0x6

    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 7195
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    iget-object v3, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-wide v6, v3, Landroid/content/pm/UserInfo;->creationTime:J

    const/16 v3, 0x9

    invoke-virtual {v2, p1, v3, v6, v7}, Lcom/android/server/pm/UserJourneyLogger;->startSessionForDelayedJourney(IIJ)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    :try_end_6d
    .catchall {:try_start_5c .. :try_end_6d} :catchall_73

    .line 7199
    :try_start_6d
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_72} :catch_75
    .catchall {:try_start_6d .. :try_end_72} :catchall_73

    goto :goto_7d

    :catchall_73
    move-exception p0

    goto :goto_bc

    :catch_75
    move-exception v2

    .line 7201
    :try_start_76
    const-string v3, "UserManagerService"

    const-string v6, "Unable to notify AppOpsService of removing user."

    invoke-static {v3, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7204
    :goto_7d
    iget-object v2, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v6, -0x2710

    if-eq v3, v6, :cond_96

    .line 7205
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 7206
    iget-object v2, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    iget-object v2, v2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p0, v3, v6, v2}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(IILjava/lang/String;)V
    :try_end_96
    .catchall {:try_start_76 .. :try_end_96} :catchall_73

    :cond_96
    const/4 v2, 0x0

    .line 7213
    :try_start_97
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v6, Lcom/android/server/pm/UserManagerService$6;

    invoke-direct {v6, p0, v4}, Lcom/android/server/pm/UserManagerService$6;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-interface {v3, p1, v6}, Landroid/app/IActivityManager;->stopUserWithCallback(ILandroid/app/IStopUserCallback;)I

    move-result p0
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_a4} :catch_ac
    .catchall {:try_start_97 .. :try_end_a4} :catchall_73

    if-nez p0, :cond_a7

    goto :goto_a8

    :cond_a7
    move v5, v2

    .line 7245
    :goto_a8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catch_ac
    move-exception p0

    .line 7240
    :try_start_ad
    const-string p1, "UserManagerService"

    const-string v3, "Failed to stop user during removal."

    invoke-static {p1, v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b4
    .catchall {:try_start_ad .. :try_end_b4} :catchall_73

    .line 7245
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 7182
    :goto_b8
    :try_start_b8
    monitor-exit v3
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_24

    :try_start_b9
    throw p0

    .line 7192
    :goto_ba
    monitor-exit v2
    :try_end_bb
    .catchall {:try_start_b9 .. :try_end_bb} :catchall_21

    :try_start_bb
    throw p0
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_73

    .line 7245
    :goto_bc
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7246
    throw p0
.end method

.method public removeUserWhenPossible(IZ)I
    .registers 7

    .line 7272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUserWhenPossible u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7273
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_5e

    .line 7276
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRemovalRestrictionOptional(I)Ljava/util/Optional;

    move-result-object p2

    .line 7277
    invoke-virtual {p2}, Ljava/util/Optional;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 7278
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    .line 7279
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 7280
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot remove user. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7282
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is enabled."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7280
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    .line 7286
    :cond_5e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to immediately remove user "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7287
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserWithProfilesUnchecked(I)Z

    move-result p2

    if-eqz p2, :cond_79

    return v0

    .line 7291
    :cond_79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 7290
    const-string v0, "Unable to immediately remove user %d. Now trying to set it ephemeral."

    invoke-static {v0, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7292
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->setUserEphemeralUnchecked(I)I

    move-result p0

    return p0
.end method

.method public final removeUserWithProfilesUnchecked(I)Z
    .registers 9

    .line 7086
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7087
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRemovabilityLockedLU(I)I

    move-result v1

    .line 7088
    const-string/jumbo v2, "removed"

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/pm/UserManagerService;->logRemoveResultError(IILjava/lang/String;)V

    const/4 v2, 0x3

    if-eq v1, v2, :cond_19

    .line 7090
    invoke-static {v1}, Landroid/os/UserManager;->isRemoveResultSuccessful(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    goto/16 :goto_c8

    .line 7092
    :cond_19
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 7093
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2c

    goto :goto_30

    .line 7094
    :cond_2c
    invoke-virtual {p0, p1, v2, v3, v3}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(ILjava/lang/String;ZZ)Landroid/util/IntArray;

    move-result-object v2

    .line 7096
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_16

    if-nez v1, :cond_c3

    .line 7099
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentAndTargetUserIds()Landroid/util/Pair;

    move-result-object v0

    .line 7100
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_51

    .line 7101
    const-string p0, "UserManagerService"

    const-string v0, "Current user (%d) cannot be removed."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 7104
    :cond_51
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_6d

    .line 7105
    const-string p0, "UserManagerService"

    const-string v1, "Target user (%d) of an ongoing user switch (from user %d) cannot be removed."

    .line 7106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 7105
    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 7109
    :cond_6d
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_73
    if-ltz v0, :cond_c3

    .line 7110
    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_7c

    goto :goto_c0

    .line 7115
    :cond_7c
    const-string v3, "UserManagerService"

    const-string/jumbo v4, "removing profile: %d associated with user: %d"

    .line 7116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 7115
    invoke-static {v3, v4, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7117
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v3

    if-nez v3, :cond_c0

    .line 7122
    const-string v3, "UserManagerService"

    const-string v4, "Unable to immediately remove profile %d associated with user %d. User is set as ephemeral and will be removed on user switch or reboot."

    .line 7124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 7122
    invoke-static {v3, v4, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7125
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7126
    :try_start_ac
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 7127
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 7129
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 7130
    monitor-exit v1

    goto :goto_c0

    :catchall_bd
    move-exception p0

    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_ac .. :try_end_bf} :catchall_bd

    throw p0

    :cond_c0
    :goto_c0
    add-int/lit8 v0, v0, -0x1

    goto :goto_73

    .line 7135
    :cond_c3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result p0

    return p0

    .line 7096
    :goto_c8
    :try_start_c8
    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_16

    throw p0
.end method

.method public requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;I)Z
    .registers 15

    .line 2086
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_11

    if-nez p4, :cond_8

    goto :goto_11

    .line 2089
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "target should only be specified when we are disabling quiet mode."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    move v8, v1

    goto :goto_1a

    :cond_19
    move v8, v2

    :goto_1a
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    if-eqz v8, :cond_3d

    if-nez v0, :cond_26

    goto :goto_3d

    .line 2098
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid flags: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2102
    :cond_3d
    :goto_3d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-eqz p4, :cond_48

    move v7, v1

    :goto_44
    move-object v3, p0

    move-object v4, p1

    move v6, p3

    goto :goto_4a

    :cond_48
    move v7, v2

    goto :goto_44

    .line 2101
    :goto_4a
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/UserManagerService;->ensureCanModifyQuietMode(Ljava/lang/String;IIZZ)V

    if-eqz v0, :cond_6a

    .line 2105
    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 2104
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_62

    goto :goto_6a

    .line 2108
    :cond_62
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "SystemUI is not allowed to set QUIET_MODE_DISABLE_ONLY_IF_CREDENTIAL_NOT_REQUIRED"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2112
    :cond_6a
    :goto_6a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    if-eqz v8, :cond_bc

    .line 2117
    :try_start_70
    iget-object p3, v3, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_9d

    .line 2118
    :try_start_73
    invoke-virtual {v3, v6}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 2119
    monitor-exit p3
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_b8

    if-eqz v5, :cond_a1

    .line 2124
    :try_start_7a
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p3

    if-eqz p3, :cond_81

    goto :goto_bc

    .line 2125
    :cond_81
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid flags: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ". Can\'t skip credential check for the user"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_9d
    move-exception v0

    move-object p2, v0

    goto/16 :goto_17d

    .line 2121
    :cond_a1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid user. Can\'t find user details for userId "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_b8
    .catchall {:try_start_7a .. :try_end_b8} :catchall_9d

    :catchall_b8
    move-exception v0

    move-object p2, v0

    .line 2119
    :try_start_ba
    monitor-exit p3
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b8

    :try_start_bb
    throw p2

    :cond_bc
    :goto_bc
    if-eqz p2, :cond_c5

    .line 2130
    invoke-virtual {v3, v6, v1, p4, v4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_c1
    .catchall {:try_start_bb .. :try_end_c1} :catchall_9d

    .line 2198
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 2135
    :cond_c5
    :try_start_c5
    invoke-virtual {v3, v6}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    move-result-object p2

    if-eqz p2, :cond_132

    .line 2137
    invoke-virtual {p2}, Landroid/content/pm/UserProperties;->isAuthAlwaysRequiredToDisableQuietMode()Z

    move-result p2
    :try_end_cf
    .catchall {:try_start_c5 .. :try_end_cf} :catchall_9d

    if-eqz p2, :cond_132

    if-eqz v0, :cond_d7

    .line 2198
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 2142
    :cond_d7
    :try_start_d7
    iget-object p2, v3, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class p3, Landroid/app/KeyguardManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    .line 2143
    invoke-virtual {v3, v6}, Lcom/android/server/pm/UserManagerService;->getProfileParentId(I)I

    move-result p3

    if-eqz p2, :cond_f4

    .line 2144
    invoke-virtual {p2, p3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p5

    if-eqz p5, :cond_f4

    .line 2145
    invoke-virtual {v3, v6, p4, v4}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_f0
    .catchall {:try_start_d7 .. :try_end_f0} :catchall_9d

    .line 2198
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_f4
    if-eqz p2, :cond_11c

    .line 2147
    :try_start_f6
    invoke-virtual {p2, p3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p2

    if-nez p2, :cond_11c

    iget-object p2, v3, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 2148
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p5, "user_setup_complete"

    invoke-static {p2, p5, v2, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v1, :cond_11c

    .line 2153
    invoke-static {v1, v6}, Lcom/android/internal/app/SetScreenLockDialogContract;->createUserSpecificDialogIntent(II)Landroid/content/Intent;

    move-result-object p2

    .line 2163
    iget-object p4, v3, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 2164
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 2163
    invoke-virtual {p4, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_118
    .catchall {:try_start_f6 .. :try_end_118} :catchall_9d

    .line 2198
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 2167
    :cond_11c
    :try_start_11c
    const-string p2, "UserManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Allowing profile unlock even when device credentials are not set for user "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    :cond_132
    iget-object p2, v3, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2173
    invoke-virtual {p2, v6}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result p2

    if-eqz p2, :cond_157

    .line 2175
    iget-object p3, v3, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class p5, Landroid/app/KeyguardManager;

    invoke-virtual {p3, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/KeyguardManager;

    .line 2180
    iget-object p5, v3, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p5, v6}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result p5

    invoke-virtual {p3, p5}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p3

    if-eqz p3, :cond_152

    if-eqz v0, :cond_157

    .line 2182
    :cond_152
    iget-object p3, v3, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3, v6}, Lcom/android/internal/widget/LockPatternUtils;->tryUnlockWithCachedUnifiedChallenge(I)Z

    :cond_157
    if-nez v8, :cond_176

    .line 2185
    iget-object p3, v3, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2186
    invoke-virtual {p3, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p3

    if-eqz p3, :cond_176

    if-eqz p2, :cond_169

    .line 2187
    invoke-static {v6}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result p2
    :try_end_167
    .catchall {:try_start_11c .. :try_end_167} :catchall_9d

    if-nez p2, :cond_176

    :cond_169
    if-eqz v0, :cond_16f

    .line 2198
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 2192
    :cond_16f
    :try_start_16f
    invoke-virtual {v3, v6, p4, v4}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_172
    .catchall {:try_start_16f .. :try_end_172} :catchall_9d

    .line 2198
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 2195
    :cond_176
    :try_start_176
    invoke-virtual {v3, v6, v2, p4, v4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_179
    .catchall {:try_start_176 .. :try_end_179} :catchall_9d

    .line 2198
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_17d
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2199
    throw p2
.end method

.method public revokeUserAdmin(I)V
    .registers 2

    .line 2526
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->revokeUserAdminInternal(I)Z

    return-void
.end method

.method public revokeUserAdminInternal(I)Z
    .registers 13

    .line 2531
    const-string/jumbo v0, "revoke admin privileges"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 2533
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->checkAdminStatusChangeAllowed(I)V

    .line 2536
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 2538
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v4

    .line 2539
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2540
    :try_start_17
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_3f

    .line 2541
    :try_start_1a
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    const/4 v10, 0x0

    if-nez v0, :cond_47

    .line 2544
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const-string v6, ""

    const/4 v7, -0x1

    const/16 v3, 0x8

    move v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/UserJourneyLogger;->logNullUserJourneyError(IIILjava/lang/String;I)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 2546
    const-string p0, "UserManagerService"

    const-string/jumbo p1, "revokeUserAdmin(%d) failed: user not found"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2547
    monitor-exit v9
    :try_end_3d
    .catchall {:try_start_1a .. :try_end_3d} :catchall_43

    :try_start_3d
    monitor-exit v8
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3f

    return v10

    :catchall_3f
    move-exception v0

    move-object p0, v0

    goto/16 :goto_d7

    :catchall_43
    move-exception v0

    move-object p0, v0

    goto/16 :goto_d5

    :cond_47
    move v5, p1

    .line 2548
    :try_start_48
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_6c

    .line 2550
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v0, 0x6

    invoke-virtual {p0, v4, p1, v1, v0}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 2552
    const-string p0, "UserManagerService"

    const-string/jumbo p1, "revokeUserAdmin(%d): not changed, already not admin"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2553
    monitor-exit v9
    :try_end_6a
    .catchall {:try_start_48 .. :try_end_6a} :catchall_43

    :try_start_6a
    monitor-exit v8
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_3f

    return v2

    .line 2554
    :cond_6c
    :try_start_6c
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_8f

    .line 2556
    const-string p1, "UserManagerService"

    const-string/jumbo v2, "revokeUserAdmin(%d) failed: system user"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2557
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v0, 0x7

    invoke-virtual {p0, v4, p1, v1, v0}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 2559
    monitor-exit v9
    :try_end_8d
    .catchall {:try_start_6c .. :try_end_8d} :catchall_43

    :try_start_8d
    monitor-exit v8
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_3f

    return v10

    .line 2560
    :cond_8f
    :try_start_8f
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isNonRemovableLastAdminUserLU(Landroid/content/pm/UserInfo;)Z

    move-result p1

    if-eqz p1, :cond_af

    .line 2563
    const-string p1, "UserManagerService"

    const-string/jumbo v2, "revokeUserAdmin(%d) failed: user is last admin"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2564
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p0, v4, p1, v1, v1}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 2566
    monitor-exit v9
    :try_end_ad
    .catchall {:try_start_8f .. :try_end_ad} :catchall_43

    :try_start_ad
    monitor-exit v8
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_3f

    return v10

    .line 2568
    :cond_af
    :try_start_af
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, p1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v3, v3, 0x2

    iput v3, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 2569
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2570
    monitor-exit v9
    :try_end_bb
    .catchall {:try_start_af .. :try_end_bb} :catchall_43

    .line 2571
    :try_start_bb
    monitor-exit v8
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_3f

    .line 2572
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v0, -0x1

    invoke-virtual {p0, v4, p1, v1, v0}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 2574
    const-string p0, "UserManagerService"

    const-string/jumbo p1, "revokeUserAdmin(%d): succeeded"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 2570
    :goto_d5
    :try_start_d5
    monitor-exit v9
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_43

    :try_start_d6
    throw p0

    .line 2571
    :goto_d7
    monitor-exit v8
    :try_end_d8
    .catchall {:try_start_d6 .. :try_end_d8} :catchall_3f

    throw p0
.end method

.method public final scanNextAvailableIdLocked()I
    .registers 3

    const/16 v0, 0xa

    :goto_2
    const/16 v1, 0x53e1

    if-ge v0, v1, :cond_1a

    .line 8042
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_17

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_17

    return v0

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1a
    const/4 p0, -0x1

    return p0
.end method

.method public scheduleAlarmToAutoLockPrivateSpace(IJ)V
    .registers 14

    .line 742
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_15

    .line 744
    const-string p0, "UserManagerService"

    const-string p1, "AlarmManager not available, cannot schedule auto-lock alarm"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 747
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->initPrivateSpaceAutoLockTimer(I)V

    .line 748
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v3, v2, p2

    .line 749
    sget-wide v5, Lcom/android/server/pm/UserManagerService;->PRIVATE_SPACE_AUTO_LOCK_INACTIVITY_ALARM_WINDOW_MS:J

    new-instance v8, Landroid/os/HandlerExecutor;

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    const/4 v2, 0x2

    const-string v7, "PrivateSpaceAutoLockTimer"

    invoke-virtual/range {v1 .. v9}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method public final scheduleWriteUser(I)V
    .registers 5

    .line 5698
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 5699
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5700
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5703
    :cond_1e
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    return-void
.end method

.method public final scheduleWriteUserList()V
    .registers 4

    .line 5684
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 5685
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5686
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5689
    :cond_16
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    return-void
.end method

.method public final sendManagedProfileRemovedBroadcast(II)V
    .registers 7

    .line 7505
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 7510
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 7509
    const-string p1, "UserManagerService"

    const-string/jumbo p2, "sendManagedProfileRemovedBroadcast(parent=%d, removed=%d): ignoring as device doesn\'t have DPMI"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7513
    :cond_1b
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7514
    const-string v2, "android.intent.extra.USER"

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7515
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7516
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 p2, 0x0

    .line 7517
    invoke-virtual {v0, v1, p1, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    const/high16 p2, 0x50000000

    .line 7519
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7521
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-virtual {p0, v1, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final sendProfileAddedBroadcast(II)V
    .registers 5

    .line 7466
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PROFILE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->sendProfileBroadcast(Landroid/content/Intent;II)V

    return-void
.end method

.method public final sendProfileBroadcast(Landroid/content/Intent;II)V
    .registers 5

    .line 7496
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 7497
    const-string v0, "android.intent.extra.USER"

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p3, 0x50000000

    .line 7498
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7500
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final sendProfileRemovedBroadcast(IILjava/lang/String;)V
    .registers 5

    .line 7486
    const-string v0, "android.os.usertype.profile.MANAGED"

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 7487
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->sendManagedProfileRemovedBroadcast(II)V

    .line 7489
    :cond_b
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.PROFILE_REMOVED"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/pm/UserManagerService;->sendProfileBroadcast(Landroid/content/Intent;II)V

    return-void
.end method

.method public final sendUserInfoChangedBroadcast(I)V
    .registers 6

    .line 3672
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3673
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    .line 3674
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3675
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3678
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_INFO_CHANGED_BACKGROUND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3679
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 3680
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3681
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.MANAGE_USERS"

    invoke-virtual {p0, v0, v3, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 7

    .line 7563
    const-string/jumbo v0, "set application restrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7565
    invoke-static {p1, v0, v0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_48

    const/4 v0, 0x1

    if-eqz p2, :cond_13

    .line 7570
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 7573
    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p2, :cond_25

    .line 7574
    :try_start_18
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_25

    .line 7578
    :cond_1f
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_29

    :catchall_23
    move-exception p0

    goto :goto_46

    .line 7575
    :cond_25
    :goto_25
    invoke-static {p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)Z

    move-result v0

    .line 7582
    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_23

    if-nez v0, :cond_2d

    return-void

    .line 7589
    :cond_2d
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7590
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    .line 7591
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7592
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 7582
    :goto_46
    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_23

    throw p0

    .line 7567
    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid package name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBootUser(I)V
    .registers 3

    .line 1444
    const-string v0, "Set boot user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->setBootUserIdUnchecked(I)V

    return-void
.end method

.method public setBootUserIdUnchecked(I)V
    .registers 6

    .line 1449
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1451
    :try_start_3
    const-string v1, "UserManagerService"

    const-string/jumbo v2, "setBootUser %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1452
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    .line 1453
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1c

    .line 1454
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mBootUserLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_1c
    move-exception p0

    .line 1453
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final setDefaultCrossProfileIntentFilters(ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V
    .registers 25

    move-object/from16 v0, p0

    if-eqz p2, :cond_73

    .line 6677
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_73

    .line 6681
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultCrossProfileIntentFilters()Ljava/util/List;

    move-result-object v1

    .line 6682
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_73

    .line 6687
    :cond_16
    const-string/jumbo v1, "no_sharing_into_profile"

    const/4 v2, 0x0

    move-object/from16 v3, p3

    .line 6688
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 6691
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultCrossProfileIntentFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_28
    if-ge v2, v3, :cond_73

    .line 6694
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultCrossProfileIntentFilters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    if-eqz v1, :cond_3b

    .line 6695
    iget-boolean v5, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->letsPersonalDataIntoProfile:Z

    if-eqz v5, :cond_3b

    goto :goto_70

    .line 6698
    :cond_3b
    iget v5, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->direction:I

    if-nez v5, :cond_57

    .line 6699
    iget-object v6, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->filter:Lcom/android/server/pm/WatchedIntentFilter;

    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 6700
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    iget v12, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->flags:I

    move/from16 v10, p1

    move/from16 v11, p4

    .line 6699
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerService;->addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V

    goto :goto_70

    .line 6703
    :cond_57
    iget-object v13, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v14

    iget-object v15, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->filter:Lcom/android/server/pm/WatchedIntentFilter;

    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 6704
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    iget v4, v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->flags:I

    move/from16 v18, p1

    move/from16 v17, p4

    move/from16 v19, v4

    .line 6703
    invoke-virtual/range {v13 .. v19}, Lcom/android/server/pm/PackageManagerService;->addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V

    :goto_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_73
    :goto_73
    return-void
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .registers 6

    .line 3768
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3769
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getGuestUsers()Ljava/util/List;

    move-result-object v0

    .line 3770
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 3771
    :goto_e
    :try_start_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 3772
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :catchall_22
    move-exception p0

    goto :goto_41

    .line 3774
    :cond_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_22

    .line 3775
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 3776
    :try_start_28
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 3777
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3778
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_3e

    .line 3779
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3780
    :try_start_36
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 3781
    monitor-exit p1

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_3b

    throw p0

    :catchall_3e
    move-exception p0

    .line 3778
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0

    .line 3774
    :goto_41
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_22

    throw p0
.end method

.method public final setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V
    .registers 11

    .line 3812
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3813
    :try_start_3
    iget-object p4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p4}, Lcom/android/server/pm/RestrictionsSet;->getUserIds()Landroid/util/IntArray;

    move-result-object p4

    .line 3815
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0}, Lcom/android/server/pm/RestrictionsSet;->removeAllRestrictions()V

    .line 3816
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0}, Lcom/android/server/pm/RestrictionsSet;->removeAllRestrictions()V

    .line 3818
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 3820
    invoke-virtual {p3}, Lcom/android/server/pm/RestrictionsSet;->getUserIds()Landroid/util/IntArray;

    move-result-object p2

    const/4 v0, 0x0

    move v2, v0

    .line 3821
    :goto_1f
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 3822
    invoke-virtual {p2, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 3823
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 3824
    invoke-virtual {p3, v3}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v5

    .line 3823
    invoke-virtual {v4, v3, v5}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 3825
    invoke-virtual {p4, v3}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :catchall_38
    move-exception p0

    goto :goto_56

    .line 3828
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    .line 3829
    :goto_3d
    invoke-virtual {p4}, Landroid/util/IntArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_54

    .line 3830
    invoke-virtual {p4, v0}, Landroid/util/IntArray;->get(I)I

    move-result p2

    if-ne p2, v1, :cond_4a

    goto :goto_51

    .line 3833
    :cond_4a
    invoke-virtual {p4, v0}, Landroid/util/IntArray;->get(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    :goto_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 3835
    :cond_54
    monitor-exit p1

    return-void

    :goto_56
    monitor-exit p1
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_38

    throw p0
.end method

.method public setLastEnteredForegroundTimeToNow(I)V
    .registers 3

    .line 8181
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 8183
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setLastEnteredForegroundTimeToNow: unknown user #"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8186
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->setLastEnteredForegroundTimeToNow(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method public final setLastEnteredForegroundTimeToNow(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 4

    .line 8190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    .line 8191
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    return-void
.end method

.method public setOrUpdateAutoLockPreferenceForPrivateProfile(I)V
    .registers 9

    .line 810
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPrivateProfileUserId()I

    move-result v0

    const/16 v1, -0x2710

    .line 811
    const-string v2, "UserManagerService"

    if-ne v0, v1, :cond_10

    .line 812
    const-string p0, "Auto-lock preference updated but private space user not found"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const/4 v0, 0x1

    if-ne p1, v0, :cond_40

    .line 818
    iget-boolean v1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    if-nez v1, :cond_56

    .line 819
    const-string v1, "Registering device inactivity broadcast receivers"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDeviceInactivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 824
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDeviceInactivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 828
    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    goto :goto_56

    .line 832
    :cond_40
    iget-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_56

    .line 833
    const-string v0, "Removing device inactivity broadcast receivers"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cancelPendingAutoLockAlarms()V

    .line 835
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceInactivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 836
    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    :cond_56
    :goto_56
    if-nez p1, :cond_5c

    .line 842
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->initializeAndRegisterKeyguardLockedStateListener()V

    return-void

    .line 846
    :cond_5c
    :try_start_5c
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    .line 847
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 848
    const-string v0, "Removing keyguard locked state listener"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mKeyguardLockedStateListener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    invoke-virtual {p1, p0}, Landroid/app/KeyguardManager;->removeKeyguardLockedStateListener(Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_70} :catch_71

    return-void

    :catch_71
    move-exception p0

    .line 851
    const-string p1, "Error adding keyguard locked state listener "

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .registers 10

    .line 2257
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2258
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2259
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v1, :cond_8f

    .line 2261
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 2264
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v3

    if-ne v3, p2, :cond_34

    .line 2265
    const-string p0, "UserManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Quiet mode is already "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    goto/16 :goto_ab

    .line 2268
    :cond_34
    invoke-static {}, Landroid/os/UserManager;->invalidateQuietModeEnabledCache()V

    .line 2269
    iget v3, v1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit16 v3, v3, 0x80

    iput v3, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 2270
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 2271
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_31

    .line 2272
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2273
    :try_start_47
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2274
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_8c

    if-eqz p2, :cond_5e

    .line 2278
    :try_start_4d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->stopUserForQuietMode(I)V

    .line 2279
    const-class p3, Landroid/app/ActivityManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManagerInternal;

    .line 2280
    invoke-virtual {p3, p1}, Landroid/app/ActivityManagerInternal;->killForegroundAppsForUser(I)V

    goto :goto_72

    :catch_5c
    move-exception p3

    goto :goto_6f

    :cond_5e
    if-eqz p3, :cond_66

    .line 2283
    new-instance v0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

    invoke-direct {v0, p0, p3}, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/IntentSender;)V

    goto :goto_67

    :cond_66
    const/4 v0, 0x0

    .line 2285
    :goto_67
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    invoke-interface {p3, p1, v0}, Landroid/app/IActivityManager;->startProfileWithListener(ILandroid/os/IProgressListener;)Z
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_6e} :catch_5c

    goto :goto_72

    .line 2289
    :goto_6f
    invoke-virtual {p3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2292
    :goto_72
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/UserManagerService;->logQuietModeEnabled(IZLjava/lang/String;)V

    .line 2297
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/content/pm/UserInfo;Landroid/os/UserHandle;ZZ)V

    .line 2301
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 2302
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/content/pm/UserInfo;Landroid/os/UserHandle;ZZ)V

    :cond_8b
    return-void

    :catchall_8c
    move-exception p0

    .line 2274
    :try_start_8d
    monitor-exit v4
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw p0

    .line 2262
    :cond_8f
    :try_start_8f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "User "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a profile"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2271
    :goto_ab
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_8f .. :try_end_ac} :catchall_31

    throw p0
.end method

.method public setQuietModeEnabledAsync(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .registers 12

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setQuietModeEnabled for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on a separate thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mInternalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .registers 7

    .line 8060
    const-string/jumbo v0, "set user seed account data"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 8061
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/UserManagerService;->setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    return-void
.end method

.method public final setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .registers 9

    .line 8068
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8070
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_25

    .line 8071
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    if-nez v2, :cond_29

    .line 8073
    const-string p0, "UserManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No such user for settings seed data u="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8074
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_27

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception p0

    goto :goto_4f

    :catchall_27
    move-exception p0

    goto :goto_4d

    :cond_29
    const/16 p1, 0x1f4

    .line 8076
    :try_start_2b
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 8078
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz p4, :cond_43

    const/16 p1, 0x3e8

    .line 8080
    invoke-virtual {p4, p1}, Landroid/os/PersistableBundle;->isBundleContentsWithinLengthLimit(I)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 8082
    iput-object p4, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 8084
    :cond_43
    iput-boolean p5, v2, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 8085
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_2b .. :try_end_46} :catchall_27

    if-eqz p5, :cond_4b

    .line 8087
    :try_start_48
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 8089
    :cond_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_25

    return-void

    .line 8085
    :goto_4d
    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_27

    :try_start_4e
    throw p0

    .line 8089
    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_25

    throw p0
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .registers 6

    .line 1360
    const-string/jumbo v0, "set user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 1362
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1363
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_2f

    .line 1364
    :try_start_c
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v2, :cond_33

    .line 1366
    const-string p0, "UserManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User not found for setting user account: u"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_31

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception p0

    goto :goto_49

    :catchall_31
    move-exception p0

    goto :goto_47

    .line 1369
    :cond_33
    :try_start_33
    iget-object p1, v2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 1370
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    .line 1371
    iput-object p2, v2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    .line 1374
    :goto_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_31

    if-eqz v2, :cond_45

    .line 1377
    :try_start_42
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1379
    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_2f

    return-void

    .line 1374
    :goto_47
    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_31

    :try_start_48
    throw p0

    .line 1379
    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_2f

    throw p0
.end method

.method public setUserAdmin(I)V
    .registers 2

    .line 2476
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->setUserAdminInternal(I)Z

    return-void
.end method

.method public setUserAdminInternal(I)Z
    .registers 13

    .line 2481
    const-string/jumbo v0, "set user admin"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 2483
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->checkAdminStatusChangeAllowed(I)V

    .line 2486
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 2488
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v4

    .line 2489
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2490
    :try_start_16
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_3d

    .line 2491
    :try_start_19
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    const/4 v10, 0x0

    if-nez v0, :cond_45

    .line 2494
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const-string v6, ""

    const/4 v7, -0x1

    const/4 v3, 0x7

    move v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/UserJourneyLogger;->logNullUserJourneyError(IIILjava/lang/String;I)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 2496
    const-string p0, "UserManagerService"

    const-string/jumbo p1, "setUserAdmin(%d) failed: user not found"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2497
    monitor-exit v9
    :try_end_3b
    .catchall {:try_start_19 .. :try_end_3b} :catchall_41

    :try_start_3b
    monitor-exit v8
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3d

    return v10

    :catchall_3d
    move-exception v0

    move-object p0, v0

    goto/16 :goto_cb

    :catchall_41
    move-exception v0

    move-object p0, v0

    goto/16 :goto_c9

    :cond_45
    move v5, p1

    .line 2498
    :try_start_46
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_6a

    .line 2500
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v0, 0x5

    invoke-virtual {p0, v4, p1, v1, v0}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 2503
    const-string p0, "UserManagerService"

    const-string/jumbo p1, "setUserAdmin(%d): not changed, already admin"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2504
    monitor-exit v9
    :try_end_68
    .catchall {:try_start_46 .. :try_end_68} :catchall_41

    :try_start_68
    monitor-exit v8
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_3d

    return v2

    .line 2505
    :cond_6a
    :try_start_6a
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p1

    if-nez p1, :cond_a9

    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-nez p1, :cond_a9

    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2506
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p1

    if-eqz p1, :cond_83

    goto :goto_a9

    .line 2514
    :cond_83
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, p1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v3, v3, 0x2

    iput v3, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 2515
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2516
    monitor-exit v9
    :try_end_8f
    .catchall {:try_start_6a .. :try_end_8f} :catchall_41

    .line 2517
    :try_start_8f
    monitor-exit v8
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_3d

    .line 2518
    const-string p1, "UserManagerService"

    const-string/jumbo v3, "setUserAdmin(%d): succeeded"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2519
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v0, -0x1

    invoke-virtual {p0, v4, p1, v1, v0}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    return v2

    .line 2508
    :cond_a9
    :goto_a9
    :try_start_a9
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p0, v4, p1, v1, v1}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 2510
    const-string p0, "UserManagerService"

    const-string/jumbo p1, "setUserAdmin(%d) failed: profile, guest, and restricted users cannot be admins (user: %s) "

    .line 2511
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 2510
    invoke-static {p0, p1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2512
    monitor-exit v9
    :try_end_c7
    .catchall {:try_start_a9 .. :try_end_c7} :catchall_41

    :try_start_c7
    monitor-exit v8
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_3d

    return v10

    .line 2516
    :goto_c9
    :try_start_c9
    monitor-exit v9
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_41

    :try_start_ca
    throw p0

    .line 2517
    :goto_cb
    monitor-exit v8
    :try_end_cc
    .catchall {:try_start_ca .. :try_end_cc} :catchall_3d

    throw p0
.end method

.method public setUserEnabled(I)V
    .registers 5

    .line 2426
    const-string v0, "enable user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2429
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2430
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_3e

    .line 2431
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 2432
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_29

    const/16 v2, 0x40

    .line 2434
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->removeUserInfoFlags(Landroid/content/pm/UserInfo;I)V

    .line 2435
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    const/4 v2, 0x1

    goto :goto_2a

    :catchall_27
    move-exception p0

    goto :goto_40

    :cond_29
    const/4 v2, 0x0

    .line 2437
    :goto_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_27

    .line 2438
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_3e

    if-eqz v2, :cond_3d

    if-eqz p1, :cond_3d

    .line 2439
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2440
    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->sendProfileAddedBroadcast(II)V

    :cond_3d
    return-void

    :catchall_3e
    move-exception p0

    goto :goto_42

    .line 2437
    :goto_40
    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_27

    :try_start_41
    throw p0

    .line 2438
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_41 .. :try_end_43} :catchall_3e

    throw p0
.end method

.method public setUserEphemeral(IZ)Z
    .registers 4

    .line 3605
    const-string/jumbo v0, "update ephemeral user flag"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    if-eqz p2, :cond_11

    .line 3607
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->setUserEphemeralUnchecked(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserManager;->isRemoveResultSuccessful(I)Z

    move-result p0

    return p0

    .line 3608
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->setUserNonEphemeralUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public final setUserEphemeralUnchecked(I)I
    .registers 6

    .line 3641
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3643
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_16

    .line 3644
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRemovabilityLockedLU(I)I

    move-result v2

    .line 3645
    const-string/jumbo v3, "set as ephemeral"

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/pm/UserManagerService;->logRemoveResultError(IILjava/lang/String;)V

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1a

    .line 3647
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_18

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    return v2

    :catchall_16
    move-exception p0

    goto :goto_46

    :catchall_18
    move-exception p0

    goto :goto_44

    .line 3649
    :cond_1a
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3650
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_18

    .line 3651
    :try_start_23
    iget-object v1, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 3652
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3653
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_16

    .line 3654
    const-string p0, "UserManagerService"

    const-string v0, "User %d is set ephemeral and will be removed on user switch or reboot."

    .line 3655
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 3654
    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 3650
    :goto_44
    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_18

    :try_start_45
    throw p0

    .line 3653
    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_16

    throw p0
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 5

    .line 3662
    :try_start_0
    const-string/jumbo v0, "update users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3663
    const-string/jumbo v0, "no_set_user_icon"

    const-string v1, "Cannot set user icon"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(Ljava/lang/String;ILjava/lang/String;)V

    .line 3665
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_13
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 3667
    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public setUserName(ILjava/lang/String;)V
    .registers 9

    .line 3574
    const-string/jumbo v0, "rename users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3575
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3576
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    if-eqz v1, :cond_75

    .line 3577
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_16

    goto :goto_75

    .line 3581
    :cond_16
    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 3582
    const-string p0, "UserManagerService"

    const-string/jumbo v1, "setUserName: ignoring for user #%d as it didn\'t change (%s)"

    .line 3583
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->getRedacted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 3582
    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3584
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    goto :goto_87

    :cond_36
    if-nez p2, :cond_49

    .line 3587
    const-string v2, "UserManagerService"

    const-string/jumbo v3, "setUserName: resetting name of user #%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5d

    .line 3589
    :cond_49
    const-string v2, "UserManagerService"

    const-string/jumbo v3, "setUserName: setting name of user #%d to %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3590
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->getRedacted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 3589
    invoke-static {v2, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3592
    :goto_5d
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object p2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 3593
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3594
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_9 .. :try_end_65} :catchall_34

    .line 3595
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3597
    :try_start_69
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_70

    .line 3599
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_70
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3600
    throw p0

    .line 3578
    :cond_75
    :goto_75
    :try_start_75
    const-string p0, "UserManagerService"

    const-string/jumbo p2, "setUserName: unknown user #%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3579
    monitor-exit v0

    return-void

    .line 3594
    :goto_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_75 .. :try_end_88} :catchall_34

    throw p0
.end method

.method public final setUserNonEphemeralUnchecked(I)Z
    .registers 10

    .line 3612
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3614
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_27

    .line 3615
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    const/4 v3, 0x0

    if-nez v2, :cond_2b

    .line 3617
    const-string p0, "UserManagerService"

    const-string v2, "Cannot set user %d non-ephemeral, invalid user id provided."

    .line 3618
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 3617
    invoke-static {v2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_29

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_27

    return v3

    :catchall_27
    move-exception p0

    goto :goto_61

    :catchall_29
    move-exception p0

    goto :goto_5f

    .line 3621
    :cond_2b
    :try_start_2b
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_37

    .line 3622
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_29

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_27

    return v5

    .line 3625
    :cond_37
    :try_start_37
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v4, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v7, v6, 0x2000

    if-eqz v7, :cond_55

    .line 3629
    const-string p0, "UserManagerService"

    const-string v2, "User %d can not be changed to non-ephemeral because it was set ephemeral on create."

    .line 3630
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 3629
    invoke-static {v2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_37 .. :try_end_53} :catchall_29

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_27

    return v3

    .line 3633
    :cond_55
    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_29

    and-int/lit16 p1, v6, -0x101

    .line 3634
    :try_start_58
    iput p1, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 3635
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3636
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_27

    return v5

    .line 3633
    :goto_5f
    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_29

    :try_start_60
    throw p0

    .line 3636
    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_60 .. :try_end_62} :catchall_27

    throw p0
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .registers 6

    .line 4005
    const-string/jumbo v0, "setUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 4006
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 4010
    :cond_d
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService;->userExists(I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 4011
    const-string p0, "UserManagerService"

    const-string p2, "Cannot set user restriction %s. User with id %d does not exist"

    .line 4012
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 4011
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4015
    :cond_23
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4018
    :try_start_26
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 4019
    invoke-virtual {v1, p3}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 4018
    invoke-static {v1}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 4020
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4022
    invoke-virtual {p0, v1, p3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 4023
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public setUserRestrictionInner(ILjava/lang/String;Z)V
    .registers 6

    .line 3787
    invoke-static {p2}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 3788
    const-string p0, "UserManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Setting invalid restriction "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3791
    :cond_1d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3792
    :try_start_20
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 3793
    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 3792
    invoke-static {v1}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3794
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3796
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p2, p1, v1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_41

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3e

    .line 3798
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    goto :goto_41

    :catchall_3c
    move-exception p0

    goto :goto_43

    .line 3800
    :cond_3e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 3803
    :cond_41
    :goto_41
    monitor-exit v0

    return-void

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_20 .. :try_end_44} :catchall_3c

    throw p0
.end method

.method public final showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;Ljava/lang/String;)V
    .registers 7

    .line 2367
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2371
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v0

    .line 2372
    :try_start_d
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result v1

    .line 2373
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_34

    if-eq v1, v2, :cond_37

    .line 2375
    const-string p0, "UserManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showConfirmCredentialToDisableQuietMode() called too early, managed user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is still alive."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_34
    move-exception p0

    .line 2373
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0

    .line 2383
    :cond_37
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    .line 2388
    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_49

    return-void

    .line 2392
    :cond_49
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_57

    .line 2395
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2397
    :cond_57
    const-string p2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2398
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2399
    const-string p2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 2400
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2401
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    const/high16 v2, 0x54000000

    invoke-static {p2, p3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 2410
    const-string p3, "android.intent.extra.INTENT"

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p2, 0x10800000

    .line 2411
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2414
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result p2

    if-eqz p2, :cond_a6

    .line 2415
    const-string p2, "custom_logo_res_id"

    const p3, 0x10809f3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2417
    const-string p2, "custom_logo_description"

    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v1, 0x104092e

    .line 2418
    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 2417
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2420
    :cond_a6
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 2421
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentIdUnchecked(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 2420
    invoke-virtual {p2, v0, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final showHsumNotificationIfNeeded()V
    .registers 7

    .line 5042
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result v1

    if-ne v0, v1, :cond_9

    goto :goto_1c

    .line 5046
    :cond_9
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "persist.debug.user_mode_emulation"

    .line 5047
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    :goto_1c
    return-void

    .line 5051
    :cond_1d
    const-string v0, "UserManagerService"

    const-string v1, "Posting warning that device\'s HSUM status doesn\'t match the build\'s."

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5053
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v1, 0x1040b4d

    .line 5054
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5055
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v2, 0x1040b4c

    .line 5056
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5058
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v4, "DEVELOPER"

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x10809c8

    .line 5060
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 5061
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 5062
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 5063
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v4, 0x0

    .line 5064
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v5, 0x106001c

    .line 5065
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 5066
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 5067
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 5068
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 5069
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 5071
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    .line 5072
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 v1, 0x4d

    .line 5073
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public someUserHasAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 8160
    const-string v0, "check seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 8161
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 8166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_22

    .line 8170
    :cond_d
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8172
    new-instance v1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return p0
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 8135
    const-string v0, "check seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 8136
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->someUserHasSeedAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final someUserHasSeedAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 8140
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8141
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_49

    .line 8143
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    .line 8144
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_46

    .line 8145
    :cond_1e
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget-object v6, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    goto :goto_46

    .line 8146
    :cond_2b
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v5, :cond_46

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    goto :goto_46

    .line 8149
    :cond_36
    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v4, :cond_46

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_46

    :cond_41
    const/4 p0, 0x1

    .line 8152
    monitor-exit v0

    return p0

    :catchall_44
    move-exception p0

    goto :goto_4b

    :cond_46
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 8154
    :cond_49
    monitor-exit v0

    return v2

    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_44

    throw p0
.end method

.method public final startCommunalProfile()V
    .registers 3

    .line 1255
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCommunalProfileIdUnchecked()I

    move-result p0

    const/16 v0, -0x2710

    .line 1256
    const-string v1, "UserManagerService"

    if-eq p0, v0, :cond_2d

    .line 1257
    const-string v0, "Starting the Communal Profile"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->startProfile(I)Z

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_18

    goto :goto_1d

    :catch_18
    move-exception v0

    .line 1263
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    :goto_1d
    if-nez v0, :cond_2c

    .line 1267
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1266
    const-string v0, "Failed to start communal profile userId=%d"

    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    return-void

    .line 1270
    :cond_2d
    const-string p0, "Cannot start Communal Profile because there isn\'t one"

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final stopUserForQuietMode(I)V
    .registers 3

    .line 2313
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityManager;->stopUserWithDelayedLocking(ILandroid/app/IStopUserCallback;)I

    return-void
.end method

.method public systemReady()V
    .registers 7

    .line 1188
    const-string v0, "appops"

    .line 1189
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1188
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 1191
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1192
    :try_start_10
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 1193
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_84

    .line 1195
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1199
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mConfigurationChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1203
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isAutoLockForPrivateSpaceEnabled()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1205
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result v0

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_6a

    .line 1207
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "private_space_auto_lock"

    .line 1208
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockSettingsObserver:Lcom/android/server/pm/UserManagerService$SettingsObserver;

    .line 1210
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 1207
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserverAsUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;Landroid/os/UserHandle;)V

    .line 1212
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 1213
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "private_space_auto_lock"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1212
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->setOrUpdateAutoLockPreferenceForPrivateProfile(I)V

    .line 1220
    :cond_6a
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isAutoLockingPrivateSpaceOnRestartsEnabled()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1221
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->autoLockPrivateSpace()V

    .line 1224
    :cond_73
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->showHsumNotificationIfNeeded()V

    .line 1226
    invoke-static {}, Lcom/android/server/pm/UserManagerInternal;->shouldShowNotificationForBackgroundUserSounds()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1227
    new-instance v0, Lcom/android/server/pm/BackgroundUserSoundNotifier;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/pm/BackgroundUserSoundNotifier;-><init>(Landroid/content/Context;)V

    :cond_83
    return-void

    :catchall_84
    move-exception p0

    .line 1193
    :try_start_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw p0
.end method

.method public final throwCheckedUserOperationException(Ljava/lang/String;I)V
    .registers 3

    .line 9103
    const-string p0, "UserManagerService"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9104
    new-instance p0, Landroid/os/UserManager$CheckedUserOperationException;

    invoke-direct {p0, p1, p2}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final truncateString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_f

    .line 5875
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-gt p0, p2, :cond_9

    goto :goto_f

    :cond_9
    const/4 p0, 0x0

    .line 5878
    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_f
    return-object p1
.end method

.method public tryAutoLockingPrivateSpaceOnKeyguardChanged(Z)V
    .registers 6

    .line 858
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isAutoLockForPrivateSpaceEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 859
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    .line 862
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result v2

    .line 859
    const-string/jumbo v3, "private_space_auto_lock"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    if-eqz p1, :cond_24

    if-eqz v0, :cond_24

    .line 866
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->autoLockPrivateSpace()V

    :cond_24
    return-void
.end method

.method public final updateUserIds()V
    .registers 11

    .line 7881
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7882
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_d
    if-ge v3, v1, :cond_2b

    .line 7884
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 7885
    iget-boolean v7, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v7, :cond_28

    add-int/lit8 v5, v5, 0x1

    .line 7887
    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v6, :cond_28

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_61

    :cond_28
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 7896
    :cond_2b
    new-array v3, v4, [I

    .line 7897
    new-array v4, v5, [I

    move v5, v2

    move v6, v5

    :goto_31
    if-ge v2, v1, :cond_58

    .line 7902
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 7903
    iget-boolean v8, v7, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v8, :cond_55

    .line 7904
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    add-int/lit8 v9, v5, 0x1

    .line 7905
    aput v8, v4, v5

    .line 7906
    iget-boolean v5, v7, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v5, :cond_54

    add-int/lit8 v5, v6, 0x1

    .line 7907
    aput v8, v3, v6

    move v6, v5

    :cond_54
    move v5, v9

    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 7911
    :cond_58
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    .line 7912
    iput-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    .line 7917
    invoke-static {v3}, Landroid/content/pm/UserPackage;->setValidUserIds([I)V

    .line 7918
    monitor-exit v0

    return-void

    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_26

    throw p0
.end method

.method public final updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    .registers 7

    .line 4037
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 4038
    invoke-virtual {v0, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 4037
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz p1, :cond_38

    .line 4043
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p1, :cond_18

    move v1, v3

    goto :goto_19

    :cond_18
    move v1, v2

    .line 4045
    :goto_19
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 4046
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    if-eq v1, p1, :cond_25

    move v2, v3

    :cond_25
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 4049
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 4050
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    .line 4054
    :cond_38
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object p1

    .line 4056
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 4064
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v1, :cond_54

    .line 4065
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4074
    :cond_54
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 4076
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    return-void
.end method

.method public final updateUsersWithFeatureFlags(Z)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    .line 5204
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_17

    aget v2, p1, v1

    .line 5205
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 5207
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    :cond_1a
    return-void
.end method

.method public final upgradeIfNecessaryLP()V
    .registers 3

    .line 5190
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP(II)V

    return-void
.end method

.method public upgradeIfNecessaryLP(II)V
    .registers 16

    .line 5218
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading users from userVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5219
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 5220
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 5221
    iget v3, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge p1, v5, :cond_58

    .line 5224
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    .line 5225
    const-string v6, "Primary"

    iget-object v7, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v7, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 5226
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5227
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getContextResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104073d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 5228
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_57
    move p1, v5

    :cond_58
    const/4 v6, 0x2

    if-ge p1, v6, :cond_75

    .line 5235
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    .line 5236
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v7, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v8, v7, 0x10

    if-nez v8, :cond_74

    or-int/lit8 v7, v7, 0x10

    .line 5237
    iput v7, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 5238
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_74
    move p1, v6

    :cond_75
    const/4 v7, 0x4

    if-ge p1, v7, :cond_79

    move p1, v7

    :cond_79
    const/4 v7, 0x5

    if-ge p1, v7, :cond_80

    .line 5249
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    move p1, v7

    :cond_80
    const/4 v7, 0x6

    if-ge p1, v7, :cond_bd

    .line 5254
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8

    move p1, v4

    .line 5255
    :goto_87
    :try_start_87
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge p1, v9, :cond_b8

    .line 5256
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    .line 5258
    iget-object v10, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v10

    if-eqz v10, :cond_b5

    iget-object v9, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v9, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    const/16 v11, -0x2710

    if-ne v10, v11, :cond_b5

    .line 5260
    iput v4, v9, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 5261
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b5

    :catchall_b3
    move-exception p0

    goto :goto_bb

    :cond_b5
    :goto_b5
    add-int/lit8 p1, p1, 0x1

    goto :goto_87

    .line 5264
    :cond_b8
    monitor-exit v8

    move p1, v7

    goto :goto_bd

    :goto_bb
    monitor-exit v8
    :try_end_bc
    .catchall {:try_start_87 .. :try_end_bc} :catchall_b3

    throw p0

    :cond_bd
    :goto_bd
    const/4 v7, 0x7

    if-ge p1, v7, :cond_10a

    .line 5270
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 5271
    :try_start_c3
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const-string v9, "ensure_verify_apps"

    invoke-virtual {p1, v9}, Lcom/android/server/pm/RestrictionsSet;->removeRestrictionsForAllUsers(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 5273
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/4 v9, -0x1

    invoke-virtual {p1, v9}, Lcom/android/server/pm/RestrictionsSet;->getRestrictionsNonNull(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v9, "ensure_verify_apps"

    .line 5274
    invoke-virtual {p1, v9, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_dc

    :catchall_da
    move-exception p0

    goto :goto_108

    .line 5276
    :cond_dc
    :goto_dc
    monitor-exit v8
    :try_end_dd
    .catchall {:try_start_c3 .. :try_end_dd} :catchall_da

    .line 5279
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getGuestUsers()Ljava/util/List;

    move-result-object p1

    move v8, v4

    .line 5280
    :goto_e2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_106

    .line 5281
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    if-eqz v9, :cond_103

    .line 5282
    const-string/jumbo v10, "no_config_wifi"

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v10, v11}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_103

    .line 5284
    const-string/jumbo v10, "no_config_wifi"

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v10, v5, v9}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    :cond_103
    add-int/lit8 v8, v8, 0x1

    goto :goto_e2

    :cond_106
    move p1, v7

    goto :goto_10a

    .line 5276
    :goto_108
    :try_start_108
    monitor-exit v8
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_da

    throw p0

    :cond_10a
    :goto_10a
    const/16 v7, 0x8

    if-ge p1, v7, :cond_16b

    .line 5292
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8

    .line 5293
    :try_start_111
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 5294
    iget-object v9, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v9, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v10, v10, 0x800

    iput v10, v9, Landroid/content/pm/UserInfo;->flags:I

    .line 5299
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isDefaultHeadlessSystemUserMode()Z

    move-result v9

    if-nez v9, :cond_132

    .line 5300
    iget-object v9, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v9, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v10, v10, 0x400

    iput v10, v9, Landroid/content/pm/UserInfo;->flags:I

    goto :goto_132

    :catchall_130
    move-exception p0

    goto :goto_169

    .line 5302
    :cond_132
    :goto_132
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move p1, v5

    .line 5306
    :goto_13e
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge p1, v9, :cond_166

    .line 5307
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    .line 5308
    iget-object v9, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v9, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v11, v10, 0x20

    if-nez v11, :cond_163

    or-int/lit16 v10, v10, 0x400

    .line 5309
    iput v10, v9, Landroid/content/pm/UserInfo;->flags:I

    .line 5310
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_163
    add-int/lit8 p1, p1, 0x1

    goto :goto_13e

    .line 5313
    :cond_166
    monitor-exit v8

    move p1, v7

    goto :goto_16b

    :goto_169
    monitor-exit v8
    :try_end_16a
    .catchall {:try_start_111 .. :try_end_16a} :catchall_130

    throw p0

    :cond_16b
    :goto_16b
    const/16 v7, 0x9

    if-ge p1, v7, :cond_21b

    .line 5319
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8

    move p1, v4

    .line 5320
    :goto_173
    :try_start_173
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge p1, v9, :cond_216

    .line 5321
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    .line 5322
    iget-object v10, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v10, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v12, v11, 0x800

    if-eqz v12, :cond_19c

    and-int/lit16 v12, v11, 0x400

    if-eqz v12, :cond_197

    .line 5325
    const-string v12, "android.os.usertype.full.SYSTEM"

    iput-object v12, v10, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_1a2

    :catchall_194
    move-exception p0

    goto/16 :goto_219

    .line 5327
    :cond_197
    const-string v12, "android.os.usertype.system.HEADLESS"

    iput-object v12, v10, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;
    :try_end_19b
    .catchall {:try_start_173 .. :try_end_19b} :catchall_194

    goto :goto_1a2

    .line 5331
    :cond_19c
    :try_start_19c
    invoke-static {v11}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;
    :try_end_1a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19c .. :try_end_1a2} :catch_1f5
    .catchall {:try_start_19c .. :try_end_1a2} :catchall_194

    .line 5341
    :goto_1a2
    :try_start_1a2
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v12, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v12, v12, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v10, :cond_1c9

    .line 5348
    iget-object v11, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v11, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {v10}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v10

    or-int/2addr v10, v12

    iput v10, v11, Landroid/content/pm/UserInfo;->flags:I

    .line 5349
    iget-object v9, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_173

    .line 5343
    :cond_1c9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot upgrade user with flags "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5344
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " because "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object p2, p2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isn\'t defined on this device!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1f5
    move-exception p0

    .line 5334
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot upgrade user with flags "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5335
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it doesn\'t correspond to a valid user type."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 5351
    :cond_216
    monitor-exit v8

    move p1, v7

    goto :goto_21b

    :goto_219
    monitor-exit v8
    :try_end_21a
    .catchall {:try_start_1a2 .. :try_end_21a} :catchall_194

    throw p0

    :cond_21b
    :goto_21b
    const/16 v7, 0xa

    if-ge p1, v7, :cond_281

    .line 5357
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8

    move p1, v4

    .line 5358
    :goto_223
    :try_start_223
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge p1, v9, :cond_27c

    .line 5359
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    .line 5360
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v11, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v11, v11, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v10, :cond_25c

    .line 5366
    new-instance v11, Landroid/content/pm/UserProperties;

    .line 5367
    invoke-virtual {v10}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserPropertiesReference()Landroid/content/pm/UserProperties;

    move-result-object v10

    invoke-direct {v11, v10}, Landroid/content/pm/UserProperties;-><init>(Landroid/content/pm/UserProperties;)V

    iput-object v11, v9, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    .line 5368
    iget-object v9, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_223

    :catchall_25a
    move-exception p0

    goto :goto_27f

    .line 5362
    :cond_25c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot upgrade user because "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object p2, p2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isn\'t defined on this device!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5370
    :cond_27c
    monitor-exit v8

    move p1, v7

    goto :goto_281

    :goto_27f
    monitor-exit v8
    :try_end_280
    .catchall {:try_start_223 .. :try_end_280} :catchall_25a

    throw p0

    :cond_281
    :goto_281
    if-ge p1, v2, :cond_2c7

    .line 5376
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result p1

    if-eqz p1, :cond_2a5

    .line 5377
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isMainUserPermanentAdmin()Z

    move-result p1

    if-eqz p1, :cond_2c2

    .line 5378
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getEarliestCreatedFullUser()Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_2c2

    .line 5380
    iget v7, p1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v7, v7, 0x4000

    iput v7, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 5381
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2c2

    .line 5385
    :cond_2a5
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5386
    :try_start_2a8
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 5387
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, p1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v8, v8, 0x4000

    iput v8, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 5388
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5389
    monitor-exit v7

    :cond_2c2
    :goto_2c2
    move p1, v2

    goto :goto_2c7

    :catchall_2c4
    move-exception p0

    monitor-exit v7
    :try_end_2c6
    .catchall {:try_start_2a8 .. :try_end_2c6} :catchall_2c4

    throw p0

    .line 5401
    :cond_2c7
    :goto_2c7
    const-string v7, "UserManagerService"

    const-string v8, "Forcing an upgrade due to flagged changes"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5424
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v8, "no_config_wifi"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2f6

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v8, "no_config_wifi_shared"

    .line 5425
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2f6

    .line 5426
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v8, "no_config_wifi"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5427
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v8, "no_config_wifi_shared"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move v7, v5

    goto :goto_2f7

    :cond_2f6
    move v7, v4

    .line 5430
    :goto_2f7
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getGuestUsers()Ljava/util/List;

    move-result-object v8

    move v9, v4

    .line 5431
    :goto_2fc
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_334

    .line 5432
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    if-eqz v10, :cond_331

    .line 5433
    const-string/jumbo v11, "no_config_wifi"

    iget v12, v10, Landroid/content/pm/UserInfo;->id:I

    .line 5434
    invoke-virtual {p0, v11, v12}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_331

    const-string/jumbo v11, "no_config_wifi_shared"

    iget v12, v10, Landroid/content/pm/UserInfo;->id:I

    .line 5435
    invoke-virtual {p0, v11, v12}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_331

    .line 5436
    const-string/jumbo v7, "no_config_wifi"

    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v7, v5, v11}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 5437
    const-string/jumbo v7, "no_config_wifi_shared"

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v7, v4, v10}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    move v7, v5

    :cond_331
    add-int/lit8 v9, v9, 0x1

    goto :goto_2fc

    .line 5455
    :cond_334
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8

    .line 5456
    :try_start_337
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    .line 5457
    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v4, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v10, v9, 0x400

    if-nez v10, :cond_35b

    and-int/lit8 v10, v9, 0x2

    if-nez v10, :cond_35b

    xor-int/2addr v6, v9

    .line 5459
    iput v6, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 5460
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_35c

    :catchall_358
    move-exception p0

    goto/16 :goto_3ec

    :cond_35b
    move v5, v7

    .line 5463
    :goto_35c
    monitor-exit v8
    :try_end_35d
    .catchall {:try_start_337 .. :try_end_35d} :catchall_358

    .line 5472
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeVersion()I

    move-result v4

    if-le v4, p2, :cond_374

    .line 5474
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5475
    :try_start_366
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeUpgrades()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, v7, v8, p2, v0}, Lcom/android/server/pm/UserManagerService;->upgradeUserTypesLU(Ljava/util/List;Landroid/util/ArrayMap;ILjava/util/Set;)V

    .line 5477
    monitor-exit v6

    goto :goto_374

    :catchall_371
    move-exception p0

    monitor-exit v6
    :try_end_373
    .catchall {:try_start_366 .. :try_end_373} :catchall_371

    throw p0

    :cond_374
    :goto_374
    if-ge p1, v2, :cond_397

    .line 5481
    const-string p1, "UserManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User version "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " didn\'t upgrade as expected to "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_397
    if-le p1, v2, :cond_3be

    .line 5485
    const-string p2, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upgraded user version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is higher the SDK\'s one of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Someone forgot to update USER_VERSION?"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5489
    :cond_3be
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 5490
    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    if-lt v1, p1, :cond_3ca

    if-lt v3, v4, :cond_3ca

    if-eqz v5, :cond_3c9

    goto :goto_3ca

    :cond_3c9
    return-void

    .line 5494
    :cond_3ca
    :goto_3ca
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3ce
    :goto_3ce
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3e8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 5495
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p2

    if-eqz p2, :cond_3ce

    .line 5497
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_3ce

    .line 5500
    :cond_3e8
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    return-void

    .line 5463
    :goto_3ec
    :try_start_3ec
    monitor-exit v8
    :try_end_3ed
    .catchall {:try_start_3ec .. :try_end_3ed} :catchall_358

    throw p0
.end method

.method public upgradeProfileToTypeLU(Landroid/content/pm/UserInfo;Lcom/android/server/pm/UserTypeDetails;)V
    .registers 6

    .line 5547
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5549
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5547
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5551
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 5558
    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Lcom/android/server/pm/UserTypeDetails;I)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 5559
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exceeded maximum profiles of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5560
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Maximum allowed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5562
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowedPerParent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5559
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5565
    :cond_6c
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v0, :cond_7d

    .line 5568
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v0

    goto :goto_7f

    :cond_7d
    const/16 v0, 0x1000

    .line 5575
    :goto_7f
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 5577
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v1

    iget v2, p1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 5580
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5581
    :try_start_92
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultRestrictions()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_b7

    .line 5582
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 5583
    invoke-virtual {v1, v2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 5582
    invoke-static {v1}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 5585
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultRestrictions()Landroid/os/Bundle;

    move-result-object p2

    .line 5584
    invoke-static {v1, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 5586
    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    goto :goto_b7

    :catchall_b5
    move-exception p0

    goto :goto_c3

    .line 5592
    :cond_b7
    :goto_b7
    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_92 .. :try_end_b8} :catchall_b5

    .line 5595
    iget p2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget-object v0, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(ILjava/lang/String;)I

    move-result p0

    iput p0, p1, Landroid/content/pm/UserInfo;->profileBadge:I

    return-void

    .line 5592
    :goto_c3
    :try_start_c3
    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_b5

    throw p0

    .line 5552
    :cond_c5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can only upgrade profile types. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a profile type."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final upgradeUserTypesLU(Ljava/util/List;Landroid/util/ArrayMap;ILjava/util/Set;)V
    .registers 10

    .line 5510
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;

    .line 5518
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->getUpToVersion()I

    move-result v1

    if-gt p3, v1, :cond_4

    const/4 v1, 0x0

    .line 5519
    :goto_17
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 5520
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 5521
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->getFromType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 5523
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->getToType()Ljava/lang/String;

    move-result-object v3

    .line 5522
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v3, :cond_52

    .line 5531
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/pm/UserManagerService;->upgradeProfileToTypeLU(Landroid/content/pm/UserInfo;Lcom/android/server/pm/UserTypeDetails;)V

    .line 5532
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 5526
    :cond_52
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Upgrade destination user type not defined: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5528
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->getToType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6d
    :goto_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_70
    return-void
.end method

.method public userExists(I)Z
    .registers 7

    .line 4885
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4886
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_16

    aget v4, p0, v3

    if-ne v4, p1, :cond_13

    const/4 p0, 0x1

    .line 4888
    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    goto :goto_18

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 4891
    :cond_16
    monitor-exit v0

    return v2

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_11

    throw p0
.end method

.method public userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .registers 3

    if-eqz p1, :cond_15

    .line 2654
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_15

    const/4 v0, 0x1

    .line 2655
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 2657
    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 2658
    iput-object p0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v0

    :cond_15
    return-object p1
.end method

.method public final verifyCallingPackage(Ljava/lang/String;I)V
    .registers 6

    .line 9183
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 9184
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {p0, p1, v0, v1, v2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p0, p2, :cond_13

    return-void

    .line 9186
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Specified package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match the calling uid "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 7

    .line 4840
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4841
    new-instance p0, Ljava/io/File;

    const-string/jumbo v1, "photo.png"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4842
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "photo.png.tmp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4843
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_30

    .line 4844
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 4846
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    .line 4845
    invoke-static {v0, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 4851
    :cond_30
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x64

    invoke-virtual {p2, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    if-eqz p2, :cond_51

    .line 4852
    invoke-virtual {v1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_51

    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_51

    .line 4853
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_51} :catch_58

    .line 4856
    :cond_51
    :try_start_51
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_54

    .line 4860
    :catch_54
    :try_start_54
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_60

    :catch_58
    move-exception p0

    .line 4862
    const-string p1, "UserManagerService"

    const-string p2, "Error setting photo for user "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_60
    return-void
.end method

.method public final writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 7

    .line 5728
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    .line 5730
    iget-object v0, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v0

    .line 5733
    :try_start_b
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_1a
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    .line 5734
    :try_start_f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V

    .line 5735
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_18
    .catchall {:try_start_f .. :try_end_15} :catchall_16

    goto :goto_39

    :catchall_16
    move-exception p0

    goto :goto_3f

    :catch_18
    move-exception p0

    goto :goto_1c

    :catch_1a
    move-exception p0

    const/4 v1, 0x0

    .line 5737
    :goto_1c
    :try_start_1c
    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing user info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5738
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_16

    :goto_39
    if-eqz v0, :cond_3e

    .line 5740
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    :cond_3e
    return-void

    :goto_3f
    if-eqz v0, :cond_49

    .line 5730
    :try_start_41
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_49
    :goto_49
    throw p0
.end method

.method public writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5754
    invoke-static {p2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p2

    .line 5755
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5756
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    invoke-interface {p2, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 5758
    iget-object v0, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5759
    const-string/jumbo v3, "user"

    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5760
    const-string v3, "id"

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5761
    const-string/jumbo v3, "serialNumber"

    iget v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {p2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5762
    const-string v3, "flags"

    iget v4, v0, Landroid/content/pm/UserInfo;->flags:I

    invoke-interface {p2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5763
    const-string/jumbo v3, "type"

    iget-object v4, v0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-interface {p2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5764
    const-string v3, "created"

    iget-wide v4, v0, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-interface {p2, v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 5765
    const-string v3, "lastLoggedIn"

    iget-wide v4, v0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-interface {p2, v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 5766
    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    if-eqz v3, :cond_4d

    .line 5767
    const-string v4, "lastLoggedInFingerprint"

    invoke-interface {p2, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5770
    :cond_4d
    const-string v3, "lastEnteredForeground"

    iget-wide v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    invoke-interface {p2, v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 5772
    iget-object v3, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_5d

    .line 5773
    const-string v4, "icon"

    invoke-interface {p2, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5775
    :cond_5d
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_67

    .line 5776
    const-string/jumbo v3, "partial"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 5778
    :cond_67
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v3, :cond_71

    .line 5779
    const-string/jumbo v3, "preCreated"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 5781
    :cond_71
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v3, :cond_7a

    .line 5782
    const-string v3, "convertedFromPreCreated"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 5784
    :cond_7a
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v3, :cond_83

    .line 5785
    const-string v3, "guestToRemove"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 5787
    :cond_83
    iget v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_8f

    .line 5788
    const-string/jumbo v4, "profileGroupId"

    invoke-interface {p2, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5790
    :cond_8f
    const-string/jumbo v2, "profileBadge"

    iget v4, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-interface {p2, v1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5791
    iget v2, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-eq v2, v3, :cond_a1

    .line 5792
    const-string/jumbo v3, "restrictedProfileParentId"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5796
    :cond_a1
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_c3

    .line 5797
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    const/16 v3, 0x1f4

    if-eqz v2, :cond_b5

    .line 5798
    const-string/jumbo v4, "seedAccountName"

    .line 5799
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 5798
    invoke-interface {p2, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5802
    :cond_b5
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v2, :cond_c3

    .line 5803
    const-string/jumbo v4, "seedAccountType"

    .line 5804
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 5803
    invoke-interface {p2, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5808
    :cond_c3
    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_de

    .line 5809
    const-string/jumbo v2, "name"

    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5810
    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5811
    const-string/jumbo v2, "name"

    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5813
    :cond_de
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5814
    :try_start_e1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    .line 5815
    invoke-virtual {v3, v4}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "restrictions"

    .line 5814
    invoke-static {p2, v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 5818
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_11c

    .line 5819
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/4 v4, -0x1

    .line 5820
    invoke-virtual {v3, v4}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "device_policy_global_restrictions"

    .line 5819
    invoke-static {p2, v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 5823
    const-string v3, "guestRestrictions"

    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5824
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v3
    :try_end_107
    .catchall {:try_start_e1 .. :try_end_107} :catchall_116

    .line 5825
    :try_start_107
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v5, "restrictions"

    invoke-static {p2, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 5827
    monitor-exit v3
    :try_end_110
    .catchall {:try_start_107 .. :try_end_110} :catchall_119

    .line 5828
    :try_start_110
    const-string v3, "guestRestrictions"

    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_115
    .catchall {:try_start_110 .. :try_end_115} :catchall_116

    goto :goto_11c

    :catchall_116
    move-exception p0

    goto/16 :goto_1a9

    :catchall_119
    move-exception p0

    .line 5827
    :try_start_11a
    monitor-exit v3
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_119

    :try_start_11b
    throw p0

    .line 5836
    :cond_11c
    :goto_11c
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 5837
    invoke-virtual {p0, v0}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "device_policy_local_restrictions"

    .line 5836
    invoke-static {p2, p0, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 5839
    monitor-exit v2
    :try_end_12a
    .catchall {:try_start_11b .. :try_end_12a} :catchall_116

    .line 5841
    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz p0, :cond_13d

    .line 5842
    const-string p0, "account"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5843
    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-interface {p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5844
    const-string p0, "account"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5847
    :cond_13d
    iget-boolean p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz p0, :cond_156

    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz p0, :cond_156

    .line 5848
    const-string/jumbo p0, "seedAccountOptions"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5849
    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {p0, p2}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 5850
    const-string/jumbo p0, "seedAccountOptions"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5853
    :cond_156
    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    if-eqz p0, :cond_16b

    .line 5854
    const-string/jumbo p0, "userProperties"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5855
    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    invoke-virtual {p0, p2}, Landroid/content/pm/UserProperties;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 5856
    const-string/jumbo p0, "userProperties"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5859
    :cond_16b
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_18a

    .line 5860
    const-string p0, "lastRequestQuietModeEnabledCall"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5861
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5862
    const-string p0, "lastRequestQuietModeEnabledCall"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5865
    :cond_18a
    const-string p0, "ignorePrepareStorageErrors"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5866
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getIgnorePrepareStorageErrors()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5867
    const-string p0, "ignorePrepareStorageErrors"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5869
    const-string/jumbo p0, "user"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5871
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void

    .line 5839
    :goto_1a9
    :try_start_1a9
    monitor-exit v2
    :try_end_1aa
    .catchall {:try_start_1a9 .. :try_end_1aa} :catchall_116

    throw p0
.end method

.method public final writeUserListLP()V
    .registers 11

    .line 5895
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    .line 5897
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserListFile()Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v0

    const/4 v1, 0x0

    .line 5900
    :try_start_8
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_88
    .catchall {:try_start_8 .. :try_end_c} :catchall_74

    .line 5902
    :try_start_c
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v3

    .line 5903
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5904
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 5907
    const-string/jumbo v4, "users"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5908
    const-string/jumbo v4, "nextSerialNumber"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-interface {v3, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5909
    const-string/jumbo v4, "version"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-interface {v3, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5910
    const-string/jumbo v4, "userTypeConfigVersion"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    invoke-interface {v3, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5922
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3c} :catch_76
    .catchall {:try_start_c .. :try_end_3c} :catchall_74

    .line 5923
    :try_start_3c
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v6, v5, [I

    const/4 v7, 0x0

    move v8, v7

    :goto_46
    if-ge v8, v5, :cond_5b

    .line 5925
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v9, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5926
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    :catchall_59
    move-exception p0

    goto :goto_86

    .line 5928
    :cond_5b
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_59

    :goto_5c
    if-ge v7, v5, :cond_79

    .line 5929
    :try_start_5e
    aget p0, v6, v7

    .line 5930
    const-string/jumbo v4, "user"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5931
    const-string v4, "id"

    invoke-interface {v3, v1, v4, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5932
    const-string/jumbo p0, "user"

    invoke-interface {v3, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5c

    :catchall_74
    move-exception p0

    goto :goto_99

    :catch_76
    move-exception p0

    move-object v1, v2

    goto :goto_89

    .line 5935
    :cond_79
    const-string/jumbo p0, "users"

    invoke-interface {v3, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5937
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 5938
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_85} :catch_76
    .catchall {:try_start_5e .. :try_end_85} :catchall_74

    goto :goto_93

    .line 5928
    :goto_86
    :try_start_86
    monitor-exit v4
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_59

    :try_start_87
    throw p0
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_88} :catch_76
    .catchall {:try_start_87 .. :try_end_88} :catchall_74

    :catch_88
    move-exception p0

    .line 5940
    :goto_89
    :try_start_89
    const-string v2, "UserManagerService"

    const-string v3, "Error writing user list"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5941
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_74

    :goto_93
    if-eqz v0, :cond_98

    .line 5943
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    :cond_98
    return-void

    :goto_99
    if-eqz v0, :cond_a3

    .line 5897
    :try_start_9b
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_9f

    goto :goto_a3

    :catchall_9f
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a3
    :goto_a3
    throw p0
.end method
