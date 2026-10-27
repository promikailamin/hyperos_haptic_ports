.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$LocalService;,
        Lcom/android/server/pm/UserManagerService$MainHandler;,
        Lcom/android/server/pm/UserManagerService$Shell;,
        Lcom/android/server/pm/UserManagerService$LifeCycle;,
        Lcom/android/server/pm/UserManagerService$WatchedUserStates;,
        Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;,
        Lcom/android/server/pm/UserManagerService$UserData;
    }
.end annotation


# static fields
.field private static final ALLOWED_FLAGS_FOR_CREATE_USERS_PERMISSION:I = 0x172c

.field private static final ATTR_CONVERTED_FROM_PRE_CREATED:Ljava/lang/String; = "convertedFromPreCreated"

.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GUEST_TO_REMOVE:Ljava/lang/String; = "guestToRemove"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_FINGERPRINT:Ljava/lang/String; = "lastLoggedInFingerprint"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PRE_CREATED:Ljava/lang/String; = "preCreated"

.field private static final ATTR_PROFILE_BADGE:Ljava/lang/String; = "profileBadge"

.field private static final ATTR_PROFILE_GROUP_ID:Ljava/lang/String; = "profileGroupId"

.field private static final ATTR_RESTRICTED_PROFILE_PARENT_ID:Ljava/lang/String; = "restrictedProfileParentId"

.field private static final ATTR_SEED_ACCOUNT_NAME:Ljava/lang/String; = "seedAccountName"

.field private static final ATTR_SEED_ACCOUNT_TYPE:Ljava/lang/String; = "seedAccountType"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_BUNDLE:Ljava/lang/String; = "B"

.field private static final ATTR_TYPE_BUNDLE_ARRAY:Ljava/lang/String; = "BA"

.field private static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_TYPE_VERSION:Ljava/lang/String; = "userTypeConfigVersion"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field static final DBG:Z = false

.field public static final DBG_ALLOCATION:Z = false

.field private static final DBG_WITH_STACKTRACE:Z = false

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field static final MAX_RECENTLY_REMOVED_IDS_SIZE:I = 0x64

.field static final MAX_USER_ID:I = 0x53e2

.field static final MIN_USER_ID:I = 0xa

.field private static final RELEASE_DELETED_USER_ID:Z = false

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final TAG_ACCOUNT:Ljava/lang/String; = "account"

.field private static final TAG_DEVICE_OWNER_USER_ID:Ljava/lang/String; = "deviceOwnerUserId"

.field private static final TAG_DEVICE_POLICY_GLOBAL_RESTRICTIONS:Ljava/lang/String; = "device_policy_global_restrictions"

.field private static final TAG_DEVICE_POLICY_LOCAL_RESTRICTIONS:Ljava/lang/String; = "device_policy_local_restrictions"

.field private static final TAG_DEVICE_POLICY_RESTRICTIONS:Ljava/lang/String; = "device_policy_restrictions"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_GLOBAL_RESTRICTION_OWNER_ID:Ljava/lang/String; = "globalRestrictionOwnerUserId"

.field private static final TAG_GUEST_RESTRICTIONS:Ljava/lang/String; = "guestRestrictions"

.field private static final TAG_IGNORE_PREPARE_STORAGE_ERRORS:Ljava/lang/String; = "ignorePrepareStorageErrors"

.field private static final TAG_LAST_REQUEST_QUIET_MODE_ENABLED_CALL:Ljava/lang/String; = "lastRequestQuietModeEnabledCall"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_SEED_ACCOUNT_OPTIONS:Ljava/lang/String; = "seedAccountOptions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final TRON_DEMO_CREATED:Ljava/lang/String; = "users_demo_created"

.field private static final TRON_GUEST_CREATED:Ljava/lang/String; = "users_guest_created"

.field private static final TRON_USER_CREATED:Ljava/lang/String; = "users_user_created"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_PHOTO_FILENAME_TMP:Ljava/lang/String; = "photo.png.tmp"

.field private static final USER_VERSION:I = 0x9

.field static final WRITE_USER_DELAY:I = 0x7d0

.field static final WRITE_USER_MSG:I = 0x1

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final mUserRestriconToken:Landroid/os/IBinder;

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mAppRestrictionsLock:Ljava/lang/Object;

.field private final mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field private final mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field private final mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field private final mConfigurationChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceOwnerUserId:I

.field private final mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field private final mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/RestrictionsSet;",
            ">;"
        }
    .end annotation
.end field

.field private mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field private final mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

.field private mForceEphemeralUsers:Z

.field private final mGuestRestrictions:Landroid/os/Bundle;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDeviceManaged:Z

.field private final mIsUserManaged:Landroid/util/SparseBooleanArray;

.field private final mLastConfiguration:Landroid/content/res/Configuration;

.field private final mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextSerialNumber:I

.field private final mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOwnerNameTypedValue:Landroid/util/TypedValue;

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mRecentlyRemovedIds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;

.field private final mRestrictionsLock:Ljava/lang/Object;

.field private final mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

.field public final mUser0Allocations:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

.field private mUserIds:[I

.field private mUserIdsIncludingPreCreated:[I

.field private final mUserLifecycleListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserListFile:Ljava/io/File;

.field private final mUserRestrictionsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

.field private mUserTypeVersion:I

.field private final mUserTypes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/UserManagerService$UserData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;

.field private final mUsersLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$rBHs504BJNwsRe0tJ--hzgnQgcI(Lcom/android/server/pm/UserManagerService;ILjava/util/List;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->onPullAtom(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppOpsService(Lcom/android/server/pm/UserManagerService;)Lcom/android/internal/app/IAppOpsService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDeviceManaged(Lcom/android/server/pm/UserManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsUserManaged(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackagesLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPm(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRestrictionsLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemPackageInstaller(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserSystemPackageInstaller;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserLifecycleListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserRestrictionsListeners(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserStates(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsers(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsersLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmForceEphemeralUsers(Lcom/android/server/pm/UserManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsDeviceManaged(Lcom/android/server/pm/UserManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyUserRestrictionsLR(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanupPartialUsers(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->cleanupPartialUsers()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanupPreCreatedUsers(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->cleanupPreCreatedUsers()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateUserInternalUnchecked(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfinishRemoveUser(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->finishRemoveUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDevicePolicyManagerInternal(Lcom/android/server/pm/UserManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetEffectiveUserRestrictions(Lcom/android/server/pm/UserManagerService;I)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetProfileParentLU(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUserDataLU(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUserDataNoChecks(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUserInfoLU(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUserInfoNoChecks(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUserTypeDetailsNoChecks(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserTypeDetails;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUsersInternal(Lcom/android/server/pm/UserManagerService;ZZZ)Ljava/util/List;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minvalidateOwnerNameIfNecessary(Lcom/android/server/pm/UserManagerService;Landroid/content/res/Resources;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->invalidateOwnerNameIfNecessary(Landroid/content/res/Resources;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogUserRemoveJourneyFinish(Lcom/android/server/pm/UserManagerService;JIZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->logUserRemoveJourneyFinish(JIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterStatsCallbacks(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->registerStatsCallbacks()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveNonSystemUsers(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->removeNonSystemUsers()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveUserState(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveUserUnchecked(Lcom/android/server/pm/UserManagerService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendUserInfoChangedBroadcast(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDefaultCrossProfileIntentFilters(Lcom/android/server/pm/UserManagerService;ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setDefaultCrossProfileIntentFilters(ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDevicePolicyUserRestrictionsInner(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetQuietModeEnabled(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteBitmapLP(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteUserLP(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmUserRestriconToken()Landroid/os/IBinder;
    .registers 1

    sget-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 294
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 686
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V

    .line 687
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "userDataPreparer"    # Lcom/android/server/pm/UserDataPreparer;
    .param p4, "packagesLock"    # Ljava/lang/Object;

    .line 696
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V

    .line 697
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "userDataPreparer"    # Lcom/android/server/pm/UserDataPreparer;
    .param p4, "packagesLock"    # Ljava/lang/Object;
    .param p5, "dataDir"    # Ljava/io/File;

    .line 700
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    .line 284
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    .line 287
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    .line 372
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 392
    new-instance v0, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v0}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 407
    new-instance v0, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v0}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 416
    new-instance v0, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v0}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 425
    new-instance v0, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v0}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 431
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 442
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    .line 446
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 454
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 460
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    .line 471
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 472
    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    .line 481
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    .line 484
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    .line 488
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    .line 493
    const-string v1, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

    .line 496
    new-instance v1, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    .line 514
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    .line 516
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    .line 518
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 520
    new-instance v1, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mConfigurationChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 610
    new-instance v1, Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    .line 701
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 702
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 703
    iput-object p4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 704
    new-instance v2, Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {v2, p0}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 705
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    .line 706
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypes()Landroid/util/ArrayMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    .line 707
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/UserManagerService;->invalidateOwnerNameIfNecessary(Landroid/content/res/Resources;Z)V

    .line 708
    monitor-enter p4

    .line 709
    :try_start_c1
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v3, p5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    .line 710
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 712
    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 713
    .local v4, "userZeroDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 714
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1fd

    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 717
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "userlist.xml"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 718
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 719
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V

    .line 720
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    .line 721
    .end local v4    # "userZeroDir":Ljava/io/File;
    monitor-exit p4
    :try_end_f6
    .catchall {:try_start_c1 .. :try_end_f6} :catchall_117

    .line 722
    new-instance v3, Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-direct {v3, p0, v2}, Lcom/android/server/pm/UserSystemPackageInstaller;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;)V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 723
    new-instance v2, Lcom/android/server/pm/UserManagerService$LocalService;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$LocalService-IA;)V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 724
    const-class v4, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v4, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 725
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 726
    invoke-virtual {v1, v0, v0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->put(II)V

    .line 727
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUser0Allocations:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 728
    return-void

    .line 721
    :catchall_117
    move-exception v0

    :try_start_118
    monitor-exit p4
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_117

    throw v0
.end method

.method private applyDefaultUserSettings(Lcom/android/server/pm/UserTypeDetails;I)V
    .registers 14
    .param p1, "userTypeDetails"    # Lcom/android/server/pm/UserTypeDetails;
    .param p2, "userId"    # I

    .line 4162
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getDefaultSystemSettings()Landroid/os/Bundle;

    move-result-object v0

    .line 4163
    .local v0, "systemSettings":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getDefaultSecureSettings()Landroid/os/Bundle;

    move-result-object v1

    .line 4164
    .local v1, "secureSettings":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 4165
    return-void

    .line 4168
    :cond_15
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    .line 4169
    .local v2, "systemSettingsSize":I
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 4171
    .local v3, "systemSettingsArray":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    const-string v5, "UserManagerService"

    if-ge v4, v2, :cond_55

    .line 4172
    aget-object v6, v3, v4

    .line 4173
    .local v6, "setting":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 4174
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4173
    invoke-static {v7, v6, v8, p2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_52

    .line 4176
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to insert default system setting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    .end local v6    # "setting":Ljava/lang/String;
    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 4180
    .end local v4    # "i":I
    :cond_55
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v4

    .line 4181
    .local v4, "secureSettingsSize":I
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 4183
    .local v6, "secureSettingsArray":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_66
    if-ge v7, v4, :cond_93

    .line 4184
    aget-object v8, v6, v7

    .line 4185
    .local v8, "setting":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 4186
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4185
    invoke-static {v9, v8, v10, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_90

    .line 4188
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to insert default secure setting: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    .end local v8    # "setting":Ljava/lang/String;
    :cond_90
    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    .line 4191
    .end local v7    # "i":I
    :cond_93
    return-void
.end method

.method private applyUserRestrictionsForAllUsersLR()V
    .registers 3

    .line 2419
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0}, Lcom/android/server/pm/RestrictionsSet;->removeAllRestrictions()V

    .line 2423
    new-instance v0, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 2445
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2446
    return-void
.end method

.method private applyUserRestrictionsLR(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2409
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 2410
    return-void
.end method

.method private broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .registers 7
    .param p1, "profileHandle"    # Landroid/os/UserHandle;
    .param p2, "parentHandle"    # Landroid/os/UserHandle;
    .param p3, "inQuietMode"    # Z

    .line 1086
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1087
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_d

    .line 1088
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_12

    .line 1090
    :cond_d
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    :goto_12
    const-string v1, "android.intent.extra.QUIET_MODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1093
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1094
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1095
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p2, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 1097
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1098
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1099
    return-void
.end method

.method private canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z
    .registers 6
    .param p1, "userTypeDetails"    # Lcom/android/server/pm/UserTypeDetails;

    .line 2467
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2468
    return v1

    .line 2470
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowed()I

    move-result v0

    .line 2471
    .local v0, "max":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_11

    .line 2472
    return v3

    .line 2474
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result v2

    if-ge v2, v0, :cond_1c

    move v1, v3

    :cond_1c
    return v1
.end method

.method private static final checkCreateUsersPermission(I)V
    .registers 4
    .param p0, "creationFlags"    # I

    .line 2760
    and-int/lit16 v0, p0, -0x172d

    if-nez v0, :cond_24

    .line 2761
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2a

    .line 2762
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2765
    :cond_24
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2769
    :goto_2a
    return-void

    .line 2766
    :cond_2b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to create an user  with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final checkCreateUsersPermission(Ljava/lang/String;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .line 2713
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2717
    return-void

    .line 2714
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 1700
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1701
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_3b

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_3b

    .line 1704
    :cond_d
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1705
    return-void

    .line 1707
    :cond_14
    nop

    .line 1708
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1707
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v2, v1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1709
    return-void

    .line 1711
    :cond_22
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need INTERACT_ACROSS_USERS or MANAGE_USERS permission to: check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1702
    :cond_3b
    :goto_3b
    return-void
.end method

.method private static final checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;

    .line 2664
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2666
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_35

    if-nez v0, :cond_b

    goto :goto_35

    .line 2671
    :cond_b
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2672
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2674
    return-void

    .line 2677
    :cond_1c
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2668
    :cond_35
    :goto_35
    return-void
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .line 2697
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2700
    return-void

    .line 2698
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final checkQueryOrCreateUsersPermission(Ljava/lang/String;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .line 2746
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2751
    return-void

    .line 2747
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS, CREATE_USERS, or QUERY_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 1728
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1729
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_3b

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_3b

    .line 1732
    :cond_d
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryUsersPermission()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1733
    return-void

    .line 1735
    :cond_14
    nop

    .line 1736
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1735
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v2, v1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1737
    return-void

    .line 1739
    :cond_22
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need INTERACT_ACROSS_USERS, MANAGE_USERS, or QUERY_USERS permission to: check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1730
    :cond_3b
    :goto_3b
    return-void
.end method

.method private static final checkQueryUsersPermission(Ljava/lang/String;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .line 2729
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2733
    return-void

    .line 2730
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or QUERY_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkSystemOrRoot(Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;

    .line 2837
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2838
    .local v0, "uid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_28

    if-nez v0, :cond_f

    goto :goto_28

    .line 2839
    :cond_f
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only system may: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2841
    :cond_28
    :goto_28
    return-void
.end method

.method static checkUserTypeConsistency(I)Z
    .registers 3
    .param p0, "flags"    # I

    .line 4287
    const/16 v0, 0x120c

    .line 4289
    .local v0, "userTypeFlagMask":I
    and-int/lit16 v1, p0, 0x120c

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->isAtMostOneFlag(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    and-int/lit16 v1, p0, 0x1400

    .line 4290
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->isAtMostOneFlag(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    and-int/lit16 v1, p0, 0x1800

    .line 4291
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->isAtMostOneFlag(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 4289
    :goto_1d
    return v1
.end method

.method private static cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)Z
    .registers 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 3749
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 3750
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3751
    .local v1, "resFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3752
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3753
    const/4 v2, 0x1

    return v2

    .line 3755
    :cond_18
    const/4 v2, 0x0

    return v2
.end method

.method private cleanupPartialUsers()V
    .registers 8

    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .local v0, "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 776
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 777
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_3f

    .line 778
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 779
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_23

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v5, :cond_3c

    :cond_23
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_3c

    .line 780
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_39

    .line 782
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 784
    :cond_39
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    .line 777
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 787
    .end local v2    # "userSize":I
    .end local v3    # "i":I
    :cond_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_82

    .line 788
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 789
    .local v1, "partialsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_45
    if-ge v2, v1, :cond_81

    .line 790
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 791
    .local v3, "ui":Landroid/content/pm/UserInfo;
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing partially created user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    .line 789
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 795
    .end local v2    # "i":I
    :cond_81
    return-void

    .line 787
    .end local v1    # "partialsSize":I
    :catchall_82
    move-exception v2

    :try_start_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v2
.end method

.method private cleanupPreCreatedUsers()V
    .registers 8

    .line 803
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 804
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 805
    .local v1, "userSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 806
    .local v2, "preCreatedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_33

    .line 807
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 808
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v5, :cond_30

    .line 809
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 811
    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 812
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    .line 806
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 815
    .end local v1    # "userSize":I
    .end local v3    # "i":I
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_64

    .line 816
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 817
    .local v0, "preCreatedSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_39
    if-ge v1, v0, :cond_63

    .line 818
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 819
    .local v3, "ui":Landroid/content/pm/UserInfo;
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing pre-created user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    .line 817
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 822
    .end local v1    # "i":I
    :cond_63
    return-void

    .line 815
    .end local v0    # "preCreatedSize":I
    .end local v2    # "preCreatedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v1
.end method

.method private computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;
    .registers 7
    .param p1, "userId"    # I

    .line 2132
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 2133
    invoke-virtual {v0, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2134
    .local v0, "baseRestrictions":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1}, Lcom/android/server/pm/RestrictionsSet;->mergeAll()Landroid/os/Bundle;

    move-result-object v1

    .line 2135
    .local v1, "global":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v2

    .line 2137
    .local v2, "local":Lcom/android/server/pm/RestrictionsSet;
    invoke-static {v1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Lcom/android/server/pm/RestrictionsSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2139
    return-object v0

    .line 2141
    :cond_21
    invoke-static {v0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 2142
    .local v3, "effective":Landroid/os/Bundle;
    invoke-static {v3, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2143
    invoke-virtual {v2}, Lcom/android/server/pm/RestrictionsSet;->mergeAll()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2145
    return-object v3
.end method

.method private convertPreCreatedUserIfPossible(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .registers 12
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/Object;

    .line 4241
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4242
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getPreCreatedUserLU(Ljava/lang/String;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 4243
    .local v1, "preCreatedUserData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_f3

    .line 4244
    const/4 v0, 0x0

    if-nez v1, :cond_c

    .line 4245
    return-object v0

    .line 4247
    :cond_c
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v2

    .line 4248
    :try_start_f
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->has(I)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 4249
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot reuse pre-created user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because it didn\'t stop yet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    monitor-exit v2

    return-object v0

    .line 4253
    :cond_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_f0

    .line 4254
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4255
    .local v3, "preCreatedUser":Landroid/content/pm/UserInfo;
    iget v2, v3, Landroid/content/pm/UserInfo;->flags:I

    or-int v4, v2, p2

    .line 4256
    .local v4, "newFlags":I
    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->checkUserTypeConsistency(I)Z

    move-result v2

    if-nez v2, :cond_95

    .line 4257
    const-string v2, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot reuse pre-created user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because flags are inconsistent. Flags ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4259
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "); preCreatedUserFlags ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/content/pm/UserInfo;->flags:I

    .line 4260
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4257
    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4261
    return-object v0

    .line 4263
    :cond_95
    const-string v0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reusing pre-created user "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " of type "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " and bestowing on it flags "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4264
    invoke-static {p2}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4263
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4265
    iput-object p3, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 4266
    iput v4, v3, Landroid/content/pm/UserInfo;->flags:I

    .line 4267
    const/4 v0, 0x0

    iput-boolean v0, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 4268
    const/4 v0, 0x1

    iput-boolean v0, v3, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    .line 4269
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getCreationTime()J

    move-result-wide v5

    iput-wide v5, v3, Landroid/content/pm/UserInfo;->creationTime:J

    .line 4271
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4272
    :try_start_da
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4273
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 4274
    monitor-exit v0
    :try_end_e1
    .catchall {:try_start_da .. :try_end_e1} :catchall_ed

    .line 4275
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 4276
    new-instance v0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v3, p4}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 4280
    return-object v3

    .line 4274
    :catchall_ed
    move-exception v2

    :try_start_ee
    monitor-exit v0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw v2

    .line 4253
    .end local v3    # "preCreatedUser":Landroid/content/pm/UserInfo;
    .end local v4    # "newFlags":I
    :catchall_f0
    move-exception v0

    :try_start_f1
    monitor-exit v2
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw v0

    .line 4243
    .end local v1    # "preCreatedUserData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_f3
    move-exception v1

    :try_start_f4
    monitor-exit v0
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw v1
.end method

.method private createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "parentId"    # I
    .param p5, "disallowedPackages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    .line 3867
    const-string/jumbo v0, "no_add_user"

    .line 3868
    .local v0, "restriction":Ljava/lang/String;
    invoke-static {p2}, Landroid/os/UserManager;->isUserTypeCloneProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3869
    const-string/jumbo v0, "no_add_clone_profile"

    goto :goto_16

    .line 3870
    :cond_d
    invoke-static {p2}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3871
    const-string/jumbo v0, "no_add_managed_profile"

    .line 3874
    :cond_16
    :goto_16
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string v2, "Cannot add user"

    move-object v11, p0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(Ljava/lang/String;ILjava/lang/String;)V

    .line 3876
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v10}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method private createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .registers 27
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "parentId"    # I
    .param p5, "preCreate"    # Z
    .param p6, "disallowedPackages"    # [Ljava/lang/String;
    .param p7, "token"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    .line 3890
    move-object/from16 v10, p0

    move/from16 v11, p3

    invoke-static {}, Lcom/android/server/pm/UserManagerServiceStub;->get()Lcom/android/server/pm/UserManagerServiceStub;

    move-result-object v0

    .line 3891
    invoke-static {}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->getInstance()Lcom/miui/server/xspace/XSpaceManagerServiceStub;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId()I

    move-result v2

    invoke-virtual {v1, v11, v2}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->checkAndGetXSpaceUserId(II)I

    move-result v1

    .line 3890
    invoke-interface {v0, v11, v1}, Lcom/android/server/pm/UserManagerServiceStub;->checkAndGetNewUserId(II)I

    move-result v12

    .line 3893
    .local v12, "nextProbableUserId":I
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    move-object v13, v0

    .line 3894
    .local v13, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createUser-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3895
    move-object/from16 v14, p2

    invoke-direct {v10, v12, v14, v11}, Lcom/android/server/pm/UserManagerService;->logUserCreateJourneyBegin(ILjava/lang/String;I)J

    move-result-wide v8

    .line 3896
    .local v8, "sessionId":J
    const/4 v15, 0x0

    .line 3898
    .local v15, "newUser":Landroid/content/pm/UserInfo;
    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v18, v15

    move-wide v14, v8

    .end local v8    # "sessionId":J
    .end local v15    # "newUser":Landroid/content/pm/UserInfo;
    .local v14, "sessionId":J
    .local v18, "newUser":Landroid/content/pm/UserInfo;
    move-object v8, v13

    move-object/from16 v9, p7

    :try_start_53
    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/UserManagerService;->createUserInternalUncheckedNoTracing(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_66

    .line 3900
    .end local v18    # "newUser":Landroid/content/pm/UserInfo;
    .local v0, "newUser":Landroid/content/pm/UserInfo;
    nop

    .line 3902
    if-eqz v0, :cond_5d

    move/from16 v1, v16

    goto :goto_5f

    :cond_5d
    move/from16 v1, v17

    :goto_5f
    invoke-direct {v10, v14, v15, v12, v1}, Lcom/android/server/pm/UserManagerService;->logUserCreateJourneyFinish(JIZ)V

    .line 3903
    invoke-virtual {v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3900
    return-object v0

    .line 3902
    .end local v0    # "newUser":Landroid/content/pm/UserInfo;
    .restart local v18    # "newUser":Landroid/content/pm/UserInfo;
    :catchall_66
    move-exception v0

    move-object v1, v0

    if-eqz v18, :cond_6d

    move/from16 v0, v16

    goto :goto_6f

    :cond_6d
    move/from16 v0, v17

    :goto_6f
    invoke-direct {v10, v14, v15, v12, v0}, Lcom/android/server/pm/UserManagerService;->logUserCreateJourneyFinish(JIZ)V

    .line 3903
    invoke-virtual {v13}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3904
    throw v1
.end method

.method private createUserInternalUncheckedNoTracing(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .registers 37
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "parentId"    # I
    .param p5, "preCreate"    # Z
    .param p6, "disallowedPackages"    # [Ljava/lang/String;
    .param p7, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p8, "token"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    .line 3912
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    const/16 v6, 0x64

    move-object/from16 v7, p1

    invoke-direct {v1, v7, v6}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 3913
    .local v6, "truncatedName":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Lcom/android/server/pm/UserTypeDetails;

    .line 3914
    .local v14, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    const/4 v8, 0x0

    if-nez v14, :cond_39

    .line 3915
    const-string v9, "UserManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot create user of invalid user type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3916
    return-object v8

    .line 3918
    :cond_39
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    .line 3919
    .end local p2    # "userType":Ljava/lang/String;
    .local v15, "userType":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v0

    or-int v9, p3, v0

    .line 3920
    .end local p3    # "flags":I
    .local v9, "flags":I
    invoke-static {v9}, Lcom/android/server/pm/UserManagerService;->checkUserTypeConsistency(I)Z

    move-result v0

    if-nez v0, :cond_76

    .line 3921
    const-string v0, "UserManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot add user. Flags ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") and userTypeDetails ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") are inconsistent."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3923
    return-object v8

    .line 3925
    :cond_76
    and-int/lit16 v0, v9, 0x800

    if-eqz v0, :cond_9d

    .line 3926
    const-string v0, "UserManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot add user. Flags ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") indicated SYSTEM user, which cannot be created."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    return-object v8

    .line 3930
    :cond_9d
    invoke-virtual {v14}, Lcom/android/server/pm/UserTypeDetails;->isEnabled()Z

    move-result v0

    const/4 v10, 0x6

    if-nez v0, :cond_c0

    .line 3931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot add a user of disabled type "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "."

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 3936
    :cond_c0
    iget-object v11, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v11

    .line 3937
    :try_start_c3
    iget-boolean v0, v1, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    if-eqz v0, :cond_c9

    .line 3938
    or-int/lit16 v9, v9, 0x100

    .line 3940
    :cond_c9
    monitor-exit v11
    :try_end_ca
    .catchall {:try_start_c3 .. :try_end_ca} :catchall_434

    .line 3943
    if-nez v3, :cond_db

    if-gez v2, :cond_db

    invoke-static {v14}, Lcom/android/server/pm/UserManagerService;->isUserTypeEligibleForPreCreation(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 3944
    invoke-direct {v1, v15, v9, v6, v5}, Lcom/android/server/pm/UserManagerService;->convertPreCreatedUserIfPossible(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3946
    .local v0, "preCreatedUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_db

    .line 3947
    return-object v0

    .line 3951
    .end local v0    # "preCreatedUser":Landroid/content/pm/UserInfo;
    :cond_db
    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 3952
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 3953
    .local v16, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    invoke-interface/range {v16 .. v16}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryLow()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 3954
    const-string v0, "Cannot add user. Not enough space on disk."

    const/4 v11, 0x5

    invoke-direct {v1, v0, v11}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 3958
    :cond_f1
    invoke-virtual {v14}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v17

    .line 3959
    .local v17, "isProfile":Z
    invoke-static {v15}, Landroid/os/UserManager;->isUserTypeGuest(Ljava/lang/String;)Z

    move-result v18

    .line 3960
    .local v18, "isGuest":Z
    invoke-static {v15}, Landroid/os/UserManager;->isUserTypeRestricted(Ljava/lang/String;)Z

    move-result v19

    .line 3961
    .local v19, "isRestricted":Z
    invoke-static {v15}, Landroid/os/UserManager;->isUserTypeDemo(Ljava/lang/String;)Z

    move-result v20

    .line 3962
    .local v20, "isDemo":Z
    invoke-static {v15}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v21

    .line 3964
    .local v21, "isManagedProfile":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 3969
    .local v22, "ident":J
    :try_start_109
    iget-object v13, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_42b

    .line 3970
    const/4 v11, 0x0

    .line 3971
    .local v11, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    const/16 v0, -0x2710

    const/4 v12, 0x1

    if-eq v2, v0, :cond_141

    .line 3972
    :try_start_112
    iget-object v8, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_138

    .line 3973
    :try_start_115
    invoke-direct {v1, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v25

    move-object/from16 v11, v25

    .line 3974
    monitor-exit v8
    :try_end_11c
    .catchall {:try_start_115 .. :try_end_11c} :catchall_135

    .line 3975
    if-nez v11, :cond_141

    .line 3976
    :try_start_11e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find user data for parent user "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v12}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V
    :try_end_134
    .catchall {:try_start_11e .. :try_end_134} :catchall_138

    goto :goto_141

    .line 3974
    :catchall_135
    move-exception v0

    :try_start_136
    monitor-exit v8
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_135

    .end local v6    # "truncatedName":Ljava/lang/String;
    .end local v9    # "flags":I
    .end local v14    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .end local v15    # "userType":Ljava/lang/String;
    .end local v16    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v17    # "isProfile":Z
    .end local v18    # "isGuest":Z
    .end local v19    # "isRestricted":Z
    .end local v20    # "isDemo":Z
    .end local v21    # "isManagedProfile":Z
    .end local v22    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p4    # "parentId":I
    .end local p5    # "preCreate":Z
    .end local p6    # "disallowedPackages":[Ljava/lang/String;
    .end local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p8    # "token":Ljava/lang/Object;
    :try_start_137
    throw v0

    .line 4083
    .end local v11    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v6    # "truncatedName":Ljava/lang/String;
    .restart local v9    # "flags":I
    .restart local v14    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .restart local v15    # "userType":Ljava/lang/String;
    .restart local v16    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v17    # "isProfile":Z
    .restart local v18    # "isGuest":Z
    .restart local v19    # "isRestricted":Z
    .restart local v20    # "isDemo":Z
    .restart local v21    # "isManagedProfile":Z
    .restart local v22    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p4    # "parentId":I
    .restart local p5    # "preCreate":Z
    .restart local p6    # "disallowedPackages":[Ljava/lang/String;
    .restart local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p8    # "token":Ljava/lang/Object;
    :catchall_138
    move-exception v0

    move-object/from16 v12, p6

    move-object/from16 v27, v6

    move-object/from16 v26, v13

    goto/16 :goto_425

    .line 3981
    .restart local v11    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_141
    :goto_141
    if-nez v3, :cond_165

    invoke-direct {v1, v14}, Lcom/android/server/pm/UserManagerService;->canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v0

    if-nez v0, :cond_165

    .line 3982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot add more users of type "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ". Maximum number of that type already exists."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 3987
    :cond_165
    if-nez v18, :cond_176

    if-nez v21, :cond_176

    if-nez v20, :cond_176

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v0

    if-eqz v0, :cond_176

    .line 3991
    const-string v0, "Cannot add user. Maximum user limit is reached."

    invoke-direct {v1, v0, v10}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 3996
    :cond_176
    const/4 v0, 0x0

    if-eqz v17, :cond_19f

    invoke-virtual {v1, v15, v2, v0}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v8

    if-nez v8, :cond_19f

    .line 3997
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot add more profiles of type "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " for user "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 4003
    :cond_19f
    if-eqz v19, :cond_1ae

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    if-nez v0, :cond_1ae

    if-eqz v2, :cond_1ae

    .line 4005
    const-string v0, "Cannot add restricted profile - parent user must be owner"

    invoke-direct {v1, v0, v12}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 4009
    :cond_1ae
    if-eqz v19, :cond_1db

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 4010
    if-nez v11, :cond_1bd

    .line 4011
    const-string v0, "Cannot add restricted profile - parent user must be specified"

    invoke-direct {v1, v0, v12}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V

    .line 4015
    :cond_1bd
    iget-object v0, v11, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v0

    if-nez v0, :cond_1db

    .line 4016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot add restricted profile - profiles cannot be created for the specified parent user id "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v12}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(Ljava/lang/String;I)V
    :try_end_1db
    .catchall {:try_start_137 .. :try_end_1db} :catchall_138

    .line 4025
    :cond_1db
    const/high16 v0, 0x8000000

    and-int/2addr v0, v9

    if-eqz v0, :cond_1e3

    .line 4026
    const/16 v0, 0x6e

    goto :goto_1f7

    .line 4027
    :cond_1e3
    :try_start_1e3
    invoke-static {}, Lcom/android/server/pm/UserManagerServiceStub;->get()Lcom/android/server/pm/UserManagerServiceStub;

    move-result-object v0

    invoke-static {}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->getInstance()Lcom/miui/server/xspace/XSpaceManagerServiceStub;

    move-result-object v8

    .line 4028
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->checkAndGetXSpaceUserId(II)I

    move-result v8

    .line 4027
    invoke-interface {v0, v9, v8}, Lcom/android/server/pm/UserManagerServiceStub;->checkAndGetNewUserId(II)I

    move-result v0

    :goto_1f7
    move v10, v0

    .line 4029
    .local v10, "userId":I
    invoke-virtual {v1, v10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0
    :try_end_1fc
    .catchall {:try_start_1e3 .. :try_end_1fc} :catchall_41e

    if-eqz v0, :cond_223

    .line 4030
    :try_start_1fe
    const-string v0, "UserManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "user "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " is exist, we could not create same user"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    monitor-exit v13
    :try_end_21e
    .catchall {:try_start_1fe .. :try_end_21e} :catchall_138

    .line 4143
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4031
    const/4 v0, 0x0

    return-object v0

    .line 4033
    :cond_223
    :try_start_223
    const-string v0, "UserManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Creating user "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " of type "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4034
    const-string v0, "android.os.usertype.profile.MANAGED"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_24b
    .catchall {:try_start_223 .. :try_end_24b} :catchall_41e

    if-eqz v0, :cond_255

    .line 4035
    :try_start_24d
    const-string/jumbo v0, "persist.sys.profile_managed"

    const-string v8, "1"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_255
    .catchall {:try_start_24d .. :try_end_255} :catchall_138

    .line 4038
    :cond_255
    :try_start_255
    invoke-static {v10}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 4040
    iget-object v12, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_25f
    .catchall {:try_start_255 .. :try_end_25f} :catchall_41e

    .line 4042
    if-eqz v11, :cond_279

    :try_start_261
    iget-object v0, v11, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0
    :try_end_267
    .catchall {:try_start_261 .. :try_end_267} :catchall_26c

    if-eqz v0, :cond_279

    .line 4043
    or-int/lit16 v9, v9, 0x100

    goto :goto_279

    .line 4065
    :catchall_26c
    move-exception v0

    move-object/from16 v27, v6

    move v7, v10

    move-object v6, v11

    move-object/from16 v24, v12

    move-object/from16 v26, v13

    move-object/from16 v12, p6

    goto/16 :goto_41a

    .line 4049
    :cond_279
    :goto_279
    if-eqz v3, :cond_280

    .line 4050
    and-int/lit16 v0, v9, -0x101

    move/from16 v25, v0

    .end local v9    # "flags":I
    .local v0, "flags":I
    goto :goto_282

    .line 4049
    .end local v0    # "flags":I
    .restart local v9    # "flags":I
    :cond_280
    move/from16 v25, v9

    .line 4053
    .end local v9    # "flags":I
    .local v25, "flags":I
    :goto_282
    :try_start_282
    new-instance v0, Landroid/content/pm/UserInfo;
    :try_end_284
    .catchall {:try_start_282 .. :try_end_284} :catchall_40d

    const/16 v26, 0x0

    move-object v8, v0

    move v9, v10

    move v7, v10

    .end local v10    # "userId":I
    .local v7, "userId":I
    move-object v10, v6

    move-object/from16 v27, v6

    move-object v6, v11

    .end local v11    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .local v6, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .local v27, "truncatedName":Ljava/lang/String;
    move-object/from16 v11, v26

    move-object/from16 v24, v12

    move/from16 v12, v25

    move-object/from16 v26, v13

    move-object v13, v15

    :try_start_296
    invoke-direct/range {v8 .. v13}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v8, v0

    .line 4054
    .local v8, "userInfo":Landroid/content/pm/UserInfo;
    iget v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    add-int/lit8 v9, v0, 0x1

    iput v9, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iput v0, v8, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 4055
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getCreationTime()J

    move-result-wide v9

    iput-wide v9, v8, Landroid/content/pm/UserInfo;->creationTime:J

    .line 4056
    const/4 v0, 0x1

    iput-boolean v0, v8, Landroid/content/pm/UserInfo;->partial:Z

    .line 4057
    iput-boolean v3, v8, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 4058
    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, v8, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 4059
    invoke-virtual {v14}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-eqz v0, :cond_2c1

    const/16 v0, -0x2710

    if-eq v2, v0, :cond_2c1

    .line 4060
    invoke-virtual {v1, v2, v15}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(ILjava/lang/String;)I

    move-result v0

    iput v0, v8, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 4062
    :cond_2c1
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    move-object v9, v0

    .line 4063
    .local v9, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object v8, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4064
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4065
    monitor-exit v24
    :try_end_2cf
    .catchall {:try_start_296 .. :try_end_2cf} :catchall_407

    .line 4066
    :try_start_2cf
    invoke-direct {v1, v9}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4067
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 4068
    if-eqz v6, :cond_30e

    .line 4069
    if-eqz v17, :cond_2f3

    .line 4070
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v10, -0x2710

    if-ne v0, v10, :cond_2ec

    .line 4071
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v10, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    iput v10, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 4072
    invoke-direct {v1, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4074
    :cond_2ec
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v0, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    goto :goto_30e

    .line 4075
    :cond_2f3
    if-eqz v19, :cond_30e

    .line 4076
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    const/16 v10, -0x2710

    if-ne v0, v10, :cond_308

    .line 4077
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v10, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    iput v10, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 4078
    invoke-direct {v1, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4080
    :cond_308
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v0, v8, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 4083
    .end local v6    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_30e
    :goto_30e
    monitor-exit v26
    :try_end_30f
    .catchall {:try_start_2cf .. :try_end_30f} :catchall_401

    .line 4085
    :try_start_30f
    const-string v0, "createUserKey"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4086
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    move-object v6, v0

    .line 4087
    .local v6, "storage":Landroid/os/storage/StorageManager;
    iget v0, v8, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v10

    invoke-virtual {v6, v7, v0, v10}, Landroid/os/storage/StorageManager;->createUserKey(IIZ)V

    .line 4088
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4090
    const-string/jumbo v0, "prepareUserData"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4091
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    iget v10, v8, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v11, 0x3

    invoke-virtual {v0, v7, v10, v11}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 4093
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4095
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 4096
    invoke-virtual {v0, v15}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    move-object v10, v0

    .line 4097
    .local v10, "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "PM.createNewUser"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4098
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    :try_end_34a
    .catchall {:try_start_30f .. :try_end_34a} :catchall_3fb

    move-object/from16 v12, p6

    :try_start_34c
    invoke-virtual {v0, v7, v10, v12}, Lcom/android/server/pm/PackageManagerService;->createNewUser(ILjava/util/Set;[Ljava/lang/String;)V

    .line 4099
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4101
    const/4 v0, 0x0

    iput-boolean v0, v8, Landroid/content/pm/UserInfo;->partial:Z

    .line 4102
    iget-object v11, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_358
    .catchall {:try_start_34c .. :try_end_358} :catchall_3f9

    .line 4103
    :try_start_358
    invoke-direct {v1, v9}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4104
    monitor-exit v11
    :try_end_35c
    .catchall {:try_start_358 .. :try_end_35c} :catchall_3f6

    .line 4105
    :try_start_35c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 4107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v11, v0

    .line 4108
    .local v11, "restrictions":Landroid/os/Bundle;
    if-eqz v18, :cond_374

    .line 4110
    iget-object v13, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v13
    :try_end_36a
    .catchall {:try_start_35c .. :try_end_36a} :catchall_3f9

    .line 4111
    :try_start_36a
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4112
    monitor-exit v13

    goto :goto_377

    :catchall_371
    move-exception v0

    monitor-exit v13
    :try_end_373
    .catchall {:try_start_36a .. :try_end_373} :catchall_371

    .end local v14    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .end local v15    # "userType":Ljava/lang/String;
    .end local v16    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v17    # "isProfile":Z
    .end local v18    # "isGuest":Z
    .end local v19    # "isRestricted":Z
    .end local v20    # "isDemo":Z
    .end local v21    # "isManagedProfile":Z
    .end local v22    # "ident":J
    .end local v25    # "flags":I
    .end local v27    # "truncatedName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p4    # "parentId":I
    .end local p5    # "preCreate":Z
    .end local p6    # "disallowedPackages":[Ljava/lang/String;
    .end local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p8    # "token":Ljava/lang/Object;
    :try_start_373
    throw v0

    .line 4114
    .restart local v14    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .restart local v15    # "userType":Ljava/lang/String;
    .restart local v16    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v17    # "isProfile":Z
    .restart local v18    # "isGuest":Z
    .restart local v19    # "isRestricted":Z
    .restart local v20    # "isDemo":Z
    .restart local v21    # "isManagedProfile":Z
    .restart local v22    # "ident":J
    .restart local v25    # "flags":I
    .restart local v27    # "truncatedName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p4    # "parentId":I
    .restart local p5    # "preCreate":Z
    .restart local p6    # "disallowedPackages":[Ljava/lang/String;
    .restart local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p8    # "token":Ljava/lang/Object;
    :cond_374
    invoke-virtual {v14, v11}, Lcom/android/server/pm/UserTypeDetails;->addDefaultRestrictionsTo(Landroid/os/Bundle;)V

    .line 4116
    :goto_377
    iget-object v13, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_37a
    .catchall {:try_start_373 .. :try_end_37a} :catchall_3f9

    .line 4117
    :try_start_37a
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, v7, v11}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 4118
    monitor-exit v13
    :try_end_380
    .catchall {:try_start_37a .. :try_end_380} :catchall_3f3

    .line 4120
    :try_start_380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PM.onNewUserCreated-"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4121
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v13, 0x0

    invoke-virtual {v0, v7, v13}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(IZ)V

    .line 4122
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4123
    invoke-direct {v1, v14, v7}, Lcom/android/server/pm/UserManagerService;->applyDefaultUserSettings(Lcom/android/server/pm/UserTypeDetails;I)V

    .line 4124
    invoke-direct {v1, v7, v14, v11, v2}, Lcom/android/server/pm/UserManagerService;->setDefaultCrossProfileIntentFilters(ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V

    .line 4126
    if-eqz v3, :cond_3eb

    .line 4131
    const-string v0, "UserManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting pre-created user "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0
    :try_end_3c8
    .catchall {:try_start_380 .. :try_end_3c8} :catchall_3f9

    move-object v2, v0

    .line 4134
    .local v2, "am":Landroid/app/IActivityManager;
    :try_start_3c9
    invoke-interface {v2, v7}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_3cc
    .catch Landroid/os/RemoteException; {:try_start_3c9 .. :try_end_3cc} :catch_3cd
    .catchall {:try_start_3c9 .. :try_end_3cc} :catchall_3f9

    .line 4137
    goto :goto_3ea

    .line 4135
    :catch_3cd
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 4136
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3d0
    const-string v13, "UserManagerService"

    move-object/from16 p2, v2

    .end local v2    # "am":Landroid/app/IActivityManager;
    .local p2, "am":Landroid/app/IActivityManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not start pre-created user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4138
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local p2    # "am":Landroid/app/IActivityManager;
    :goto_3ea
    goto :goto_3ee

    .line 4139
    :cond_3eb
    invoke-direct {v1, v8, v5}, Lcom/android/server/pm/UserManagerService;->dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    :try_end_3ee
    .catchall {:try_start_3d0 .. :try_end_3ee} :catchall_3f9

    .line 4143
    .end local v6    # "storage":Landroid/os/storage/StorageManager;
    .end local v10    # "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "restrictions":Landroid/os/Bundle;
    :goto_3ee
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4144
    nop

    .line 4158
    return-object v8

    .line 4118
    .restart local v6    # "storage":Landroid/os/storage/StorageManager;
    .restart local v10    # "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "restrictions":Landroid/os/Bundle;
    :catchall_3f3
    move-exception v0

    :try_start_3f4
    monitor-exit v13
    :try_end_3f5
    .catchall {:try_start_3f4 .. :try_end_3f5} :catchall_3f3

    .end local v14    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .end local v15    # "userType":Ljava/lang/String;
    .end local v16    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v17    # "isProfile":Z
    .end local v18    # "isGuest":Z
    .end local v19    # "isRestricted":Z
    .end local v20    # "isDemo":Z
    .end local v21    # "isManagedProfile":Z
    .end local v22    # "ident":J
    .end local v25    # "flags":I
    .end local v27    # "truncatedName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p4    # "parentId":I
    .end local p5    # "preCreate":Z
    .end local p6    # "disallowedPackages":[Ljava/lang/String;
    .end local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p8    # "token":Ljava/lang/Object;
    :try_start_3f5
    throw v0
    :try_end_3f6
    .catchall {:try_start_3f5 .. :try_end_3f6} :catchall_3f9

    .line 4104
    .end local v11    # "restrictions":Landroid/os/Bundle;
    .restart local v14    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .restart local v15    # "userType":Ljava/lang/String;
    .restart local v16    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v17    # "isProfile":Z
    .restart local v18    # "isGuest":Z
    .restart local v19    # "isRestricted":Z
    .restart local v20    # "isDemo":Z
    .restart local v21    # "isManagedProfile":Z
    .restart local v22    # "ident":J
    .restart local v25    # "flags":I
    .restart local v27    # "truncatedName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p4    # "parentId":I
    .restart local p5    # "preCreate":Z
    .restart local p6    # "disallowedPackages":[Ljava/lang/String;
    .restart local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p8    # "token":Ljava/lang/Object;
    :catchall_3f6
    move-exception v0

    :try_start_3f7
    monitor-exit v11
    :try_end_3f8
    .catchall {:try_start_3f7 .. :try_end_3f8} :catchall_3f6

    .end local v14    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .end local v15    # "userType":Ljava/lang/String;
    .end local v16    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v17    # "isProfile":Z
    .end local v18    # "isGuest":Z
    .end local v19    # "isRestricted":Z
    .end local v20    # "isDemo":Z
    .end local v21    # "isManagedProfile":Z
    .end local v22    # "ident":J
    .end local v25    # "flags":I
    .end local v27    # "truncatedName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p4    # "parentId":I
    .end local p5    # "preCreate":Z
    .end local p6    # "disallowedPackages":[Ljava/lang/String;
    .end local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p8    # "token":Ljava/lang/Object;
    :try_start_3f8
    throw v0
    :try_end_3f9
    .catchall {:try_start_3f8 .. :try_end_3f9} :catchall_3f9

    .line 4143
    .end local v6    # "storage":Landroid/os/storage/StorageManager;
    .end local v7    # "userId":I
    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v10    # "userTypeInstallablePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .restart local v15    # "userType":Ljava/lang/String;
    .restart local v16    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v17    # "isProfile":Z
    .restart local v18    # "isGuest":Z
    .restart local v19    # "isRestricted":Z
    .restart local v20    # "isDemo":Z
    .restart local v21    # "isManagedProfile":Z
    .restart local v22    # "ident":J
    .restart local v25    # "flags":I
    .restart local v27    # "truncatedName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p4    # "parentId":I
    .restart local p5    # "preCreate":Z
    .restart local p6    # "disallowedPackages":[Ljava/lang/String;
    .restart local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p8    # "token":Ljava/lang/Object;
    :catchall_3f9
    move-exception v0

    goto :goto_3fe

    :catchall_3fb
    move-exception v0

    move-object/from16 v12, p6

    :goto_3fe
    move/from16 v9, v25

    goto :goto_430

    .line 4083
    :catchall_401
    move-exception v0

    move-object/from16 v12, p6

    move/from16 v9, v25

    goto :goto_425

    .line 4065
    .local v6, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v7    # "userId":I
    :catchall_407
    move-exception v0

    move-object/from16 v12, p6

    move/from16 v9, v25

    goto :goto_41a

    .end local v7    # "userId":I
    .end local v27    # "truncatedName":Ljava/lang/String;
    .local v6, "truncatedName":Ljava/lang/String;
    .local v10, "userId":I
    .local v11, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_40d
    move-exception v0

    move-object/from16 v27, v6

    move v7, v10

    move-object v6, v11

    move-object/from16 v24, v12

    move-object/from16 v26, v13

    move-object/from16 v12, p6

    move/from16 v9, v25

    .end local v10    # "userId":I
    .end local v11    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v25    # "flags":I
    .local v6, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v7    # "userId":I
    .local v9, "flags":I
    .restart local v27    # "truncatedName":Ljava/lang/String;
    :goto_41a
    :try_start_41a
    monitor-exit v24
    :try_end_41b
    .catchall {:try_start_41a .. :try_end_41b} :catchall_41c

    .end local v9    # "flags":I
    .end local v14    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .end local v15    # "userType":Ljava/lang/String;
    .end local v16    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v17    # "isProfile":Z
    .end local v18    # "isGuest":Z
    .end local v19    # "isRestricted":Z
    .end local v20    # "isDemo":Z
    .end local v21    # "isManagedProfile":Z
    .end local v22    # "ident":J
    .end local v27    # "truncatedName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p4    # "parentId":I
    .end local p5    # "preCreate":Z
    .end local p6    # "disallowedPackages":[Ljava/lang/String;
    .end local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p8    # "token":Ljava/lang/Object;
    :try_start_41b
    throw v0

    .restart local v9    # "flags":I
    .restart local v14    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .restart local v15    # "userType":Ljava/lang/String;
    .restart local v16    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v17    # "isProfile":Z
    .restart local v18    # "isGuest":Z
    .restart local v19    # "isRestricted":Z
    .restart local v20    # "isDemo":Z
    .restart local v21    # "isManagedProfile":Z
    .restart local v22    # "ident":J
    .restart local v27    # "truncatedName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p4    # "parentId":I
    .restart local p5    # "preCreate":Z
    .restart local p6    # "disallowedPackages":[Ljava/lang/String;
    .restart local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p8    # "token":Ljava/lang/Object;
    :catchall_41c
    move-exception v0

    goto :goto_41a

    .line 4083
    .end local v7    # "userId":I
    .end local v27    # "truncatedName":Ljava/lang/String;
    .local v6, "truncatedName":Ljava/lang/String;
    :catchall_41e
    move-exception v0

    move-object/from16 v12, p6

    move-object/from16 v27, v6

    move-object/from16 v26, v13

    .end local v6    # "truncatedName":Ljava/lang/String;
    .restart local v27    # "truncatedName":Ljava/lang/String;
    :goto_425
    monitor-exit v26
    :try_end_426
    .catchall {:try_start_41b .. :try_end_426} :catchall_429

    .end local v9    # "flags":I
    .end local v14    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .end local v15    # "userType":Ljava/lang/String;
    .end local v16    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v17    # "isProfile":Z
    .end local v18    # "isGuest":Z
    .end local v19    # "isRestricted":Z
    .end local v20    # "isDemo":Z
    .end local v21    # "isManagedProfile":Z
    .end local v22    # "ident":J
    .end local v27    # "truncatedName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p4    # "parentId":I
    .end local p5    # "preCreate":Z
    .end local p6    # "disallowedPackages":[Ljava/lang/String;
    .end local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p8    # "token":Ljava/lang/Object;
    :try_start_426
    throw v0
    :try_end_427
    .catchall {:try_start_426 .. :try_end_427} :catchall_427

    .line 4143
    .restart local v9    # "flags":I
    .restart local v14    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .restart local v15    # "userType":Ljava/lang/String;
    .restart local v16    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v17    # "isProfile":Z
    .restart local v18    # "isGuest":Z
    .restart local v19    # "isRestricted":Z
    .restart local v20    # "isDemo":Z
    .restart local v21    # "isManagedProfile":Z
    .restart local v22    # "ident":J
    .restart local v27    # "truncatedName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p4    # "parentId":I
    .restart local p5    # "preCreate":Z
    .restart local p6    # "disallowedPackages":[Ljava/lang/String;
    .restart local p7    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p8    # "token":Ljava/lang/Object;
    :catchall_427
    move-exception v0

    goto :goto_430

    .line 4083
    :catchall_429
    move-exception v0

    goto :goto_425

    .line 4143
    .end local v27    # "truncatedName":Ljava/lang/String;
    .restart local v6    # "truncatedName":Ljava/lang/String;
    :catchall_42b
    move-exception v0

    move-object/from16 v12, p6

    move-object/from16 v27, v6

    .end local v6    # "truncatedName":Ljava/lang/String;
    .restart local v27    # "truncatedName":Ljava/lang/String;
    :goto_430
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4144
    throw v0

    .line 3940
    .end local v16    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v17    # "isProfile":Z
    .end local v18    # "isGuest":Z
    .end local v19    # "isRestricted":Z
    .end local v20    # "isDemo":Z
    .end local v21    # "isManagedProfile":Z
    .end local v22    # "ident":J
    .end local v27    # "truncatedName":Ljava/lang/String;
    .restart local v6    # "truncatedName":Ljava/lang/String;
    :catchall_434
    move-exception v0

    move-object/from16 v12, p6

    move-object/from16 v27, v6

    .end local v6    # "truncatedName":Ljava/lang/String;
    .restart local v27    # "truncatedName":Ljava/lang/String;
    :goto_439
    :try_start_439
    monitor-exit v11
    :try_end_43a
    .catchall {:try_start_439 .. :try_end_43a} :catchall_43b

    throw v0

    :catchall_43b
    move-exception v0

    goto :goto_439
.end method

.method private static debug(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .line 6421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6423
    return-void
.end method

.method private dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .registers 7
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "token"    # Ljava/lang/Object;

    .line 4325
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4326
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 4327
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;

    invoke-interface {v2, p1, p2}, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;->onUserCreated(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    .line 4326
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4329
    .end local v1    # "i":I
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_82

    .line 4332
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4333
    .local v0, "addedIntent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4334
    const-string v1, "android.intent.extra.user_handle"

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4337
    const-string v1, "android.intent.extra.USER"

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4338
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_USERS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4340
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string/jumbo v2, "users_guest_created"

    goto :goto_5b

    .line 4341
    :cond_4e
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v2

    if-eqz v2, :cond_58

    const-string/jumbo v2, "users_demo_created"

    goto :goto_5b

    :cond_58
    const-string/jumbo v2, "users_user_created"

    :goto_5b
    nop

    .line 4340
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4343
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-nez v1, :cond_81

    .line 4345
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_switcher_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_81

    .line 4347
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_switcher_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4351
    :cond_81
    return-void

    .line 4329
    .end local v0    # "addedIntent":Landroid/content/Intent;
    :catchall_82
    move-exception v1

    :try_start_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v1
.end method

.method private static dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "nowTime"    # J
    .param p4, "time"    # J

    .line 5988
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_c

    .line 5989
    const-string v0, "<unknown>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d

    .line 5991
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5992
    sub-long v0, p2, p4

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 5993
    const-string v0, " ago"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5994
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5996
    :goto_1d
    return-void
.end method

.method private dumpUser(Ljava/io/PrintWriter;ILjava/lang/StringBuilder;JJ)V
    .registers 21
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "userId"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;
    .param p4, "now"    # J
    .param p6, "nowRealtime"    # J

    .line 5876
    move-object v9, p0

    move-object v10, p1

    const/4 v0, -0x2

    move v1, p2

    if-ne v1, v0, :cond_1c

    .line 5877
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 5878
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 5879
    .local v0, "amInternal":Landroid/app/ActivityManagerInternal;
    if-nez v0, :cond_16

    .line 5880
    const-string v2, "Cannot determine current user"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5881
    return-void

    .line 5883
    :cond_16
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v1

    move v11, v1

    .end local p2    # "userId":I
    .local v1, "userId":I
    goto :goto_1d

    .line 5876
    .end local v0    # "amInternal":Landroid/app/ActivityManagerInternal;
    .end local v1    # "userId":I
    .restart local p2    # "userId":I
    :cond_1c
    move v11, v1

    .line 5886
    .end local p2    # "userId":I
    .local v11, "userId":I
    :goto_1d
    iget-object v12, v9, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v12

    .line 5887
    :try_start_20
    iget-object v0, v9, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 5888
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v0, :cond_48

    .line 5889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5890
    monitor-exit v12

    return-void

    .line 5892
    :cond_48
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/UserManagerService;->dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V

    .line 5893
    .end local v0    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v12

    .line 5894
    return-void

    .line 5893
    :catchall_56
    move-exception v0

    monitor-exit v12
    :try_end_58
    .catchall {:try_start_20 .. :try_end_58} :catchall_56

    throw v0
.end method

.method private dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V
    .registers 21
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;
    .param p3, "tempStringBuilder"    # Ljava/lang/StringBuilder;
    .param p4, "now"    # J
    .param p6, "nowRealtime"    # J

    .line 5899
    move-object v1, p0

    move-object v8, p1

    move-object v9, p2

    iget-object v10, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5900
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    .line 5901
    .local v11, "userId":I
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5902
    const-string v0, " serialNo="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v10, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5903
    const-string v0, " isPrimary="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5904
    iget v0, v10, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v2, :cond_3b

    iget v0, v10, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_3b

    .line 5906
    const-string v0, " parentId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v10, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5909
    :cond_3b
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 5910
    const-string v0, " <removing> "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5912
    :cond_48
    iget-boolean v0, v10, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v0, :cond_51

    .line 5913
    const-string v0, " <partial>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5915
    :cond_51
    iget-boolean v0, v10, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v0, :cond_5a

    .line 5916
    const-string v0, " <pre-created>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5918
    :cond_5a
    iget-boolean v0, v10, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v0, :cond_63

    .line 5919
    const-string v0, " <converted>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5921
    :cond_63
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5922
    const-string v0, "    Type: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5923
    const-string v0, "    Flags: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v10, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5924
    iget v0, v10, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v0}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5925
    const-string v0, "    State: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5927
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v2

    .line 5928
    :try_start_95
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    const/4 v3, -0x1

    invoke-virtual {v0, v11, v3}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result v0

    move v12, v0

    .line 5929
    .local v12, "state":I
    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_95 .. :try_end_9e} :catchall_1bd

    .line 5930
    invoke-static {v12}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5931
    const-string v0, "    Created: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5932
    iget-wide v6, v10, Landroid/content/pm/UserInfo;->creationTime:J

    move-object v2, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 5934
    const-string v0, "    Last logged in: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5935
    iget-wide v6, v10, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 5937
    const-string v0, "    Last logged in fingerprint: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5938
    iget-object v0, v10, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5940
    const-string v0, "    Start time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5941
    iget-wide v6, v9, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    move-wide/from16 v4, p6

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 5943
    const-string v0, "    Unlock time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5944
    iget-wide v6, v9, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 5946
    const-string v0, "    Has profile owner: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5947
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5948
    const-string v0, "    Restrictions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5949
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5950
    :try_start_f4
    const-string v0, "      "

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v4, v10, Landroid/content/pm/UserInfo;->id:I

    .line 5951
    invoke-virtual {v2, v4}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    .line 5950
    invoke-static {p1, v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5952
    const-string v0, "    Device policy global restrictions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5953
    const-string v0, "      "

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v4, v10, Landroid/content/pm/UserInfo;->id:I

    .line 5955
    invoke-virtual {v2, v4}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    .line 5953
    invoke-static {p1, v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5956
    const-string v0, "    Device policy local restrictions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5957
    iget v0, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v0

    const-string v2, "      "

    .line 5958
    invoke-virtual {v0, p1, v2}, Lcom/android/server/pm/RestrictionsSet;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5959
    const-string v0, "    Effective restrictions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5960
    const-string v0, "      "

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v4, v10, Landroid/content/pm/UserInfo;->id:I

    .line 5962
    invoke-virtual {v2, v4}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    .line 5960
    invoke-static {p1, v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5963
    monitor-exit v3
    :try_end_136
    .catchall {:try_start_f4 .. :try_end_136} :catchall_1ba

    .line 5965
    iget-object v0, v9, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v0, :cond_155

    .line 5966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v9, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5967
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5970
    :cond_155
    iget-object v0, v9, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v0, :cond_19f

    .line 5971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Seed account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v9, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5972
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5973
    iget-object v0, v9, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_193

    .line 5974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         account type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v9, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5975
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5977
    :cond_193
    iget-object v0, v9, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_19f

    .line 5978
    const-string v0, "         account options exist"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5979
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5983
    :cond_19f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Ignore errors preparing storage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5984
    invoke-virtual {p2}, Lcom/android/server/pm/UserManagerService$UserData;->getIgnorePrepareStorageErrors()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5983
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5985
    return-void

    .line 5963
    :catchall_1ba
    move-exception v0

    :try_start_1bb
    monitor-exit v3
    :try_end_1bc
    .catchall {:try_start_1bb .. :try_end_1bc} :catchall_1ba

    throw v0

    .line 5929
    .end local v12    # "state":I
    :catchall_1bd
    move-exception v0

    :try_start_1be
    monitor-exit v2
    :try_end_1bf
    .catchall {:try_start_1be .. :try_end_1bf} :catchall_1bd

    throw v0
.end method

.method private enforceUserRestriction(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    .line 6381
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 6382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_21
    const-string v1, ""

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is enabled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6384
    .local v0, "errorMessage":Ljava/lang/String;
    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6385
    new-instance v1, Landroid/os/UserManager$CheckedUserOperationException;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 6388
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_41
    return-void
.end method

.method private ensureCanModifyQuietMode(Ljava/lang/String;IIZZ)V
    .registers 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "targetUserId"    # I
    .param p4, "startIntent"    # Z
    .param p5, "dontAskCredential"    # Z

    .line 1180
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->verifyCallingPackage(Ljava/lang/String;I)V

    .line 1182
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1183
    return-void

    .line 1185
    :cond_a
    if-nez p4, :cond_4b

    .line 1189
    if-nez p5, :cond_43

    .line 1193
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1197
    const-string v0, "android.permission.MODIFY_QUIET_MODE"

    invoke-static {v0, p2}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    .line 1199
    .local v0, "hasModifyQuietModePermission":Z
    if-eqz v0, :cond_21

    .line 1200
    return-void

    .line 1203
    :cond_21
    const-class v1, Landroid/content/pm/ShortcutServiceInternal;

    .line 1204
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutServiceInternal;

    .line 1205
    .local v1, "shortcutInternal":Landroid/content/pm/ShortcutServiceInternal;
    if-eqz v1, :cond_33

    .line 1206
    nop

    .line 1207
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/ShortcutServiceInternal;->isForegroundDefaultLauncher(Ljava/lang/String;I)Z

    move-result v2

    .line 1208
    .local v2, "isForegroundLauncher":Z
    if-eqz v2, :cond_33

    .line 1209
    return-void

    .line 1212
    .end local v2    # "isForegroundLauncher":Z
    :cond_33
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Can\'t modify quiet mode, caller is neither foreground default launcher nor has MANAGE_USERS/MODIFY_QUIET_MODE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1194
    .end local v0    # "hasModifyQuietModePermission":Z
    .end local v1    # "shortcutInternal":Landroid/content/pm/ShortcutServiceInternal;
    :cond_3b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MANAGE_USERS permission is required to modify quiet mode for a different profile group."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1190
    :cond_43
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MANAGE_USERS permission is required to disable quiet mode without credentials."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1186
    :cond_4b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MANAGE_USERS permission is required to start intent after disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fallbackToSingleUserLP()V
    .registers 12

    .line 3293
    const/16 v0, 0x813

    .line 3296
    .local v0, "flags":I
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3297
    const-string v1, "android.os.usertype.system.HEADLESS"

    goto :goto_d

    :cond_b
    const-string v1, "android.os.usertype.full.SYSTEM"

    .line 3298
    .local v1, "systemUserType":Ljava/lang/String;
    :goto_d
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserTypeDetails;

    invoke-virtual {v2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v2

    or-int/2addr v0, v2

    .line 3299
    new-instance v8, Landroid/content/pm/UserInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    move v6, v0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3300
    .local v2, "system":Landroid/content/pm/UserInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 3301
    .local v3, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const/16 v4, 0xa

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 3302
    const/16 v4, 0x9

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 3303
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeVersion()I

    move-result v4

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    .line 3305
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3307
    .local v4, "restrictions":Landroid/os/Bundle;
    const/4 v5, 0x0

    :try_start_3d
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107003c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 3309
    .local v6, "defaultFirstUserRestrictions":[Ljava/lang/String;
    array-length v7, v6

    move v8, v5

    :goto_4c
    if-ge v8, v7, :cond_5d

    aget-object v9, v6, v8

    .line 3310
    .local v9, "userRestriction":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5a

    .line 3311
    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_5a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_5a} :catch_5e

    .line 3309
    .end local v9    # "userRestriction":Ljava/lang/String;
    :cond_5a
    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    .line 3316
    .end local v6    # "defaultFirstUserRestrictions":[Ljava/lang/String;
    :cond_5d
    goto :goto_66

    .line 3314
    :catch_5e
    move-exception v6

    .line 3315
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v7, "UserManagerService"

    const-string v8, "Couldn\'t find resource: config_defaultFirstUserRestrictions"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3318
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_66
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_79

    .line 3319
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3320
    :try_start_6f
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v7, v5, v4}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 3322
    monitor-exit v6

    goto :goto_79

    :catchall_76
    move-exception v5

    monitor-exit v6
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_76

    throw v5

    .line 3325
    :cond_79
    :goto_79
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 3326
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 3328
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3329
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 3330
    return-void
.end method

.method private finishRemoveUser(I)V
    .registers 16
    .param p1, "userId"    # I

    .line 4806
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishRemoveUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4809
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4810
    :try_start_1b
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4811
    .local v1, "user":Landroid/content/pm/UserInfo;
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_a6

    .line 4812
    if-eqz v1, :cond_4d

    iget-boolean v0, v1, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v0, :cond_4d

    .line 4813
    const-string v0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing a pre-created user with user id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4815
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    .line 4816
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    .line 4817
    return-void

    .line 4820
    :cond_4d
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 4821
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_51
    :try_start_51
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_67

    .line 4822
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;

    invoke-interface {v3, v1}, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;->onUserRemoved(Landroid/content/pm/UserInfo;)V

    .line 4821
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 4824
    .end local v0    # "i":I
    :cond_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_51 .. :try_end_68} :catchall_a3

    .line 4828
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4830
    .local v2, "ident":J
    :try_start_6c
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4831
    .local v0, "removedIntent":Landroid/content/Intent;
    const/high16 v4, 0x1000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4832
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4835
    const-string v4, "android.intent.extra.USER"

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4836
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "android.permission.MANAGE_USERS"

    new-instance v9, Lcom/android/server/pm/UserManagerService$7;

    invoke-direct {v9, p0, p1}, Lcom/android/server/pm/UserManagerService$7;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v0

    invoke-virtual/range {v5 .. v13}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_99
    .catchall {:try_start_6c .. :try_end_99} :catchall_9e

    .line 4860
    .end local v0    # "removedIntent":Landroid/content/Intent;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4861
    nop

    .line 4862
    return-void

    .line 4860
    :catchall_9e
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4861
    throw v0

    .line 4824
    .end local v2    # "ident":J
    :catchall_a3
    move-exception v0

    :try_start_a4
    monitor-exit v2
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw v0

    .line 4811
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :catchall_a6
    move-exception v1

    :try_start_a7
    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v1
.end method

.method private getAliveUsersExcludingGuestsCountLU()I
    .registers 7

    .line 2642
    const/4 v0, 0x0

    .line 2643
    .local v0, "aliveUserCount":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2645
    .local v1, "totalUserCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_2d

    .line 2646
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2647
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_2a

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v4, :cond_2a

    .line 2648
    add-int/lit8 v0, v0, 0x1

    .line 2645
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2651
    .end local v2    # "i":I
    :cond_2d
    return v0
.end method

.method private getCreationTime()J
    .registers 5

    .line 4319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4320
    .local v0, "now":J
    const-wide v2, 0xdc46c32800L

    cmp-long v2, v0, v2

    if-lez v2, :cond_f

    move-wide v2, v0

    goto :goto_11

    :cond_f
    const-wide/16 v2, 0x0

    :goto_11
    return-wide v2
.end method

.method private getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;
    .registers 4
    .param p1, "targetUserId"    # I

    .line 2122
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/RestrictionsSet;

    .line 2123
    .local v0, "result":Lcom/android/server/pm/RestrictionsSet;
    if-nez v0, :cond_15

    .line 2124
    new-instance v1, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v1}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    move-object v0, v1

    .line 2125
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2127
    :cond_15
    return-object v0
.end method

.method private getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2

    .line 6524
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_e

    .line 6525
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 6526
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 6528
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object v0
.end method

.method private getEffectiveUserRestrictions(I)Landroid/os/Bundle;
    .registers 5
    .param p1, "userId"    # I

    .line 2157
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2158
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 2159
    .local v1, "restrictions":Landroid/os/Bundle;
    if-nez v1, :cond_15

    .line 2160
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    .line 2161
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 2163
    :cond_15
    monitor-exit v0

    return-object v1

    .line 2164
    .end local v1    # "restrictions":Landroid/os/Bundle;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private getGuestName()Ljava/lang/String;
    .registers 3

    .line 3337
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v1, 0x1040465

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .registers 2

    .line 616
    const-class v0, Lcom/android/server/pm/UserManagerService;

    monitor-enter v0

    .line 617
    :try_start_3
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v0

    return-object v1

    .line 618
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static getMaxUsersOfTypePerParent(Lcom/android/server/pm/UserTypeDetails;)I
    .registers 3
    .param p0, "userTypeDetails"    # Lcom/android/server/pm/UserTypeDetails;

    .line 6444
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowedPerParent()I

    move-result v0

    .line 6445
    .local v0, "defaultMax":I
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_9

    .line 6446
    return v0

    .line 6448
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 6449
    const-string/jumbo v1, "persist.sys.max_profiles"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 6452
    :cond_17
    return v0
.end method

.method private getNumberOfUsersOfType(Ljava/lang/String;)I
    .registers 9
    .param p1, "userType"    # Ljava/lang/String;

    .line 2527
    const/4 v0, 0x0

    .line 2528
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2529
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2530
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_36

    .line 2531
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2532
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v5, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_33

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 2534
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_33

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v5, :cond_33

    .line 2536
    add-int/lit8 v0, v0, 0x1

    .line 2530
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2539
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_36
    monitor-exit v1

    .line 2540
    return v0

    .line 2539
    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_38

    throw v2
.end method

.method private getOwnerName()Ljava/lang/String;
    .registers 2

    .line 3333
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 6516
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 6517
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 6519
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method private getPreCreatedUserLU(Ljava/lang/String;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 7
    .param p1, "userType"    # Ljava/lang/String;

    .line 4363
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4364
    .local v0, "userSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_5c

    .line 4365
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 4367
    .local v2, "user":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v3, :cond_59

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v3, :cond_59

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v3, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 4368
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_58

    .line 4369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found pre-created user of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but it\'s not initialized yet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4370
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4369
    const-string v4, "UserManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4371
    goto :goto_59

    .line 4373
    :cond_58
    return-object v2

    .line 4364
    .end local v2    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_59
    :goto_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4376
    .end local v1    # "i":I
    :cond_5c
    const/4 v1, 0x0

    return-object v1
.end method

.method private getProfileIdsLU(ILjava/lang/String;Z)Landroid/util/IntArray;
    .registers 11
    .param p1, "userId"    # I
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "enabledOnly"    # Z

    .line 980
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 981
    .local v0, "user":Landroid/content/pm/UserInfo;
    new-instance v1, Landroid/util/IntArray;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 982
    .local v1, "result":Landroid/util/IntArray;
    if-nez v0, :cond_12

    .line 984
    return-object v1

    .line 986
    :cond_12
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 987
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v2, :cond_58

    .line 988
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 989
    .local v4, "profile":Landroid/content/pm/UserInfo;
    invoke-static {v0, v4}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 990
    goto :goto_55

    .line 992
    :cond_2c
    if-eqz p3, :cond_35

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_35

    .line 993
    goto :goto_55

    .line 995
    :cond_35
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 996
    goto :goto_55

    .line 998
    :cond_40
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_45

    .line 999
    goto :goto_55

    .line 1001
    :cond_45
    if-eqz p2, :cond_50

    iget-object v5, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 1002
    goto :goto_55

    .line 1004
    :cond_50
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Landroid/util/IntArray;->add(I)V

    .line 987
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1006
    .end local v3    # "i":I
    :cond_58
    return-object v1
.end method

.method private getProfileParentLU(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "userId"    # I

    .line 1066
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1067
    .local v0, "profile":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1068
    return-object v1

    .line 1070
    :cond_8
    iget v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1071
    .local v2, "parentUserId":I
    if-eq v2, p1, :cond_16

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_11

    goto :goto_16

    .line 1074
    :cond_11
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1

    .line 1072
    :cond_16
    :goto_16
    return-object v1
.end method

.method private getProfilesLU(ILjava/lang/String;ZZ)Ljava/util/List;
    .registers 11
    .param p1, "userId"    # I
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "enabledOnly"    # Z
    .param p4, "fullInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 954
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(ILjava/lang/String;Z)Landroid/util/IntArray;

    move-result-object v0

    .line 955
    .local v0, "profileIds":Landroid/util/IntArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 956
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 957
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 958
    .local v3, "profileId":I
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 960
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-nez p4, :cond_30

    .line 961
    new-instance v5, Landroid/content/pm/UserInfo;

    invoke-direct {v5, v4}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    move-object v4, v5

    .line 962
    const/4 v5, 0x0

    iput-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 963
    iput-object v5, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    goto :goto_34

    .line 965
    :cond_30
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 967
    :goto_34
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    .end local v3    # "profileId":I
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 969
    .end local v2    # "i":I
    :cond_3a
    return-object v1
.end method

.method private getRemainingCreatableProfileCount(Ljava/lang/String;IZ)I
    .registers 16
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "allowedToRemoveOne"    # Z

    .line 2587
    const-string v0, "get the remaining number of profiles that can be added to the given user."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2589
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 2590
    .local v0, "type":Lcom/android/server/pm/UserTypeDetails;
    const/4 v1, 0x0

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_8f

    .line 2594
    :cond_18
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isManagedProfile()Z

    move-result v2

    .line 2595
    .local v2, "isManagedProfile":Z
    if-eqz v2, :cond_2d

    .line 2596
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.software.managed_users"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 2598
    return v1

    .line 2601
    :cond_2d
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2603
    :try_start_30
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 2604
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_8a

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v5

    if-nez v5, :cond_3d

    goto :goto_8a

    .line 2608
    :cond_3d
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIds(ILjava/lang/String;Z)[I

    move-result-object v5

    array-length v5, v5

    .line 2609
    .local v5, "userTypeCount":I
    const/4 v6, 0x1

    if-lez v5, :cond_49

    if-eqz p3, :cond_49

    move v7, v6

    goto :goto_4a

    :cond_49
    move v7, v1

    .line 2610
    .local v7, "profilesRemovedCount":I
    :goto_4a
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v8

    sub-int/2addr v8, v7

    .line 2614
    .local v8, "usersCountAfterRemoving":I
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v9

    sub-int/2addr v9, v8

    .line 2617
    .local v9, "result":I
    if-gtz v9, :cond_5b

    if-eqz v2, :cond_5b

    if-ne v8, v6, :cond_5b

    .line 2618
    const/4 v9, 0x1

    .line 2622
    :cond_5b
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfTypePerParent(Lcom/android/server/pm/UserTypeDetails;)I

    move-result v6

    .line 2623
    .local v6, "maxUsersOfType":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_6b

    .line 2624
    sub-int v11, v5, v7

    sub-int v11, v6, v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v9, v11

    .line 2626
    :cond_6b
    if-gtz v9, :cond_6f

    .line 2627
    monitor-exit v3

    return v1

    .line 2631
    :cond_6f
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowed()I

    move-result v11

    if-eq v11, v10, :cond_84

    .line 2632
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowed()I

    move-result v10

    .line 2633
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result v11

    sub-int/2addr v11, v7

    sub-int/2addr v10, v11

    .line 2632
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v9, v10

    .line 2636
    :cond_84
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    monitor-exit v3

    return v1

    .line 2605
    .end local v5    # "userTypeCount":I
    .end local v6    # "maxUsersOfType":I
    .end local v7    # "profilesRemovedCount":I
    .end local v8    # "usersCountAfterRemoving":I
    .end local v9    # "result":I
    :cond_8a
    :goto_8a
    monitor-exit v3

    return v1

    .line 2637
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_8c
    move-exception v1

    monitor-exit v3
    :try_end_8e
    .catchall {:try_start_30 .. :try_end_8e} :catchall_8c

    throw v1

    .line 2591
    .end local v2    # "isManagedProfile":Z
    :cond_8f
    :goto_8f
    return v1
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5032
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5034
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_1b
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 5039
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5034
    return v2

    .line 5039
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5040
    throw v2

    .line 5036
    :catch_1b
    move-exception v2

    .line 5037
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 5039
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5037
    return v3
.end method

.method private getUpdatedTargetUserIdsFromLocalRestrictions(ILcom/android/server/pm/RestrictionsSet;)Ljava/util/List;
    .registers 8
    .param p1, "originatingUserId"    # I
    .param p2, "local"    # Lcom/android/server/pm/RestrictionsSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/pm/RestrictionsSet;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2075
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2077
    .local v0, "targetUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p2}, Lcom/android/server/pm/RestrictionsSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 2078
    invoke-virtual {p2, v1}, Lcom/android/server/pm/RestrictionsSet;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2077
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2082
    .end local v1    # "i":I
    :cond_1a
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1b
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 2083
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2084
    .local v2, "targetUserId":I
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/RestrictionsSet;

    .line 2085
    .local v3, "restrictionsSet":Lcom/android/server/pm/RestrictionsSet;
    invoke-virtual {p2, v2}, Lcom/android/server/pm/RestrictionsSet;->containsKey(I)Z

    move-result v4

    if-nez v4, :cond_44

    .line 2086
    invoke-virtual {v3, p1}, Lcom/android/server/pm/RestrictionsSet;->containsKey(I)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2087
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2082
    .end local v2    # "targetUserId":I
    .end local v3    # "restrictionsSet":Lcom/android/server/pm/RestrictionsSet;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 2090
    .end local v1    # "i":I
    :cond_47
    return-object v0
.end method

.method private getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 4
    .param p1, "userId"    # I

    .line 1824
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1826
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_1a

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1827
    const/4 v1, 0x0

    return-object v1

    .line 1829
    :cond_1a
    return-object v0
.end method

.method private getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 4
    .param p1, "userId"    # I

    .line 1848
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1849
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v0

    return-object v1

    .line 1850
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private getUserInfoLU(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "userId"    # I

    .line 1813
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1815
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const/4 v1, 0x0

    if-eqz v0, :cond_32

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_32

    .line 1816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserInfo: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    return-object v1

    .line 1819
    :cond_32
    if-eqz v0, :cond_36

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    :cond_36
    return-object v1
.end method

.method private getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "userId"    # I

    .line 1837
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1838
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1839
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_10

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    monitor-exit v0

    return-object v2

    .line 1840
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private getUserRemovalRestriction(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .line 4637
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4638
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4639
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1d

    .line 4640
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 4641
    .local v0, "isManagedProfile":Z
    :goto_13
    if-eqz v0, :cond_19

    .line 4642
    const-string/jumbo v2, "no_remove_managed_profile"

    goto :goto_1c

    :cond_19
    const-string/jumbo v2, "no_remove_user"

    .line 4641
    :goto_1c
    return-object v2

    .line 4639
    .end local v0    # "isManagedProfile":Z
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;
    .registers 4
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 1422
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_7

    :cond_6
    move-object v1, v0

    .line 1423
    .local v1, "typeStr":Ljava/lang/String;
    :goto_7
    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    :cond_11
    return-object v0
.end method

.method private getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;
    .registers 4
    .param p1, "userId"    # I

    .line 1414
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeNoChecks(I)Ljava/lang/String;

    move-result-object v0

    .line 1415
    .local v0, "typeStr":Ljava/lang/String;
    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserTypeDetails;

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method private getUserTypeNoChecks(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .line 1403
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1404
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1405
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_c

    iget-object v2, v1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    monitor-exit v0

    return-object v2

    .line 1406
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private getUsersInternal(ZZZ)Ljava/util/List;
    .registers 11
    .param p1, "excludePartial"    # Z
    .param p2, "excludeDying"    # Z
    .param p3, "excludePreCreated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 885
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 886
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 887
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 888
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_44

    .line 889
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 890
    .local v4, "ui":Landroid/content/pm/UserInfo;
    if-eqz p1, :cond_27

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_41

    :cond_27
    if-eqz p2, :cond_33

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 891
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_41

    :cond_33
    if-eqz p3, :cond_3a

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v5, :cond_3a

    .line 893
    goto :goto_41

    .line 895
    :cond_3a
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 897
    .end local v3    # "i":I
    :cond_44
    monitor-exit v0

    return-object v1

    .line 898
    .end local v1    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v2    # "userSize":I
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method private static final hasCreateUsersPermission()Z
    .registers 1

    .line 2806
    const-string v0, "android.permission.CREATE_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final hasManageUsersOrPermission(Ljava/lang/String;)Z
    .registers 3
    .param p0, "alternativePermission"    # Ljava/lang/String;

    .line 2795
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2796
    .local v0, "callingUid":I
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission(I)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2797
    invoke-static {p0, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    .line 2796
    :goto_14
    return v1
.end method

.method private static final hasManageUsersPermission()Z
    .registers 2

    .line 2776
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2777
    .local v0, "callingUid":I
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission(I)Z

    move-result v1

    return v1
.end method

.method private static hasManageUsersPermission(I)Z
    .registers 2
    .param p0, "callingUid"    # I

    .line 2785
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz p0, :cond_15

    .line 2787
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-static {v0, p0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 2785
    :goto_16
    return v0
.end method

.method private static hasPermissionGranted(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 2682
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method private static final hasQueryOrCreateUsersPermission()Z
    .registers 2

    .line 2825
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasCreateUsersPermission()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2826
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "android.permission.QUERY_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 2825
    :goto_16
    return v0
.end method

.method private static final hasQueryUsersPermission()Z
    .registers 1

    .line 2815
    const-string v0, "android.permission.QUERY_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private initDefaultGuestRestrictions()V
    .registers 5

    .line 1969
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1970
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1971
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    const-string v2, "android.os.usertype.full.GUEST"

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserTypeDetails;

    .line 1972
    .local v1, "guestType":Lcom/android/server/pm/UserTypeDetails;
    if-nez v1, :cond_20

    .line 1973
    const-string v2, "UserManagerService"

    const-string v3, "Can\'t set default guest restrictions: type doesn\'t exist."

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    monitor-exit v0

    return-void

    .line 1976
    :cond_20
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails;->addDefaultRestrictionsTo(Landroid/os/Bundle;)V

    .line 1978
    .end local v1    # "guestType":Lcom/android/server/pm/UserTypeDetails;
    :cond_25
    monitor-exit v0

    .line 1979
    return-void

    .line 1978
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private invalidateEffectiveUserRestrictionsLR(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2153
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    .line 2154
    return-void
.end method

.method private invalidateOwnerNameIfNecessary(Landroid/content/res/Resources;Z)V
    .registers 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "forceUpdate"    # Z

    .line 3341
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 3342
    .local v0, "configChanges":I
    if-nez p2, :cond_13

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    iget v1, v1, Landroid/util/TypedValue;->changingConfigurations:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_2f

    .line 3343
    :cond_13
    const v1, 0x1040677

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 3344
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 3345
    .local v1, "ownerName":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v1, :cond_2b

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    :cond_2b
    const/4 v3, 0x0

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3347
    .end local v1    # "ownerName":Ljava/lang/CharSequence;
    :cond_2f
    return-void
.end method

.method private static isAtMostOneFlag(I)Z
    .registers 2
    .param p0, "flags"    # I

    .line 4296
    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .registers 4
    .param p0, "user"    # Landroid/content/pm/UserInfo;
    .param p1, "profile"    # Landroid/content/pm/UserInfo;

    .line 1079
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_15

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_13

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private isSameProfileGroupNoChecks(II)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    .line 1032
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1033
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1034
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_27

    iget v3, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-ne v3, v4, :cond_11

    goto :goto_27

    .line 1037
    :cond_11
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1038
    .local v3, "otherUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_25

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v5, v4, :cond_1c

    goto :goto_25

    .line 1042
    :cond_1c
    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v4, v5, :cond_23

    const/4 v2, 0x1

    :cond_23
    monitor-exit v0

    return v2

    .line 1040
    :cond_25
    :goto_25
    monitor-exit v0

    return v2

    .line 1035
    .end local v3    # "otherUserInfo":Landroid/content/pm/UserInfo;
    :cond_27
    :goto_27
    monitor-exit v0

    return v2

    .line 1043
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private isUserLimitReached()Z
    .registers 3

    .line 2453
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2454
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v1

    .line 2455
    .local v1, "count":I
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    .line 2456
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    if-lt v1, v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    .line 2455
    .end local v1    # "count":I
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static isUserTypeEligibleForPreCreation(Lcom/android/server/pm/UserTypeDetails;)Z
    .registers 4
    .param p0, "userTypeDetails"    # Lcom/android/server/pm/UserTypeDetails;

    .line 4384
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4385
    return v0

    .line 4387
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v1

    if-nez v1, :cond_18

    .line 4388
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.os.usertype.full.RESTRICTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    nop

    .line 4387
    :goto_19
    return v0
.end method

.method static synthetic lambda$addUserRestrictionsListener$1(Landroid/os/IUserRestrictionsListener;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "listener"    # Landroid/os/IUserRestrictionsListener;
    .param p1, "userId"    # I
    .param p2, "newRestrict"    # Landroid/os/Bundle;
    .param p3, "prevRestrict"    # Landroid/os/Bundle;

    .line 2213
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/os/IUserRestrictionsListener;->onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2217
    goto :goto_21

    .line 2214
    :catch_4
    move-exception v0

    .line 2215
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to invoke listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2216
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2215
    const-string v2, "IUserRestrictionsListener"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method static synthetic lambda$isUserForeground$0()Ljava/lang/Integer;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1641
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private logQuietModeEnabled(IZLjava/lang/String;)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "enableQuietMode"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 1260
    const-string v0, "UserManagerService"

    const-string/jumbo v1, "requestQuietModeEnabled called by package %s, with enableQuietMode %b."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 1263
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 1260
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1265
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1266
    :try_start_18
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 1267
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_59

    .line 1268
    if-nez v1, :cond_20

    .line 1269
    return-void

    .line 1271
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1272
    .local v6, "now":J
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_35

    .line 1273
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v8

    sub-long v8, v6, v8

    goto :goto_3b

    .line 1274
    :cond_35
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-wide v8, v0, Landroid/content/pm/UserInfo;->creationTime:J

    sub-long v8, v6, v8

    :goto_3b
    nop

    .line 1275
    .local v8, "period":J
    const/16 v0, 0x37

    .line 1276
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/String;

    aput-object p3, v2, v3

    .line 1277
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1278
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1279
    invoke-virtual {v0, v8, v9}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1280
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 1281
    invoke-virtual {v1, v6, v7}, Lcom/android/server/pm/UserManagerService$UserData;->setLastRequestQuietModeEnabledMillis(J)V

    .line 1282
    return-void

    .line 1267
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v6    # "now":J
    .end local v8    # "period":J
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method

.method private logUserCreateJourneyBegin(ILjava/lang/String;I)J
    .registers 6
    .param p1, "userId"    # I
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 4393
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->logUserJourneyBegin(IILjava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private logUserCreateJourneyFinish(JIZ)V
    .registers 12
    .param p1, "sessionId"    # J
    .param p3, "userId"    # I
    .param p4, "finish"    # Z

    .line 4399
    nop

    .line 4401
    if-eqz p4, :cond_6

    const/4 v0, 0x2

    move v6, v0

    goto :goto_8

    .line 4402
    :cond_6
    const/4 v0, 0x0

    move v6, v0

    .line 4399
    :goto_8
    const/16 v1, 0x109

    const/4 v5, 0x3

    move-wide v2, p1

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    .line 4403
    return-void
.end method

.method private logUserJourneyBegin(IILjava/lang/String;I)J
    .registers 22
    .param p1, "journey"    # I
    .param p2, "userId"    # I
    .param p3, "userType"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .line 4421
    move/from16 v8, p1

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/16 v1, 0x1

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v15

    .line 4423
    .local v15, "sessionId":J
    nop

    .line 4425
    invoke-static/range {p3 .. p3}, Landroid/os/UserManager;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v6

    .line 4423
    const/16 v0, 0x108

    const/4 v4, -0x1

    move-wide v1, v15

    move/from16 v3, p1

    move/from16 v5, p2

    move/from16 v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIIII)V

    .line 4429
    packed-switch v8, :pswitch_data_56

    .line 4437
    :pswitch_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Journey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not expected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4434
    :pswitch_45
    const/16 v0, 0x8

    .line 4435
    .local v0, "event":I
    goto :goto_4a

    .line 4431
    .end local v0    # "event":I
    :pswitch_48
    const/4 v0, 0x3

    .line 4432
    .restart local v0    # "event":I
    nop

    .line 4440
    :goto_4a
    const/16 v9, 0x109

    const/4 v14, 0x1

    move-wide v10, v15

    move/from16 v12, p2

    move v13, v0

    invoke-static/range {v9 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    .line 4442
    return-wide v15

    nop

    :pswitch_data_56
    .packed-switch 0x4
        :pswitch_48
        :pswitch_26
        :pswitch_45
    .end packed-switch
.end method

.method private logUserRemoveJourneyBegin(ILjava/lang/String;I)J
    .registers 6
    .param p1, "userId"    # I
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 4407
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->logUserJourneyBegin(IILjava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private logUserRemoveJourneyFinish(JIZ)V
    .registers 12
    .param p1, "sessionId"    # J
    .param p3, "userId"    # I
    .param p4, "finish"    # Z

    .line 4413
    nop

    .line 4415
    if-eqz p4, :cond_6

    const/4 v0, 0x2

    move v6, v0

    goto :goto_8

    .line 4416
    :cond_6
    const/4 v0, 0x0

    move v6, v0

    .line 4413
    :goto_8
    const/16 v1, 0x109

    const/16 v5, 0x8

    move-wide v2, p1

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    .line 4417
    return-void
.end method

.method private markEphemeralUsersForRemoval()V
    .registers 6

    .line 759
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 760
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 761
    .local v1, "userSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_35

    .line 762
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 763
    .local v3, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v4

    if-eqz v4, :cond_32

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v4, :cond_32

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-eqz v4, :cond_32

    .line 764
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 765
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    .line 766
    iget v4, v3, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v3, Landroid/content/pm/UserInfo;->flags:I

    .line 761
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 769
    .end local v1    # "userSize":I
    .end local v2    # "i":I
    :cond_35
    monitor-exit v0

    .line 770
    return-void

    .line 769
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private onPullAtom(ILjava/util/List;)I
    .registers 23
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4457
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x27a8

    move/from16 v4, p1

    if-eq v4, v3, :cond_1a

    .line 4458
    const-string v3, "UserManagerService"

    const-string v5, "Unexpected atom tag: %d"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v3, v5, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4459
    return v2

    .line 4461
    :cond_1a
    invoke-direct {v1, v2, v2, v2}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object v3

    .line 4462
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 4463
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "idx":I
    :goto_23
    if-ge v6, v5, :cond_7d

    .line 4464
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 4465
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    if-nez v8, :cond_34

    .line 4468
    move-object/from16 v19, v3

    move-object/from16 v3, p2

    goto :goto_6e

    .line 4471
    :cond_34
    iget-object v8, v7, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/UserManager;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v8

    .line 4472
    .local v8, "userTypeStandard":I
    if-nez v8, :cond_3f

    .line 4474
    iget-object v9, v7, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_40

    :cond_3f
    const/4 v9, 0x0

    :goto_40
    move-object v12, v9

    .line 4477
    .local v12, "userTypeCustom":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v9

    .line 4478
    :try_start_44
    iget-object v10, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, -0x1

    .line 4479
    invoke-virtual {v10, v11, v13}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_53

    move/from16 v18, v2

    goto :goto_55

    :cond_53
    move/from16 v18, v0

    .line 4480
    .local v18, "isUserRunningUnlocked":Z
    :goto_55
    monitor-exit v9
    :try_end_56
    .catchall {:try_start_44 .. :try_end_56} :catchall_74

    .line 4482
    const/16 v9, 0x27a8

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    iget v13, v7, Landroid/content/pm/UserInfo;->flags:I

    iget-wide v14, v7, Landroid/content/pm/UserInfo;->creationTime:J

    move-object/from16 v19, v3

    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v19, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-wide v2, v7, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    move v11, v8

    move-wide/from16 v16, v2

    invoke-static/range {v9 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIILjava/lang/String;IJJZ)Landroid/util/StatsEvent;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4463
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "userTypeStandard":I
    .end local v12    # "userTypeCustom":Ljava/lang/String;
    .end local v18    # "isUserRunningUnlocked":Z
    :goto_6e
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v19

    const/4 v2, 0x1

    goto :goto_23

    .line 4480
    .end local v19    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "user":Landroid/content/pm/UserInfo;
    .restart local v8    # "userTypeStandard":I
    .restart local v12    # "userTypeCustom":Ljava/lang/String;
    :catchall_74
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v3, p2

    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v19    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_79
    :try_start_79
    monitor-exit v9
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7b

    throw v0

    :catchall_7b
    move-exception v0

    goto :goto_79

    .line 4492
    .end local v6    # "idx":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "userTypeStandard":I
    .end local v12    # "userTypeCustom":Ljava/lang/String;
    .end local v19    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7d
    return v0
.end method

.method private static packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 5461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .line 2376
    invoke-static {p2, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2377
    return-void

    .line 2380
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2381
    .local v0, "newRestrictionsFinal":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2383
    .local v1, "prevRestrictionsFinal":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2404
    return-void
.end method

.method static readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .registers 8
    .param p0, "restrictionsFile"    # Landroid/util/AtomicFile;

    .line 5055
    const-string v0, "UserManagerService"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5056
    .local v1, "restrictions":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5057
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_17

    .line 5058
    return-object v1

    .line 5061
    :cond_17
    const/4 v3, 0x0

    .line 5063
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_18
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    move-object v3, v4

    .line 5064
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v4

    .line 5065
    .local v4, "parser":Landroid/util/TypedXmlPullParser;
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5066
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4a

    .line 5067
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read restrictions file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5068
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5067
    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_45} :catch_5c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_45} :catch_5c
    .catchall {:try_start_18 .. :try_end_45} :catchall_5a

    .line 5069
    nop

    .line 5077
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5069
    return-object v1

    .line 5071
    :cond_4a
    :goto_4a
    :try_start_4a
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_55

    .line 5072
    invoke-static {v1, v2, v4}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/TypedXmlPullParser;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_54} :catch_5c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_54} :catch_5c
    .catchall {:try_start_4a .. :try_end_54} :catchall_5a

    goto :goto_4a

    .line 5077
    .end local v4    # "parser":Landroid/util/TypedXmlPullParser;
    :cond_55
    nop

    :goto_56
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5078
    goto :goto_79

    .line 5077
    :catchall_5a
    move-exception v0

    goto :goto_7a

    .line 5074
    :catch_5c
    move-exception v4

    .line 5075
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_5a

    .line 5077
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_56

    .line 5079
    :goto_79
    return-object v1

    .line 5077
    :goto_7a
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5078
    throw v0
.end method

.method private static readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 5046
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 5047
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 5048
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 5049
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private static readBundleEntry(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 5
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5127
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5128
    .local v0, "childBundle":Landroid/os/Bundle;
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 5129
    .local v1, "outerDepth":I
    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 5130
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/TypedXmlPullParser;)V

    goto :goto_9

    .line 5132
    :cond_13
    return-object v0
.end method

.method private static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/TypedXmlPullParser;)V
    .registers 10
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p2, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/TypedXmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5084
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    .line 5085
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_cc

    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "entry"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 5086
    const/4 v2, 0x0

    const-string v3, "key"

    invoke-interface {p2, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5087
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v4, "type"

    invoke-interface {p2, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5088
    .local v4, "valType":Ljava/lang/String;
    const-string v5, "m"

    const/4 v6, -0x1

    invoke-interface {p2, v2, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 5089
    .local v2, "count":I
    if-eq v2, v6, :cond_61

    .line 5090
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 5091
    :cond_2d
    :goto_2d
    if-lez v2, :cond_54

    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    move v0, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_54

    .line 5092
    if-ne v0, v1, :cond_2d

    .line 5093
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "value"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 5094
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5095
    add-int/lit8 v2, v2, -0x1

    goto :goto_2d

    .line 5098
    :cond_54
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 5099
    .local v1, "valueStrings":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5100
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 5101
    .end local v1    # "valueStrings":[Ljava/lang/String;
    goto :goto_cc

    :cond_61
    const-string v1, "B"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 5102
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_cc

    .line 5103
    :cond_71
    const-string v1, "BA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 5104
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 5105
    .local v1, "outerDepth":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5106
    .local v5, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_82
    invoke-static {p2, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_90

    .line 5107
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Landroid/util/TypedXmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v6

    .line 5108
    .local v6, "childBundle":Landroid/os/Bundle;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5109
    .end local v6    # "childBundle":Landroid/os/Bundle;
    goto :goto_82

    .line 5110
    :cond_90
    nop

    .line 5111
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    .line 5110
    invoke-virtual {p0, v3, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5112
    .end local v1    # "outerDepth":I
    .end local v5    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    goto :goto_cc

    .line 5113
    :cond_a1
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5114
    .local v1, "value":Ljava/lang/String;
    const-string v5, "b"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 5115
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_cc

    .line 5116
    :cond_b9
    const-string v5, "i"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 5117
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_cc

    .line 5119
    :cond_c9
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5123
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "count":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "valType":Ljava/lang/String;
    :cond_cc
    :goto_cc
    return-void
.end method

.method private readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 10
    .param p1, "id"    # I

    .line 3560
    const-string v0, "Error reading user list"

    const-string v1, "UserManagerService"

    const/4 v2, 0x0

    .line 3562
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3563
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3564
    .local v3, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    move-object v2, v4

    .line 3565
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_31} :catch_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_31} :catch_37
    .catchall {:try_start_5 .. :try_end_31} :catchall_35

    .line 3571
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3565
    return-object v0

    .line 3571
    .end local v3    # "userFile":Landroid/util/AtomicFile;
    :catchall_35
    move-exception v0

    goto :goto_48

    .line 3568
    :catch_37
    move-exception v3

    .line 3569
    .local v3, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_38
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    nop

    .end local v3    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_42

    .line 3566
    :catch_3d
    move-exception v3

    .line 3567
    .local v3, "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_35

    .line 3571
    nop

    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_42
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3572
    nop

    .line 3573
    const/4 v0, 0x0

    return-object v0

    .line 3571
    :goto_48
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3572
    throw v0
.end method

.method private readUserListLP()V
    .registers 16

    .line 2903
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2904
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    .line 2905
    return-void

    .line 2907
    :cond_c
    const/4 v0, 0x0

    .line 2908
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2910
    .local v1, "userListFile":Landroid/util/AtomicFile;
    :try_start_14
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v0, v2

    .line 2911
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    .line 2913
    .local v2, "parser":Landroid/util/TypedXmlPullParser;
    :goto_1d
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_29

    if-eq v4, v5, :cond_29

    goto :goto_1d

    .line 2918
    :cond_29
    if-eq v4, v6, :cond_39

    .line 2919
    const-string v3, "UserManagerService"

    const-string v5, "Unable to read user list"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_35} :catch_16a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_35} :catch_16a
    .catchall {:try_start_14 .. :try_end_35} :catchall_168

    .line 2998
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2921
    return-void

    .line 2924
    :cond_39
    const/4 v3, -0x1

    :try_start_3a
    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2925
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "users"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_6b

    .line 2926
    const-string/jumbo v3, "nextSerialNumber"

    iget v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2927
    invoke-interface {v2, v7, v3, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2928
    const-string/jumbo v3, "version"

    iget v8, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2929
    invoke-interface {v2, v7, v3, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2930
    const-string/jumbo v3, "userTypeConfigVersion"

    iget v8, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    .line 2931
    invoke-interface {v2, v7, v3, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    .line 2936
    :cond_6b
    const/4 v3, 0x0

    .line 2938
    .local v3, "oldDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    :cond_6c
    :goto_6c
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v8

    move v4, v8

    if-eq v8, v5, :cond_161

    .line 2939
    if-ne v4, v6, :cond_6c

    .line 2940
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2941
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_107

    .line 2942
    const-string v9, "id"

    invoke-interface {v2, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/pm/UserManagerService;->readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v9

    .line 2945
    .local v9, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v9, :cond_cb

    .line 2946
    invoke-static {}, Lcom/android/server/MiuiFallbackHelperStub;->getInstance()Lcom/android/server/MiuiFallbackHelperStub;

    move-result-object v10

    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "id"

    .line 2948
    invoke-interface {v2, v7, v14}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".xml"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2949
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 2947
    invoke-virtual {v10, v11}, Lcom/android/server/MiuiFallbackHelperStub;->restoreFile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_cb

    .line 2950
    const-string v10, "id"

    invoke-interface {v2, v7, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/pm/UserManagerService;->readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v10

    move-object v9, v10

    .line 2952
    :cond_cb
    if-eqz v9, :cond_ef

    .line 2953
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_d0} :catch_16a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3a .. :try_end_d0} :catch_16a
    .catchall {:try_start_3a .. :try_end_d0} :catchall_168

    .line 2954
    :try_start_d0
    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v12, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2955
    iget v11, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v11, :cond_e3

    iget-object v12, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    if-gt v11, v12, :cond_ea

    .line 2957
    :cond_e3
    iget-object v11, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    add-int/2addr v11, v5

    iput v11, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2959
    :cond_ea
    monitor-exit v10

    goto :goto_f7

    :catchall_ec
    move-exception v5

    monitor-exit v10
    :try_end_ee
    .catchall {:try_start_d0 .. :try_end_ee} :catchall_ec

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v1    # "userListFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_ee
    throw v5

    .line 2960
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "userListFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :cond_ef
    const-string v10, "id"

    invoke-interface {v2, v7, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_f8

    .line 2967
    .end local v9    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :goto_f7
    goto :goto_15f

    .line 2962
    .restart local v9    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_f8
    const-string v5, "UserManagerService"

    const-string v6, "0.xml and 0.xml.fallback exists but is corrupted."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "0.xml and 0.xml.fallback exists but is corrupted."

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v1    # "userListFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    throw v5

    .line 2967
    .end local v9    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "userListFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :cond_107
    const-string v9, "guestRestrictions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_135

    .line 2968
    :cond_10f
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v9

    move v4, v9

    if-eq v9, v5, :cond_15f

    const/4 v9, 0x3

    if-eq v4, v9, :cond_15f

    .line 2970
    if-ne v4, v6, :cond_10f

    .line 2971
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "restrictions"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15f

    .line 2972
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v9
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_12b} :catch_16a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ee .. :try_end_12b} :catch_16a
    .catchall {:try_start_ee .. :try_end_12b} :catchall_168

    .line 2973
    :try_start_12b
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 2974
    invoke-static {v2, v10}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;Landroid/os/Bundle;)V

    .line 2975
    monitor-exit v9

    goto :goto_15f

    :catchall_132
    move-exception v5

    monitor-exit v9
    :try_end_134
    .catchall {:try_start_12b .. :try_end_134} :catchall_132

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v1    # "userListFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_134
    throw v5

    .line 2980
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "userListFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :cond_135
    const-string v9, "deviceOwnerUserId"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_155

    const-string v9, "globalRestrictionOwnerUserId"

    .line 2982
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_146

    goto :goto_155

    .line 2985
    :cond_146
    const-string v9, "device_policy_restrictions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15f

    .line 2987
    nop

    .line 2988
    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v9

    move-object v3, v9

    goto :goto_15f

    .line 2983
    :cond_155
    :goto_155
    const-string v9, "id"

    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 2984
    invoke-interface {v2, v7, v9, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 2990
    .end local v8    # "name":Ljava/lang/String;
    :cond_15f
    :goto_15f
    goto/16 :goto_6c

    .line 2993
    :cond_161
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2994
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_167} :catch_16a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_134 .. :try_end_167} :catch_16a
    .catchall {:try_start_134 .. :try_end_167} :catchall_168

    .end local v2    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v3    # "oldDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .end local v4    # "type":I
    goto :goto_16e

    .line 2998
    :catchall_168
    move-exception v2

    goto :goto_173

    .line 2995
    :catch_16a
    move-exception v2

    .line 2996
    .local v2, "e":Ljava/lang/Exception;
    :try_start_16b
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_16e
    .catchall {:try_start_16b .. :try_end_16e} :catchall_168

    .line 2998
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_16e
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2999
    nop

    .line 3000
    return-void

    .line 2998
    :goto_173
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2999
    throw v2
.end method

.method private registerStatsCallbacks()V
    .registers 6

    .line 4447
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 4448
    .local v0, "statsManager":Landroid/app/StatsManager;
    nop

    .line 4451
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 4448
    const/16 v3, 0x27a8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 4453
    return-void
.end method

.method private removeNonSystemUsers()V
    .registers 7

    .line 6405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6406
    .local v0, "usersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6407
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 6408
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_25

    .line 6409
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 6410
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_22

    .line 6411
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6408
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 6414
    .end local v2    # "userSize":I
    .end local v3    # "i":I
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 6415
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 6416
    .local v2, "ui":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    .line 6417
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    goto :goto_2a

    .line 6418
    :cond_3c
    return-void

    .line 6414
    :catchall_3d
    move-exception v2

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method private removeUserState(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 4865
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing user state of user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    :try_start_18
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->destroyUserKey(I)V
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_25} :catch_26

    .line 4871
    goto :goto_45

    .line 4868
    :catch_26
    move-exception v0

    .line 4870
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying key for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed, continuing anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4875
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_45
    :try_start_45
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    .line 4876
    .local v0, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v0, :cond_4e

    .line 4877
    invoke-interface {v0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4e} :catch_4f

    .line 4881
    .end local v0    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_4e
    goto :goto_58

    .line 4879
    :catch_4f
    move-exception v0

    .line 4880
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "UserManagerService"

    const-string/jumbo v2, "unable to clear GK secure user id"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4884
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_58
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V

    .line 4887
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->destroyUserData(II)V

    .line 4891
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4892
    :try_start_66
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4893
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4894
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_66 .. :try_end_71} :catchall_f0

    .line 4895
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v1

    .line 4896
    :try_start_74
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->delete(I)V

    .line 4897
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_ed

    .line 4898
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4899
    :try_start_7d
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    .line 4900
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    .line 4901
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    .line 4903
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 4905
    const/4 v1, 0x0

    .line 4906
    .local v1, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_93
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_ad

    .line 4907
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4908
    .local v3, "targetUserId":I
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v4

    .line 4909
    invoke-virtual {v4, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 4906
    .end local v3    # "targetUserId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    .line 4911
    .end local v2    # "i":I
    :cond_ad
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    move-result v2

    or-int/2addr v1, v2

    .line 4912
    if-eqz v1, :cond_b9

    .line 4913
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    .line 4915
    .end local v1    # "changed":Z
    :cond_b9
    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_7d .. :try_end_ba} :catchall_ea

    .line 4917
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4918
    :try_start_bd
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 4919
    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_e7

    .line 4921
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 4922
    .local v0, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 4923
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 4929
    return-void

    .line 4919
    .end local v0    # "userFile":Landroid/util/AtomicFile;
    :catchall_e7
    move-exception v0

    :try_start_e8
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw v0

    .line 4915
    :catchall_ea
    move-exception v1

    :try_start_eb
    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    throw v1

    .line 4897
    :catchall_ed
    move-exception v0

    :try_start_ee
    monitor-exit v1
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw v0

    .line 4894
    :catchall_f0
    move-exception v1

    :try_start_f1
    monitor-exit v0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw v1
.end method

.method private removeUserUnchecked(I)Z
    .registers 13
    .param p1, "userId"    # I

    .line 4646
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4649
    .local v0, "ident":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 4650
    .local v2, "currentUser":I
    const/4 v3, 0x0

    if-ne v2, p1, :cond_17

    .line 4651
    const-string v4, "UserManagerService"

    const-string v5, "Current user cannot be removed."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_102

    .line 4652
    nop

    .line 4728
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4652
    return v3

    .line 4654
    :cond_17
    :try_start_17
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_102

    .line 4655
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_ff

    .line 4656
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    .line 4657
    .local v6, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez p1, :cond_34

    .line 4658
    const-string v7, "UserManagerService"

    const-string v8, "System user cannot be removed."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4659
    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_fc

    :try_start_2f
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_ff

    .line 4728
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4659
    return v3

    .line 4662
    :cond_34
    const/4 v7, 0x1

    if-nez v6, :cond_50

    .line 4663
    :try_start_37
    const-string v8, "UserManagerService"

    const-string v9, "Cannot remove user %d, invalid user id provided."

    new-array v7, v7, [Ljava/lang/Object;

    .line 4664
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v3

    .line 4663
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4665
    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_fc

    :try_start_4b
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_ff

    .line 4728
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4665
    return v3

    .line 4668
    :cond_50
    :try_start_50
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 4669
    const-string v8, "UserManagerService"

    const-string v9, "User %d is already scheduled for removal."

    new-array v7, v7, [Ljava/lang/Object;

    .line 4670
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v3

    .line 4669
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4671
    monitor-exit v5
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_fc

    :try_start_6c
    monitor-exit v4
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_ff

    .line 4728
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4671
    return v3

    .line 4674
    :cond_71
    :try_start_71
    const-string v8, "UserManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removing user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4675
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 4676
    monitor-exit v5
    :try_end_8d
    .catchall {:try_start_71 .. :try_end_8d} :catchall_fc

    .line 4681
    :try_start_8d
    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-boolean v7, v5, Landroid/content/pm/UserInfo;->partial:Z

    .line 4684
    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v5, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 4685
    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4686
    monitor-exit v4
    :try_end_9d
    .catchall {:try_start_8d .. :try_end_9d} :catchall_ff

    .line 4688
    :try_start_9d
    iget-object v4, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->flags:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/pm/UserManagerService;->logUserRemoveJourneyBegin(ILjava/lang/String;I)J

    move-result-wide v4
    :try_end_a9
    .catchall {:try_start_9d .. :try_end_a9} :catchall_102

    .line 4692
    .local v4, "sessionId":J
    :try_start_a9
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v8, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_ae} :catch_af
    .catchall {:try_start_a9 .. :try_end_ae} :catchall_102

    .line 4695
    goto :goto_b7

    .line 4693
    :catch_af
    move-exception v8

    .line 4694
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_b0
    const-string v9, "UserManagerService"

    const-string v10, "Unable to notify AppOpsService of removing user."

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4698
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_b7
    iget-object v8, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v9, -0x2710

    if-eq v8, v9, :cond_da

    iget-object v8, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4699
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-eqz v8, :cond_da

    .line 4702
    iget-object v8, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v8, v9}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(II)V

    .line 4704
    const-string/jumbo v8, "persist.sys.profile_managed"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_b0 .. :try_end_da} :catchall_102

    .line 4710
    :cond_da
    :try_start_da
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v8

    new-instance v9, Lcom/android/server/pm/UserManagerService$6;

    invoke-direct {v9, p0, v4, v5}, Lcom/android/server/pm/UserManagerService$6;-><init>(Lcom/android/server/pm/UserManagerService;J)V

    invoke-interface {v8, p1, v7, v9}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v8
    :try_end_e7
    .catch Landroid/os/RemoteException; {:try_start_da .. :try_end_e7} :catch_ef
    .catchall {:try_start_da .. :try_end_e7} :catchall_102

    .line 4725
    .local v8, "res":I
    nop

    .line 4726
    if-nez v8, :cond_eb

    move v3, v7

    .line 4728
    :cond_eb
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4726
    return v3

    .line 4722
    .end local v8    # "res":I
    :catch_ef
    move-exception v7

    .line 4723
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_f0
    const-string v8, "UserManagerService"

    const-string v9, "Failed to stop user during removal."

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f7
    .catchall {:try_start_f0 .. :try_end_f7} :catchall_102

    .line 4724
    nop

    .line 4728
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4724
    return v3

    .line 4676
    .end local v4    # "sessionId":J
    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_fc
    move-exception v3

    :try_start_fd
    monitor-exit v5
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    .end local v0    # "ident":J
    .end local v2    # "currentUser":I
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    :try_start_fe
    throw v3

    .line 4686
    .restart local v0    # "ident":J
    .restart local v2    # "currentUser":I
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :catchall_ff
    move-exception v3

    monitor-exit v4
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_ff

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    :try_start_101
    throw v3
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_102

    .line 4728
    .end local v2    # "currentUser":I
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :catchall_102
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4729
    throw v2
.end method

.method private scanNextAvailableIdLocked()I
    .registers 3

    .line 5452
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x53e2

    if-ge v0, v1, :cond_1a

    .line 5453
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_17

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 5454
    return v0

    .line 5452
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5457
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, -0x1

    return v0
.end method

.method private scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 6
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;

    .line 3355
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 3356
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3357
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3359
    .end local v0    # "msg":Landroid/os/Message;
    :cond_16
    return-void
.end method

.method private sendProfileRemovedBroadcast(II)V
    .registers 7
    .param p1, "parentUserId"    # I
    .param p2, "removedUserId"    # I

    .line 4932
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4933
    .local v0, "managedProfileIntent":Landroid/content/Intent;
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4934
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4935
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 4936
    .local v1, "parentHandle":Landroid/os/UserHandle;
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 4938
    const/high16 v2, 0x50000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4940
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4942
    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1899
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1900
    .local v0, "changedIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1901
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1902
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1903
    return-void
.end method

.method private setDefaultCrossProfileIntentFilters(ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V
    .registers 27
    .param p1, "profileUserId"    # I
    .param p2, "profileDetails"    # Lcom/android/server/pm/UserTypeDetails;
    .param p3, "profileRestrictions"    # Landroid/os/Bundle;
    .param p4, "parentUserId"    # I

    .line 4200
    move-object/from16 v0, p0

    if-eqz p2, :cond_7c

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v1

    if-nez v1, :cond_e

    move-object/from16 v4, p3

    goto/16 :goto_7e

    .line 4203
    :cond_e
    nop

    .line 4204
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultCrossProfileIntentFilters()Ljava/util/List;

    move-result-object v1

    .line 4205
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/DefaultCrossProfileIntentFilter;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4206
    return-void

    .line 4210
    :cond_1a
    const/4 v2, 0x0

    .line 4211
    const-string/jumbo v3, "no_sharing_into_profile"

    move-object/from16 v4, p3

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 4214
    .local v2, "disallowSharingIntoProfile":Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultCrossProfileIntentFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 4215
    .local v3, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2d
    if-ge v5, v3, :cond_7b

    .line 4216
    nop

    .line 4217
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultCrossProfileIntentFilters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 4218
    .local v6, "filter":Lcom/android/server/pm/DefaultCrossProfileIntentFilter;
    if-eqz v2, :cond_41

    iget-boolean v7, v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->letsPersonalDataIntoProfile:Z

    if-eqz v7, :cond_41

    .line 4219
    goto :goto_78

    .line 4221
    :cond_41
    iget v7, v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->direction:I

    if-nez v7, :cond_5d

    .line 4222
    iget-object v8, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v9

    iget-object v10, v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->filter:Lcom/android/server/pm/WatchedIntentFilter;

    iget-object v7, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 4223
    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    iget v14, v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->flags:I

    .line 4222
    move/from16 v12, p1

    move/from16 v13, p4

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/pm/PackageManagerService;->addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V

    goto :goto_78

    .line 4226
    :cond_5d
    iget-object v15, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v15}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v16

    iget-object v7, v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->filter:Lcom/android/server/pm/WatchedIntentFilter;

    iget-object v8, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 4227
    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v18

    iget v8, v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->flags:I

    .line 4226
    move-object/from16 v17, v7

    move/from16 v19, p4

    move/from16 v20, p1

    move/from16 v21, v8

    invoke-virtual/range {v15 .. v21}, Lcom/android/server/pm/PackageManagerService;->addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V

    .line 4215
    .end local v6    # "filter":Lcom/android/server/pm/DefaultCrossProfileIntentFilter;
    :goto_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 4231
    .end local v5    # "i":I
    :cond_7b
    return-void

    .line 4200
    .end local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/DefaultCrossProfileIntentFilter;>;"
    .end local v2    # "disallowSharingIntoProfile":Z
    .end local v3    # "size":I
    :cond_7c
    move-object/from16 v4, p3

    .line 4201
    :goto_7e
    return-void
.end method

.method private setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V
    .registers 11
    .param p1, "originatingUserId"    # I
    .param p2, "global"    # Landroid/os/Bundle;
    .param p3, "local"    # Lcom/android/server/pm/RestrictionsSet;
    .param p4, "isDeviceOwner"    # Z

    .line 2009
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2011
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 2012
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result v1

    .line 2013
    .local v1, "globalChanged":Z
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/UserManagerService;->getUpdatedTargetUserIdsFromLocalRestrictions(ILcom/android/server/pm/RestrictionsSet;)Ljava/util/List;

    move-result-object v2

    .line 2015
    .local v2, "updatedLocalTargetUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p3, v2}, Lcom/android/server/pm/UserManagerService;->updateLocalRestrictionsForTargetUsersLR(ILcom/android/server/pm/RestrictionsSet;Ljava/util/List;)Z

    move-result v3

    .line 2018
    .local v3, "localChanged":Z
    if-eqz p4, :cond_16

    .line 2021
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    goto :goto_1e

    .line 2023
    :cond_16
    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne v4, p1, :cond_1e

    .line 2028
    const/16 v4, -0x2710

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 2031
    :cond_1e
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_8f

    .line 2040
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2041
    if-nez v1, :cond_26

    if-eqz v3, :cond_62

    .line 2042
    :cond_26
    :try_start_26
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3f

    .line 2043
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2044
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_62

    .line 2046
    :cond_3f
    if-eqz v1, :cond_48

    .line 2047
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2049
    :cond_48
    if-eqz v3, :cond_62

    .line 2050
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2051
    .local v5, "targetUserId":I
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeAllTargetUsersLP(I)V

    .line 2052
    .end local v5    # "targetUserId":I
    goto :goto_4e

    .line 2056
    :cond_62
    :goto_62
    monitor-exit v4
    :try_end_63
    .catchall {:try_start_26 .. :try_end_63} :catchall_8c

    .line 2058
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2059
    if-eqz v1, :cond_6e

    .line 2060
    :try_start_68
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    goto :goto_88

    .line 2066
    :catchall_6c
    move-exception v4

    goto :goto_8a

    .line 2061
    :cond_6e
    if-eqz v3, :cond_88

    .line 2062
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_74
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2063
    .restart local v5    # "targetUserId":I
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 2064
    .end local v5    # "targetUserId":I
    goto :goto_74

    .line 2066
    :cond_88
    :goto_88
    monitor-exit v0

    .line 2067
    return-void

    .line 2066
    :goto_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_68 .. :try_end_8b} :catchall_6c

    throw v4

    .line 2056
    :catchall_8c
    move-exception v0

    :try_start_8d
    monitor-exit v4
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v0

    .line 2031
    .end local v1    # "globalChanged":Z
    .end local v2    # "updatedLocalTargetUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "localChanged":Z
    :catchall_8f
    move-exception v1

    :try_start_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v1
.end method

.method private setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "enableQuietMode"    # Z
    .param p3, "target"    # Landroid/content/IntentSender;
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 1220
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1221
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1222
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1224
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_87

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 1227
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v3

    if-ne v3, p2, :cond_33

    .line 1228
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quiet mode is already "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    monitor-exit v0

    return-void

    .line 1231
    :cond_33
    iget v3, v1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit16 v3, v3, 0x80

    iput v3, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 1232
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 1233
    .local v3, "profileUserData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_a6

    .line 1234
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1235
    :try_start_43
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1236
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_84

    .line 1238
    const/4 v0, 0x0

    if-eqz p2, :cond_60

    .line 1239
    :try_start_4a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5, v0}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    .line 1240
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1241
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->killForegroundAppsForUser(I)V

    goto :goto_71

    .line 1250
    :catch_5e
    move-exception v0

    goto :goto_75

    .line 1243
    :cond_60
    if-eqz p3, :cond_68

    .line 1244
    new-instance v0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

    invoke-direct {v0, p0, p3}, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/IntentSender;)V

    goto :goto_69

    .line 1245
    :cond_68
    nop

    :goto_69
    nop

    .line 1246
    .local v0, "callback":Landroid/os/IProgressListener;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p1, v0}, Landroid/app/IActivityManager;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    .line 1249
    .end local v0    # "callback":Landroid/os/IProgressListener;
    :goto_71
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/UserManagerService;->logQuietModeEnabled(IZLjava/lang/String;)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_74} :catch_5e

    .line 1253
    goto :goto_78

    .line 1252
    .local v0, "e":Landroid/os/RemoteException;
    :goto_75
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1254
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_78
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    .line 1256
    return-void

    .line 1236
    :catchall_84
    move-exception v0

    :try_start_85
    monitor-exit v4
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v0

    .line 1225
    .end local v3    # "profileUserData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_87
    :try_start_87
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    .end local p2    # "enableQuietMode":Z
    .end local p3    # "target":Landroid/content/IntentSender;
    .end local p4    # "callingPackage":Ljava/lang/String;
    throw v3

    .line 1233
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "enableQuietMode":Z
    .restart local p3    # "target":Landroid/content/IntentSender;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    :catchall_a6
    move-exception v1

    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_87 .. :try_end_a8} :catchall_a6

    throw v1
.end method

.method private setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountOptions"    # Landroid/os/PersistableBundle;
    .param p5, "persist"    # Z

    .line 5473
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5475
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4e

    .line 5476
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 5477
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_27

    .line 5478
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such user for settings seed data u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5479
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_4b

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_4e

    return-void

    .line 5481
    :cond_27
    const/16 v3, 0x1f4

    :try_start_29
    invoke-direct {p0, p2, v3}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 5483
    invoke-direct {p0, p3, v3}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 5485
    if-eqz p4, :cond_41

    const/16 v3, 0x3e8

    invoke-virtual {p4, v3}, Landroid/os/PersistableBundle;->isBundleContentsWithinLengthLimit(I)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 5487
    iput-object p4, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 5489
    :cond_41
    iput-boolean p5, v2, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 5490
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_4b

    .line 5491
    if-eqz p5, :cond_49

    .line 5492
    :try_start_46
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 5494
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4e

    .line 5495
    return-void

    .line 5490
    :catchall_4b
    move-exception v2

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    .end local p2    # "accountName":Ljava/lang/String;
    .end local p3    # "accountType":Ljava/lang/String;
    .end local p4    # "accountOptions":Landroid/os/PersistableBundle;
    .end local p5    # "persist":Z
    :try_start_4d
    throw v2

    .line 5494
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "accountName":Ljava/lang/String;
    .restart local p3    # "accountType":Ljava/lang/String;
    .restart local p4    # "accountOptions":Landroid/os/PersistableBundle;
    .restart local p5    # "persist":Z
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_4e

    throw v1
.end method

.method private showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "target"    # Landroid/content/IntentSender;

    .line 1304
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1309
    .local v0, "km":Landroid/app/KeyguardManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v1

    .line 1310
    .local v1, "unlockIntent":Landroid/content/Intent;
    if-nez v1, :cond_12

    .line 1311
    return-void

    .line 1313
    :cond_12
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1315
    .local v2, "callBackIntent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.INTENT"

    if-eqz p2, :cond_20

    .line 1316
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1318
    :cond_20
    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1319
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1320
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1321
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x54000000

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1330
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1331
    const/high16 v3, 0x10800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1332
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1333
    return-void
.end method

.method private someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .line 5571
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_22

    .line 5575
    :cond_d
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5577
    .local v0, "account":Landroid/accounts/Account;
    new-instance v1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 5572
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_22
    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method private someUserHasSeedAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .line 5545
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5546
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 5547
    .local v1, "userSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_4a

    .line 5548
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    .line 5549
    .local v3, "data":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_47

    .line 5550
    :cond_1d
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    goto :goto_47

    .line 5551
    :cond_2a
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v4, :cond_47

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 5552
    goto :goto_47

    .line 5554
    :cond_37
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v4, :cond_47

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 5555
    goto :goto_47

    .line 5557
    :cond_44
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 5547
    .end local v3    # "data":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_47
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 5559
    .end local v1    # "userSize":I
    .end local v2    # "i":I
    :cond_4a
    monitor-exit v0

    .line 5560
    const/4 v0, 0x0

    return v0

    .line 5559
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method private throwCheckedUserOperationException(Ljava/lang/String;I)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "userOperationResult"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    .line 6399
    const-string v0, "UserManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6400
    new-instance v0, Landroid/os/UserManager$CheckedUserOperationException;

    invoke-direct {v0, p1, p2}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private truncateString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .line 3494
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_9

    goto :goto_f

    .line 3497
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3495
    :cond_f
    :goto_f
    return-object p1
.end method

.method private updateLocalRestrictionsForTargetUsersLR(ILcom/android/server/pm/RestrictionsSet;Ljava/util/List;)Z
    .registers 9
    .param p1, "originatingUserId"    # I
    .param p2, "local"    # Lcom/android/server/pm/RestrictionsSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/pm/RestrictionsSet;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 2100
    .local p3, "updatedTargetUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 2101
    .local v0, "changed":Z
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2102
    .local v2, "targetUserId":I
    invoke-virtual {p2, v2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    .line 2103
    .local v3, "restrictions":Landroid/os/Bundle;
    if-nez v3, :cond_21

    .line 2104
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v3, v4

    .line 2106
    :cond_21
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v4

    .line 2107
    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2108
    const/4 v0, 0x1

    .line 2110
    .end local v2    # "targetUserId":I
    .end local v3    # "restrictions":Landroid/os/Bundle;
    :cond_2c
    goto :goto_5

    .line 2111
    :cond_2d
    return v0
.end method

.method private updateUserIds()V
    .registers 13

    .line 5272
    const/4 v0, 0x0

    .line 5273
    .local v0, "num":I
    const/4 v1, 0x0

    .line 5274
    .local v1, "numIncludingPreCreated":I
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5275
    :try_start_5
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 5276
    .local v3, "userSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v3, :cond_27

    .line 5277
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5278
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_24

    .line 5279
    add-int/lit8 v1, v1, 0x1

    .line 5280
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v6, :cond_24

    .line 5281
    add-int/lit8 v0, v0, 0x1

    .line 5276
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 5289
    .end local v4    # "i":I
    :cond_27
    new-array v4, v0, [I

    .line 5290
    .local v4, "newUsers":[I
    new-array v5, v1, [I

    .line 5292
    .local v5, "newUsersIncludingPreCreated":[I
    const/4 v6, 0x0

    .line 5293
    .local v6, "n":I
    const/4 v7, 0x0

    .line 5294
    .local v7, "nIncludingPreCreated":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2e
    if-ge v8, v3, :cond_57

    .line 5295
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v9, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 5296
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    iget-boolean v10, v9, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v10, :cond_54

    .line 5297
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 5298
    .local v10, "userId":I
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "nIncludingPreCreated":I
    .local v11, "nIncludingPreCreated":I
    aput v10, v5, v7

    .line 5299
    iget-boolean v7, v9, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v7, :cond_53

    .line 5300
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "n":I
    .local v7, "n":I
    aput v10, v4, v6

    move v6, v7

    move v7, v11

    goto :goto_54

    .line 5299
    .end local v7    # "n":I
    .restart local v6    # "n":I
    :cond_53
    move v7, v11

    .line 5294
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v10    # "userId":I
    .end local v11    # "nIncludingPreCreated":I
    .local v7, "nIncludingPreCreated":I
    :cond_54
    :goto_54
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 5304
    .end local v8    # "i":I
    :cond_57
    iput-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    .line 5305
    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    .line 5310
    .end local v3    # "userSize":I
    .end local v4    # "newUsers":[I
    .end local v5    # "newUsersIncludingPreCreated":[I
    .end local v6    # "n":I
    .end local v7    # "nIncludingPreCreated":I
    monitor-exit v2

    .line 5311
    return-void

    .line 5310
    :catchall_5d
    move-exception v3

    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_5d

    throw v3
.end method

.method private updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    .registers 8
    .param p1, "newBaseRestrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .line 2325
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 2326
    invoke-virtual {v0, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 2325
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2329
    .local v0, "prevAppliedRestrictions":Landroid/os/Bundle;
    if-eqz p1, :cond_38

    .line 2331
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 2333
    .local v1, "prevBaseRestrictions":Landroid/os/Bundle;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p1, :cond_18

    move v4, v2

    goto :goto_19

    :cond_18
    move v4, v3

    :goto_19
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2334
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    if-eq v4, p1, :cond_25

    goto :goto_26

    :cond_25
    move v2, v3

    :goto_26
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2337
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2338
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2342
    .end local v1    # "prevBaseRestrictions":Landroid/os/Bundle;
    :cond_38
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v1

    .line 2344
    .local v1, "effective":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v2, p2, v1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 2352
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v2, :cond_4f

    .line 2353
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v3, p0, v1, p2}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2365
    :cond_4f
    invoke-direct {p0, p2, v1, v0}, Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2367
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p2, v3}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 2368
    return-void
.end method

.method private upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "oldGlobalUserRestrictions"    # Landroid/os/Bundle;

    .line 3008
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP(Landroid/os/Bundle;II)V

    .line 3009
    return-void
.end method

.method private upgradeUserTypesLU(Ljava/util/List;Landroid/util/ArrayMap;ILjava/util/Set;)V
    .registers 12
    .param p3, "formerUserTypeVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3203
    .local p1, "upgradeOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;>;"
    .local p2, "userTypes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails;>;"
    .local p4, "userIdsToWrite":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;

    .line 3211
    .local v1, "userTypeUpgrade":Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;
    invoke-virtual {v1}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->getUpToVersion()I

    move-result v2

    if-gt p3, v2, :cond_73

    .line 3212
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_73

    .line 3213
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3214
    .local v3, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    invoke-virtual {v1}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->getFromType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v5, v5, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 3215
    nop

    .line 3216
    invoke-virtual {v1}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->getToType()Ljava/lang/String;

    move-result-object v4

    .line 3215
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserTypeDetails;

    .line 3218
    .local v4, "newUserType":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v4, :cond_53

    .line 3224
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p0, v5, v4}, Lcom/android/server/pm/UserManagerService;->upgradeProfileToTypeLU(Landroid/content/pm/UserInfo;Lcom/android/server/pm/UserTypeDetails;)V

    .line 3225
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 3219
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrade destination user type not defined: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3221
    invoke-virtual {v1}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->getToType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3212
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v4    # "newUserType":Lcom/android/server/pm/UserTypeDetails;
    :cond_70
    :goto_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 3229
    .end local v1    # "userTypeUpgrade":Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;
    .end local v2    # "i":I
    :cond_73
    goto :goto_4

    .line 3230
    :cond_74
    return-void
.end method

.method private userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "orig"    # Landroid/content/pm/UserInfo;

    .line 1441
    if-eqz p1, :cond_24

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 1442
    const/4 v0, 0x0

    .line 1443
    .local v0, "name":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_10

    .line 1448
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 1449
    :cond_10
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1450
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getGuestName()Ljava/lang/String;

    move-result-object v0

    .line 1452
    :cond_1a
    :goto_1a
    if-eqz v0, :cond_24

    .line 1453
    new-instance v1, Landroid/content/pm/UserInfo;

    invoke-direct {v1, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 1454
    .local v1, "withName":Landroid/content/pm/UserInfo;
    iput-object v0, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1455
    return-object v1

    .line 1458
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "withName":Landroid/content/pm/UserInfo;
    :cond_24
    return-object p1
.end method

.method static validateName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .line 5009
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5010
    .local v0, "n":I
    const/4 v1, 0x1

    .line 5011
    .local v1, "front":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_50

    .line 5012
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 5013
    .local v3, "c":C
    const/16 v4, 0x61

    if-lt v3, v4, :cond_14

    const/16 v4, 0x7a

    if-le v3, v4, :cond_1c

    :cond_14
    const/16 v4, 0x41

    if-lt v3, v4, :cond_1e

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_1e

    .line 5014
    :cond_1c
    const/4 v1, 0x0

    .line 5015
    goto :goto_33

    .line 5017
    :cond_1e
    if-nez v1, :cond_36

    .line 5018
    const/16 v4, 0x30

    if-lt v3, v4, :cond_28

    const/16 v4, 0x39

    if-le v3, v4, :cond_33

    :cond_28
    const/16 v4, 0x5f

    if-ne v3, v4, :cond_2d

    .line 5019
    goto :goto_33

    .line 5021
    :cond_2d
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_36

    .line 5022
    const/4 v1, 0x1

    .line 5023
    nop

    .line 5011
    .end local v3    # "c":C
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5026
    .restart local v3    # "c":C
    :cond_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 5028
    .end local v2    # "i":I
    .end local v3    # "c":C
    :cond_50
    const/4 v2, 0x0

    return-object v2
.end method

.method private verifyCallingPackage(Ljava/lang/String;I)V
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 6505
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 6506
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3, v1}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 6507
    .local v0, "packageUid":I
    if-ne v0, p2, :cond_13

    .line 6511
    return-void

    .line 6508
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match the calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeAllTargetUsersLP(I)V
    .registers 6
    .param p1, "originatingUserId"    # I

    .line 3362
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 3363
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 3364
    .local v1, "targetUserId":I
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/RestrictionsSet;

    .line 3365
    .local v2, "restrictionsSet":Lcom/android/server/pm/RestrictionsSet;
    invoke-virtual {v2, p1}, Lcom/android/server/pm/RestrictionsSet;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 3366
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3362
    .end local v1    # "targetUserId":I
    .end local v2    # "restrictionsSet":Lcom/android/server/pm/RestrictionsSet;
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3369
    .end local v0    # "i":I
    :cond_27
    return-void
.end method

.method static writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .registers 8
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "restrictionsFile"    # Landroid/util/AtomicFile;

    .line 5147
    const-string/jumbo v0, "restrictions"

    const/4 v1, 0x0

    .line 5149
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 5150
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 5151
    .local v2, "serializer":Landroid/util/TypedXmlSerializer;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5152
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v4, v3}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 5154
    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5155
    invoke-static {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Landroid/util/TypedXmlSerializer;)V

    .line 5156
    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5158
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 5159
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2a} :catch_2b

    .line 5163
    .end local v2    # "serializer":Landroid/util/TypedXmlSerializer;
    goto :goto_36

    .line 5160
    :catch_2b
    move-exception v0

    .line 5161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 5162
    const-string v2, "UserManagerService"

    const-string v3, "Error writing application restrictions list"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_36
    return-void
.end method

.method private static writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .line 5138
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 5139
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 5140
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 5141
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {p1, v0}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    .line 5142
    return-void
.end method

.method private writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 10
    .param p1, "info"    # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 2845
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2846
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "photo.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2847
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "photo.png.tmp"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2848
    .local v2, "tmp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_31

    .line 2849
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2850
    nop

    .line 2851
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    .line 2850
    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2856
    :cond_31
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v5

    .local v6, "os":Ljava/io/FileOutputStream;
    invoke-virtual {p2, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 2857
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 2858
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_53} :catch_5d

    .line 2861
    :cond_53
    :try_start_53
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_56} :catch_5d

    .line 2864
    goto :goto_58

    .line 2862
    :catch_57
    move-exception v3

    .line 2865
    :goto_58
    :try_start_58
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_5b} :catch_5d

    .line 2868
    nop

    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "tmp":Ljava/io/File;
    .end local v6    # "os":Ljava/io/FileOutputStream;
    goto :goto_65

    .line 2866
    :catch_5d
    move-exception v0

    .line 2867
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "UserManagerService"

    const-string v2, "Error setting photo for user "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2869
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_65
    return-void
.end method

.method private static writeBundle(Landroid/os/Bundle;Landroid/util/TypedXmlSerializer;)V
    .registers 14
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5168
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5169
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 5170
    .local v2, "value":Ljava/lang/Object;
    const/4 v3, 0x0

    const-string v4, "entry"

    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5171
    const-string v5, "key"

    invoke-interface {p1, v3, v5, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5173
    instance-of v5, v2, Ljava/lang/Boolean;

    const-string/jumbo v6, "type"

    if-eqz v5, :cond_38

    .line 5174
    const-string v5, "b"

    invoke-interface {p1, v3, v6, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5175
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_ca

    .line 5176
    :cond_38
    instance-of v5, v2, Ljava/lang/Integer;

    if-eqz v5, :cond_4a

    .line 5177
    const-string v5, "i"

    invoke-interface {p1, v3, v6, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5178
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_ca

    .line 5179
    :cond_4a
    const-string v5, ""

    if-eqz v2, :cond_bc

    instance-of v7, v2, Ljava/lang/String;

    if-eqz v7, :cond_53

    goto :goto_bc

    .line 5182
    :cond_53
    instance-of v7, v2, Landroid/os/Bundle;

    const-string v8, "B"

    if-eqz v7, :cond_63

    .line 5183
    invoke-interface {p1, v3, v6, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5184
    move-object v5, v2

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v5, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Landroid/util/TypedXmlSerializer;)V

    goto :goto_ca

    .line 5185
    :cond_63
    instance-of v7, v2, [Landroid/os/Parcelable;

    const/4 v9, 0x0

    if-eqz v7, :cond_94

    .line 5186
    const-string v5, "BA"

    invoke-interface {p1, v3, v6, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5187
    move-object v5, v2

    check-cast v5, [Landroid/os/Parcelable;

    .line 5188
    .local v5, "array":[Landroid/os/Parcelable;
    array-length v7, v5

    :goto_71
    if-ge v9, v7, :cond_93

    aget-object v10, v5, v9

    .line 5189
    .local v10, "parcelable":Landroid/os/Parcelable;
    instance-of v11, v10, Landroid/os/Bundle;

    if-eqz v11, :cond_8b

    .line 5192
    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5193
    invoke-interface {p1, v3, v6, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5194
    move-object v11, v10

    check-cast v11, Landroid/os/Bundle;

    invoke-static {v11, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Landroid/util/TypedXmlSerializer;)V

    .line 5195
    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5188
    .end local v10    # "parcelable":Landroid/os/Parcelable;
    add-int/lit8 v9, v9, 0x1

    goto :goto_71

    .line 5190
    .restart local v10    # "parcelable":Landroid/os/Parcelable;
    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "bundle-array can only hold Bundles"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5197
    .end local v5    # "array":[Landroid/os/Parcelable;
    .end local v10    # "parcelable":Landroid/os/Parcelable;
    :cond_93
    goto :goto_ca

    .line 5198
    :cond_94
    const-string/jumbo v7, "sa"

    invoke-interface {p1, v3, v6, v7}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5199
    move-object v6, v2

    check-cast v6, [Ljava/lang/String;

    .line 5200
    .local v6, "values":[Ljava/lang/String;
    array-length v7, v6

    const-string v8, "m"

    invoke-interface {p1, v3, v8, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5201
    array-length v7, v6

    :goto_a4
    if-ge v9, v7, :cond_ca

    aget-object v8, v6, v9

    .line 5202
    .local v8, "choice":Ljava/lang/String;
    const-string/jumbo v10, "value"

    invoke-interface {p1, v3, v10}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5203
    if-eqz v8, :cond_b2

    move-object v11, v8

    goto :goto_b3

    :cond_b2
    move-object v11, v5

    :goto_b3
    invoke-interface {p1, v11}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5204
    invoke-interface {p1, v3, v10}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5201
    .end local v8    # "choice":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_a4

    .line 5180
    .end local v6    # "values":[Ljava/lang/String;
    :cond_bc
    :goto_bc
    const-string/jumbo v7, "s"

    invoke-interface {p1, v3, v6, v7}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5181
    if-eqz v2, :cond_c7

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    :cond_c7
    invoke-interface {p1, v5}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5207
    :cond_ca
    :goto_ca
    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5208
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto/16 :goto_8

    .line 5209
    :cond_cf
    return-void
.end method

.method private writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 8
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;

    .line 3375
    const/4 v0, 0x0

    .line 3376
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3378
    .local v1, "userFile":Landroid/util/AtomicFile;
    :try_start_24
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 3379
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V

    .line 3380
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 3382
    invoke-static {}, Lcom/android/server/MiuiFallbackHelperStub;->getInstance()Lcom/android/server/MiuiFallbackHelperStub;

    move-result-object v2

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/MiuiFallbackHelperStub;->snapshotFile(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3e} :catch_3f

    .line 3386
    goto :goto_5f

    .line 3383
    :catch_3f
    move-exception v2

    .line 3384
    .local v2, "ioe":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing user info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserManagerService"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3385
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3387
    .end local v2    # "ioe":Ljava/lang/Exception;
    :goto_5f
    return-void
.end method

.method private writeUserListLP()V
    .registers 10

    .line 3513
    const/4 v0, 0x0

    .line 3514
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3516
    .local v1, "userListFile":Landroid/util/AtomicFile;
    :try_start_8
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 3517
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 3518
    .local v2, "serializer":Landroid/util/TypedXmlSerializer;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3519
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v4, v3}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3521
    const-string/jumbo v3, "users"

    invoke-interface {v2, v5, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3522
    const-string/jumbo v3, "nextSerialNumber"

    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-interface {v2, v5, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3523
    const-string/jumbo v3, "version"

    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-interface {v2, v5, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3524
    const-string/jumbo v3, "userTypeConfigVersion"

    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    invoke-interface {v2, v5, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3526
    const-string v3, "guestRestrictions"

    invoke-interface {v2, v5, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3527
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v3
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_45} :catch_b3

    .line 3528
    :try_start_45
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v6, "restrictions"

    .line 3529
    invoke-static {v2, v4, v6}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Landroid/util/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3530
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_b0

    .line 3531
    :try_start_4e
    const-string v3, "guestRestrictions"

    invoke-interface {v2, v5, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3532
    const-string v3, "deviceOwnerUserId"

    invoke-interface {v2, v5, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3533
    const-string v3, "id"

    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-interface {v2, v5, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3534
    const-string v3, "deviceOwnerUserId"

    invoke-interface {v2, v5, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3536
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_67} :catch_b3

    .line 3537
    :try_start_67
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 3538
    .local v4, "userIdsToWrite":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_70
    array-length v7, v4

    if-ge v6, v7, :cond_84

    .line 3539
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3540
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    aput v8, v4, v6

    .line 3538
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_70

    .line 3542
    .end local v6    # "i":I
    :cond_84
    monitor-exit v3
    :try_end_85
    .catchall {:try_start_67 .. :try_end_85} :catchall_ad

    .line 3543
    :try_start_85
    array-length v3, v4

    const/4 v6, 0x0

    :goto_87
    if-ge v6, v3, :cond_a0

    aget v7, v4, v6

    .line 3544
    .local v7, "id":I
    const-string/jumbo v8, "user"

    invoke-interface {v2, v5, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3545
    const-string v8, "id"

    invoke-interface {v2, v5, v8, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3546
    const-string/jumbo v8, "user"

    invoke-interface {v2, v5, v8}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3543
    nop

    .end local v7    # "id":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_87

    .line 3549
    :cond_a0
    const-string/jumbo v3, "users"

    invoke-interface {v2, v5, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3551
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 3552
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_ac} :catch_b3

    .line 3556
    .end local v2    # "serializer":Landroid/util/TypedXmlSerializer;
    .end local v4    # "userIdsToWrite":[I
    goto :goto_be

    .line 3542
    .restart local v2    # "serializer":Landroid/util/TypedXmlSerializer;
    :catchall_ad
    move-exception v4

    :try_start_ae
    monitor-exit v3
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "userListFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_af
    throw v4
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b0} :catch_b3

    .line 3530
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "userListFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :catchall_b0
    move-exception v4

    :try_start_b1
    monitor-exit v3
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "userListFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_b2
    throw v4
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b3} :catch_b3

    .line 3553
    .end local v2    # "serializer":Landroid/util/TypedXmlSerializer;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "userListFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    :catch_b3
    move-exception v2

    .line 3554
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3555
    const-string v3, "UserManagerService"

    const-string v4, "Error writing user list"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3557
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_be
    return-void
.end method


# virtual methods
.method addRemovingUserIdLocked(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 4738
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4739
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4741
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1e

    .line 4742
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 4744
    :cond_1e
    return-void
.end method

.method public addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/os/IUserRestrictionsListener;

    .line 2203
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_13

    .line 2210
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    new-instance v1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;-><init>(Landroid/os/IUserRestrictionsListener;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService$LocalService;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    .line 2219
    return-void

    .line 2204
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Non-system caller"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canAddMoreManagedProfiles(IZ)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "allowedToRemoveOne"    # Z

    .line 2564
    const-string v0, "android.os.usertype.profile.MANAGED"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z
    .registers 5
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "allowedToRemoveOne"    # Z

    .line 2572
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getRemainingCreatableProfileCount(Ljava/lang/String;IZ)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public canAddMoreUsersOfType(Ljava/lang/String;)Z
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;

    .line 2549
    const-string v0, "check if more users can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 2550
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 2551
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_17

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method public canHaveRestrictedProfile(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1778
    const-string v0, "canHaveRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1779
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1780
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1781
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_2d

    .line 1784
    :cond_16
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1785
    monitor-exit v0

    return v2

    .line 1788
    :cond_1e
    iget-boolean v3, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v3, :cond_2b

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    monitor-exit v0

    return v2

    .line 1782
    :cond_2d
    :goto_2d
    monitor-exit v0

    return v2

    .line 1789
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public clearSeedAccountData(I)V
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5526
    const-string v0, "Cannot clear seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 5527
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5529
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_20

    .line 5530
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 5531
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_14

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1d

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_20

    return-void

    .line 5532
    :cond_14
    :try_start_14
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService$UserData;->clearSeedAccountData()V

    .line 5533
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1d

    .line 5534
    :try_start_18
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 5535
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_20

    .line 5536
    return-void

    .line 5533
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    :try_start_1f
    throw v2

    .line 5535
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_20

    throw v1
.end method

.method public createProfileForUserEvenWhenDisallowedWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "disallowedPackages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 3783
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    .line 3785
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    :try_start_b
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_b .. :try_end_f} :catch_10

    return-object v0

    .line 3787
    :catch_10
    move-exception v0

    .line 3788
    .local v0, "e":Landroid/os/UserManager$CheckedUserOperationException;
    invoke-virtual {v0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object v1

    throw v1
.end method

.method public createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "disallowedPackages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 3767
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    .line 3769
    :try_start_3
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_3 .. :try_end_7} :catch_8

    return-object v0

    .line 3770
    :catch_8
    move-exception v0

    .line 3771
    .local v0, "e":Landroid/os/UserManager$CheckedUserOperationException;
    invoke-virtual {v0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object v1

    throw v1
.end method

.method public createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentUserId"    # I

    .line 4517
    const-string/jumbo v0, "setupRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 4518
    const-string v3, "android.os.usertype.full.RESTRICTED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 4520
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_15

    .line 4521
    const/4 v1, 0x0

    return-object v1

    .line 4523
    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4525
    .local v1, "identity":J
    :try_start_19
    const-string/jumbo v3, "no_modify_accounts"

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 4528
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    const/4 v6, 0x0

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4531
    const-string/jumbo v3, "no_share_location"

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_38
    .catchall {:try_start_19 .. :try_end_38} :catchall_3d

    .line 4533
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4534
    nop

    .line 4535
    return-object v0

    .line 4533
    :catchall_3d
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4534
    throw v3
.end method

.method public createUserWithAttributes(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/os/UserHandle;
    .registers 19
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userIcon"    # Landroid/graphics/Bitmap;
    .param p5, "accountName"    # Ljava/lang/String;
    .param p6, "accountType"    # Ljava/lang/String;
    .param p7, "accountOptions"    # Landroid/os/PersistableBundle;

    .line 3830
    move-object v7, p0

    move-object v8, p4

    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    .line 3832
    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct {p0, v9, v10}, Lcom/android/server/pm/UserManagerService;->someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 3839
    const/16 v5, -0x2710

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    :try_start_16
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_1a
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_16 .. :try_end_1a} :catch_3f

    .line 3842
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_38

    .line 3847
    nop

    .line 3849
    if-eqz v8, :cond_26

    .line 3850
    iget-object v1, v7, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, p4}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 3853
    :cond_26
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    .line 3855
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    return-object v1

    .line 3843
    :cond_38
    :try_start_38
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/ServiceSpecificException;-><init>(I)V

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userName":Ljava/lang/String;
    .end local p2    # "userType":Ljava/lang/String;
    .end local p3    # "flags":I
    .end local p4    # "userIcon":Landroid/graphics/Bitmap;
    .end local p5    # "accountName":Ljava/lang/String;
    .end local p6    # "accountType":Ljava/lang/String;
    .end local p7    # "accountOptions":Landroid/os/PersistableBundle;
    throw v1
    :try_end_3f
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_38 .. :try_end_3f} :catch_3f

    .line 3845
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userName":Ljava/lang/String;
    .restart local p2    # "userType":Ljava/lang/String;
    .restart local p3    # "flags":I
    .restart local p4    # "userIcon":Landroid/graphics/Bitmap;
    .restart local p5    # "accountName":Ljava/lang/String;
    .restart local p6    # "accountType":Ljava/lang/String;
    .restart local p7    # "accountOptions":Landroid/os/PersistableBundle;
    :catch_3f
    move-exception v0

    .line 3846
    .local v0, "e":Landroid/os/UserManager$CheckedUserOperationException;
    invoke-virtual {v0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object v1

    throw v1

    .line 3833
    .end local v0    # "e":Landroid/os/UserManager$CheckedUserOperationException;
    :cond_45
    new-instance v0, Landroid/os/ServiceSpecificException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw v0
.end method

.method public createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 3796
    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    .line 3798
    const/16 v4, -0x2710

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    :try_start_a
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_a .. :try_end_e} :catch_f

    return-object v0

    .line 3800
    :catch_f
    move-exception v0

    .line 3801
    .local v0, "e":Landroid/os/UserManager$CheckedUserOperationException;
    invoke-virtual {v0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object v1

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 5756
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    iget-object v0, v13, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v1, "UserManagerService"

    invoke-static {v0, v1, v14}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 5758
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 5759
    .local v16, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 5760
    .local v18, "nowRealtime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5762
    .local v4, "sb":Ljava/lang/StringBuilder;
    if-eqz v15, :cond_41

    array-length v0, v15

    if-lez v0, :cond_41

    const/4 v0, 0x0

    aget-object v0, v15, v0

    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 5763
    const/4 v0, 0x1

    aget-object v0, v15, v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/UserManagerService;->dumpUser(Ljava/io/PrintWriter;ILjava/lang/StringBuilder;JJ)V

    .line 5764
    return-void

    .line 5767
    :cond_41
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 5768
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 5769
    .local v1, "amInternal":Landroid/app/ActivityManagerInternal;
    const-string v0, "Current user: "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5770
    if-eqz v1, :cond_59

    .line 5771
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_5e

    .line 5773
    :cond_59
    const-string v0, "N/A"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5776
    :goto_5e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5777
    iget-object v2, v13, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5778
    :try_start_64
    iget-object v3, v13, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_359

    .line 5779
    :try_start_67
    const-string v0, "Users:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5780
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6d
    iget-object v5, v13, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_93

    .line 5781
    iget-object v5, v13, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    move-object/from16 v20, v5

    .line 5782
    .local v20, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v20, :cond_82

    .line 5783
    goto :goto_90

    .line 5785
    :cond_82
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, v20

    move-object v8, v4

    move-wide/from16 v9, v16

    move-wide/from16 v11, v18

    invoke-direct/range {v5 .. v12}, Lcom/android/server/pm/UserManagerService;->dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V

    .line 5780
    .end local v20    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :goto_90
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 5787
    .end local v0    # "i":I
    :cond_93
    monitor-exit v3
    :try_end_94
    .catchall {:try_start_67 .. :try_end_94} :catchall_356

    .line 5789
    :try_start_94
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5790
    const-string v0, "Device properties:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Device owner id:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v13, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5792
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5793
    const-string v0, "  Guest restrictions:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5794
    iget-object v3, v13, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v3
    :try_end_bf
    .catchall {:try_start_94 .. :try_end_bf} :catchall_359

    .line 5795
    :try_start_bf
    const-string v0, "    "

    iget-object v5, v13, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v14, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5796
    monitor-exit v3
    :try_end_c7
    .catchall {:try_start_bf .. :try_end_c7} :catchall_353

    .line 5797
    :try_start_c7
    iget-object v3, v13, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_359

    .line 5798
    :try_start_ca
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Device managed: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, v13, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5800
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_108

    .line 5801
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Recently removed userIds: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v13, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5804
    :cond_108
    monitor-exit v3
    :try_end_109
    .catchall {:try_start_ca .. :try_end_109} :catchall_350

    .line 5805
    :try_start_109
    iget-object v3, v13, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v3
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_359

    .line 5806
    :try_start_10c
    const-string v0, "  Started users state: ["

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5807
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 5808
    .local v0, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11a
    if-ge v5, v0, :cond_147

    .line 5809
    iget-object v6, v13, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 5810
    .local v6, "userId":I
    iget-object v7, v13, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 5811
    .local v7, "state":I
    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 5812
    const/16 v8, 0x3d

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 5813
    invoke-static {v7}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5814
    add-int/lit8 v8, v0, -0x1

    if-eq v5, v8, :cond_144

    const-string v8, ", "

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5808
    .end local v6    # "userId":I
    .end local v7    # "state":I
    :cond_144
    add-int/lit8 v5, v5, 0x1

    goto :goto_11a

    .line 5816
    .end local v5    # "i":I
    :cond_147
    const/16 v5, 0x5d

    invoke-virtual {v14, v5}, Ljava/io/PrintWriter;->println(C)V

    .line 5817
    .end local v0    # "size":I
    monitor-exit v3
    :try_end_14d
    .catchall {:try_start_10c .. :try_end_14d} :catchall_34d

    .line 5818
    :try_start_14d
    iget-object v3, v13, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_150
    .catchall {:try_start_14d .. :try_end_150} :catchall_359

    .line 5819
    :try_start_150
    const-string v0, "  Cached user IDs: "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5820
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5821
    const-string v0, "  Cached user IDs (including pre-created): "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5822
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5823
    monitor-exit v3
    :try_end_16d
    .catchall {:try_start_150 .. :try_end_16d} :catchall_34a

    .line 5825
    :try_start_16d
    monitor-exit v2
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_359

    .line 5828
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (limit reached: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Supports switchable users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  All guests ephemeral: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111015c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Force ephemeral users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, v13, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Is split-system user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Is headless-system mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  User version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v13, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Owner name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5843
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5844
    const-string v0, "Number of listeners for"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5845
    iget-object v3, v13, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 5846
    :try_start_26f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  restrictions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v13, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5847
    monitor-exit v3
    :try_end_28c
    .catchall {:try_start_26f .. :try_end_28c} :catchall_347

    .line 5848
    iget-object v2, v13, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 5849
    :try_start_28f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  user lifecycle events: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v13, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5850
    monitor-exit v2
    :try_end_2ac
    .catchall {:try_start_28f .. :try_end_2ac} :catchall_344

    .line 5853
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User types version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v13, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User types ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v13, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " types):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5856
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2ea
    iget-object v2, v13, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_326

    .line 5857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5858
    iget-object v2, v13, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserTypeDetails;

    const-string v3, "        "

    invoke-virtual {v2, v14, v3}, Lcom/android/server/pm/UserTypeDetails;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5856
    add-int/lit8 v0, v0, 0x1

    goto :goto_2ea

    .line 5863
    .end local v0    # "i":I
    :cond_326
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, v14}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v0

    .line 5866
    .local v2, "ipw":Landroid/util/IndentingPrintWriter;
    :try_start_32c
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 5867
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserSystemPackageInstaller;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_334
    .catchall {:try_start_32c .. :try_end_334} :catchall_338

    .line 5871
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->close()V

    .line 5872
    .end local v2    # "ipw":Landroid/util/IndentingPrintWriter;
    return-void

    .line 5863
    .restart local v2    # "ipw":Landroid/util/IndentingPrintWriter;
    :catchall_338
    move-exception v0

    move-object v3, v0

    :try_start_33a
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_33d
    .catchall {:try_start_33a .. :try_end_33d} :catchall_33e

    goto :goto_343

    :catchall_33e
    move-exception v0

    move-object v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_343
    throw v3

    .line 5850
    .end local v2    # "ipw":Landroid/util/IndentingPrintWriter;
    :catchall_344
    move-exception v0

    :try_start_345
    monitor-exit v2
    :try_end_346
    .catchall {:try_start_345 .. :try_end_346} :catchall_344

    throw v0

    .line 5847
    :catchall_347
    move-exception v0

    :try_start_348
    monitor-exit v3
    :try_end_349
    .catchall {:try_start_348 .. :try_end_349} :catchall_347

    throw v0

    .line 5823
    :catchall_34a
    move-exception v0

    :try_start_34b
    monitor-exit v3
    :try_end_34c
    .catchall {:try_start_34b .. :try_end_34c} :catchall_34a

    .end local v1    # "amInternal":Landroid/app/ActivityManagerInternal;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "now":J
    .end local v18    # "nowRealtime":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_34c
    throw v0
    :try_end_34d
    .catchall {:try_start_34c .. :try_end_34d} :catchall_359

    .line 5817
    .restart local v1    # "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "now":J
    .restart local v18    # "nowRealtime":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_34d
    move-exception v0

    :try_start_34e
    monitor-exit v3
    :try_end_34f
    .catchall {:try_start_34e .. :try_end_34f} :catchall_34d

    .end local v1    # "amInternal":Landroid/app/ActivityManagerInternal;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "now":J
    .end local v18    # "nowRealtime":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_34f
    throw v0
    :try_end_350
    .catchall {:try_start_34f .. :try_end_350} :catchall_359

    .line 5804
    .restart local v1    # "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "now":J
    .restart local v18    # "nowRealtime":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_350
    move-exception v0

    :try_start_351
    monitor-exit v3
    :try_end_352
    .catchall {:try_start_351 .. :try_end_352} :catchall_350

    .end local v1    # "amInternal":Landroid/app/ActivityManagerInternal;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "now":J
    .end local v18    # "nowRealtime":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_352
    throw v0
    :try_end_353
    .catchall {:try_start_352 .. :try_end_353} :catchall_359

    .line 5796
    .restart local v1    # "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "now":J
    .restart local v18    # "nowRealtime":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_353
    move-exception v0

    :try_start_354
    monitor-exit v3
    :try_end_355
    .catchall {:try_start_354 .. :try_end_355} :catchall_353

    .end local v1    # "amInternal":Landroid/app/ActivityManagerInternal;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "now":J
    .end local v18    # "nowRealtime":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_355
    throw v0
    :try_end_356
    .catchall {:try_start_355 .. :try_end_356} :catchall_359

    .line 5787
    .restart local v1    # "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "now":J
    .restart local v18    # "nowRealtime":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_356
    move-exception v0

    :try_start_357
    monitor-exit v3
    :try_end_358
    .catchall {:try_start_357 .. :try_end_358} :catchall_356

    .end local v1    # "amInternal":Landroid/app/ActivityManagerInternal;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "now":J
    .end local v18    # "nowRealtime":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_358
    throw v0

    .line 5825
    .restart local v1    # "amInternal":Landroid/app/ActivityManagerInternal;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "now":J
    .restart local v18    # "nowRealtime":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_359
    move-exception v0

    monitor-exit v2
    :try_end_35b
    .catchall {:try_start_358 .. :try_end_35b} :catchall_359

    throw v0
.end method

.method public evictCredentialEncryptionKey(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1376
    const-string v0, "evict CE key"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1377
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1378
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1380
    .local v1, "identity":J
    :try_start_d
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->restartUserInBackground(I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_17
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    .line 1384
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1385
    nop

    .line 1386
    return-void

    .line 1384
    :catchall_15
    move-exception v3

    goto :goto_1d

    .line 1381
    :catch_17
    move-exception v3

    .line 1382
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_18
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    throw v4
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_15

    .line 1384
    .end local v3    # "re":Landroid/os/RemoteException;
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :goto_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1385
    throw v3
.end method

.method public exists(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1855
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v0

    return v0
.end method

.method public findCurrentGuestUser()Landroid/content/pm/UserInfo;
    .registers 7

    .line 4547
    const-string v0, "findCurrentGuestUser"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 4548
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4549
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4550
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_38

    .line 4551
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4552
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_35

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v4, :cond_35

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v4, :cond_35

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 4553
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_35

    .line 4554
    monitor-exit v0

    return-object v3

    .line 4550
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 4557
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_38
    monitor-exit v0

    .line 4558
    const/4 v0, 0x0

    return-object v0

    .line 4557
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4946
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4951
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_14

    .line 4952
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 4953
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get application restrictions for other user/app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 4955
    :cond_2a
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4957
    :try_start_2d
    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4958
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_33

    throw v1
.end method

.method public getCredentialOwnerProfile(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 1011
    const-string v0, "get the credential owner"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1013
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1014
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1015
    .local v1, "profileParent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_1a

    .line 1016
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return v2

    .line 1018
    .end local v1    # "profileParent":Landroid/content/pm/UserInfo;
    :cond_1a
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1c

    throw v1

    .line 1021
    :cond_1f
    :goto_1f
    return p1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .registers 4

    .line 1983
    const-string v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1984
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1985
    :try_start_8
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v0

    return-object v1

    .line 1986
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v1
.end method

.method getFreeProfileBadgeLU(ILjava/lang/String;)I
    .registers 9
    .param p1, "parentUserId"    # I
    .param p2, "userType"    # Ljava/lang/String;

    .line 6458
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6459
    .local v0, "usedBadges":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 6460
    .local v1, "userSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_3a

    .line 6461
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 6463
    .local v3, "ui":Landroid/content/pm/UserInfo;
    iget-object v4, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v4, p1, :cond_37

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 6465
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_37

    .line 6466
    iget v4, v3, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6460
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 6469
    .end local v2    # "i":I
    :cond_3a
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfTypePerParent(Ljava/lang/String;)I

    move-result v2

    .line 6470
    .local v2, "maxUsersOfType":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_44

    .line 6471
    const v2, 0x7fffffff

    .line 6473
    :cond_44
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_45
    if-ge v3, v2, :cond_55

    .line 6474
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 6475
    return v3

    .line 6473
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 6478
    .end local v3    # "i":I
    :cond_55
    const/4 v3, 0x0

    return v3
.end method

.method getInternalForInjectorOnly()Lcom/android/server/pm/UserManagerInternal;
    .registers 2

    .line 754
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    return-object v0
.end method

.method getMaxUsersOfTypePerParent(Ljava/lang/String;)I
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;

    .line 6428
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 6429
    .local v0, "type":Lcom/android/server/pm/UserTypeDetails;
    if-nez v0, :cond_c

    .line 6430
    const/4 v1, 0x0

    return v1

    .line 6432
    :cond_c
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfTypePerParent(Lcom/android/server/pm/UserTypeDetails;)I

    move-result v1

    return v1
.end method

.method getNextAvailableId()I
    .registers 8

    .line 5426
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5427
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v1

    .line 5428
    .local v1, "nextId":I
    if-ltz v1, :cond_b

    .line 5429
    monitor-exit v0

    return v1

    .line 5433
    :cond_b
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_41

    .line 5434
    const-string v2, "UserManagerService"

    const-string v3, "All available IDs are used. Recycling LRU ids."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5435
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5436
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 5437
    .local v3, "recentlyRemovedId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5438
    .end local v3    # "recentlyRemovedId":Ljava/lang/Integer;
    goto :goto_25

    .line 5439
    :cond_3c
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v2

    move v1, v2

    .line 5441
    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_50

    .line 5443
    invoke-static {}, Landroid/os/UserManager;->invalidateStaticUserProperties()V

    .line 5444
    if-ltz v1, :cond_48

    .line 5447
    return v1

    .line 5445
    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No user id available!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5441
    .end local v1    # "nextId":I
    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public getPreInstallableSystemPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;

    .line 4309
    const-string v0, "getPreInstallableSystemPackages"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 4310
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 4311
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 4312
    .local v0, "installableSystemPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_f

    .line 4313
    const/4 v1, 0x0

    return-object v1

    .line 4315
    :cond_f
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .registers 7

    .line 858
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 860
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 861
    .local v1, "userSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_31

    .line 862
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 863
    .local v3, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 864
    monitor-exit v0

    return-object v3

    .line 861
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 867
    .end local v1    # "userSize":I
    .end local v2    # "i":I
    :cond_31
    monitor-exit v0

    .line 868
    const/4 v0, 0x0

    return-object v0

    .line 867
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public getProfileIds(ILjava/lang/String;Z)[I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "enabledOnly"    # Z

    .line 937
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_1c

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting profiles related to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 940
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 942
    .local v0, "ident":J
    :try_start_20
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_33

    .line 943
    :try_start_23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(ILjava/lang/String;Z)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_30

    .line 946
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 943
    return-object v3

    .line 944
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    .end local p2    # "userType":Ljava/lang/String;
    .end local p3    # "enabledOnly":Z
    :try_start_32
    throw v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 946
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "userType":Ljava/lang/String;
    .restart local p3    # "enabledOnly":Z
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 947
    throw v2
.end method

.method public getProfileIds(IZ)[I
    .registers 4
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z

    .line 924
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIds(ILjava/lang/String;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "userId"    # I

    .line 1048
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1053
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1054
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1055
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v1

    .line 1049
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need MANAGE_USERS or INTERACT_ACROSS_USERS permission to get the profile parent"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProfileParentId(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 1060
    const-string v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result v0

    return v0
.end method

.method public getProfileType(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .line 1580
    const-string v0, "getProfileType"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1581
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1582
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1583
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_1b

    .line 1584
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_19

    :cond_17
    const-string v2, ""

    :goto_19
    monitor-exit v0

    return-object v2

    .line 1586
    :cond_1b
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1587
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 904
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_1e

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting profiles related to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 906
    const/4 v0, 0x1

    .local v0, "returnFullInfo":Z
    goto :goto_22

    .line 908
    .end local v0    # "returnFullInfo":Z
    :cond_1e
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasCreateUsersPermission()Z

    move-result v0

    .line 910
    .restart local v0    # "returnFullInfo":Z
    :goto_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 912
    .local v1, "ident":J
    :try_start_26
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_36

    .line 913
    const/4 v4, 0x0

    :try_start_2a
    invoke-direct {p0, p1, v4, p2, v0}, Lcom/android/server/pm/UserManagerService;->getProfilesLU(ILjava/lang/String;ZZ)Ljava/util/List;

    move-result-object v4

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_33

    .line 916
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 913
    return-object v4

    .line 914
    :catchall_33
    move-exception v4

    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    .end local v0    # "returnFullInfo":Z
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    .end local p2    # "enabledOnly":Z
    :try_start_35
    throw v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 916
    .restart local v0    # "returnFullInfo":Z
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "enabledOnly":Z
    :catchall_36
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 917
    throw v3
.end method

.method public getRemainingCreatableProfileCount(Ljava/lang/String;I)I
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2577
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->getRemainingCreatableProfileCount(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getRemainingCreatableUserCount(Ljava/lang/String;)I
    .registers 10
    .param p1, "userType"    # Ljava/lang/String;

    .line 2483
    const-string v0, "get the remaining number of users that can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2484
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 2485
    .local v0, "type":Lcom/android/server/pm/UserTypeDetails;
    const/4 v1, 0x0

    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_7f

    .line 2488
    :cond_18
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2489
    :try_start_1b
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v3

    .line 2493
    .local v3, "userCount":I
    invoke-static {p1}, Landroid/os/UserManager;->isUserTypeGuest(Ljava/lang/String;)Z

    move-result v4

    const v5, 0x7fffffff

    if-nez v4, :cond_35

    invoke-static {p1}, Landroid/os/UserManager;->isUserTypeDemo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_35

    .line 2495
    :cond_2f
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v4

    sub-int/2addr v4, v3

    goto :goto_36

    .line 2494
    :cond_35
    :goto_35
    move v4, v5

    .line 2495
    :goto_36
    nop

    .line 2498
    .local v4, "result":I
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 2499
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.software.managed_users"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 2501
    monitor-exit v2

    return v1

    .line 2504
    :cond_4d
    const/4 v6, 0x1

    if-gtz v4, :cond_52

    move v7, v6

    goto :goto_53

    :cond_52
    move v7, v1

    :goto_53
    if-ne v3, v6, :cond_56

    goto :goto_57

    :cond_56
    move v6, v1

    :goto_57
    and-int/2addr v6, v7

    if-eqz v6, :cond_5b

    .line 2505
    const/4 v4, 0x1

    .line 2508
    :cond_5b
    if-gtz v4, :cond_5f

    .line 2509
    monitor-exit v2

    return v1

    .line 2513
    :cond_5f
    nop

    .line 2514
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowed()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_68

    .line 2515
    goto :goto_71

    .line 2516
    :cond_68
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowed()I

    move-result v5

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    .line 2513
    :goto_71
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v4, v5

    .line 2518
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    monitor-exit v2

    return v1

    .line 2519
    .end local v3    # "userCount":I
    .end local v4    # "result":I
    :catchall_7c
    move-exception v1

    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_1b .. :try_end_7e} :catchall_7c

    throw v1

    .line 2486
    :cond_7f
    :goto_7f
    return v1
.end method

.method public getSeedAccountName(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5499
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 5500
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5501
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 5502
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v1, :cond_10

    const/4 v2, 0x0

    goto :goto_12

    :cond_10
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    :goto_12
    monitor-exit v0

    return-object v2

    .line 5503
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getSeedAccountOptions(I)Landroid/os/PersistableBundle;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5517
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 5518
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5519
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 5520
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v1, :cond_10

    const/4 v2, 0x0

    goto :goto_12

    :cond_10
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    :goto_12
    monitor-exit v0

    return-object v2

    .line 5521
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getSeedAccountType(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5508
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 5509
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5510
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 5511
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v1, :cond_10

    const/4 v2, 0x0

    goto :goto_12

    :cond_10
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    :goto_12
    monitor-exit v0

    return-object v2

    .line 5512
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 826
    const-string v0, "get user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 829
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getUserBadgeColorResId(I)I
    .registers 6
    .param p1, "userId"    # I

    .line 1505
    const-string v0, "getUserBadgeColorResId"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1507
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1508
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v1

    .line 1509
    .local v1, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_1f

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_1f

    .line 1513
    :cond_18
    iget v2, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails;->getBadgeColor(I)I

    move-result v2

    return v2

    .line 1510
    :cond_1f
    :goto_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested badge dark color for non-badged user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const/4 v2, 0x0

    return v2
.end method

.method public getUserBadgeDarkColorResId(I)I
    .registers 6
    .param p1, "userId"    # I

    .line 1521
    const-string v0, "getUserBadgeDarkColorResId"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1523
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1524
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v1

    .line 1525
    .local v1, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_1f

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_1f

    .line 1529
    :cond_18
    iget v2, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails;->getDarkThemeBadgeColor(I)I

    move-result v2

    return v2

    .line 1526
    :cond_1f
    :goto_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested badge color for non-badged user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    const/4 v2, 0x0

    return v2
.end method

.method public getUserBadgeLabelResId(I)I
    .registers 6
    .param p1, "userId"    # I

    .line 1488
    const-string v0, "getUserBadgeLabelResId"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1490
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1491
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v1

    .line 1492
    .local v1, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_1f

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_1f

    .line 1496
    :cond_18
    iget v2, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 1497
    .local v2, "badgeIndex":I
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails;->getBadgeLabel(I)I

    move-result v3

    return v3

    .line 1493
    .end local v2    # "badgeIndex":I
    :cond_1f
    :goto_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested badge label for non-badged user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    const/4 v2, 0x0

    return v2
.end method

.method public getUserBadgeNoBackgroundResId(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 1556
    const-string v0, "getUserBadgeNoBackgroundResId"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1558
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v0

    .line 1559
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_17

    .line 1563
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getBadgeNoBackground()I

    move-result v1

    return v1

    .line 1560
    :cond_17
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested badge (no background) for non-badged user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const/4 v1, 0x0

    return v1
.end method

.method public getUserBadgeResId(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 1545
    const-string v0, "getUserBadgeResId"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1546
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v0

    .line 1547
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_17

    .line 1551
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getBadgePlain()I

    move-result v1

    return v1

    .line 1548
    :cond_17
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested badge for non-badged user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    const/4 v1, 0x0

    return v1
.end method

.method public getUserCreationTime(I)J
    .registers 7
    .param p1, "userId"    # I

    .line 5249
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5250
    .local v0, "callingUserId":I
    const/4 v1, 0x0

    .line 5251
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5252
    if-ne v0, p1, :cond_10

    .line 5253
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    move-object v1, v3

    goto :goto_1f

    .line 5255
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 5256
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_1f

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v0, :cond_1f

    .line 5257
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    move-object v1, v4

    .line 5260
    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    :cond_1f
    :goto_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_2e

    .line 5261
    if-eqz v1, :cond_25

    .line 5265
    iget-wide v2, v1, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide v2

    .line 5262
    :cond_25
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "userId can only be the calling user or a profile associated with this user"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5260
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v3
.end method

.method public getUserHandle(I)I
    .registers 9
    .param p1, "userSerialNumber"    # I

    .line 5237
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5238
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1a

    aget v4, v1, v3

    .line 5239
    .local v4, "userId":I
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 5240
    .local v5, "info":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_17

    iget v6, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v6, p1, :cond_17

    monitor-exit v0

    return v4

    .line 5238
    .end local v4    # "userId":I
    .end local v5    # "info":Landroid/content/pm/UserInfo;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 5243
    :cond_1a
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 5244
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "targetUserId"    # I

    .line 1907
    const-string v0, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1912
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1913
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1914
    .local v1, "targetUserInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_54

    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_17

    goto :goto_54

    .line 1919
    :cond_17
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1920
    .local v3, "callingUserId":I
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1921
    .local v4, "callingGroupId":I
    iget v5, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1922
    .local v5, "targetGroupId":I
    const/16 v6, -0x2710

    if-eq v4, v6, :cond_2b

    if-ne v4, v5, :cond_2b

    const/4 v6, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v6, 0x0

    .line 1924
    .local v6, "sameGroup":Z
    :goto_2c
    if-eq v3, p1, :cond_35

    if-nez v6, :cond_35

    .line 1925
    const-string v7, "get the icon of a user who is not related"

    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1928
    :cond_35
    iget-object v7, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez v7, :cond_3b

    .line 1929
    monitor-exit v0

    return-object v2

    .line 1931
    :cond_3b
    iget-object v7, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    move-object v1, v7

    .line 1932
    .end local v3    # "callingUserId":I
    .end local v4    # "callingGroupId":I
    .end local v5    # "targetGroupId":I
    .end local v6    # "sameGroup":Z
    .local v1, "iconPath":Ljava/lang/String;
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_6e

    .line 1935
    :try_start_3f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_4a} :catch_4b

    return-object v0

    .line 1937
    :catch_4b
    move-exception v0

    .line 1938
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "UserManagerService"

    const-string v4, "Couldn\'t find icon file"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1940
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    return-object v2

    .line 1915
    .local v1, "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_54
    :goto_54
    :try_start_54
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserIcon: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    monitor-exit v0

    return-object v2

    .line 1932
    .end local v1    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_54 .. :try_end_70} :catchall_6e

    throw v1

    .line 1908
    :cond_71
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get user icon"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserIconBadgeResId(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 1534
    const-string v0, "getUserIconBadgeResId"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1535
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v0

    .line 1536
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_17

    .line 1540
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getIconBadge()I

    move-result v1

    return v1

    .line 1537
    :cond_17
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested icon badge for non-badged user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    const/4 v1, 0x0

    return v1
.end method

.method public getUserIds()[I
    .registers 3

    .line 2879
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2880
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v0

    return-object v1

    .line 2881
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getUserIdsIncludingPreCreated()[I
    .registers 3

    .line 2896
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2897
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    monitor-exit v0

    return-object v1

    .line 2898
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "userId"    # I

    .line 1428
    const-string/jumbo v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1430
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1431
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getUserName()Ljava/lang/String;
    .registers 6

    .line 1648
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1649
    .local v0, "callingUid":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    .line 1650
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1b

    .line 1652
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "You need MANAGE_USERS, CREATE_USERS, QUERY_USERS, or GET_ACCOUNTS_PRIVILEGED permissions to: get user name"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1655
    :cond_1b
    :goto_1b
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1656
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1657
    :try_start_22
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1658
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_34

    iget-object v4, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_34

    .line 1659
    iget-object v4, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    monitor-exit v2

    return-object v4

    .line 1661
    :cond_34
    const-string v4, ""

    monitor-exit v2

    return-object v4

    .line 1662
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_38
    move-exception v3

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_38

    throw v3
.end method

.method public getUserRestrictionSource(Ljava/lang/String;I)I
    .registers 7
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2236
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 2238
    .local v0, "enforcingUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    const/4 v1, 0x0

    .line 2239
    .local v1, "result":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_1b

    .line 2240
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v3}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v3

    or-int/2addr v1, v3

    .line 2239
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 2242
    .end local v2    # "i":I
    :cond_1b
    return v1
.end method

.method public getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation

    .line 2248
    const-string v0, "call getUserRestrictionSources."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryUsersPermission(Ljava/lang/String;)V

    .line 2251
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2255
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2258
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2259
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    const/16 v2, -0x2710

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2263
    :cond_26
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2265
    :try_start_29
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/RestrictionsSet;->getEnforcingUsers(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2269
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v3, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/RestrictionsSet;->getEnforcingUsers(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2271
    monitor-exit v1

    .line 2272
    return-object v0

    .line 2271
    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_43

    throw v2
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .registers 3
    .param p1, "userId"    # I

    .line 2281
    const-string v0, "getUserRestrictions"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2282
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUserSerialNumber(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 5213
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5214
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 5215
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_c

    iget v2, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    goto :goto_d

    :cond_c
    const/4 v2, -0x1

    :goto_d
    monitor-exit v0

    return v2

    .line 5216
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getUserStartRealtime()J
    .registers 6

    .line 1667
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1668
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1669
    :try_start_b
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 1670
    .local v2, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_15

    .line 1671
    iget-wide v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    monitor-exit v1

    return-wide v3

    .line 1673
    :cond_15
    const-wide/16 v3, 0x0

    monitor-exit v1

    return-wide v3

    .line 1674
    .end local v2    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public getUserUnlockRealtime()J
    .registers 5

    .line 1679
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1680
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 1681
    .local v1, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_15

    .line 1682
    iget-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    monitor-exit v0

    return-wide v2

    .line 1684
    :cond_15
    const-wide/16 v2, 0x0

    monitor-exit v0

    return-wide v2

    .line 1685
    .end local v1    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 3
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 872
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUsers(ZZZ)Ljava/util/List;
    .registers 5
    .param p1, "excludePartial"    # Z
    .param p2, "excludeDying"    # Z
    .param p3, "excludePreCreated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 879
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 880
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasBadge(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1481
    const-string v0, "hasBadge"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1482
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v0

    .line 1483
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2287
    const-string v0, "hasBaseUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 2288
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 2289
    return v1

    .line 2291
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2292
    :try_start_10
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    .line 2293
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_1f

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    monitor-exit v0

    return v1

    .line 2294
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_21

    throw v1
.end method

.method hasProfile(I)Z
    .registers 8
    .param p1, "userId"    # I

    .line 6487
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6488
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 6489
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 6490
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_2a

    .line 6491
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 6492
    .local v4, "profile":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq p1, v5, :cond_27

    invoke-static {v1, v4}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 6493
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 6490
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 6496
    .end local v3    # "i":I
    :cond_2a
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 6497
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "userSize":I
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public hasRestrictedProfiles(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 1794
    const-string v0, "hasRestrictedProfiles"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1795
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1796
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1797
    .local v1, "userSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_29

    .line 1798
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1799
    .local v3, "profile":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-eq p1, v4, :cond_26

    iget v4, v3, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v4, p1, :cond_26

    .line 1801
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1797
    .end local v3    # "profile":Landroid/content/pm/UserInfo;
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1804
    .end local v2    # "i":I
    :cond_29
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1805
    .end local v1    # "userSize":I
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2170
    const-string v0, "hasUserRestriction"

    invoke-direct {p0, p2, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 2171
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .registers 9
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .line 2177
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2178
    return v1

    .line 2180
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 2181
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 2182
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 2183
    .local v4, "userId":I
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v5

    .line 2184
    .local v5, "restrictions":Landroid/os/Bundle;
    if-eqz v5, :cond_29

    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 2185
    return v0

    .line 2181
    .end local v4    # "userId":I
    .end local v5    # "restrictions":Landroid/os/Bundle;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 2188
    .end local v3    # "i":I
    :cond_2c
    return v1
.end method

.method installWhitelistedSystemPackages(ZZLandroid/util/ArraySet;)Z
    .registers 5
    .param p1, "isFirstBoot"    # Z
    .param p2, "isUpgrade"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 4303
    .local p3, "existingPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/UserSystemPackageInstaller;->installWhitelistedSystemPackages(ZZLandroid/util/ArraySet;)Z

    move-result v0

    return v0
.end method

.method public isCredentialSharableWithParent(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 1603
    const-string v0, "isCredentialSharableWithParent"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1605
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1606
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v1

    .line 1607
    .local v1, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1608
    invoke-virtual {v1}, Lcom/android/server/pm/UserTypeDetails;->isCredentialSharableWithParent()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    monitor-exit v0

    .line 1607
    return v2

    .line 1609
    .end local v1    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public isDemoUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1745
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1746
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_2c

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_2c

    .line 1747
    :cond_d
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS permission to query if u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is a demo user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1750
    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1751
    :try_start_2f
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1752
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v3, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    monitor-exit v1

    return v3

    .line 1753
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_40

    throw v2
.end method

.method public isMediaSharedWithParent(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1592
    const-string v0, "isMediaSharedWithParent"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1594
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1595
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object v1

    .line 1596
    .local v1, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 1597
    nop

    .line 1596
    invoke-virtual {v1}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1597
    invoke-virtual {v1}, Lcom/android/server/pm/UserTypeDetails;->isMediaSharedWithParent()Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1e
    nop

    :cond_1f
    nop

    :goto_20
    monitor-exit v0

    .line 1596
    return v2

    .line 1598
    .end local v1    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public isPreCreated(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 1758
    const-string v0, "isPreCreated"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1759
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1760
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1761
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_14

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    monitor-exit v0

    return v2

    .line 1762
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public isProfile(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 1567
    const-string v0, "isProfile"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1568
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1569
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1570
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    monitor-exit v0

    return v2

    .line 1571
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public isQuietModeEnabled(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 1286
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1288
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_20

    .line 1289
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1290
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1d

    .line 1291
    if-eqz v2, :cond_1a

    :try_start_d
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1a

    .line 1294
    :cond_14
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1292
    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_20

    return v1

    .line 1290
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    :try_start_1f
    throw v2

    .line 1295
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_20

    throw v1
.end method

.method public isRestricted(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 1767
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_1d

    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "query isRestricted for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 1770
    :cond_1d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1771
    :try_start_20
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1772
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_28

    const/4 v2, 0x0

    goto :goto_2c

    :cond_28
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    :goto_2c
    monitor-exit v0

    return v2

    .line 1773
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public isSameProfileGroup(II)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    .line 1026
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    return v0

    .line 1027
    :cond_4
    const-string v0, "check if in the same profile group"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryUsersPermission(Ljava/lang/String;)V

    .line 1028
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v0

    return v0
.end method

.method public isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 7
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .line 2194
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_f

    .line 2197
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/UserRestrictionsUtils;->isSettingRestrictedForUser(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    return v0

    .line 2195
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Non-system caller"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isUserForeground(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1633
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1634
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_38

    .line 1635
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_38

    .line 1636
    :cond_f
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller from user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to check if another user ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is running in the foreground"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1641
    :cond_38
    :goto_38
    new-instance v1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1643
    .local v1, "currentUser":I
    if-ne v1, p1, :cond_4b

    const/4 v2, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    return v2
.end method

.method isUserInitialized(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 6024
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserInitialized(I)Z

    move-result v0

    return v0
.end method

.method public isUserNameSet(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 5221
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5222
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5223
    .local v1, "callingUserId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v2

    if-nez v2, :cond_21

    if-ne v1, p1, :cond_19

    const-string v2, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    .line 5224
    invoke-static {v2, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_21

    .line 5226
    :cond_19
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "You need MANAGE_USERS, CREATE_USERS, QUERY_USERS, or GET_ACCOUNTS_PRIVILEGED permissions to: get whether user name is set"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5229
    :cond_21
    :goto_21
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5230
    :try_start_24
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 5231
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_30

    iget-object v4, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    goto :goto_31

    :cond_30
    const/4 v4, 0x0

    :goto_31
    monitor-exit v2

    return v4

    .line 5232
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_33
    move-exception v3

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_33

    throw v3
.end method

.method public isUserOfType(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "userType"    # Ljava/lang/String;

    .line 1394
    const-string v0, "check user type"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1395
    if-eqz p2, :cond_13

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeNoChecks(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public isUserRunning(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1627
    const-string v0, "isUserRunning"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1628
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result v0

    return v0
.end method

.method public isUserTypeEnabled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;

    .line 2557
    const-string v0, "check if user type is enabled."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 2558
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 2559
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method isUserTypeSubtypeOfFull(Ljava/lang/String;)Z
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;

    .line 1463
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 1464
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isFull()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method isUserTypeSubtypeOfProfile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;

    .line 1469
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 1470
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method isUserTypeSubtypeOfSystem(Ljava/lang/String;)Z
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;

    .line 1475
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 1476
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public isUserUnlocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1621
    const-string v0, "isUserUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1622
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1614
    const-string v0, "isUserUnlockingOrUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1616
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$convertPreCreatedUserIfPossible$2$com-android-server-pm-UserManagerService(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .registers 6
    .param p1, "preCreatedUser"    # Landroid/content/pm/UserInfo;
    .param p2, "token"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4277
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(IZ)V

    .line 4278
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    .line 4279
    return-void
.end method

.method synthetic lambda$someUserHasAccountNoChecks$3$com-android-server-pm-UserManagerService(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5578
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 5579
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/UserManagerService;->someUserHasSeedAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 5578
    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public makeInitialized(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 1945
    const-string/jumbo v0, "makeInitialized"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1946
    const/4 v0, 0x0

    .line 1948
    .local v0, "scheduleWriteUser":Z
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1949
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1950
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_33

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_1b

    goto :goto_33

    .line 1954
    :cond_1b
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_2c

    .line 1955
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/content/pm/UserInfo;->flags:I

    .line 1956
    const/4 v0, 0x1

    .line 1958
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_4e

    .line 1959
    if-eqz v0, :cond_32

    .line 1960
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1962
    :cond_32
    return-void

    .line 1951
    :cond_33
    :goto_33
    :try_start_33
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeInitialized: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    monitor-exit v1

    return-void

    .line 1958
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_4e
    move-exception v2

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_4e

    throw v2
.end method

.method public markGuestForDeletion(I)Z
    .registers 9
    .param p1, "userId"    # I

    .line 4569
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 4570
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "no_remove_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4572
    const-string v0, "UserManagerService"

    const-string v1, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    return v2

    .line 4576
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4579
    .local v0, "ident":J
    :try_start_23
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_6e

    .line 4580
    :try_start_26
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_6b

    .line 4581
    :try_start_29
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    .line 4582
    .local v5, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz p1, :cond_62

    if-eqz v5, :cond_62

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_3e

    goto :goto_62

    .line 4585
    :cond_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_68

    .line 4586
    :try_start_3f
    iget-object v4, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 4587
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_6b

    .line 4601
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4587
    return v2

    .line 4594
    :cond_4c
    :try_start_4c
    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 4597
    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v2, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 4598
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4599
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_4c .. :try_end_5d} :catchall_6b

    .line 4601
    .end local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4602
    nop

    .line 4603
    return v4

    .line 4583
    .restart local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_62
    :goto_62
    :try_start_62
    monitor-exit v4
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_68

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_6b

    .line 4601
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4583
    return v2

    .line 4585
    .end local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_68
    move-exception v2

    :try_start_69
    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    :try_start_6a
    throw v2

    .line 4599
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :catchall_6b
    move-exception v2

    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6b

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    :try_start_6d
    throw v2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 4601
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :catchall_6e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4602
    throw v2
.end method

.method public onBeforeStartUser(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 5318
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 5319
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_7

    .line 5320
    return-void

    .line 5322
    :cond_7
    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 5323
    .local v1, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBeforeStartUser-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5324
    iget v2, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 5326
    .local v2, "userSerial":I
    sget-object v3, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 5329
    .local v3, "migrateAppsData":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prepare DE data for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5330
    .local v5, "reason":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/pm/BackgroundDexOptService;->pauseBgDexOpt(Ljava/lang/String;)V

    .line 5332
    const-string/jumbo v6, "prepareUserData"

    invoke-virtual {v1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5333
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-virtual {v6, p1, v2, v4}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 5334
    invoke-virtual {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 5335
    const-string/jumbo v6, "reconcileAppsData"

    invoke-virtual {v1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5336
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    invoke-virtual {v6, p1, v4, v3}, Landroid/content/pm/PackageManagerInternal;->reconcileAppsData(IIZ)V

    .line 5338
    invoke-virtual {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 5340
    invoke-static {v5}, Lcom/android/server/pm/BackgroundDexOptService;->resumeBgDexOpt(Ljava/lang/String;)V

    .line 5343
    if-eqz p1, :cond_7c

    .line 5344
    const-string v4, "applyUserRestrictions"

    invoke-virtual {v1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5345
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5346
    :try_start_71
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 5347
    monitor-exit v4
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_79

    .line 5348
    invoke-virtual {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_7c

    .line 5347
    :catchall_79
    move-exception v6

    :try_start_7a
    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v6

    .line 5350
    :cond_7c
    :goto_7c
    invoke-virtual {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 5351
    return-void
.end method

.method public onBeforeUnlockUser(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 5358
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 5359
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_7

    .line 5360
    return-void

    .line 5362
    :cond_7
    iget v1, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 5364
    .local v1, "userSerial":I
    sget-object v2, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 5367
    .local v2, "migrateAppsData":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepare CE data for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5368
    .local v3, "reason":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->pauseBgDexOpt(Ljava/lang/String;)V

    .line 5371
    new-instance v4, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 5372
    .local v4, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prepareUserData-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5373
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v6, 0x2

    invoke-virtual {v5, p1, v1, v6}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 5374
    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 5376
    const-class v5, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManagerInternal;

    .line 5377
    .local v5, "smInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-virtual {v5, p1}, Landroid/os/storage/StorageManagerInternal;->markCeStoragePrepared(I)V

    .line 5379
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reconcileAppsData-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 5380
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v7

    invoke-virtual {v7, p1, v6, v2}, Landroid/content/pm/PackageManagerInternal;->reconcileAppsData(IIZ)V

    .line 5382
    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 5384
    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->resumeBgDexOpt(Ljava/lang/String;)V

    .line 5386
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 5586
    new-instance v0, Lcom/android/server/pm/UserManagerService$Shell;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/UserManagerService$Shell;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$Shell-IA;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 5587
    return-void
.end method

.method public onUserLoggedIn(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 5406
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 5407
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_28

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_d

    goto :goto_28

    .line 5412
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5413
    .local v1, "now":J
    const-wide v3, 0xdc46c32800L

    cmp-long v3, v1, v3

    if-lez v3, :cond_1e

    .line 5414
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-wide v1, v3, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 5416
    :cond_1e
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    sget-object v4, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 5417
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 5418
    return-void

    .line 5408
    .end local v1    # "now":J
    :cond_28
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userForeground: unknown user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5409
    return-void
.end method

.method public preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 12
    .param p1, "userType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 3807
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 3808
    .local v0, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    move v5, v1

    .line 3810
    .local v5, "flags":I
    invoke-static {v5}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    .line 3812
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->isUserTypeEligibleForPreCreation(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot pre-create user of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-creating user of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    const/4 v3, 0x0

    const/16 v6, -0x2710

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, p1

    :try_start_4e
    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object v1
    :try_end_52
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_4e .. :try_end_52} :catch_53

    return-object v1

    .line 3820
    :catch_53
    move-exception v1

    .line 3821
    .local v1, "e":Landroid/os/UserManager$CheckedUserOperationException;
    invoke-virtual {v1}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object v2

    throw v2
.end method

.method putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 6
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 4497
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 4498
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4499
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4500
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4501
    monitor-exit v1

    .line 4502
    return-object v0

    .line 4501
    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw v2
.end method

.method readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 57
    .param p1, "id"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3579
    move-object/from16 v1, p0

    move/from16 v8, p1

    const/4 v0, 0x0

    .line 3580
    .local v0, "flags":I
    const/4 v2, 0x0

    .line 3581
    .local v2, "userType":Ljava/lang/String;
    move/from16 v3, p1

    .line 3582
    .local v3, "serialNumber":I
    const/4 v4, 0x0

    .line 3583
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3584
    .local v5, "account":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3585
    .local v6, "iconPath":Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 3586
    .local v9, "creationTime":J
    const-wide/16 v11, 0x0

    .line 3587
    .local v11, "lastLoggedInTime":J
    const-wide/16 v13, 0x0

    .line 3588
    .local v13, "lastRequestQuietModeEnabledTimestamp":J
    const/4 v7, 0x0

    .line 3589
    .local v7, "lastLoggedInFingerprint":Ljava/lang/String;
    const/16 v15, -0x2710

    .line 3590
    .local v15, "profileGroupId":I
    const/16 v16, 0x0

    .line 3591
    .local v16, "profileBadge":I
    const/16 v17, -0x2710

    .line 3592
    .local v17, "restrictedProfileParentId":I
    const/16 v18, 0x0

    .line 3593
    .local v18, "partial":Z
    const/16 v19, 0x0

    .line 3594
    .local v19, "preCreated":Z
    const/16 v20, 0x0

    .line 3595
    .local v20, "converted":Z
    const/16 v21, 0x0

    .line 3596
    .local v21, "guestToRemove":Z
    const/16 v22, 0x0

    .line 3597
    .local v22, "persistSeedData":Z
    const/16 v23, 0x0

    .line 3598
    .local v23, "seedAccountName":Ljava/lang/String;
    const/16 v24, 0x0

    .line 3599
    .local v24, "seedAccountType":Ljava/lang/String;
    const/16 v25, 0x0

    .line 3600
    .local v25, "seedAccountOptions":Landroid/os/PersistableBundle;
    const/16 v26, 0x0

    .line 3601
    .local v26, "baseRestrictions":Landroid/os/Bundle;
    const/16 v27, 0x0

    .line 3602
    .local v27, "legacyLocalRestrictions":Landroid/os/Bundle;
    const/16 v28, 0x0

    .line 3603
    .local v28, "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    const/16 v29, 0x0

    .line 3604
    .local v29, "globalRestrictions":Landroid/os/Bundle;
    const/16 v30, 0x1

    .line 3606
    .local v30, "ignorePrepareStorageErrors":Z
    move-wide/from16 v31, v9

    .end local v9    # "creationTime":J
    .local v31, "creationTime":J
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v9

    .line 3608
    .local v9, "parser":Landroid/util/TypedXmlPullParser;
    :goto_38
    invoke-interface {v9}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v10

    move/from16 v33, v10

    move/from16 v34, v0

    .end local v0    # "flags":I
    .local v33, "type":I
    .local v34, "flags":I
    const/4 v0, 0x2

    if-eq v10, v0, :cond_4b

    move/from16 v10, v33

    const/4 v0, 0x1

    .end local v33    # "type":I
    .local v10, "type":I
    if-eq v10, v0, :cond_4d

    move/from16 v0, v34

    goto :goto_38

    .end local v10    # "type":I
    .restart local v33    # "type":I
    :cond_4b
    move/from16 v10, v33

    .line 3613
    .end local v33    # "type":I
    .restart local v10    # "type":I
    :cond_4d
    const/4 v0, 0x2

    if-eq v10, v0, :cond_6e

    .line 3614
    const-string v0, "UserManagerService"

    move-object/from16 v36, v2

    .end local v2    # "userType":Ljava/lang/String;
    .local v36, "userType":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v37, v3

    .end local v3    # "serialNumber":I
    .local v37, "serialNumber":I
    const-string v3, "Unable to read user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    const/4 v0, 0x0

    return-object v0

    .line 3618
    .end local v36    # "userType":Ljava/lang/String;
    .end local v37    # "serialNumber":I
    .restart local v2    # "userType":Ljava/lang/String;
    .restart local v3    # "serialNumber":I
    :cond_6e
    move-object/from16 v36, v2

    move/from16 v37, v3

    const/4 v0, 0x0

    .end local v2    # "userType":Ljava/lang/String;
    .end local v3    # "serialNumber":I
    .restart local v36    # "userType":Ljava/lang/String;
    .restart local v37    # "serialNumber":I
    const/4 v2, 0x2

    if-ne v10, v2, :cond_230

    invoke-interface {v9}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_230

    .line 3619
    const-string v2, "id"

    const/4 v3, -0x1

    invoke-interface {v9, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 3620
    .local v2, "storedId":I
    if-eq v2, v8, :cond_95

    .line 3621
    const-string v3, "UserManagerService"

    const-string v0, "User id does not match the file name"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3622
    const/4 v0, 0x0

    return-object v0

    .line 3624
    :cond_95
    const-string/jumbo v3, "serialNumber"

    invoke-interface {v9, v0, v3, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 3625
    .end local v37    # "serialNumber":I
    .restart local v3    # "serialNumber":I
    move/from16 v33, v2

    .end local v2    # "storedId":I
    .local v33, "storedId":I
    const-string v2, "flags"

    move/from16 v37, v3

    .end local v3    # "serialNumber":I
    .restart local v37    # "serialNumber":I
    const/4 v3, 0x0

    invoke-interface {v9, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 3626
    .end local v34    # "flags":I
    .local v2, "flags":I
    const-string/jumbo v3, "type"

    invoke-interface {v9, v0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3627
    .end local v36    # "userType":Ljava/lang/String;
    .local v3, "userType":Ljava/lang/String;
    if-eqz v3, :cond_b5

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_b6

    :cond_b5
    const/4 v0, 0x0

    .line 3628
    .end local v3    # "userType":Ljava/lang/String;
    .local v0, "userType":Ljava/lang/String;
    :goto_b6
    const-string v3, "icon"

    move-object/from16 v34, v0

    const/4 v0, 0x0

    .end local v0    # "userType":Ljava/lang/String;
    .local v34, "userType":Ljava/lang/String;
    invoke-interface {v9, v0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3629
    const-string v3, "created"

    move-object/from16 v35, v4

    move-object/from16 v39, v5

    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "account":Ljava/lang/String;
    .local v35, "name":Ljava/lang/String;
    .local v39, "account":Ljava/lang/String;
    const-wide/16 v4, 0x0

    invoke-interface {v9, v0, v3, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v31

    .line 3630
    const-string v3, "lastLoggedIn"

    invoke-interface {v9, v0, v3, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v11

    .line 3631
    const-string v3, "lastLoggedInFingerprint"

    invoke-interface {v9, v0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3633
    const-string/jumbo v3, "profileGroupId"

    const/16 v4, -0x2710

    invoke-interface {v9, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    .line 3635
    const-string/jumbo v3, "profileBadge"

    const/4 v5, 0x0

    invoke-interface {v9, v0, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    .line 3636
    const-string/jumbo v3, "restrictedProfileParentId"

    invoke-interface {v9, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v17

    .line 3638
    const-string/jumbo v3, "partial"

    invoke-interface {v9, v0, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    .line 3639
    const-string/jumbo v3, "preCreated"

    invoke-interface {v9, v0, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v19

    .line 3640
    const-string v3, "convertedFromPreCreated"

    invoke-interface {v9, v0, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v20

    .line 3641
    const-string v3, "guestToRemove"

    invoke-interface {v9, v0, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v21

    .line 3643
    const-string/jumbo v3, "seedAccountName"

    invoke-interface {v9, v0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3644
    const-string/jumbo v3, "seedAccountType"

    invoke-interface {v9, v0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3645
    if-nez v23, :cond_11b

    if-eqz v24, :cond_11d

    .line 3646
    :cond_11b
    const/16 v22, 0x1

    .line 3649
    :cond_11d
    invoke-interface {v9}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    move-object/from16 v4, v35

    move-object/from16 v5, v39

    .line 3650
    .end local v35    # "name":Ljava/lang/String;
    .end local v39    # "account":Ljava/lang/String;
    .local v0, "outerDepth":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "account":Ljava/lang/String;
    :goto_125
    invoke-interface {v9}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    move v10, v3

    move/from16 v38, v2

    const/4 v2, 0x1

    .end local v2    # "flags":I
    .local v38, "flags":I
    if-eq v3, v2, :cond_1fb

    const/4 v3, 0x3

    if-ne v10, v3, :cond_138

    .line 3651
    invoke-interface {v9}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_1fb

    .line 3652
    :cond_138
    if-eq v10, v3, :cond_1f7

    const/4 v2, 0x4

    if-ne v10, v2, :cond_13f

    .line 3653
    goto/16 :goto_1f7

    .line 3655
    :cond_13f
    invoke-interface {v9}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3656
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v2, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 3657
    invoke-interface {v9}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    .line 3658
    .end local v10    # "type":I
    .local v2, "type":I
    const/4 v10, 0x4

    if-ne v2, v10, :cond_15a

    .line 3659
    invoke-interface {v9}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    move v10, v2

    goto/16 :goto_1f3

    .line 3658
    :cond_15a
    move v10, v2

    goto/16 :goto_1f3

    .line 3661
    .end local v2    # "type":I
    .restart local v10    # "type":I
    :cond_15d
    const-string/jumbo v2, "restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16c

    .line 3662
    invoke-static {v9}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v26

    goto/16 :goto_1f3

    .line 3663
    :cond_16c
    const-string v2, "device_policy_restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17a

    .line 3664
    invoke-static {v9}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v27

    goto/16 :goto_1f3

    .line 3665
    :cond_17a
    const-string v2, "device_policy_local_restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18a

    .line 3666
    const-string v2, "device_policy_local_restrictions"

    invoke-static {v9, v2}, Lcom/android/server/pm/RestrictionsSet;->readRestrictions(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v28

    goto/16 :goto_1f3

    .line 3668
    :cond_18a
    const-string v2, "device_policy_global_restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_197

    .line 3669
    invoke-static {v9}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Landroid/util/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v29

    goto :goto_1f3

    .line 3670
    :cond_197
    const-string v2, "account"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ae

    .line 3671
    invoke-interface {v9}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    .line 3672
    .end local v10    # "type":I
    .restart local v2    # "type":I
    const/4 v10, 0x4

    if-ne v2, v10, :cond_1ac

    .line 3673
    invoke-interface {v9}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    move v10, v2

    goto :goto_1f3

    .line 3672
    :cond_1ac
    move v10, v2

    goto :goto_1f3

    .line 3675
    .end local v2    # "type":I
    .restart local v10    # "type":I
    :cond_1ae
    const-string/jumbo v2, "seedAccountOptions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1be

    .line 3676
    invoke-static {v9}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v25

    .line 3677
    const/16 v22, 0x1

    goto :goto_1f3

    .line 3678
    :cond_1be
    const-string v2, "lastRequestQuietModeEnabledCall"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d9

    .line 3679
    invoke-interface {v9}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    .line 3680
    .end local v10    # "type":I
    .restart local v2    # "type":I
    const/4 v10, 0x4

    if-ne v2, v10, :cond_1d7

    .line 3681
    invoke-interface {v9}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    move v10, v2

    goto :goto_1f3

    .line 3680
    :cond_1d7
    move v10, v2

    goto :goto_1f3

    .line 3683
    .end local v2    # "type":I
    .restart local v10    # "type":I
    :cond_1d9
    const-string v2, "ignorePrepareStorageErrors"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    .line 3684
    invoke-interface {v9}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    .line 3685
    .end local v10    # "type":I
    .restart local v2    # "type":I
    const/4 v10, 0x4

    if-ne v2, v10, :cond_1f2

    .line 3686
    invoke-interface {v9}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v30

    move v10, v2

    goto :goto_1f3

    .line 3685
    :cond_1f2
    move v10, v2

    .line 3689
    .end local v2    # "type":I
    .end local v3    # "tag":Ljava/lang/String;
    .restart local v10    # "type":I
    :cond_1f3
    :goto_1f3
    move/from16 v2, v38

    goto/16 :goto_125

    .line 3650
    :cond_1f7
    :goto_1f7
    move/from16 v2, v38

    goto/16 :goto_125

    .line 3693
    .end local v0    # "outerDepth":I
    .end local v33    # "storedId":I
    :cond_1fb
    move-object/from16 v35, v4

    move/from16 v33, v10

    move v3, v15

    move/from16 v2, v16

    move/from16 v8, v18

    move/from16 v1, v19

    move/from16 v40, v22

    move-object/from16 v41, v23

    move-object/from16 v42, v24

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    move-object/from16 v45, v27

    move-object/from16 v46, v28

    move-object/from16 v47, v29

    move-object/from16 v36, v34

    move/from16 v10, v37

    move/from16 v34, v38

    move-object/from16 v16, v9

    move/from16 v18, v17

    move/from16 v9, v21

    move-object/from16 v17, v5

    move-wide v4, v13

    move-wide/from16 v14, v31

    move-object v13, v7

    move-wide/from16 v52, v11

    move-object v12, v6

    move-wide/from16 v6, v52

    move/from16 v11, v20

    goto :goto_262

    .line 3618
    .end local v38    # "flags":I
    .local v34, "flags":I
    .restart local v36    # "userType":Ljava/lang/String;
    :cond_230
    move-object/from16 v35, v4

    move-object/from16 v39, v5

    .line 3693
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "account":Ljava/lang/String;
    .restart local v35    # "name":Ljava/lang/String;
    .restart local v39    # "account":Ljava/lang/String;
    move/from16 v33, v10

    move-wide v4, v13

    move v3, v15

    move/from16 v2, v16

    move/from16 v8, v18

    move/from16 v1, v19

    move/from16 v40, v22

    move-object/from16 v41, v23

    move-object/from16 v42, v24

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    move-object/from16 v45, v27

    move-object/from16 v46, v28

    move-object/from16 v47, v29

    move-wide/from16 v14, v31

    move/from16 v10, v37

    move-object v13, v7

    move-object/from16 v16, v9

    move/from16 v18, v17

    move/from16 v9, v21

    move-object/from16 v17, v39

    move-wide/from16 v52, v11

    move-object v12, v6

    move-wide/from16 v6, v52

    move/from16 v11, v20

    .end local v7    # "lastLoggedInFingerprint":Ljava/lang/String;
    .end local v15    # "profileGroupId":I
    .end local v19    # "preCreated":Z
    .end local v20    # "converted":Z
    .end local v21    # "guestToRemove":Z
    .end local v22    # "persistSeedData":Z
    .end local v23    # "seedAccountName":Ljava/lang/String;
    .end local v24    # "seedAccountType":Ljava/lang/String;
    .end local v25    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .end local v26    # "baseRestrictions":Landroid/os/Bundle;
    .end local v27    # "legacyLocalRestrictions":Landroid/os/Bundle;
    .end local v28    # "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .end local v29    # "globalRestrictions":Landroid/os/Bundle;
    .end local v31    # "creationTime":J
    .end local v37    # "serialNumber":I
    .end local v39    # "account":Ljava/lang/String;
    .local v1, "preCreated":Z
    .local v2, "profileBadge":I
    .local v3, "profileGroupId":I
    .local v4, "lastRequestQuietModeEnabledTimestamp":J
    .local v6, "lastLoggedInTime":J
    .local v8, "partial":Z
    .local v9, "guestToRemove":Z
    .local v10, "serialNumber":I
    .local v11, "converted":Z
    .local v12, "iconPath":Ljava/lang/String;
    .local v13, "lastLoggedInFingerprint":Ljava/lang/String;
    .local v14, "creationTime":J
    .local v16, "parser":Landroid/util/TypedXmlPullParser;
    .local v17, "account":Ljava/lang/String;
    .local v18, "restrictedProfileParentId":I
    .local v33, "type":I
    .local v40, "persistSeedData":Z
    .local v41, "seedAccountName":Ljava/lang/String;
    .local v42, "seedAccountType":Ljava/lang/String;
    .local v43, "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v44, "baseRestrictions":Landroid/os/Bundle;
    .local v45, "legacyLocalRestrictions":Landroid/os/Bundle;
    .local v46, "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .local v47, "globalRestrictions":Landroid/os/Bundle;
    :goto_262
    new-instance v0, Landroid/content/pm/UserInfo;

    move/from16 v48, v2

    .end local v2    # "profileBadge":I
    .local v48, "profileBadge":I
    move-object v2, v0

    move/from16 v49, v3

    .end local v3    # "profileGroupId":I
    .local v49, "profileGroupId":I
    move/from16 v3, p1

    move-wide/from16 v50, v4

    .end local v4    # "lastRequestQuietModeEnabledTimestamp":J
    .local v50, "lastRequestQuietModeEnabledTimestamp":J
    move-object/from16 v4, v35

    move-object v5, v12

    move/from16 v20, v11

    move-object/from16 v19, v12

    move-wide v11, v6

    .end local v6    # "lastLoggedInTime":J
    .end local v12    # "iconPath":Ljava/lang/String;
    .local v11, "lastLoggedInTime":J
    .local v19, "iconPath":Ljava/lang/String;
    .restart local v20    # "converted":Z
    move/from16 v6, v34

    move-object/from16 v7, v36

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3694
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iput v10, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 3695
    iput-wide v14, v2, Landroid/content/pm/UserInfo;->creationTime:J

    .line 3696
    iput-wide v11, v2, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 3697
    iput-object v13, v2, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 3698
    iput-boolean v8, v2, Landroid/content/pm/UserInfo;->partial:Z

    .line 3699
    iput-boolean v1, v2, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 3700
    move/from16 v3, v20

    .end local v20    # "converted":Z
    .local v3, "converted":Z
    iput-boolean v3, v2, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    .line 3701
    iput-boolean v9, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 3702
    move/from16 v4, v49

    .end local v49    # "profileGroupId":I
    .local v4, "profileGroupId":I
    iput v4, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 3703
    move/from16 v5, v48

    .end local v48    # "profileBadge":I
    .local v5, "profileBadge":I
    iput v5, v2, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 3704
    move/from16 v6, v18

    .end local v18    # "restrictedProfileParentId":I
    .local v6, "restrictedProfileParentId":I
    iput v6, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 3707
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    move-object v7, v0

    .line 3708
    .local v7, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object v2, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3709
    move/from16 v18, v1

    move-object/from16 v1, v17

    .end local v17    # "account":Ljava/lang/String;
    .local v1, "account":Ljava/lang/String;
    .local v18, "preCreated":Z
    iput-object v1, v7, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 3710
    move-object/from16 v1, v41

    .end local v41    # "seedAccountName":Ljava/lang/String;
    .local v1, "seedAccountName":Ljava/lang/String;
    .restart local v17    # "account":Ljava/lang/String;
    iput-object v1, v7, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 3711
    move-object/from16 v20, v1

    move-object/from16 v1, v42

    .end local v42    # "seedAccountType":Ljava/lang/String;
    .local v1, "seedAccountType":Ljava/lang/String;
    .local v20, "seedAccountName":Ljava/lang/String;
    iput-object v1, v7, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 3712
    move-object/from16 v21, v1

    move/from16 v1, v40

    .end local v40    # "persistSeedData":Z
    .local v1, "persistSeedData":Z
    .local v21, "seedAccountType":Ljava/lang/String;
    iput-boolean v1, v7, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 3713
    move/from16 v22, v1

    move-object/from16 v1, v43

    .end local v43    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v1, "seedAccountOptions":Landroid/os/PersistableBundle;
    .restart local v22    # "persistSeedData":Z
    iput-object v1, v7, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 3714
    move-object/from16 v24, v1

    move-object/from16 v23, v2

    move-wide/from16 v1, v50

    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v50    # "lastRequestQuietModeEnabledTimestamp":J
    .local v1, "lastRequestQuietModeEnabledTimestamp":J
    .local v23, "userInfo":Landroid/content/pm/UserInfo;
    .local v24, "seedAccountOptions":Landroid/os/PersistableBundle;
    invoke-virtual {v7, v1, v2}, Lcom/android/server/pm/UserManagerService$UserData;->setLastRequestQuietModeEnabledMillis(J)V

    .line 3715
    if-eqz v30, :cond_2cc

    .line 3716
    invoke-virtual {v7}, Lcom/android/server/pm/UserManagerService$UserData;->setIgnorePrepareStorageErrors()V

    .line 3719
    :cond_2cc
    move-wide/from16 v50, v1

    move-object/from16 v1, p0

    .end local v1    # "lastRequestQuietModeEnabledTimestamp":J
    .restart local v50    # "lastRequestQuietModeEnabledTimestamp":J
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3720
    move/from16 v25, v3

    move-object/from16 v3, v44

    .end local v44    # "baseRestrictions":Landroid/os/Bundle;
    .local v3, "baseRestrictions":Landroid/os/Bundle;
    .local v25, "converted":Z
    if-eqz v3, :cond_301

    .line 3721
    :try_start_2d9
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;
    :try_end_2db
    .catchall {:try_start_2d9 .. :try_end_2db} :catchall_2f0

    move/from16 v26, v8

    move/from16 v8, p1

    .end local v8    # "partial":Z
    .local v26, "partial":Z
    :try_start_2df
    invoke-virtual {v0, v8, v3}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z
    :try_end_2e2
    .catchall {:try_start_2df .. :try_end_2e2} :catchall_2e3

    goto :goto_305

    .line 3739
    :catchall_2e3
    move-exception v0

    move-object/from16 v27, v3

    move/from16 v49, v4

    move-object/from16 v3, v45

    move-object/from16 v28, v46

    move-object/from16 v4, v47

    goto/16 :goto_362

    .end local v26    # "partial":Z
    .restart local v8    # "partial":Z
    :catchall_2f0
    move-exception v0

    move/from16 v26, v8

    move/from16 v8, p1

    move-object/from16 v27, v3

    move/from16 v49, v4

    move-object/from16 v3, v45

    move-object/from16 v28, v46

    move-object/from16 v4, v47

    .end local v8    # "partial":Z
    .restart local v26    # "partial":Z
    goto/16 :goto_362

    .line 3720
    .end local v26    # "partial":Z
    .restart local v8    # "partial":Z
    :cond_301
    move/from16 v26, v8

    move/from16 v8, p1

    .line 3723
    .end local v8    # "partial":Z
    .restart local v26    # "partial":Z
    :goto_305
    move-object/from16 v27, v3

    move-object/from16 v3, v46

    .end local v46    # "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .local v3, "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .local v27, "baseRestrictions":Landroid/os/Bundle;
    if-eqz v3, :cond_333

    .line 3724
    :try_start_30b
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_310
    .catchall {:try_start_30b .. :try_end_310} :catchall_329

    .line 3725
    move-object/from16 v28, v3

    move-object/from16 v3, v45

    .end local v45    # "legacyLocalRestrictions":Landroid/os/Bundle;
    .local v3, "legacyLocalRestrictions":Landroid/os/Bundle;
    .restart local v28    # "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    if-eqz v3, :cond_326

    .line 3726
    :try_start_316
    const-string v0, "UserManagerService"
    :try_end_318
    .catchall {:try_start_316 .. :try_end_318} :catchall_320

    move/from16 v49, v4

    .end local v4    # "profileGroupId":I
    .restart local v49    # "profileGroupId":I
    :try_start_31a
    const-string v4, "Seeing both legacy and current local restrictions in xml"

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_357

    .line 3739
    .end local v49    # "profileGroupId":I
    .restart local v4    # "profileGroupId":I
    :catchall_320
    move-exception v0

    move/from16 v49, v4

    move-object/from16 v4, v47

    .end local v4    # "profileGroupId":I
    .restart local v49    # "profileGroupId":I
    goto :goto_362

    .line 3725
    .end local v49    # "profileGroupId":I
    .restart local v4    # "profileGroupId":I
    :cond_326
    move/from16 v49, v4

    .end local v4    # "profileGroupId":I
    .restart local v49    # "profileGroupId":I
    goto :goto_357

    .line 3739
    .end local v28    # "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .end local v49    # "profileGroupId":I
    .local v3, "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .restart local v4    # "profileGroupId":I
    .restart local v45    # "legacyLocalRestrictions":Landroid/os/Bundle;
    :catchall_329
    move-exception v0

    move-object/from16 v28, v3

    move/from16 v49, v4

    move-object/from16 v3, v45

    move-object/from16 v4, v47

    .end local v4    # "profileGroupId":I
    .end local v45    # "legacyLocalRestrictions":Landroid/os/Bundle;
    .local v3, "legacyLocalRestrictions":Landroid/os/Bundle;
    .restart local v28    # "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .restart local v49    # "profileGroupId":I
    goto :goto_362

    .line 3728
    .end local v28    # "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .end local v49    # "profileGroupId":I
    .local v3, "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .restart local v4    # "profileGroupId":I
    .restart local v45    # "legacyLocalRestrictions":Landroid/os/Bundle;
    :cond_333
    move-object/from16 v28, v3

    move/from16 v49, v4

    move-object/from16 v3, v45

    .end local v4    # "profileGroupId":I
    .end local v45    # "legacyLocalRestrictions":Landroid/os/Bundle;
    .local v3, "legacyLocalRestrictions":Landroid/os/Bundle;
    .restart local v28    # "localRestrictions":Lcom/android/server/pm/RestrictionsSet;
    .restart local v49    # "profileGroupId":I
    if-eqz v3, :cond_357

    .line 3730
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_347

    .line 3731
    new-instance v0, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v0}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    goto :goto_34c

    .line 3732
    :cond_347
    new-instance v0, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v0, v8, v3}, Lcom/android/server/pm/RestrictionsSet;-><init>(ILandroid/os/Bundle;)V

    :goto_34c
    nop

    .line 3733
    .local v0, "legacyLocalRestrictionsSet":Lcom/android/server/pm/RestrictionsSet;
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_352
    .catchall {:try_start_31a .. :try_end_352} :catchall_353

    goto :goto_357

    .line 3739
    .end local v0    # "legacyLocalRestrictionsSet":Lcom/android/server/pm/RestrictionsSet;
    :catchall_353
    move-exception v0

    move-object/from16 v4, v47

    goto :goto_362

    .line 3735
    :cond_357
    :goto_357
    move-object/from16 v4, v47

    .end local v47    # "globalRestrictions":Landroid/os/Bundle;
    .local v4, "globalRestrictions":Landroid/os/Bundle;
    if-eqz v4, :cond_360

    .line 3736
    :try_start_35b
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, v8, v4}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 3739
    :cond_360
    monitor-exit v2

    .line 3740
    return-object v7

    .line 3739
    :goto_362
    monitor-exit v2
    :try_end_363
    .catchall {:try_start_35b .. :try_end_363} :catchall_364

    throw v0

    :catchall_364
    move-exception v0

    goto :goto_362
.end method

.method reconcileUsers(Ljava/lang/String;)V
    .registers 5
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 5394
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v1, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->reconcileUsers(Ljava/lang/String;Ljava/util/List;)V

    .line 5398
    return-void
.end method

.method public removeUser(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 4613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUser u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4614
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 4616
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRemovalRestriction(I)Ljava/lang/String;

    move-result-object v0

    .line 4617
    .local v0, "restriction":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 4618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot remove user. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is enabled."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4619
    return v3

    .line 4621
    :cond_4e
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v1

    return v1
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 4626
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 4627
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v0

    return v0
.end method

.method removeUserInfo(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 4507
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4508
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4509
    monitor-exit v0

    .line 4510
    return-void

    .line 4509
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public removeUserWhenPossible(IZ)I
    .registers 11
    .param p1, "userId"    # I
    .param p2, "overrideDevicePolicy"    # Z

    .line 4749
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 4751
    const/4 v0, 0x0

    if-nez p2, :cond_3a

    .line 4752
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRemovalRestriction(I)Ljava/lang/String;

    move-result-object v1

    .line 4753
    .local v1, "restriction":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 4754
    const-string v0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot remove user. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is enabled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4755
    const/4 v0, -0x2

    return v0

    .line 4758
    .end local v1    # "restriction":Ljava/lang/String;
    :cond_3a
    if-nez p1, :cond_45

    .line 4759
    const-string v0, "UserManagerService"

    const-string v1, "System user cannot be removed."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4760
    const/4 v0, -0x4

    return v0

    .line 4763
    :cond_45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4766
    .local v1, "ident":J
    :try_start_49
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_fc

    .line 4767
    :try_start_4c
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_f9

    .line 4768
    :try_start_4f
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    .line 4769
    .local v5, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v5, :cond_7e

    .line 4770
    const-string v0, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot remove user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", invalid user id provided."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4772
    const/4 v0, -0x3

    monitor-exit v4
    :try_end_79
    .catchall {:try_start_4f .. :try_end_79} :catchall_f6

    :try_start_79
    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_f9

    .line 4801
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4772
    return v0

    .line 4775
    :cond_7e
    :try_start_7e
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 4776
    const-string v0, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is already scheduled for removal."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    const/4 v0, 0x2

    monitor-exit v4
    :try_end_a6
    .catchall {:try_start_7e .. :try_end_a6} :catchall_f6

    :try_start_a6
    monitor-exit v3
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_f9

    .line 4801
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4777
    return v0

    .line 4779
    :cond_ab
    :try_start_ab
    monitor-exit v4
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_f6

    .line 4782
    :try_start_ac
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 4783
    .local v4, "currentUser":I
    if-eq v4, p1, :cond_bd

    .line 4785
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 4786
    monitor-exit v3
    :try_end_b9
    .catchall {:try_start_ac .. :try_end_b9} :catchall_f9

    .line 4801
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4786
    return v0

    .line 4792
    :cond_bd
    :try_start_bd
    const-string v0, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to immediately remove user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (current user is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "). User is set as ephemeral and will be removed on user switch or reboot."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4795
    iget-object v0, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 4796
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4798
    const/4 v0, 0x1

    monitor-exit v3
    :try_end_f2
    .catchall {:try_start_bd .. :try_end_f2} :catchall_f9

    .line 4801
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4798
    return v0

    .line 4779
    .end local v4    # "currentUser":I
    .end local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_f6
    move-exception v0

    :try_start_f7
    monitor-exit v4
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    .end local p2    # "overrideDevicePolicy":Z
    :try_start_f8
    throw v0

    .line 4799
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "overrideDevicePolicy":Z
    :catchall_f9
    move-exception v0

    monitor-exit v3
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_f9

    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    .end local p2    # "overrideDevicePolicy":Z
    :try_start_fb
    throw v0
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fc

    .line 4801
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "overrideDevicePolicy":Z
    :catchall_fc
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4802
    throw v0
.end method

.method public requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;I)Z
    .registers 16
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "enableQuietMode"    # Z
    .param p3, "userId"    # I
    .param p4, "target"    # Landroid/content/IntentSender;
    .param p5, "flags"    # I

    .line 1104
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    if-eqz p2, :cond_11

    if-nez p4, :cond_8

    goto :goto_11

    .line 1107
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "target should only be specified when we are disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1111
    :cond_11
    :goto_11
    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 1113
    .local v0, "dontAskCredential":Z
    :goto_1a
    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_20

    move v3, v2

    goto :goto_21

    :cond_20
    move v3, v1

    :goto_21
    move v9, v3

    .line 1115
    .local v9, "onlyIfCredentialNotRequired":Z
    if-eqz v0, :cond_40

    if-nez v9, :cond_27

    goto :goto_40

    .line 1116
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1119
    :cond_40
    :goto_40
    nop

    .line 1120
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-eqz p4, :cond_49

    move v7, v2

    goto :goto_4a

    :cond_49
    move v7, v1

    .line 1119
    :goto_4a
    move-object v3, p0

    move-object v4, p1

    move v6, p3

    move v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/UserManagerService;->ensureCanModifyQuietMode(Ljava/lang/String;IIZZ)V

    .line 1122
    if-eqz v9, :cond_6e

    .line 1123
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1122
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    goto :goto_6e

    .line 1126
    :cond_66
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "SystemUI is not allowed to set QUIET_MODE_DISABLE_ONLY_IF_CREDENTIAL_NOT_REQUIRED"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1130
    :cond_6e
    :goto_6e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1132
    .local v3, "identity":J
    if-eqz p2, :cond_7c

    .line 1133
    :try_start_74
    invoke-direct {p0, p3, v2, p4, p1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_cd

    .line 1135
    nop

    .line 1161
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1135
    return v2

    .line 1137
    :cond_7c
    :try_start_7c
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p3}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 1138
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/KeyguardManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    .line 1143
    .local v5, "km":Landroid/app/KeyguardManager;
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v6, p3}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v6

    if-eqz v6, :cond_9c

    if-eqz v9, :cond_a1

    .line 1145
    :cond_9c
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, p3}, Lcom/android/internal/widget/LockPatternUtils;->tryUnlockWithCachedUnifiedChallenge(I)Z

    .line 1148
    .end local v5    # "km":Landroid/app/KeyguardManager;
    :cond_a1
    if-nez v0, :cond_b3

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1149
    invoke-virtual {v5, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 1150
    invoke-static {p3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v5
    :try_end_af
    .catchall {:try_start_7c .. :try_end_af} :catchall_cd

    if-nez v5, :cond_b3

    move v5, v2

    goto :goto_b4

    :cond_b3
    move v5, v1

    .line 1151
    .local v5, "needToShowConfirmCredential":Z
    :goto_b4
    if-eqz v5, :cond_c5

    .line 1152
    if-eqz v9, :cond_bd

    .line 1153
    nop

    .line 1161
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1153
    return v1

    .line 1155
    :cond_bd
    :try_start_bd
    invoke-direct {p0, p3, p4}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_cd

    .line 1156
    nop

    .line 1161
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1156
    return v1

    .line 1158
    :cond_c5
    :try_start_c5
    invoke-direct {p0, p3, v1, p4, p1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_cd

    .line 1159
    nop

    .line 1161
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1159
    return v2

    .line 1161
    .end local v5    # "needToShowConfirmCredential":Z
    :catchall_cd
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1162
    throw v1
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .line 4964
    const-string/jumbo v0, "set application restrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 4965
    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->validateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4966
    .local v0, "validationResult":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_48

    .line 4967
    const-string v2, "../"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 4968
    const v2, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "239701237"

    aput-object v5, v3, v4

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, ""

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4970
    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4972
    :cond_48
    if-eqz p2, :cond_4d

    .line 4973
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 4976
    :cond_4d
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4977
    if-eqz p2, :cond_5e

    :try_start_52
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_59

    goto :goto_5e

    .line 4981
    :cond_59
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 4983
    const/4 v2, 0x1

    .local v2, "changed":Z
    goto :goto_62

    .line 4978
    .end local v2    # "changed":Z
    :cond_5e
    :goto_5e
    invoke-static {p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)Z

    move-result v2

    .line 4985
    .restart local v2    # "changed":Z
    :goto_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_52 .. :try_end_63} :catchall_7f

    .line 4987
    if-nez v2, :cond_66

    .line 4988
    return-void

    .line 4992
    :cond_66
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4993
    .local v1, "changeIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4994
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4995
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4996
    return-void

    .line 4985
    .end local v1    # "changeIntent":Landroid/content/Intent;
    .end local v2    # "changed":Z
    :catchall_7f
    move-exception v2

    :try_start_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v2
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .line 1991
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1992
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1993
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 1994
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1995
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1f

    .line 1996
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1997
    :try_start_17
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 1998
    monitor-exit v1

    .line 1999
    return-void

    .line 1998
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw v0

    .line 1995
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountOptions"    # Landroid/os/PersistableBundle;
    .param p5, "persist"    # Z

    .line 5467
    const-string/jumbo v0, "set user seed account data"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 5468
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/UserManagerService;->setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    .line 5469
    return-void
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;

    .line 834
    const-string/jumbo v0, "set user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 835
    const/4 v0, 0x0

    .line 836
    .local v0, "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 837
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_48

    .line 838
    :try_start_d
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    .line 839
    .local v3, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v3, :cond_32

    .line 840
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User not found for setting user account: u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_45

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_48

    return-void

    .line 843
    :cond_32
    :try_start_32
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 844
    .local v4, "currentAccount":Ljava/lang/String;
    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 845
    iput-object p2, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 846
    move-object v0, v3

    .line 848
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v4    # "currentAccount":Ljava/lang/String;
    :cond_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_45

    .line 850
    if-eqz v0, :cond_43

    .line 851
    :try_start_40
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 853
    :cond_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_48

    .line 854
    return-void

    .line 848
    :catchall_45
    move-exception v3

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    .end local v0    # "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    .end local p2    # "accountName":Ljava/lang/String;
    :try_start_47
    throw v3

    .line 853
    .restart local v0    # "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "accountName":Ljava/lang/String;
    :catchall_48
    move-exception v2

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_48

    throw v2
.end method

.method public setUserAdmin(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1352
    const-string/jumbo v0, "set user admin"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 1354
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1356
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_30

    .line 1357
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1358
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_2d

    .line 1359
    if-eqz v2, :cond_2b

    :try_start_13
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_2b

    .line 1364
    :cond_1a
    iget v1, v2, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 1365
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1366
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    monitor-exit v0

    .line 1367
    return-void

    .line 1361
    .restart local v2    # "info":Landroid/content/pm/UserInfo;
    :cond_2b
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_30

    return-void

    .line 1358
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    :try_start_2f
    throw v2

    .line 1366
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_30

    throw v1
.end method

.method public setUserEnabled(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1337
    const-string v0, "enable user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1338
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1340
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_2c

    .line 1341
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1342
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_29

    .line 1343
    if-eqz v2, :cond_27

    :try_start_12
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1344
    iget v1, v2, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x40

    iput v1, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 1345
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1347
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1348
    return-void

    .line 1342
    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "userId":I
    :try_start_2b
    throw v2

    .line 1347
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "userId":I
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1887
    :try_start_0
    const-string/jumbo v0, "update users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1888
    const-string/jumbo v0, "no_set_user_icon"

    const-string v1, "Cannot set user icon"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(Ljava/lang/String;ILjava/lang/String;)V

    .line 1890
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_13
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_13} :catch_15

    .line 1893
    nop

    .line 1894
    return-void

    .line 1891
    :catch_15
    move-exception v0

    .line 1892
    .local v0, "e":Landroid/os/UserManager$CheckedUserOperationException;
    invoke-virtual {v0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object v1

    throw v1
.end method

.method public setUserName(ILjava/lang/String;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 1860
    const-string/jumbo v0, "rename users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1861
    const/4 v0, 0x0

    .line 1862
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1863
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 1864
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_3f

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_17

    goto :goto_3f

    .line 1868
    :cond_17
    if-eqz p2, :cond_2b

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v3, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1869
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object p2, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1870
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1871
    const/4 v0, 0x1

    .line 1873
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_5a

    .line 1874
    if-eqz v0, :cond_3e

    .line 1875
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1877
    .local v1, "ident":J
    :try_start_32
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_39

    .line 1879
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1880
    goto :goto_3e

    .line 1879
    :catchall_39
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1880
    throw v3

    .line 1882
    .end local v1    # "ident":J
    :cond_3e
    :goto_3e
    return-void

    .line 1865
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3f
    :goto_3f
    :try_start_3f
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserName: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    monitor-exit v1

    return-void

    .line 1873
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_5a
    move-exception v2

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_3f .. :try_end_5c} :catchall_5a

    throw v2
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .line 2299
    const-string/jumbo v0, "setUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2300
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2301
    return-void

    .line 2303
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2306
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    .line 2307
    invoke-virtual {v1, p3}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 2306
    invoke-static {v1}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2308
    .local v1, "newRestrictions":Landroid/os/Bundle;
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2310
    invoke-direct {p0, v1, p3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 2311
    .end local v1    # "newRestrictions":Landroid/os/Bundle;
    monitor-exit v0

    .line 2312
    return-void

    .line 2311
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public someUserHasAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .line 5565
    const-string v0, "check seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    .line 5566
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .line 5540
    const-string v0, "check seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 5541
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->someUserHasSeedAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method systemReady()V
    .registers 6

    .line 731
    const-string v0, "appops"

    .line 732
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 731
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 734
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 735
    const/4 v1, 0x0

    :try_start_10
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 736
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_39

    .line 738
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 742
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mConfigurationChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 746
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->markEphemeralUsersForRemoval()V

    .line 747
    return-void

    .line 736
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method upgradeIfNecessaryLP(Landroid/os/Bundle;II)V
    .registers 16
    .param p1, "oldGlobalUserRestrictions"    # Landroid/os/Bundle;
    .param p2, "userVersion"    # I
    .param p3, "userTypeVersion"    # I

    .line 3019
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3020
    .local v0, "userIdsToWrite":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 3021
    .local v1, "originalVersion":I
    iget v2, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    .line 3022
    .local v2, "originalUserTypeVersion":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p2, v4, :cond_3a

    .line 3024
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v5

    .line 3025
    .local v5, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const-string v6, "Primary"

    iget-object v7, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v7, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 3026
    iget-object v6, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 3027
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040677

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 3028
    iget-object v6, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3030
    :cond_39
    const/4 p2, 0x1

    .line 3033
    .end local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3a
    const/4 v5, 0x2

    if-ge p2, v5, :cond_5d

    .line 3035
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v5

    .line 3036
    .restart local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v6, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_5c

    .line 3037
    iget-object v6, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v7, v6, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Landroid/content/pm/UserInfo;->flags:I

    .line 3038
    iget-object v6, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3040
    :cond_5c
    const/4 p2, 0x2

    .line 3044
    .end local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_5d
    const/4 v5, 0x4

    if-ge p2, v5, :cond_61

    .line 3045
    const/4 p2, 0x4

    .line 3048
    :cond_61
    const/4 v5, 0x5

    if-ge p2, v5, :cond_68

    .line 3049
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 3050
    const/4 p2, 0x5

    .line 3053
    :cond_68
    const/4 v5, 0x6

    const/16 v6, -0x2710

    if-ge p2, v5, :cond_ad

    .line 3054
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v5

    .line 3055
    .local v5, "splitSystemUser":Z
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3056
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_75
    :try_start_75
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_a7

    .line 3057
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3059
    .local v9, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v5, :cond_a4

    iget-object v10, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v10

    if-eqz v10, :cond_a4

    iget-object v10, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v10, v6, :cond_a4

    .line 3062
    iget-object v10, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput v3, v10, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 3063
    iget-object v10, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3056
    .end local v9    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_a4
    add-int/lit8 v8, v8, 0x1

    goto :goto_75

    .line 3066
    .end local v8    # "i":I
    :cond_a7
    monitor-exit v7

    .line 3067
    const/4 p2, 0x6

    goto :goto_ad

    .line 3066
    :catchall_aa
    move-exception v3

    monitor-exit v7
    :try_end_ac
    .catchall {:try_start_75 .. :try_end_ac} :catchall_aa

    throw v3

    .line 3070
    .end local v5    # "splitSystemUser":Z
    :cond_ad
    :goto_ad
    const/4 v5, 0x7

    if-ge p2, v5, :cond_ea

    .line 3072
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3073
    :try_start_b3
    invoke-static {p1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_c2

    iget v7, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-eq v7, v6, :cond_c2

    .line 3075
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v6, v7, p1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 3080
    :cond_c2
    const-string v6, "ensure_verify_apps"

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-static {v6, v7, v8}, Lcom/android/server/pm/UserRestrictionsUtils;->moveRestriction(Ljava/lang/String;Landroid/util/SparseArray;Lcom/android/server/pm/RestrictionsSet;)V

    .line 3083
    monitor-exit v5
    :try_end_cc
    .catchall {:try_start_b3 .. :try_end_cc} :catchall_e7

    .line 3085
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 3086
    .local v5, "currentGuestUser":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_e5

    const-string/jumbo v6, "no_config_wifi"

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6, v7}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_e5

    .line 3088
    const-string/jumbo v6, "no_config_wifi"

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6, v4, v7}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 3090
    :cond_e5
    const/4 p2, 0x7

    goto :goto_ea

    .line 3083
    .end local v5    # "currentGuestUser":Landroid/content/pm/UserInfo;
    :catchall_e7
    move-exception v3

    :try_start_e8
    monitor-exit v5
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw v3

    .line 3093
    :cond_ea
    :goto_ea
    const/16 v4, 0x8

    if-ge p2, v4, :cond_151

    .line 3095
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3096
    :try_start_f1
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3097
    .local v3, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v6, v6, 0x800

    iput v6, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 3098
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v5

    if-nez v5, :cond_10f

    .line 3099
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 3101
    :cond_10f
    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3105
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_11b
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_14a

    .line 3106
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    move-object v3, v6

    .line 3107
    iget-object v6, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_147

    .line 3108
    iget-object v6, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v7, v6, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v7, v7, 0x400

    iput v7, v6, Landroid/content/pm/UserInfo;->flags:I

    .line 3109
    iget-object v6, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3105
    :cond_147
    add-int/lit8 v5, v5, 0x1

    goto :goto_11b

    .line 3112
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v5    # "i":I
    :cond_14a
    monitor-exit v4

    .line 3113
    const/16 p2, 0x8

    goto :goto_151

    .line 3112
    :catchall_14e
    move-exception v3

    monitor-exit v4
    :try_end_150
    .catchall {:try_start_f1 .. :try_end_150} :catchall_14e

    throw v3

    .line 3116
    :cond_151
    :goto_151
    const/16 v3, 0x9

    if-ge p2, v3, :cond_210

    .line 3118
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3119
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_159
    :try_start_159
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_209

    .line 3120
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3121
    .local v6, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v7, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->flags:I

    .line 3122
    .local v7, "flags":I
    and-int/lit16 v8, v7, 0x800

    if-eqz v8, :cond_183

    .line 3123
    and-int/lit16 v8, v7, 0x400

    if-eqz v8, :cond_17c

    .line 3124
    iget-object v8, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const-string v9, "android.os.usertype.full.SYSTEM"

    iput-object v9, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_18c

    .line 3126
    :cond_17c
    iget-object v8, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const-string v9, "android.os.usertype.system.HEADLESS"

    iput-object v9, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;
    :try_end_182
    .catchall {:try_start_159 .. :try_end_182} :catchall_20d

    goto :goto_18c

    .line 3130
    :cond_183
    :try_start_183
    iget-object v8, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-static {v7}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;
    :try_end_18b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_183 .. :try_end_18b} :catch_1e5
    .catchall {:try_start_183 .. :try_end_18b} :catchall_20d

    .line 3136
    nop

    .line 3140
    :goto_18c
    :try_start_18c
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v9, v9, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserTypeDetails;

    .line 3141
    .local v8, "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v8, :cond_1b4

    .line 3147
    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v9, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {v8}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v11

    or-int/2addr v10, v11

    iput v10, v9, Landroid/content/pm/UserInfo;->flags:I

    .line 3148
    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3119
    nop

    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "flags":I
    .end local v8    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    add-int/lit8 v5, v5, 0x1

    goto :goto_159

    .line 3142
    .restart local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v7    # "flags":I
    .restart local v8    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    :cond_1b4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot upgrade user with flags "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3143
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " because "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v10, v10, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isn\'t defined on this device!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "userIdsToWrite":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "originalVersion":I
    .end local v2    # "originalUserTypeVersion":I
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "oldGlobalUserRestrictions":Landroid/os/Bundle;
    .end local p2    # "userVersion":I
    .end local p3    # "userTypeVersion":I
    throw v3

    .line 3131
    .end local v8    # "userTypeDetails":Lcom/android/server/pm/UserTypeDetails;
    .restart local v0    # "userIdsToWrite":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v1    # "originalVersion":I
    .restart local v2    # "originalUserTypeVersion":I
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "oldGlobalUserRestrictions":Landroid/os/Bundle;
    .restart local p2    # "userVersion":I
    .restart local p3    # "userTypeVersion":I
    :catch_1e5
    move-exception v3

    .line 3133
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot upgrade user with flags "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3134
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " because it doesn\'t correspond to a valid user type."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "userIdsToWrite":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "originalVersion":I
    .end local v2    # "originalUserTypeVersion":I
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1    # "oldGlobalUserRestrictions":Landroid/os/Bundle;
    .end local p2    # "userVersion":I
    .end local p3    # "userTypeVersion":I
    throw v8

    .line 3150
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "i":I
    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "flags":I
    .restart local v0    # "userIdsToWrite":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v1    # "originalVersion":I
    .restart local v2    # "originalUserTypeVersion":I
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1    # "oldGlobalUserRestrictions":Landroid/os/Bundle;
    .restart local p2    # "userVersion":I
    .restart local p3    # "userTypeVersion":I
    :cond_209
    monitor-exit v4

    .line 3151
    const/16 p2, 0x9

    goto :goto_210

    .line 3150
    :catchall_20d
    move-exception v3

    monitor-exit v4
    :try_end_20f
    .catchall {:try_start_18c .. :try_end_20f} :catchall_20d

    throw v3

    .line 3156
    :cond_210
    :goto_210
    const/4 v4, 0x0

    .line 3157
    .local v4, "isXSpaceUpdate":Z
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/xspace/XSpaceManagerStub;->getXSpaceUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3158
    .local v5, "xspaceUserData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v5, :cond_24b

    iget-object v6, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v6, v6, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    const-string v7, "android.os.usertype.profile.CLONE"

    if-eq v6, v7, :cond_24b

    .line 3159
    iget-object v6, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const-string v7, "android.os.usertype.profile.CLONE"

    iput-object v7, v6, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 3160
    iget-object v6, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/xspace/XSpaceManagerStub;->getXSpaceUserFlag()I

    move-result v7

    or-int/lit16 v7, v7, 0x1010

    iput v7, v6, Landroid/content/pm/UserInfo;->flags:I

    .line 3161
    iget-object v6, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3162
    const/4 v4, 0x1

    .line 3168
    :cond_24b
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeVersion()I

    move-result v6

    .line 3171
    .local v6, "newUserTypeVersion":I
    if-gt v6, p3, :cond_253

    if-eqz v4, :cond_260

    .line 3173
    :cond_253
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3174
    :try_start_256
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeUpgrades()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-direct {p0, v8, v9, p3, v0}, Lcom/android/server/pm/UserManagerService;->upgradeUserTypesLU(Ljava/util/List;Landroid/util/ArrayMap;ILjava/util/Set;)V

    .line 3176
    monitor-exit v7
    :try_end_260
    .catchall {:try_start_256 .. :try_end_260} :catchall_2b1

    .line 3179
    :cond_260
    if-ge p2, v3, :cond_287

    .line 3180
    const-string v7, "UserManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " didn\'t upgrade as expected to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b0

    .line 3183
    :cond_287
    iput p2, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 3184
    iput v6, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    .line 3186
    if-lt v1, p2, :cond_28f

    if-ge v2, v6, :cond_2b0

    .line 3187
    :cond_28f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_293
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2ad

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3188
    .local v7, "userId":I
    invoke-direct {p0, v7}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v8

    .line 3189
    .local v8, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v8, :cond_2ac

    .line 3190
    invoke-direct {p0, v8}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3192
    .end local v7    # "userId":I
    .end local v8    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_2ac
    goto :goto_293

    .line 3193
    :cond_2ad
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 3196
    :cond_2b0
    :goto_2b0
    return-void

    .line 3176
    :catchall_2b1
    move-exception v3

    :try_start_2b2
    monitor-exit v7
    :try_end_2b3
    .catchall {:try_start_2b2 .. :try_end_2b3} :catchall_2b1

    throw v3
.end method

.method upgradeProfileToTypeLU(Landroid/content/pm/UserInfo;Lcom/android/server/pm/UserTypeDetails;)V
    .registers 8
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "newUserType"    # Lcom/android/server/pm/UserTypeDetails;

    .line 3240
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3242
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3240
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 3251
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 3252
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exceeded maximum profiles of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3253
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Maximum allowed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3255
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getMaxAllowedPerParent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3252
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    :cond_7d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 3260
    .local v0, "oldUserType":Lcom/android/server/pm/UserTypeDetails;
    if-eqz v0, :cond_8e

    .line 3261
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v1

    .local v1, "oldFlags":I
    goto :goto_90

    .line 3264
    .end local v1    # "oldFlags":I
    :cond_8e
    const/16 v1, 0x1000

    .line 3268
    .restart local v1    # "oldFlags":I
    :goto_90
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 3270
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v2

    iget v3, p1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/2addr v3, v1

    or-int/2addr v2, v3

    iput v2, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 3273
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3274
    :try_start_a3
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultRestrictions()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_c6

    .line 3275
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    .line 3276
    invoke-virtual {v3, v4}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    .line 3275
    invoke-static {v3}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 3277
    .local v3, "newRestrictions":Landroid/os/Bundle;
    nop

    .line 3278
    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultRestrictions()Landroid/os/Bundle;

    move-result-object v4

    .line 3277
    invoke-static {v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 3279
    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 3285
    .end local v3    # "newRestrictions":Landroid/os/Bundle;
    :cond_c6
    monitor-exit v2
    :try_end_c7
    .catchall {:try_start_a3 .. :try_end_c7} :catchall_d2

    .line 3288
    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget-object v3, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(ILjava/lang/String;)I

    move-result v2

    iput v2, p1, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 3289
    return-void

    .line 3285
    :catchall_d2
    move-exception v3

    :try_start_d3
    monitor-exit v2
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw v3

    .line 3245
    .end local v0    # "oldUserType":Lcom/android/server/pm/UserTypeDetails;
    .end local v1    # "oldFlags":I
    :cond_d5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only upgrade profile types. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a profile type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V
    .registers 11
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3399
    invoke-static {p2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 3400
    .local v0, "serializer":Landroid/util/TypedXmlSerializer;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3401
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3403
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3404
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    const-string/jumbo v4, "user"

    invoke-interface {v0, v3, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3405
    const-string v4, "id"

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v3, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3406
    const-string/jumbo v4, "serialNumber"

    iget v5, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v0, v3, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3407
    const-string v4, "flags"

    iget v5, v2, Landroid/content/pm/UserInfo;->flags:I

    invoke-interface {v0, v3, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3408
    const-string/jumbo v4, "type"

    iget-object v5, v2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-interface {v0, v3, v4, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3409
    const-string v4, "created"

    iget-wide v5, v2, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3410
    const-string v4, "lastLoggedIn"

    iget-wide v5, v2, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3411
    iget-object v4, v2, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    if-eqz v4, :cond_51

    .line 3412
    const-string v4, "lastLoggedInFingerprint"

    iget-object v5, v2, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-interface {v0, v3, v4, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3415
    :cond_51
    iget-object v4, v2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v4, :cond_5c

    .line 3416
    const-string v4, "icon"

    iget-object v5, v2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-interface {v0, v3, v4, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3418
    :cond_5c
    iget-boolean v4, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_66

    .line 3419
    const-string/jumbo v4, "partial"

    invoke-interface {v0, v3, v4, v1}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3421
    :cond_66
    iget-boolean v4, v2, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v4, :cond_70

    .line 3422
    const-string/jumbo v4, "preCreated"

    invoke-interface {v0, v3, v4, v1}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3424
    :cond_70
    iget-boolean v4, v2, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v4, :cond_79

    .line 3425
    const-string v4, "convertedFromPreCreated"

    invoke-interface {v0, v3, v4, v1}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3427
    :cond_79
    iget-boolean v4, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v4, :cond_82

    .line 3428
    const-string v4, "guestToRemove"

    invoke-interface {v0, v3, v4, v1}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3430
    :cond_82
    iget v1, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-eq v1, v4, :cond_90

    .line 3431
    const-string/jumbo v1, "profileGroupId"

    iget v5, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-interface {v0, v3, v1, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3433
    :cond_90
    const-string/jumbo v1, "profileBadge"

    iget v5, v2, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-interface {v0, v3, v1, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3434
    iget v1, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-eq v1, v4, :cond_a4

    .line 3435
    const-string/jumbo v1, "restrictedProfileParentId"

    iget v4, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    invoke-interface {v0, v3, v1, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3439
    :cond_a4
    iget-boolean v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v1, :cond_ca

    .line 3440
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    const/16 v4, 0x1f4

    if-eqz v1, :cond_ba

    .line 3441
    const-string/jumbo v1, "seedAccountName"

    iget-object v5, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 3442
    invoke-direct {p0, v5, v4}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 3441
    invoke-interface {v0, v3, v1, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3445
    :cond_ba
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v1, :cond_ca

    .line 3446
    const-string/jumbo v1, "seedAccountType"

    iget-object v5, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 3447
    invoke-direct {p0, v5, v4}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 3446
    invoke-interface {v0, v3, v1, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3451
    :cond_ca
    iget-object v1, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_e5

    .line 3452
    const-string/jumbo v1, "name"

    invoke-interface {v0, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3453
    iget-object v1, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-direct {p0, v1, v4}, Lcom/android/server/pm/UserManagerService;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3454
    const-string/jumbo v1, "name"

    invoke-interface {v0, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3456
    :cond_e5
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3457
    :try_start_e8
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    .line 3458
    invoke-virtual {v4, v5}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "restrictions"

    .line 3457
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Landroid/util/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3459
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getDevicePolicyLocalRestrictionsForTargetUserLR(I)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v4

    const-string v5, "device_policy_local_restrictions"

    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/RestrictionsSet;->writeRestrictions(Landroid/util/TypedXmlSerializer;Ljava/lang/String;)V

    .line 3461
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    .line 3462
    invoke-virtual {v4, v5}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "device_policy_global_restrictions"

    .line 3461
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Landroid/util/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3464
    monitor-exit v1
    :try_end_10f
    .catchall {:try_start_e8 .. :try_end_10f} :catchall_179

    .line 3466
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v1, :cond_122

    .line 3467
    const-string v1, "account"

    invoke-interface {v0, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3468
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3469
    const-string v1, "account"

    invoke-interface {v0, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3472
    :cond_122
    iget-boolean v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v1, :cond_13b

    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_13b

    .line 3473
    const-string/jumbo v1, "seedAccountOptions"

    invoke-interface {v0, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3474
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v0}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 3475
    const-string/jumbo v1, "seedAccountOptions"

    invoke-interface {v0, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3478
    :cond_13b
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_15a

    .line 3479
    const-string v1, "lastRequestQuietModeEnabledCall"

    invoke-interface {v0, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3480
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3481
    const-string v1, "lastRequestQuietModeEnabledCall"

    invoke-interface {v0, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3484
    :cond_15a
    const-string v1, "ignorePrepareStorageErrors"

    invoke-interface {v0, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3485
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getIgnorePrepareStorageErrors()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3486
    const-string v1, "ignorePrepareStorageErrors"

    invoke-interface {v0, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3488
    const-string/jumbo v1, "user"

    invoke-interface {v0, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3490
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 3491
    return-void

    .line 3464
    :catchall_179
    move-exception v3

    :try_start_17a
    monitor-exit v1
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_179

    throw v3
.end method
