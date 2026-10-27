.class public Lcom/android/server/locksettings/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;,
        Lcom/android/server/locksettings/LockSettingsService$LocalService;,
        Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;,
        Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/locksettings/LockSettingsService$StorageWatcher;,
        Lcom/android/server/locksettings/LockSettingsService$Injector;,
        Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;,
        Lcom/android/server/locksettings/LockSettingsService$Lifecycle;
    }
.end annotation


# static fields
.field private static final BIOMETRIC_PERMISSION:Ljava/lang/String; = "android.permission.MANAGE_BIOMETRIC"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "default_password"

.field private static final GK_PW_HANDLE_STORE_DURATION_MS:I = 0x927c0

.field private static final GSI_RUNNING_PROP:Ljava/lang/String; = "ro.gsid.image_running"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PREV_SYNTHETIC_PASSWORD_HANDLE_KEY:Ljava/lang/String; = "prev-sp-handle"

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SEPARATE_PROFILE_CHALLENGE_KEY:Ljava/lang/String; = "lockscreen.profilechallenge"

.field private static final SYNTHETIC_PASSWORD_UPDATE_TIME_KEY:Ljava/lang/String; = "sp-handle-ts"

.field private static final SYSTEM_CREDENTIAL_UIDS:[I

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final USER_SERIAL_NUMBER_KEY:Ljava/lang/String; = "serial-number"

.field private static final VALID_SETTINGS:[Ljava/lang/String;

.field private static mSavePassword:Ljava/lang/String;


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field protected mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

.field private final mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

.field protected mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field private final mGatekeeperPasswords:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field protected final mHandler:Landroid/os/Handler;

.field protected mHasSecureLockScreen:Z

.field private final mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

.field private final mJavaKeyStore:Ljava/security/KeyStore;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mRandom:Ljava/util/Random;

.field private final mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

.field private final mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

.field private final mSeparateChallengeLock:Ljava/lang/Object;

.field private final mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

.field protected final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field private final mStorageManager:Landroid/os/storage/IStorageManager;

.field private final mStorageWatcher:Lcom/android/server/utils/Watcher;

.field private final mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

.field private final mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

.field protected final mUserManager:Landroid/os/UserManager;

.field private mUserManagerCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/UserHandle;",
            "Landroid/os/UserManager;",
            ">;"
        }
    .end annotation
.end field

.field final mUserPasswordMetrics:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRebootEscrowManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStrongAuth(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddEscrowToken(Lcom/android/server/locksettings/LockSettingsService;[BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mcleanupDataForReusedUserIdIfNecessary(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->cleanupDataForReusedUserIdIfNecessary(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mensureProfileKeystoreUnlocked(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->ensureProfileKeystoreUnlocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideEncryptionNotification(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misEscrowTokenActive(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misProfileWithUnifiedLock(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misUserSecure(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mloadEscrowData(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->loadEscrowData()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadPasswordMetrics(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmigrateOldDataAfterSystemReady(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldDataAfterSystemReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monChange(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->onChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCredentialVerified(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPostPasswordChanged(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveEscrowToken(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveUser(Lcom/android/server/locksettings/LockSettingsService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLockCredentialWithToken(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtryDeriveAuthTokenForUnsecuredPrimaryUser(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munlockUserWithToken(Lcom/android/server/locksettings/LockSettingsService;J[BI)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserWithToken(J[BI)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 16

    .line 259
    const-string v0, "default_password"

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 281
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_5e

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    .line 2765
    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    const-string/jumbo v2, "lockscreen.patterneverchosen"

    const-string/jumbo v3, "lockscreen.password_type"

    const-string/jumbo v4, "lockscreen.password_type_alternate"

    const-string/jumbo v5, "lockscreen.password_salt"

    const-string/jumbo v6, "lockscreen.disabled"

    const-string/jumbo v7, "lockscreen.options"

    const-string/jumbo v8, "lockscreen.biometric_weak_fallback"

    const-string/jumbo v9, "lockscreen.biometricweakeverchosen"

    const-string/jumbo v10, "lockscreen.power_button_instantly_locks"

    const-string/jumbo v11, "lockscreen.passwordhistory"

    const-string/jumbo v12, "lock_pattern_autolock"

    const-string/jumbo v13, "lock_biometric_weak_flags"

    const-string/jumbo v14, "lock_pattern_visible_pattern"

    const-string/jumbo v15, "lock_pattern_tactile_feedback_enabled"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .line 2784
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    const-string/jumbo v1, "lock_screen_owner_info"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 2790
    const-string/jumbo v0, "lockscreen.password_salt"

    const-string/jumbo v1, "lockscreen.passwordhistory"

    const-string/jumbo v2, "lockscreen.password_type"

    const-string/jumbo v3, "lockscreen.profilechallenge"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    return-void

    :array_5e
    .array-data 4
        0x3f8
        0x0
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 600
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;-><init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V

    .line 601
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V
    .registers 13
    .param p1, "injector"    # Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 604
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 232
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 235
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    .line 268
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    .line 862
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/locksettings/LockSettingsService$2;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 605
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 606
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 607
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    .line 608
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getJavaKeyStore()Ljava/security/KeyStore;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    .line 609
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getRecoverableKeyStoreManager()Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 610
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getServiceThread()Lcom/android/server/ServiceThread;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getHandler(Lcom/android/server/ServiceThread;)Landroid/os/Handler;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 611
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuth()Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 612
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    .line 614
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v10, v1

    .line 615
    .local v10, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v10, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 616
    const-string v1, "android.intent.action.USER_STARTING"

    invoke-virtual {v10, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 617
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v10, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 621
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorage()Lcom/android/server/locksettings/LockSettingsStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 622
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 623
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 624
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 625
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuthTracker()Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    .line 626
    invoke-virtual {v2, v9}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->register(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V

    .line 627
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 628
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mRandom:Ljava/util/Random;

    .line 630
    invoke-virtual {p1, v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getSyntheticPasswordManager(Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 631
    invoke-virtual {p1, v7}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getManagedProfilePasswordCache(Ljava/security/KeyStore;)Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    .line 632
    new-instance v3, Lcom/android/server/locksettings/BiometricDeferredQueue;

    invoke-direct {v3, v0, v2, v8}, Lcom/android/server/locksettings/BiometricDeferredQueue;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/SyntheticPasswordManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 634
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks-IA;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getRebootEscrowManager(Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 637
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$LocalService;

    invoke-direct {v3, p0, v2}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$LocalService-IA;)V

    invoke-static {v0, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 639
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$StorageWatcher;

    invoke-direct {v0, p0, v2}, Lcom/android/server/locksettings/LockSettingsService$StorageWatcher;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$StorageWatcher-IA;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageWatcher:Lcom/android/server/utils/Watcher;

    .line 640
    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 641
    return-void
.end method

.method private activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 12
    .param p1, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .line 3381
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3382
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 3383
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3384
    .local v2, "handle":J
    const-string v4, "LockSettingsService"

    const-string v5, "activateEscrowTokens: %x %d "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    .line 3386
    nop

    .end local v2    # "handle":J
    goto :goto_10

    .line 3387
    :cond_43
    monitor-exit v0

    .line 3388
    return-void

    .line 3387
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method private addEscrowToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 14
    .param p1, "token"    # [B
    .param p2, "type"    # I
    .param p3, "userId"    # I
    .param p4, "callback"    # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 3350
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3353
    const/4 v1, 0x0

    .line 3354
    .local v1, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    :try_start_4
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-nez v2, :cond_32

    .line 3355
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3356
    const/4 v2, 0x0

    .line 3357
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v3

    .line 3356
    invoke-virtual {p0, v2, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v2

    move-object v1, v2

    goto :goto_32

    .line 3359
    :cond_1b
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 3360
    .local v4, "pwdHandle":J
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    .line 3361
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    const/4 v8, 0x0

    .line 3360
    move v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object v1, v2

    .line 3364
    .end local v4    # "pwdHandle":J
    :cond_32
    :goto_32
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 3365
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 3366
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v2

    if-eqz v2, :cond_44

    goto :goto_4c

    .line 3367
    :cond_44
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Escrow token is disabled on the current user"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "token":[B
    .end local p2    # "type":I
    .end local p3    # "userId":I
    .end local p4    # "callback":Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;
    throw v2

    .line 3370
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "token":[B
    .restart local p2    # "type":I
    .restart local p3    # "userId":I
    .restart local p4    # "callback":Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;
    :cond_4c
    :goto_4c
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v2

    .line 3372
    .local v2, "handle":J
    if-eqz v1, :cond_59

    .line 3373
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, v1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    .line 3375
    :cond_59
    monitor-exit v0

    return-wide v2

    .line 3376
    .end local v1    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v2    # "handle":J
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_4 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method private addUserKeyAuth(I[B)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "secret"    # [B

    .line 2199
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2200
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2202
    .local v1, "callingId":J
    :try_start_a
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v3, p1, v4, p2}, Landroid/os/storage/IStorageManager;->addUserKeyAuth(II[B)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_18
    .catchall {:try_start_a .. :try_end_11} :catchall_16

    .line 2206
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2207
    nop

    .line 2208
    return-void

    .line 2206
    :catchall_16
    move-exception v3

    goto :goto_32

    .line 2203
    :catch_18
    move-exception v3

    .line 2204
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_19
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add new key to vold "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v1    # "callingId":J
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "userId":I
    .end local p2    # "secret":[B
    throw v4
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_16

    .line 2206
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v1    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "userId":I
    .restart local p2    # "secret":[B
    :goto_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2207
    throw v3
.end method

.method private callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 2857
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2859
    :try_start_10
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveVendorAuthSecret()[B

    move-result-object v0

    .line 2860
    .local v0, "rawSecret":[B
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2861
    .local v1, "secret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    array-length v3, v0

    if-ge v2, v3, :cond_2a

    .line 2862
    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2861
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 2864
    .end local v2    # "i":I
    :cond_2a
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    invoke-interface {v2, v1}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->primaryUserCredential(Ljava/util/ArrayList;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2f} :catch_30

    .line 2867
    .end local v0    # "rawSecret":[B
    .end local v1    # "secret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    goto :goto_38

    .line 2865
    :catch_30
    move-exception v0

    .line 2866
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Failed to pass primary user secret to AuthSecret HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2869
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_38
    :goto_38
    return-void
.end method

.method private final checkBiometricPermission()V
    .registers 4

    .line 1183
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    const-string v2, "LockSettingsBiometric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    return-void
.end method

.method private checkCryptKeeperPermissions()Z
    .registers 5

    .line 1402
    const/4 v0, 0x0

    .line 1404
    .local v0, "permission_err":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v3, "no permission to get the password"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_b} :catch_c

    .line 1409
    goto :goto_e

    .line 1407
    :catch_c
    move-exception v1

    .line 1408
    .local v1, "e":Ljava/lang/SecurityException;
    const/4 v0, 0x1

    .line 1410
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_e
    return v0
.end method

.method private checkManageWeakEscrowTokenMethodUsage()V
    .registers 4

    .line 1191
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_WEAK_ESCROW_TOKEN"

    const-string v2, "Requires MANAGE_WEAK_ESCROW_TOKEN permission."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1198
    return-void

    .line 1195
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Weak escrow token are only for automotive devices."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final checkPasswordHavePermission(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1152
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_28

    .line 1153
    const v0, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "28251513"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1155
    :cond_28
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v2, "LockSettingsHave"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    return-void
.end method

.method private final checkPasswordReadPermission()V
    .registers 4

    .line 1148
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .registers 13
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1161
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    sget-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v2

    const-string v4, " for user "

    const-string v5, " to read "

    const-string v6, " needs permission "

    const-string/jumbo v7, "uid="

    if-ge v1, v3, :cond_58

    .line 1162
    aget-object v2, v2, v1

    .line 1163
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_26

    goto :goto_55

    .line 1165
    :cond_26
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1161
    .end local v2    # "key":Ljava/lang/String;
    :cond_55
    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1171
    .end local v1    # "i":I
    :cond_58
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_59
    sget-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_a3

    .line 1172
    aget-object v2, v2, v1

    .line 1173
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v3, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_71

    goto :goto_a0

    .line 1175
    :cond_71
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1171
    .end local v2    # "key":Ljava/lang/String;
    :cond_a0
    :goto_a0
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 1180
    .end local v1    # "i":I
    :cond_a3
    return-void
.end method

.method private final checkWritePermission(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1144
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    return-void
.end method

.method private cleanupDataForReusedUserIdIfNecessary(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 778
    if-nez p1, :cond_3

    .line 780
    return-void

    .line 783
    :cond_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 785
    .local v0, "serialNumber":I
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "serial-number"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(Ljava/lang/String;II)I

    move-result v1

    .line 786
    .local v1, "storedSerialNumber":I
    if-eq v1, v0, :cond_20

    .line 791
    if-eq v1, v3, :cond_1b

    .line 792
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V

    .line 794
    :cond_1b
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v3, v2, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->setInt(Ljava/lang/String;II)V

    .line 796
    :cond_20
    return-void
.end method

.method private clearUserKeyProtection(I[B)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "secret"    # [B

    .line 2141
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2142
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2144
    .local v1, "callingId":J
    :try_start_a
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v3, p1, v4, p2}, Landroid/os/storage/IStorageManager;->clearUserKeyAuth(II[B)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_17
    .catchall {:try_start_a .. :try_end_11} :catchall_15

    .line 2154
    :goto_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2155
    goto :goto_20

    .line 2154
    :catchall_15
    move-exception v3

    goto :goto_3b

    .line 2145
    :catch_17
    move-exception v3

    .line 2148
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_18
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v5, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v4, p1, v5, p2}, Landroid/os/storage/IStorageManager;->clearUserKeyAuth(II[B)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_21
    .catchall {:try_start_18 .. :try_end_1f} :catchall_15

    .line 2151
    goto :goto_11

    .line 2156
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void

    .line 2149
    .restart local v3    # "e":Landroid/os/RemoteException;
    :catch_21
    move-exception v4

    .line 2150
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_22
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearUserKeyAuth failed aggin, user="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v1    # "callingId":J
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "userId":I
    .end local p2    # "secret":[B
    throw v5
    :try_end_3b
    .catchall {:try_start_22 .. :try_end_3b} :catchall_15

    .line 2154
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "re":Landroid/os/RemoteException;
    .restart local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v1    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "userId":I
    .restart local p2    # "secret":[B
    :goto_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2155
    throw v3
.end method

.method private convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 3
    .param p1, "gateKeeperResponse"    # Landroid/service/gatekeeper/GateKeeperResponse;

    .line 1976
    invoke-static {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private static credentialTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "credentialType"    # I

    .line 3522
    packed-switch p0, :pswitch_data_24

    .line 3532
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3530
    :pswitch_17
    const-string v0, "Password"

    return-object v0

    .line 3528
    :pswitch_1a
    const-string v0, "Pin"

    return-object v0

    .line 3526
    :pswitch_1d
    const-string v0, "Pattern"

    return-object v0

    .line 3524
    :pswitch_20
    const-string v0, "None"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch -0x1
        :pswitch_20
        :pswitch_3
        :pswitch_1d
        :pswitch_3
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 3622
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 3625
    .local v0, "userManagerInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserManaged(I)Z

    move-result v1

    const-string v2, "LockSettingsService"

    if-eqz v1, :cond_14

    .line 3626
    const-string v1, "Managed profile can have escrow token"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3627
    return-void

    .line 3631
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->isDeviceManaged()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3632
    const-string v1, "Corp-owned device can have escrow token"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    return-void

    .line 3639
    :cond_20
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDeviceStateCache()Landroid/app/admin/DeviceStateCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/DeviceStateCache;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_32

    .line 3640
    const-string v1, "Postpone disabling escrow tokens until device is provisioned"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    return-void

    .line 3645
    :cond_32
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.type.automotive"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 3646
    return-void

    .line 3650
    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling escrow token on user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 3652
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyEscrowData(I)V

    .line 3654
    :cond_62
    return-void
.end method

.method private doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 11
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .param p4, "flags"    # I

    .line 2356
    if-eqz p1, :cond_88

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_88

    .line 2359
    const/16 v0, -0x270f

    const-string v1, "LockSettingsService"

    if-ne p2, v0, :cond_27

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "device_provisioned"

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/locksettings/LockSettingsService$Injector;->settingsGlobalGetInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_27

    .line 2361
    const-string v0, "FRP credential can only be verified prior to provisioning."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 2365
    :cond_27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 2369
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-eqz v2, :cond_37

    .line 2370
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_36

    .line 2371
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 2373
    :cond_36
    return-object v2

    .line 2376
    :cond_37
    if-ne p2, v0, :cond_41

    .line 2377
    const-string v0, "Unexpected FRP credential type, should be SP based."

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 2381
    :cond_41
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 2382
    .local v0, "storedHash":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    iget v3, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/LockscreenCredential;->checkAgainstStoredType(I)Z

    move-result v3

    if-nez v3, :cond_78

    .line 2383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doVerifyCredential type mismatch with stored credential?? stored: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " passed in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2384
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2383
    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    .line 2388
    :cond_78
    invoke-direct {p0, p2, v0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 2390
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_87

    .line 2391
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v2, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    .line 2394
    :cond_87
    return-object v1

    .line 2357
    .end local v0    # "storedHash":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credential can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dumpKeystoreKeys(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 3606
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .line 3607
    .local v0, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3608
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_15} :catch_17

    goto :goto_6

    .line 3613
    .end local v0    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_16
    goto :goto_39

    .line 3610
    :catch_17
    move-exception v0

    .line 3611
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3612
    const-string v1, "LockSettingsService"

    const-string v2, "Dump error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3614
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :goto_39
    return-void
.end method

.method private enforceFrpResolved()V
    .registers 7

    .line 1132
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1133
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->settingsSecureGetInt(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_15

    move v1, v2

    goto :goto_16

    :cond_15
    move v1, v3

    .line 1135
    .local v1, "inSetupWizard":Z
    :goto_16
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    const-string/jumbo v5, "secure_frp_mode"

    invoke-virtual {v4, v0, v5, v3, v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->settingsSecureGetInt(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_22

    move v3, v2

    :cond_22
    move v2, v3

    .line 1137
    .local v2, "secureFrp":Z
    if-eqz v1, :cond_30

    if-nez v2, :cond_28

    goto :goto_30

    .line 1138
    :cond_28
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Cannot change credential in SUW while factory reset protection is not resolved yet"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1141
    :cond_30
    :goto_30
    return-void
.end method

.method private enforceShell()V
    .registers 3

    .line 2636
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2639
    return-void

    .line 2637
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureProfileKeystoreUnlocked(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 804
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 805
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-ne v1, v2, :cond_23

    .line 806
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 807
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hasUnifiedChallenge(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 808
    const-string v1, "LockSettingsService"

    const-string v2, "Profile got unlocked, will unlock its keystore"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZ)V

    .line 814
    :cond_23
    return-void
.end method

.method private faceManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/face/FaceManager$RemovalCallback;
    .registers 3
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 3243
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$5;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method private fingerprintManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    .registers 3
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 3226
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$4;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method private fixateNewestUserKeyAuth(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 2212
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2214
    .local v0, "callingId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v2, p1}, Landroid/os/storage/IStorageManager;->fixateNewestUserKeyAuth(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 2220
    nop

    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2221
    goto :goto_1a

    .line 2220
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 2215
    :catch_10
    move-exception v2

    .line 2218
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_11
    const-string v3, "LockSettingsService"

    const-string v4, "fixateNewestUserKeyAuth failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_e

    .line 2220
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_a

    .line 2222
    :goto_1a
    return-void

    .line 2220
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2221
    throw v2
.end method

.method private gateKeeperClearSecureUserId(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 2831
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2839
    goto :goto_35

    .line 2832
    :catch_8
    move-exception v0

    .line 2834
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Password GateKeeperService no response"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v2

    const v3, 0x35e1f5eb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "appname"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "locksettings"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v2

    .line 2836
    .local v2, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 2838
    const-string v3, "Failed to clear SID"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2840
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "event":Lcom/miui/misight/MiEventStub;
    :goto_35
    return-void
.end method

.method private generateRandomProfilePassword()Lcom/android/internal/widget/LockscreenCredential;
    .registers 7

    .line 355
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 357
    .local v1, "randomLockSeed":[B
    :try_start_3
    const-string v2, "SHA1PRNG"

    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    move-object v1, v2

    .line 358
    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    .line 359
    .local v2, "newPasswordChars":[C
    array-length v3, v2

    new-array v3, v3, [B

    .line 360
    .local v3, "newPassword":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    array-length v5, v2

    if-ge v4, v5, :cond_23

    .line 361
    aget-char v5, v2, v4

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 360
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 363
    .end local v4    # "i":I
    :cond_23
    nop

    .line 364
    invoke-static {v3}, Lcom/android/internal/widget/LockscreenCredential;->createManagedPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    .line 365
    .local v4, "credential":Lcom/android/internal/widget/LockscreenCredential;
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 366
    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 367
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V
    :try_end_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_31} :catch_32

    .line 368
    return-object v4

    .line 369
    .end local v2    # "newPasswordChars":[C
    .end local v3    # "newPassword":[B
    .end local v4    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    :catch_32
    move-exception v0

    .line 370
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Fail to generate profile password"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getAuthSecretHal()V
    .registers 4

    .line 908
    const-string v0, "LockSettingsService"

    const/4 v1, 0x1

    :try_start_3
    invoke-static {v1}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->getService(Z)Landroid/hardware/authsecret/V1_0/IAuthSecret;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;
    :try_end_9
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_9} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_17

    .line 911
    :catch_a
    move-exception v1

    .line 912
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to get AuthSecret HAL"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 909
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_11
    move-exception v1

    .line 910
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "Device doesn\'t implement AuthSecret HAL"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_17
    nop

    .line 914
    :goto_18
    return-void
.end method

.method private getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ">;"
        }
    .end annotation

    .line 1573
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1574
    const/4 v0, 0x0

    return-object v0

    .line 1576
    :cond_8
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1577
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 1578
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1579
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v2, :cond_5a

    .line 1580
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1581
    .local v4, "profile":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v5

    if-nez v5, :cond_29

    .line 1582
    goto :goto_57

    .line 1584
    :cond_29
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1585
    .local v5, "profileUserId":I
    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1586
    goto :goto_57

    .line 1589
    :cond_32
    :try_start_32
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/security/KeyStoreException; {:try_start_32 .. :try_end_3d} :catch_3e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_32 .. :try_end_3d} :catch_3e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_32 .. :try_end_3d} :catch_3e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_32 .. :try_end_3d} :catch_3e
    .catch Ljava/security/InvalidKeyException; {:try_start_32 .. :try_end_3d} :catch_3e
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_32 .. :try_end_3d} :catch_3e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_32 .. :try_end_3d} :catch_3e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_32 .. :try_end_3d} :catch_3e
    .catch Ljava/security/cert/CertificateException; {:try_start_32 .. :try_end_3d} :catch_3e
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3d} :catch_3e

    .line 1596
    goto :goto_57

    .line 1590
    :catch_3e
    move-exception v6

    .line 1594
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDecryptedPasswordsForAllTiedProfiles failed for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LockSettingsService"

    invoke-static {v8, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1579
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    .end local v5    # "profileUserId":I
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1598
    .end local v3    # "i":I
    :cond_5a
    return-object v0
.end method

.method private getEncryptionNotificationDetail()Ljava/lang/String;
    .registers 4

    .line 717
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    const-string v2, "Core.PROFILE_ENCRYPTED_DETAIL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptionNotificationMessage()Ljava/lang/String;
    .registers 4

    .line 723
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    const-string v2, "Core.PROFILE_ENCRYPTED_MESSAGE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptionNotificationTitle()Ljava/lang/String;
    .registers 4

    .line 711
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    const-string v2, "Core.PROFILE_ENCRYPTED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFrpCredentialType()I
    .registers 5

    .line 1361
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    .line 1362
    .local v0, "data":Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    iget v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_12

    iget v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    if-eq v1, v2, :cond_12

    .line 1363
    const/4 v1, -0x1

    return v1

    .line 1365
    :cond_12
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getFrpCredentialType([B)I

    move-result v1

    .line 1366
    .local v1, "credentialType":I
    if-eq v1, v2, :cond_1b

    .line 1367
    return v1

    .line 1369
    :cond_1b
    iget v2, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->pinOrPasswordQualityToCredentialType(I)I

    move-result v2

    return v2
.end method

.method private getKeyguardStoredQuality(I)I
    .registers 6
    .param p1, "userId"    # I

    .line 1310
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private getProfilesWithSameLockScreen(I)Ljava/util/Set;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1714
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1715
    .local v0, "profiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1716
    .local v2, "profile":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v3, p1, :cond_2b

    iget v3, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v3, p1, :cond_34

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 1718
    invoke-direct {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1719
    :cond_2b
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1721
    .end local v2    # "profile":Landroid/content/pm/UserInfo;
    :cond_34
    goto :goto_f

    .line 1722
    :cond_35
    return-object v0
.end method

.method private getRequestedPasswordHistoryLength(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 1934
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method private getSalt(I)Ljava/lang/String;
    .registers 7
    .param p1, "userId"    # I

    .line 1919
    const-string/jumbo v0, "lockscreen.password_salt"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 1920
    .local v3, "salt":J
    cmp-long v1, v3, v1

    if-nez v1, :cond_3d

    .line 1922
    :try_start_d
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    move-wide v3, v1

    .line 1923
    invoke-virtual {p0, v0, v3, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1924
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialized lock password salt for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_33} :catch_34

    .line 1928
    goto :goto_3d

    .line 1925
    :catch_34
    move-exception v0

    .line 1927
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t get SecureRandom number"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1930
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_3d
    :goto_3d
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSeparateProfileChallengeEnabledInternal(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1212
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1213
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "lockscreen.profilechallenge"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1214
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private getUserManagerFromCache(I)Landroid/os/UserManager;
    .registers 7
    .param p1, "userId"    # I

    .line 1956
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 1957
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1958
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    return-object v1

    .line 1962
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "system"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 1963
    .local v1, "userContext":Landroid/content/Context;
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 1964
    .local v2, "userManager":Landroid/os/UserManager;
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_2c} :catch_2d

    .line 1965
    return-object v2

    .line 1966
    .end local v1    # "userContext":Landroid/content/Context;
    .end local v2    # "userManager":Landroid/os/UserManager;
    :catch_2d
    move-exception v1

    .line 1967
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create context for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 1187
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

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

.method private hasUnifiedChallenge(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1568
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 1569
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 1568
    :goto_11
    return v0
.end method

.method private hideEncryptionNotification(Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hide encryption notification, user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 752
    return-void
.end method

.method private isCallerShell()Z
    .registers 3

    .line 2631
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2632
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method private isCredentialRequiredToDecrypt()Z
    .registers 4

    .line 1950
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "require_password_to_decrypt"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1952
    .local v0, "value":I
    if-eqz v0, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private static isDeviceEncryptionEnabled()Z
    .registers 1

    .line 1938
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method private isDoNotAskCredentialsOnBootSet()Z
    .registers 2

    .line 1946
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0

    return v0
.end method

.method private isEscrowTokenActive(JI)Z
    .registers 6
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 3391
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3392
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3393
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private isProfileWithSeparatedLock(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1657
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1658
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1657
    :goto_f
    return v0
.end method

.method private isProfileWithUnifiedLock(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1652
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1653
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1652
    :goto_f
    return v0
.end method

.method private isSyntheticPasswordBasedCredentialLocked(I)Z
    .registers 8
    .param p1, "userId"    # I

    .line 2966
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, -0x270f

    if-ne p1, v2, :cond_15

    .line 2967
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v2

    iget v2, v2, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 2968
    .local v2, "type":I
    if-eq v2, v1, :cond_13

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    :cond_13
    move v0, v1

    :cond_14
    return v0

    .line 2970
    .end local v2    # "type":I
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    .line 2971
    .local v2, "handle":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_20

    move v0, v1

    :cond_20
    return v0
.end method

.method private isUserKeyUnlocked(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 2175
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->isUserKeyUnlocked(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2176
    :catch_7
    move-exception v0

    .line 2177
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "failed to check user key locked state"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2178
    const/4 v1, 0x0

    return v1
.end method

.method private isUserSecure(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1383
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static synthetic lambda$addWeakEscrowToken$4(Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;JI)V
    .registers 7
    .param p0, "listener"    # Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;
    .param p1, "handle"    # J
    .param p3, "userId1"    # I

    .line 2019
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;->onWeakEscrowTokenActivated(JI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2022
    goto :goto_c

    .line 2020
    :catch_4
    move-exception v0

    .line 2021
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Exception while notifying weak escrow token has been activated"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2023
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method static synthetic lambda$notifySeparateProfileChallengeChanged$3(I)V
    .registers 2
    .param p0, "userId"    # I

    .line 1257
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1259
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_d

    .line 1260
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->reportSeparateProfileChallengeChanged(I)V

    .line 1262
    :cond_d
    return-void
.end method

.method static synthetic lambda$scheduleGc$8()V
    .registers 0

    .line 3666
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3667
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 3668
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3669
    return-void
.end method

.method private loadEscrowData()V
    .registers 3

    .line 903
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataIfAvailable(Landroid/os/Handler;)V

    .line 904
    return-void
.end method

.method private loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;
    .registers 7
    .param p1, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userHandle"    # I

    .line 2540
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2541
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2543
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 655
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 656
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_d

    .line 660
    return-void

    .line 663
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserKeyUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 666
    return-void

    .line 669
    :cond_14
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 670
    .local v1, "userHandle":Landroid/os/UserHandle;
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    .line 671
    .local v2, "isSecure":Z
    if-eqz v2, :cond_45

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 672
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 673
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_45

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 674
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_45

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 675
    invoke-virtual {v4, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 678
    invoke-direct {p0, v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 681
    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    :cond_45
    return-void
.end method

.method private migrateFrpCredential()V
    .registers 8

    .line 1067
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    sget-object v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    if-eq v0, v1, :cond_b

    .line 1068
    return-void

    .line 1070
    :cond_b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1071
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1072
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2

    .line 1073
    :try_start_34
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1074
    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/16 v3, 0x0

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    long-to-int v0, v3

    .line 1077
    .local v0, "actualQuality":I
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1078
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 1080
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->redactActualQualityToMostLenientEquivalentQuality(I)I

    move-result v6

    .line 1077
    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V

    .line 1082
    .end local v0    # "actualQuality":I
    :cond_57
    monitor-exit v2

    .line 1083
    return-void

    .line 1082
    :catchall_59
    move-exception v0

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_34 .. :try_end_5b} :catchall_59

    throw v0

    .line 1085
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5c
    goto :goto_15

    .line 1086
    :cond_5d
    return-void
.end method

.method private migrateOldData()V
    .registers 18

    .line 919
    move-object/from16 v1, p0

    const-string/jumbo v0, "migrated"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 920
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 921
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    array-length v5, v4

    move v6, v3

    :goto_17
    if-ge v6, v5, :cond_2b

    aget-object v7, v4, v6

    .line 922
    .local v7, "validSetting":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v8

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 923
    .local v8, "value":Ljava/lang/String;
    if-eqz v8, :cond_28

    .line 924
    invoke-virtual {v1, v7, v8, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 921
    .end local v7    # "validSetting":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 928
    :cond_2b
    const-string/jumbo v4, "migrated"

    const-string/jumbo v5, "true"

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 929
    const-string v4, "LockSettingsService"

    const-string v5, "Migrated lock settings to new location"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_3b
    const-string/jumbo v0, "migrated_user_specific"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c4

    .line 934
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 935
    .local v7, "cr":Landroid/content/ContentResolver;
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 936
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    move v9, v0

    .local v9, "user":I
    :goto_52
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_b4

    .line 938
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v10, v0, Landroid/content/pm/UserInfo;->id:I

    .line 939
    .local v10, "userId":I
    const-string/jumbo v11, "lock_screen_owner_info"

    .line 940
    .local v11, "OWNER_INFO":Ljava/lang/String;
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-static {v7, v0, v10}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 941
    .local v12, "ownerInfo":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 942
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-virtual {v1, v0, v12, v10}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 943
    const-string/jumbo v0, "lock_screen_owner_info"

    const-string v13, ""

    invoke-static {v7, v0, v13, v10}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 949
    :cond_7e
    const-string/jumbo v13, "lock_screen_owner_info_enabled"

    .line 952
    .local v13, "OWNER_INFO_ENABLED":Ljava/lang/String;
    const-wide/16 v14, 0x1

    :try_start_83
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    invoke-static {v7, v0, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 953
    .local v0, "ivalue":I
    if-eqz v0, :cond_8f

    const/16 v16, 0x1

    goto :goto_91

    :cond_8f
    move/from16 v16, v3

    .line 954
    .local v16, "enabled":Z
    :goto_91
    const-string/jumbo v6, "lock_screen_owner_info_enabled"

    if-eqz v16, :cond_98

    move-wide v4, v14

    goto :goto_9a

    :cond_98
    const-wide/16 v4, 0x0

    :goto_9a
    invoke-virtual {v1, v6, v4, v5, v10}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_9d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_83 .. :try_end_9d} :catch_9e

    .line 960
    .end local v0    # "ivalue":I
    goto :goto_ab

    .line 955
    .end local v16    # "enabled":Z
    :catch_9e
    move-exception v0

    .line 957
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ab

    .line 958
    const-string/jumbo v4, "lock_screen_owner_info_enabled"

    invoke-virtual {v1, v4, v14, v15, v10}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 961
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_ab
    :goto_ab
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    invoke-static {v7, v0, v3, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 936
    .end local v10    # "userId":I
    .end local v11    # "OWNER_INFO":Ljava/lang/String;
    .end local v12    # "ownerInfo":Ljava/lang/String;
    .end local v13    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_52

    .line 964
    .end local v9    # "user":I
    :cond_b4
    const-string/jumbo v0, "migrated_user_specific"

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v0, v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 965
    const-string v0, "LockSettingsService"

    const-string v4, "Migrated per-user lock settings to new location"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    .end local v7    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c4
    const-string/jumbo v0, "migrated_biometric_weak"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11a

    .line 970
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 971
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_10a

    .line 972
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 973
    .local v5, "userId":I
    const-string/jumbo v6, "lockscreen.password_type"

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v6, v7, v8, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v9

    .line 976
    .local v9, "type":J
    const-string/jumbo v6, "lockscreen.password_type_alternate"

    invoke-virtual {v1, v6, v7, v8, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v11

    .line 979
    .local v11, "alternateType":J
    const-wide/32 v6, 0x8000

    cmp-long v6, v9, v6

    if-nez v6, :cond_ff

    .line 980
    const-string/jumbo v6, "lockscreen.password_type"

    invoke-virtual {v1, v6, v11, v12, v5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 984
    :cond_ff
    const-string/jumbo v6, "lockscreen.password_type_alternate"

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v6, v7, v8, v5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 971
    .end local v5    # "userId":I
    .end local v9    # "type":J
    .end local v11    # "alternateType":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_d4

    .line 988
    .end local v4    # "i":I
    :cond_10a
    const-string/jumbo v4, "migrated_biometric_weak"

    const-string/jumbo v5, "true"

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 989
    const-string v4, "LockSettingsService"

    const-string v5, "Migrated biometric weak to use the fallback instead"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_11a
    const-string/jumbo v0, "migrated_lockscreen_disabled"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_172

    .line 996
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 997
    .restart local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 998
    .local v4, "userCount":I
    const/4 v5, 0x0

    .line 999
    .local v5, "switchableUsers":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_12f
    if-ge v6, v4, :cond_142

    .line 1000
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v7

    if-eqz v7, :cond_13f

    .line 1001
    add-int/lit8 v5, v5, 0x1

    .line 999
    :cond_13f
    add-int/lit8 v6, v6, 0x1

    goto :goto_12f

    .line 1005
    .end local v6    # "i":I
    :cond_142
    const/4 v6, 0x1

    if-le v5, v6, :cond_162

    .line 1006
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_146
    if-ge v6, v4, :cond_162

    .line 1007
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    .line 1009
    .local v7, "id":I
    const-string/jumbo v8, "lockscreen.disabled"

    invoke-virtual {v1, v8, v3, v7}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_15f

    .line 1010
    const-string/jumbo v8, "lockscreen.disabled"

    invoke-virtual {v1, v8, v3, v7}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1006
    .end local v7    # "id":I
    :cond_15f
    add-int/lit8 v6, v6, 0x1

    goto :goto_146

    .line 1015
    .end local v6    # "i":I
    :cond_162
    const-string/jumbo v6, "migrated_lockscreen_disabled"

    const-string/jumbo v7, "true"

    invoke-virtual {v1, v6, v7, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1016
    const-string v6, "LockSettingsService"

    const-string v7, "Migrated lockscreen disabled flag"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "userCount":I
    .end local v5    # "switchableUsers":I
    :cond_172
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.type.watch"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 1023
    .local v4, "isWatch":Z
    if-eqz v4, :cond_1b7

    const-string/jumbo v0, "migrated_wear_lockscreen_disabled"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b7

    .line 1024
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 1025
    .restart local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 1026
    .local v5, "userCount":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_194
    if-ge v6, v5, :cond_1a7

    .line 1027
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    .line 1028
    .restart local v7    # "id":I
    const-string/jumbo v8, "lockscreen.disabled"

    invoke-virtual {v1, v8, v3, v7}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1026
    .end local v7    # "id":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_194

    .line 1030
    .end local v6    # "i":I
    :cond_1a7
    const-string/jumbo v6, "migrated_wear_lockscreen_disabled"

    const-string/jumbo v7, "true"

    invoke-virtual {v1, v6, v7, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1031
    const-string v6, "LockSettingsService"

    const-string v7, "Migrated lockscreen_disabled for Wear devices"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "userCount":I
    :cond_1b7
    const-string/jumbo v0, "migrated_keystore_namespace"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1ef

    .line 1035
    const/4 v2, 0x1

    .line 1036
    .local v2, "success":Z
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v5

    .line 1037
    :try_start_1c4
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateKeyNamespace()Z

    move-result v0

    and-int/2addr v2, v0

    .line 1038
    monitor-exit v5
    :try_end_1cc
    .catchall {:try_start_1c4 .. :try_end_1cc} :catchall_1ec

    .line 1039
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateProfileLockKeys()Z

    move-result v0

    and-int/2addr v0, v2

    .line 1040
    .end local v2    # "success":Z
    .local v0, "success":Z
    if-eqz v0, :cond_1e4

    .line 1041
    const-string/jumbo v2, "migrated_keystore_namespace"

    const-string/jumbo v5, "true"

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1042
    const-string v2, "LockSettingsService"

    const-string v3, "Migrated keys to LSS namespace"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ef

    .line 1044
    :cond_1e4
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to migrate keys to LSS namespace"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ef

    .line 1038
    .end local v0    # "success":Z
    .restart local v2    # "success":Z
    :catchall_1ec
    move-exception v0

    :try_start_1ed
    monitor-exit v5
    :try_end_1ee
    .catchall {:try_start_1ed .. :try_end_1ee} :catchall_1ec

    throw v0

    .line 1048
    .end local v2    # "success":Z
    :cond_1ef
    :goto_1ef
    return-void
.end method

.method private migrateOldDataAfterSystemReady()V
    .registers 4

    .line 1052
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1053
    const-string/jumbo v0, "migrated_frp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1054
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateFrpCredential()V

    .line 1055
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1056
    const-string v0, "LockSettingsService"

    const-string v1, "Migrated migrated_frp."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_20
    return-void
.end method

.method private migrateProfileLockKeys()Z
    .registers 8

    .line 1089
    const/4 v0, 0x1

    .line 1090
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 1091
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1092
    .local v2, "userCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v2, :cond_5d

    .line 1093
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1094
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v5

    if-eqz v5, :cond_5a

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1095
    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 1096
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_encrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 1098
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_decrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 1092
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1102
    .end local v3    # "i":I
    :cond_5d
    return v0
.end method

.method private notifyPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 5
    .param p1, "newCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I

    .line 2551
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2557
    return-void
.end method

.method private notifySeparateProfileChallengeChanged(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1256
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1263
    return-void
.end method

.method private onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 2843
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->isGsiRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2844
    const-string v0, "LockSettingsService"

    const-string v1, "Running in GSI; skipping calls to AuthSecret and RebootEscrow"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    return-void

    .line 2848
    :cond_10
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getVersion()B

    move-result v1

    .line 2849
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v2

    .line 2848
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->callToRebootEscrowIfNeeded(IB[B)V

    .line 2851
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 2852
    return-void
.end method

.method private onChange()V
    .registers 1

    .line 647
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->invalidateCredentialTypeCache()V

    .line 648
    return-void
.end method

.method private onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V
    .registers 6
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "metrics"    # Landroid/app/admin/PasswordMetrics;
    .param p3, "userId"    # I

    .line 3071
    if-eqz p2, :cond_d

    .line 3072
    monitor-enter p0

    .line 3073
    :try_start_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3074
    monitor-exit p0

    goto :goto_14

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0

    .line 3076
    :cond_d
    const-string v0, "LockSettingsService"

    const-string v1, "Null metrics after credential verification"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    :goto_14
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    .line 3082
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v0

    .line 3083
    .local v0, "secret":[B
    invoke-direct {p0, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B)V

    .line 3084
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 3086
    .end local v0    # "secret":[B
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 3088
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithSeparatedLock(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3089
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 3091
    :cond_32
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    .line 3093
    invoke-direct {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 3094
    return-void
.end method

.method private onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 5
    .param p1, "newCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userHandle"    # I

    .line 1861
    if-nez p2, :cond_18

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1862
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->shouldEncryptWithCredentials()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1863
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->setCredentialRequiredToDecrypt(Z)V

    .line 1865
    :cond_18
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1866
    const/4 v0, 0x1

    const-string/jumbo v1, "lockscreen.patterneverchosen"

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1868
    :cond_25
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->updatePasswordHistory(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 1869
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/trust/TrustManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    invoke-virtual {v0, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 1870
    return-void
.end method

.method private static pinOrPasswordQualityToCredentialType(I)I
    .registers 4
    .param p0, "quality"    # I

    .line 1373
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityAlphabeticPassword(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1374
    const/4 v0, 0x4

    return v0

    .line 1376
    :cond_8
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityNumericPin(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1377
    const/4 v0, 0x3

    return v0

    .line 1379
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quality is neither Pin nor password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private redactActualQualityToMostLenientEquivalentQuality(I)I
    .registers 3
    .param p1, "quality"    # I

    .line 1114
    sparse-switch p1, :sswitch_data_a

    .line 1127
    return p1

    .line 1118
    :sswitch_4
    const/high16 v0, 0x40000

    return v0

    .line 1121
    :sswitch_7
    const/high16 v0, 0x20000

    return v0

    :sswitch_data_a
    .sparse-switch
        0x20000 -> :sswitch_7
        0x30000 -> :sswitch_7
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
    .end sparse-switch
.end method

.method private removeAllFaceForUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 3210
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFaceManager()Landroid/hardware/face/FaceManager;

    move-result-object v0

    .line 3211
    .local v0, "mFaceManager":Landroid/hardware/face/FaceManager;
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3212
    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3213
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3214
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->faceManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/face/FaceManager$RemovalCallback;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/hardware/face/FaceManager;->removeAll(ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    .line 3216
    const-wide/16 v2, 0xbb8

    :try_start_23
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_28} :catch_29

    .line 3219
    goto :goto_31

    .line 3217
    :catch_29
    move-exception v2

    .line 3218
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "LockSettingsService"

    const-string v4, "Latch interrupted when removing face"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3222
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_31
    :goto_31
    return-void
.end method

.method private removeAllFingerprintForUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 3195
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 3196
    .local v0, "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3197
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3198
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3199
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->fingerprintManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 3201
    const-wide/16 v2, 0xbb8

    :try_start_23
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_28} :catch_29

    .line 3204
    goto :goto_31

    .line 3202
    :catch_29
    move-exception v2

    .line 3203
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "LockSettingsService"

    const-string v4, "Latch interrupted when removing fingerprint"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3207
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_31
    :goto_31
    return-void
.end method

.method private removeBiometricsForUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 3184
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->isFingerDataSharer(I)Z

    move-result v0

    const-string v1, "LockSettingsService"

    if-eqz v0, :cond_23

    .line 3185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SKIP removeAllFingerprintForUser: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 3187
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DO removeAllFingerprintForUser "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeAllFingerprintForUser(I)V

    .line 3191
    :goto_3c
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeAllFaceForUser(I)V

    .line 3192
    return-void
.end method

.method private removeEscrowToken(JI)Z
    .registers 8
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 3405
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3406
    :try_start_3
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 3407
    const-string v1, "LockSettingsService"

    const-string v3, "Cannot remove password handle"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    monitor-exit v0

    return v2

    .line 3410
    :cond_15
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removePendingToken(JI)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    .line 3411
    monitor-exit v0

    return v3

    .line 3413
    :cond_20
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 3414
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedSyntheticPassword(JI)V

    .line 3415
    monitor-exit v0

    return v3

    .line 3417
    :cond_2f
    monitor-exit v0

    return v2

    .line 3419
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private removeKeystoreProfileKey(I)V
    .registers 6
    .param p1, "targetUserId"    # I

    .line 2578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove keystore profile key for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    :try_start_18
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile_key_name_encrypt_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 2581
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile_key_name_decrypt_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/security/KeyStoreException; {:try_start_18 .. :try_end_4a} :catch_4b

    .line 2585
    goto :goto_62

    .line 2582
    :catch_4b
    move-exception v0

    .line 2584
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to remove keystore profile key for user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2586
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :goto_62
    return-void
.end method

.method private removeUser(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "unknownUser"    # Z

    .line 2560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeBiometricsForUser(I)V

    .line 2562
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removeUser(Landroid/service/gatekeeper/IGateKeeperService;I)V

    .line 2563
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->removeUser(I)V

    .line 2565
    invoke-static {p1}, Landroid/security/AndroidKeyStoreMaintenance;->onUserRemoved(I)I

    .line 2566
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->removePassword(I)V

    .line 2568
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 2569
    if-nez p2, :cond_3c

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2570
    :cond_3c
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 2574
    :cond_3f
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    .line 2575
    return-void
.end method

.method private scheduleGc()V
    .registers 5

    .line 3665
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda8;-><init>()V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3670
    return-void
.end method

.method private static secretFromCredential(Lcom/android/internal/widget/LockscreenCredential;)[B
    .registers 4
    .param p0, "credential"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 2160
    :try_start_0
    const-string v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2162
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v1, "Android FBE credential hash"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 2164
    .local v1, "personalization":[B
    const/16 v2, 0x80

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    move-object v1, v2

    .line 2165
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 2166
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 2167
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_21} :catch_22

    return-object v2

    .line 2168
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "personalization":[B
    :catch_22
    move-exception v0

    .line 2169
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V
    .registers 9
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "isLockTiedToParent"    # Z

    .line 1696
    if-eqz p3, :cond_3

    .line 1697
    return-void

    .line 1701
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    .line 1703
    .local v0, "secret":[B
    :goto_f
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1704
    .local v2, "profileId":I
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 1705
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v4

    .line 1704
    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretChanged(I[BI)V

    .line 1706
    .end local v2    # "profileId":I
    goto :goto_17

    .line 1707
    :cond_31
    return-void
.end method

.method private sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 8
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I

    .line 1667
    const/16 v0, -0x270f

    if-ne p2, v0, :cond_5

    .line 1668
    return-void

    .line 1674
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1675
    return-void

    .line 1679
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    .line 1681
    .local v0, "secret":[B
    :goto_18
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1682
    .local v2, "profileId":I
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 1683
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v4

    .line 1682
    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretAvailable(I[BI)V

    .line 1684
    .end local v2    # "profileId":I
    goto :goto_20

    .line 1685
    :cond_3a
    return-void
.end method

.method private setCredentialRequiredToDecrypt(Z)V
    .registers 4
    .param p1, "required"    # Z

    .line 1980
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1981
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1982
    nop

    .line 1981
    const-string/jumbo v1, "require_password_to_decrypt"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1984
    :cond_13
    return-void
.end method

.method private setDeviceUnlockedForUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 3097
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/trust/TrustManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 3098
    .local v0, "trustManager":Landroid/app/trust/TrustManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 3099
    return-void
.end method

.method private setKeyguardStoredQuality(II)V
    .registers 7
    .param p1, "quality"    # I
    .param p2, "userId"    # I

    .line 1306
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    int-to-long v1, p1

    const-string/jumbo v3, "lockscreen.password_type"

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->setLong(Ljava/lang/String;JI)V

    .line 1307
    return-void
.end method

.method private setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .registers 9
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userId"    # I
    .param p4, "isLockTiedToParent"    # Z

    .line 1803
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1806
    :try_start_9
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1807
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1810
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_9c

    .line 1812
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1813
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B)V

    .line 1814
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 1815
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    .line 1819
    const/4 v1, 0x0

    invoke-direct {p0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeyguardStoredQuality(II)V

    .line 1820
    invoke-virtual {p0, v0, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 1821
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 1822
    invoke-direct {p0, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 1823
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 1824
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V

    .line 1825
    const/4 v0, 0x1

    return v0

    .line 1828
    :cond_45
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v1

    .line 1829
    .local v1, "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1831
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1834
    :try_start_57
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0
    :try_end_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_5b} :catch_67
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_57 .. :try_end_5b} :catch_5e
    .catch Ljava/security/InvalidKeyException; {:try_start_57 .. :try_end_5b} :catch_5e
    .catch Ljava/security/KeyStoreException; {:try_start_57 .. :try_end_5b} :catch_5e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_57 .. :try_end_5b} :catch_5e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_57 .. :try_end_5b} :catch_5e
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_57 .. :try_end_5b} :catch_5e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_57 .. :try_end_5b} :catch_5e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_57 .. :try_end_5b} :catch_5e
    .catch Ljava/security/cert/CertificateException; {:try_start_57 .. :try_end_5b} :catch_5e
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5b} :catch_5e

    move-object p2, v0

    .line 1842
    move-object v2, p2

    goto :goto_8b

    .line 1837
    :catch_5e
    move-exception v0

    .line 1841
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to decrypt child profile key"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_6f

    .line 1835
    :catch_67
    move-exception v0

    .line 1836
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "LockSettingsService"

    const-string v3, "Child profile key not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_6f
    goto :goto_8a

    .line 1845
    :cond_70
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    if-nez v0, :cond_8a

    .line 1846
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_81

    .line 1847
    const-string v0, "LockSettingsService"

    const-string v2, "Saved credential provided, but none stored"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :cond_81
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 1850
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    move-object v2, p2

    goto :goto_8b

    .line 1853
    :cond_8a
    :goto_8a
    move-object v2, p2

    .end local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .local v2, "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :goto_8b
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v3

    .line 1854
    :try_start_8e
    iget-object p2, v1, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {p0, p2, v2, p3}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 1855
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result p2

    monitor-exit v3

    return p2

    .line 1857
    :catchall_99
    move-exception p2

    monitor-exit v3
    :try_end_9b
    .catchall {:try_start_8e .. :try_end_9b} :catchall_99

    throw p2

    .line 1810
    .end local v1    # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .end local v2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :catchall_9c
    move-exception v1

    :try_start_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw v1
.end method

.method private setLockCredentialWithAuthTokenLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J
    .registers 16
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "userId"    # I

    .line 3114
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v0

    .line 3115
    .local v0, "savedCredentialType":I
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    move-result-wide v1

    .line 3118
    .local v1, "newHandle":J
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v3

    if-nez v3, :cond_53

    .line 3120
    const/4 v3, 0x0

    .line 3122
    .local v3, "profilePasswords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasSidForUser(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 3128
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v6

    const-wide/16 v8, 0x0

    move-object v7, p2

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_7e

    .line 3132
    :cond_2b
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    invoke-virtual {v4, v5, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 3133
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v7

    const-wide/16 v9, 0x0

    move-object v8, p2

    move v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 3134
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v4

    invoke-direct {p0, p3, v4}, Lcom/android/server/locksettings/LockSettingsService;->setUserKeyProtection(I[B)V

    .line 3135
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 3136
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_7e

    .line 3141
    .end local v3    # "profilePasswords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    :cond_53
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;

    move-result-object v3

    .line 3146
    .restart local v3    # "profilePasswords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v4

    invoke-direct {p0, p3, v4}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserKey(I[B)V

    .line 3147
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v4

    invoke-direct {p0, p3, v4}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B)V

    .line 3148
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 3149
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    .line 3150
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 3151
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeBiometricsForUser(I)V

    .line 3160
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 3161
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 3164
    :goto_7e
    invoke-direct {p0, v1, v2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSyntheticPasswordHandleLocked(JI)V

    .line 3165
    invoke-direct {p0, p3, v3}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 3167
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 3168
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v4, p3}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->removePassword(I)V

    .line 3169
    const/4 v4, -0x1

    if-eq v0, v4, :cond_94

    .line 3170
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyAllWeakTokenBasedSyntheticPasswords(I)V

    .line 3173
    :cond_94
    if-eqz v3, :cond_b4

    .line 3174
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3175
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 3176
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    goto :goto_9e

    .line 3179
    :cond_b4
    return-wide v1
.end method

.method private setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 11
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "tokenHandle"    # J
    .param p4, "token"    # [B
    .param p5, "userId"    # I

    .line 3425
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3426
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 3429
    invoke-direct {p0, p2, p3, p5}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result v1

    if-nez v1, :cond_30

    .line 3430
    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unactivated token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3433
    :cond_30
    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v1

    .line 3435
    .local v1, "result":Z
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_75

    .line 3436
    if-eqz v1, :cond_6c

    .line 3437
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3439
    :try_start_3a
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4c

    .line 3440
    const-string/jumbo v2, "lockscreen.password_length"

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4, p5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 3443
    :cond_4c
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p5, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 3444
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_69

    .line 3445
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 3449
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p5}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3451
    :cond_62
    invoke-direct {p0, p1, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 3452
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    goto :goto_6c

    .line 3444
    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v2

    .line 3454
    :cond_6c
    :goto_6c
    return v1

    .line 3427
    .end local v1    # "result":Z
    :cond_6d
    :try_start_6d
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Escrow token is disabled on the current user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "tokenHandle":J
    .end local p4    # "token":[B
    .end local p5    # "userId":I
    throw v1

    .line 3435
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "tokenHandle":J
    .restart local p4    # "token":[B
    .restart local p5    # "userId":I
    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_6d .. :try_end_77} :catchall_75

    throw v1
.end method

.method private setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 12
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "tokenHandle"    # J
    .param p4, "token"    # [B
    .param p5, "userId"    # I

    .line 3461
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    .line 3463
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v2, 0x0

    const-string v3, "LockSettingsService"

    if-nez v1, :cond_1a

    .line 3464
    const-string v1, "Invalid escrow token supplied"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    return v2

    .line 3467
    :cond_1a
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_28

    .line 3470
    const-string v1, "Obsolete token: synthetic password derived but it fails GK verification."

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    return v2

    .line 3474
    :cond_28
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p5, v1}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 3475
    invoke-virtual {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    .line 3476
    .local v1, "oldHandle":J
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p1, v3, p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    .line 3477
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    .line 3478
    const/4 v3, 0x1

    return v3
.end method

.method private setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z
    .param p3, "profileUserPassword"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 1237
    const-string/jumbo v0, "lockscreen.profilechallenge"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    .line 1238
    .local v1, "old":Z
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1240
    if-eqz p2, :cond_16

    .line 1241
    :try_start_d
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 1242
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_19

    .line 1244
    :cond_16
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V
    :try_end_19
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_19} :catch_1b

    .line 1249
    :goto_19
    nop

    .line 1250
    return-void

    .line 1246
    :catch_1b
    move-exception v2

    .line 1247
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1248
    throw v2
.end method

.method private setSyntheticPasswordHandleLocked(JI)V
    .registers 9
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 2951
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    .line 2952
    .local v0, "oldHandle":J
    const-string/jumbo v2, "sp-handle"

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 2953
    const-string/jumbo v2, "prev-sp-handle"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 2954
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "sp-handle-ts"

    invoke-virtual {p0, v4, v2, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 2956
    return-void
.end method

.method private setUserKeyProtection(I[B)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "key"    # [B

    .line 2136
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B)V

    .line 2137
    return-void
.end method

.method private setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 5
    .param p1, "password"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userHandle"    # I

    .line 2520
    monitor-enter p0

    .line 2521
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2522
    monitor-exit p0

    .line 2523
    return-void

    .line 2522
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method private shouldEncryptWithCredentials()Z
    .registers 2

    .line 1942
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialRequiredToDecrypt()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->isDoNotAskCredentialsOnBootSet()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 10
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "detail"    # Ljava/lang/CharSequence;
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .line 730
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 732
    const v1, 0x1080572

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 733
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 734
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 735
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 736
    const v3, 0x106001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 738
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 739
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 740
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 741
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 742
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 744
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 746
    return-void
.end method

.method private showEncryptionNotificationForProfile(Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 16
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "reason"    # Ljava/lang/String;

    .line 684
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 685
    .local v0, "r":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getEncryptionNotificationTitle()Ljava/lang/String;

    move-result-object v7

    .line 686
    .local v7, "title":Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getEncryptionNotificationMessage()Ljava/lang/String;

    move-result-object v8

    .line 687
    .local v8, "message":Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getEncryptionNotificationDetail()Ljava/lang/String;

    move-result-object v9

    .line 689
    .local v9, "detail":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/app/KeyguardManager;

    .line 690
    .local v10, "km":Landroid/app/KeyguardManager;
    nop

    .line 691
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v10, v2, v2, v1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v11

    .line 692
    .local v11, "unlockIntent":Landroid/content/Intent;
    if-nez v11, :cond_2b

    .line 693
    return-void

    .line 697
    :cond_2b
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-nez v1, :cond_32

    return-void

    .line 699
    :cond_32
    const/high16 v1, 0x10800000

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 701
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const/high16 v2, 0xa000000

    const/4 v3, 0x0

    invoke-static {v1, v3, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 704
    .local v12, "intent":Landroid/app/PendingIntent;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 705
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 704
    const-string/jumbo v2, "showing encryption notification, user: %d; reason: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockSettingsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 708
    return-void
.end method

.method private spBasedDoVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 23
    .param p1, "userCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .param p4, "flags"    # I

    .line 2982
    move-object/from16 v1, p0

    move/from16 v12, p2

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0, v12}, Lcom/android/server/locksettings/LockSettingsService$Injector;->hasEnrolledBiometrics(I)Z

    move-result v13

    .line 2984
    .local v13, "hasEnrolledBiometrics":Z
    const-string v0, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "spBasedDoVerifyCredential: user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hasEnrolledBiometrics="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    and-int/lit8 v0, p4, 0x1

    const/4 v14, 0x1

    if-eqz v0, :cond_34

    move v0, v14

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    move v15, v0

    .line 2991
    .local v15, "requestGkPw":Z
    iget-object v11, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v11

    .line 2992
    :try_start_39
    invoke-direct {v1, v12}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-nez v0, :cond_42

    .line 2993
    const/4 v0, 0x0

    monitor-exit v11
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_f2

    return-object v0

    .line 2995
    :cond_42
    const/16 v0, -0x270f

    if-ne v12, v0, :cond_5d

    .line 2996
    :try_start_46
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_56

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    :try_start_50
    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    monitor-exit v11

    return-object v0

    .line 3021
    :catchall_56
    move-exception v0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    goto/16 :goto_f3

    .line 3000
    :cond_5d
    move-object/from16 v9, p1

    move-object/from16 v10, p3

    invoke-virtual {v1, v12}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 3001
    .local v4, "handle":J
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3002
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    .line 3001
    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    .line 3003
    .local v0, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 3006
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_ae

    .line 3007
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    iget-object v6, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 3008
    invoke-virtual {v6}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v6

    .line 3007
    invoke-virtual {v3, v12, v6}, Lcom/android/server/locksettings/BiometricDeferredQueue;->addPendingLockoutResetForUser(I[B)V

    .line 3012
    iget-object v6, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    :try_end_90
    .catchall {:try_start_50 .. :try_end_90} :catchall_f2

    const-wide/16 v16, 0x0

    move-wide/from16 v9, v16

    move-object v3, v11

    move/from16 v11, p2

    :try_start_97
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    move-object v2, v6

    .line 3014
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    if-eqz v6, :cond_af

    .line 3017
    const-string v6, "LockSettingsService"

    const-string/jumbo v7, "verifyChallenge with SP failed."

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    sget-object v6, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v3

    return-object v6

    .line 3006
    :cond_ae
    move-object v3, v11

    .line 3021
    .end local v4    # "handle":J
    :cond_af
    monitor-exit v3
    :try_end_b0
    .catchall {:try_start_97 .. :try_end_b0} :catchall_f6

    .line 3022
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_c0

    .line 3023
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 3024
    invoke-static/range {p1 .. p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object v4

    .line 3023
    invoke-direct {v1, v3, v4, v12}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V

    goto :goto_d1

    .line 3025
    :cond_c0
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-ne v3, v14, :cond_d1

    .line 3026
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    if-lez v3, :cond_d1

    .line 3027
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v12}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 3031
    :cond_d1
    :goto_d1
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v3

    if-eqz v3, :cond_f1

    if-eqz v15, :cond_f1

    .line 3032
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 3033
    invoke-virtual {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v3

    .line 3032
    invoke-direct {v1, v3}, Lcom/android/server/locksettings/LockSettingsService;->storeGatekeeperPasswordTemporarily([B)J

    move-result-wide v3

    .line 3034
    .local v3, "handle":J
    new-instance v5, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {v5}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperPasswordHandle(J)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    move-result-object v5

    .line 3035
    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    .line 3034
    return-object v5

    .line 3037
    .end local v3    # "handle":J
    :cond_f1
    return-object v2

    .line 3021
    .end local v0    # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_f2
    move-exception v0

    :goto_f3
    move-object v3, v11

    :goto_f4
    :try_start_f4
    monitor-exit v3
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f6

    throw v0

    :catchall_f6
    move-exception v0

    goto :goto_f4
.end method

.method private spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .registers 19
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userId"    # I
    .param p4, "isLockTiedToParent"    # Z

    .line 3268
    move-object v1, p0

    move-object v2, p1

    move/from16 v10, p3

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    const-string v11, "LockSettingsService"

    if-eqz v0, :cond_26

    invoke-direct {p0, v10}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3272
    :try_start_12
    invoke-virtual {p0, v10}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_16} :catch_1e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_12 .. :try_end_16} :catch_17
    .catch Ljava/security/InvalidKeyException; {:try_start_12 .. :try_end_16} :catch_17
    .catch Ljava/security/KeyStoreException; {:try_start_12 .. :try_end_16} :catch_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_16} :catch_17
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_12 .. :try_end_16} :catch_17
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_12 .. :try_end_16} :catch_17
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_12 .. :try_end_16} :catch_17
    .catch Ljavax/crypto/BadPaddingException; {:try_start_12 .. :try_end_16} :catch_17
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_16} :catch_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_17

    .line 3280
    .end local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .local v0, "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    goto :goto_28

    .line 3275
    .end local v0    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :catch_17
    move-exception v0

    .line 3279
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Failed to decrypt child profile key"

    invoke-static {v11, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 3273
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1e
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 3274
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "Child profile key not found"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_26
    :goto_26
    move-object/from16 v0, p2

    .end local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .local v0, "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :goto_28
    invoke-virtual {p0, v10}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v12

    .line 3283
    .local v12, "handle":J
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3284
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    const/4 v9, 0x0

    .line 3283
    move-wide v5, v12

    move-object v7, v0

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v3

    .line 3285
    .local v3, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v4, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 3286
    .local v4, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    iget-object v5, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 3288
    .local v5, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    const/4 v6, 0x1

    if-nez v5, :cond_68

    .line 3289
    const/4 v7, 0x0

    if-eqz v4, :cond_62

    .line 3290
    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4d

    goto :goto_62

    .line 3294
    :cond_4d
    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v8

    if-ne v8, v6, :cond_59

    .line 3295
    const-string v6, "Failed to enroll: rate limit exceeded."

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    return v7

    .line 3299
    :cond_59
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "password change failed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3291
    :cond_62
    :goto_62
    const-string v6, "Failed to enroll: incorrect credential."

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    return v7

    .line 3302
    :cond_68
    invoke-direct {p0, v10, v5}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 3303
    invoke-direct {p0, p1, v5, v10}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    .line 3304
    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v7, v12, v13, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    .line 3305
    move/from16 v7, p4

    invoke-direct {p0, p1, v10, v7}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V

    .line 3306
    return v6
.end method

.method private storeGatekeeperPasswordTemporarily([B)J
    .registers 10
    .param p1, "gatekeeperPassword"    # [B

    .line 3048
    const-wide/16 v0, 0x0

    .line 3050
    .local v0, "handle":J
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v2

    .line 3051
    :goto_5
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_29

    :try_start_b
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_14

    goto :goto_29

    .line 3054
    :cond_14
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3055
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_31

    .line 3057
    move-wide v2, v0

    .line 3058
    .local v2, "finalHandle":J
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/locksettings/LockSettingsService;J)V

    const-wide/32 v6, 0x927c0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3065
    return-wide v0

    .line 3052
    .end local v2    # "finalHandle":J
    :cond_29
    :goto_29
    :try_start_29
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    move-wide v0, v3

    goto :goto_5

    .line 3055
    :catchall_31
    move-exception v3

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_31

    throw v3
.end method

.method private synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V
    .registers 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ">;)V"
        }
    .end annotation

    .line 1616
    .local p2, "profilePasswordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1617
    return-void

    .line 1619
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    .line 1620
    .local v0, "isSecure":Z
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 1621
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1622
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_69

    .line 1623
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1624
    .local v4, "profile":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1625
    .local v5, "profileUserId":I
    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 1626
    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1627
    goto :goto_66

    .line 1629
    :cond_2d
    if-eqz v0, :cond_38

    .line 1630
    nop

    .line 1631
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    .line 1630
    invoke-virtual {p0, v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V

    goto :goto_66

    .line 1635
    :cond_38
    if-eqz p2, :cond_5f

    .line 1636
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 1637
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    .line 1638
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockscreenCredential;

    .line 1637
    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v5, v8}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 1641
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v6, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 1642
    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_66

    .line 1644
    :cond_5f
    const-string v6, "LockSettingsService"

    const-string v7, "Attempt to clear tied challenge, but no password supplied."

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    .end local v5    # "profileUserId":I
    :cond_66
    :goto_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1649
    .end local v3    # "i":I
    :cond_69
    return-void
.end method

.method static timestampToString(J)Ljava/lang/String;
    .registers 4
    .param p0, "timestamp"    # J

    .line 3518
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 843
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 845
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 846
    monitor-exit v0

    return-void

    .line 849
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 850
    .local v4, "handle":J
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 851
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    .line 852
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    const/4 v8, 0x0

    .line 851
    move v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    .line 853
    .local v1, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v2, :cond_41

    .line 854
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrieved auth token for user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    goto :goto_59

    .line 857
    :cond_41
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auth token not available for user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    .end local v1    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v4    # "handle":J
    :goto_59
    monitor-exit v0

    .line 860
    return-void

    .line 859
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method private unlockChildProfile(IZ)V
    .registers 6
    .param p1, "profileHandle"    # I
    .param p2, "ignoreUserNotAuthenticated"    # Z

    .line 1467
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1480
    goto :goto_28

    .line 1469
    :catch_a
    move-exception v0

    .line 1473
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    const-string v2, "LockSettingsService"

    if-eqz v1, :cond_17

    .line 1474
    const-string v1, "Child profile key not found"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1475
    :cond_17
    if-eqz p2, :cond_23

    instance-of v1, v0, Landroid/security/keystore/UserNotAuthenticatedException;

    if-eqz v1, :cond_23

    .line 1476
    const-string v1, "Parent keystore seems locked, ignoring"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1478
    :cond_23
    const-string v1, "Failed to decrypt child profile key"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1481
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_28
    return-void
.end method

.method private unlockKeystore([BI)V
    .registers 5
    .param p1, "password"    # [B
    .param p2, "userHandle"    # I

    .line 1432
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1}, Landroid/security/Authorization;->onLockScreenEvent(ZI[B[J)I

    .line 1433
    return-void
.end method

.method private unlockUser(I[B)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "secret"    # [B

    .line 1492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unlocking user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with secret only, length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1493
    const/4 v1, 0x0

    if-eqz p2, :cond_1a

    array-length v2, p2

    goto :goto_1b

    :cond_1a
    move v2, v1

    :goto_1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1492
    const-string v2, "LockSettingsService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    .line 1496
    .local v0, "alreadyUnlocked":Z
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1497
    .local v3, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$3;

    invoke-direct {v4, p0, v3}, Lcom/android/server/locksettings/LockSettingsService$3;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    .line 1516
    .local v4, "listener":Landroid/os/IProgressListener;
    :try_start_39
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v6, 0x0

    invoke-interface {v5, p1, v6, p2, v4}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3f} :catch_c8

    .line 1519
    nop

    .line 1522
    const-wide/16 v5, 0xf

    :try_start_42
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_47} :catch_48

    .line 1525
    goto :goto_50

    .line 1523
    :catch_48
    move-exception v5

    .line 1524
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 1527
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_50
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1528
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hasUnifiedChallenge(I)Z

    move-result v1

    if-nez v1, :cond_61

    .line 1529
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    invoke-virtual {v1}, Lcom/android/server/locksettings/BiometricDeferredQueue;->processPendingLockoutResets()V

    .line 1531
    :cond_61
    return-void

    .line 1534
    :cond_62
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 1535
    .local v6, "profile":Landroid/content/pm/UserInfo;
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, p1, :cond_7d

    goto :goto_6c

    .line 1536
    :cond_7d
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v7}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v7

    if-nez v7, :cond_86

    goto :goto_6c

    .line 1538
    :cond_86
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7}, Lcom/android/server/locksettings/LockSettingsService;->hasUnifiedChallenge(I)Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 1539
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 1541
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZ)V

    goto :goto_aa

    .line 1546
    :cond_9e
    :try_start_9e
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v7}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;
    :try_end_a3
    .catch Ljava/security/GeneralSecurityException; {:try_start_9e .. :try_end_a3} :catch_a4
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a3} :catch_a4

    .line 1549
    goto :goto_aa

    .line 1547
    :catch_a4
    move-exception v7

    .line 1548
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "Cache work profile password failed"

    invoke-static {v2, v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1554
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_aa
    :goto_aa
    if-nez v0, :cond_c1

    .line 1555
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->clearCallingIdentity()J

    move-result-wide v7

    .line 1557
    .local v7, "ident":J
    :try_start_b0
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v10, "parent unlocked"

    invoke-direct {p0, v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_b0 .. :try_end_b8} :catchall_bc

    .line 1559
    invoke-static {v7, v8}, Lcom/android/server/locksettings/LockSettingsService;->restoreCallingIdentity(J)V

    .line 1560
    goto :goto_c1

    .line 1559
    :catchall_bc
    move-exception v1

    invoke-static {v7, v8}, Lcom/android/server/locksettings/LockSettingsService;->restoreCallingIdentity(J)V

    .line 1560
    throw v1

    .line 1562
    .end local v6    # "profile":Landroid/content/pm/UserInfo;
    .end local v7    # "ident":J
    :cond_c1
    :goto_c1
    goto :goto_6c

    .line 1564
    :cond_c2
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    invoke-virtual {v1}, Lcom/android/server/locksettings/BiometricDeferredQueue;->processPendingLockoutResets()V

    .line 1565
    return-void

    .line 1517
    :catch_c8
    move-exception v1

    .line 1518
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private unlockUserKey(I[B)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "secret"    # [B

    .line 2184
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2186
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_6
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v2, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v1, p1, v2, p2}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 2195
    goto :goto_17

    .line 2187
    :catch_e
    move-exception v1

    .line 2190
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_f
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v3, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v2, p1, v3, p2}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_18

    .line 2193
    nop

    .line 2196
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void

    .line 2191
    .restart local v1    # "e":Landroid/os/RemoteException;
    :catch_18
    move-exception v2

    .line 2192
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unlock user key again: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private unlockUserWithToken(J[BI)Z
    .registers 14
    .param p1, "tokenHandle"    # J
    .param p3, "token"    # [B
    .param p4, "userId"    # I

    .line 3483
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3484
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 3485
    const-string v1, "LockSettingsService"

    const-string v3, "Escrow token is disabled on the current user"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    monitor-exit v0

    return v2

    .line 3488
    :cond_15
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-wide v5, p1

    move-object v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    .line 3490
    .local v1, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v3, :cond_2f

    .line 3491
    const-string v3, "LockSettingsService"

    const-string v4, "Invalid escrow token supplied"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    monitor-exit v0

    return v2

    .line 3494
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_3d

    .line 3496
    iget-object v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 3497
    invoke-direct {p0, v2, p4}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;

    move-result-object v2

    .line 3496
    invoke-direct {p0, v0, v2, p4}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V

    .line 3498
    const/4 v0, 0x1

    return v0

    .line 3494
    .end local v1    # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private updatePasswordHistory(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 13
    .param p1, "password"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userHandle"    # I

    .line 1877
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1878
    return-void

    .line 1880
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1882
    return-void

    .line 1886
    :cond_e
    const/4 v0, 0x0

    const-string/jumbo v1, "lockscreen.passwordhistory"

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1888
    .local v0, "passwordHistory":Ljava/lang/String;
    if-nez v0, :cond_1a

    .line 1889
    const-string v0, ""

    .line 1891
    :cond_1a
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getRequestedPasswordHistoryLength(I)I

    move-result v2

    .line 1892
    .local v2, "passwordHistoryLength":I
    if-nez v2, :cond_23

    .line 1893
    const-string v0, ""

    goto :goto_6b

    .line 1895
    :cond_23
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v3

    .line 1896
    .local v3, "hashFactor":[B
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSalt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1897
    .local v4, "salt":[B
    invoke-virtual {p1, v4, v3}, Lcom/android/internal/widget/LockscreenCredential;->passwordToHistoryHash([B[B)Ljava/lang/String;

    move-result-object v5

    .line 1898
    .local v5, "hash":Ljava/lang/String;
    if-nez v5, :cond_40

    .line 1899
    const-string v6, "LockSettingsService"

    const-string v7, "Compute new style password hash failed, fallback to legacy style"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/LockscreenCredential;->legacyPasswordToHash([B)Ljava/lang/String;

    move-result-object v5

    .line 1902
    :cond_40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 1903
    move-object v0, v5

    goto :goto_6b

    .line 1905
    :cond_48
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1907
    .local v7, "history":[Ljava/lang/String;
    new-instance v8, Ljava/util/StringJoiner;

    invoke-direct {v8, v6}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    move-object v6, v8

    .line 1908
    .local v6, "joiner":Ljava/util/StringJoiner;
    invoke-virtual {v6, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1909
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_58
    add-int/lit8 v9, v2, -0x1

    if-ge v8, v9, :cond_67

    array-length v9, v7

    if-ge v8, v9, :cond_67

    .line 1910
    aget-object v9, v7, v8

    invoke-virtual {v6, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1909
    add-int/lit8 v8, v8, 0x1

    goto :goto_58

    .line 1912
    .end local v8    # "i":I
    :cond_67
    invoke-virtual {v6}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1915
    .end local v3    # "hashFactor":[B
    .end local v4    # "salt":[B
    .end local v5    # "hash":Ljava/lang/String;
    .end local v6    # "joiner":Ljava/util/StringJoiner;
    .end local v7    # "history":[Ljava/lang/String;
    :goto_6b
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1916
    return-void
.end method

.method private verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 13
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p4, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    .line 2439
    if-eqz p2, :cond_7

    iget-object v0, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v0, v0

    if-nez v0, :cond_10

    :cond_7
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2441
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 2444
    :cond_10
    if-eqz p2, :cond_e7

    iget-object v0, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v0, v0

    if-eqz v0, :cond_e7

    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto/16 :goto_e7

    .line 2450
    :cond_1f
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 2454
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_24
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    const-wide/16 v4, 0x0

    iget-object v6, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 2455
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v7

    .line 2454
    move v3, p1

    invoke-interface/range {v2 .. v7}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_35} :catch_36

    .line 2464
    .local v2, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    goto :goto_66

    .line 2456
    .end local v2    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_36
    move-exception v2

    .line 2458
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "LockSettingsService"

    const-string v4, "Password GateKeeperService no response"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v3

    const v4, 0x35e1f5eb

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "appname"

    aput-object v6, v5, v1

    const-string/jumbo v6, "locksettings"

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v3

    .line 2460
    .local v3, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 2462
    const-string v4, "LockSettingsService"

    const-string v5, "gatekeeper verify failed"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2463
    sget-object v4, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    move-object v2, v4

    .line 2465
    .end local v3    # "event":Lcom/miui/misight/MiEventStub;
    .local v2, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_66
    invoke-direct {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 2466
    .local v3, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v4

    .line 2468
    .local v4, "shouldReEnroll":Z
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    if-nez v5, :cond_d5

    .line 2472
    if-eqz p4, :cond_83

    .line 2474
    :try_start_76
    invoke-interface {p4}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_79} :catch_7a

    .line 2477
    goto :goto_83

    .line 2475
    :catch_7a
    move-exception v0

    .line 2476
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "LockSettingsService"

    const-string/jumbo v6, "progressCallback throws exception"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2479
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_83
    :goto_83
    invoke-direct {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 2480
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    .line 2482
    const-string v0, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unlocking user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    invoke-static {p3}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential(Lcom/android/internal/widget/LockscreenCredential;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B)V

    .line 2485
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithSeparatedLock(I)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 2486
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 2488
    :cond_b5
    if-eqz v4, :cond_bb

    .line 2489
    invoke-direct {p0, p3, p3, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    goto :goto_ce

    .line 2494
    :cond_bb
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    .line 2495
    :try_start_be
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 2496
    iget-object v0, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {p0, v0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    .line 2498
    .local v0, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2500
    .end local v0    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    :cond_cd
    monitor-exit v1
    :try_end_ce
    .catchall {:try_start_be .. :try_end_ce} :catchall_d2

    .line 2503
    :goto_ce
    invoke-direct {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    goto :goto_e6

    .line 2500
    :catchall_d2
    move-exception v0

    :try_start_d3
    monitor-exit v1
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw v0

    .line 2505
    :cond_d5
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-ne v1, v0, :cond_e6

    .line 2506
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v0

    if-lez v0, :cond_e6

    .line 2507
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 2511
    :cond_e6
    :goto_e6
    return-object v3

    .line 2445
    .end local v2    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v4    # "shouldReEnroll":Z
    :cond_e7
    :goto_e7
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method


# virtual methods
.method public addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J
    .registers 9
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "listener"    # Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;

    .line 2015
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2016
    const-string v0, "Listener can not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2017
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)V

    .line 2024
    .local v0, "internalListener":Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2026
    .local v1, "restoreToken":J
    const/4 v3, 0x1

    :try_start_12
    invoke-direct {p0, p1, v3, p2, v0}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v3
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1a

    .line 2028
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2026
    return-wide v3

    .line 2028
    :catchall_1a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2029
    throw v3
.end method

.method public checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    .line 2277
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2279
    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2281
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_24

    if-nez p2, :cond_24

    .line 2284
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    goto :goto_21

    :cond_18
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 2285
    .local v1, "credentialString":Ljava/lang/String;
    :goto_21
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->retainPassword(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_29

    .line 2287
    .end local v1    # "credentialString":Ljava/lang/String;
    :cond_24
    nop

    .line 2289
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2287
    return-object v0

    .line 2289
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_29
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2290
    throw v0
.end method

.method public checkPrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3884
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 3885
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStub;->get()Lcom/android/server/locksettings/LockSettingsStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStub;->checkPrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public closeSession(Ljava/lang/String;)V
    .registers 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2729
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->closeSession(Ljava/lang/String;)V

    .line 2730
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3538
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v3, "LockSettingsService"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 3539
    :cond_f
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v3, v0

    .line 3541
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v0, "Current lock settings service state:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3542
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3544
    const-string v0, "User State:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3545
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3546
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 3547
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    move v5, v0

    .local v5, "user":I
    :goto_2f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_12a

    .line 3548
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    .line 3549
    .local v6, "userId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3550
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3551
    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v7

    .line 3552
    :try_start_59
    const-string v0, "SP Handle: %x"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    .line 3553
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 3552
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3554
    const-string v0, "Last changed: %s (%x)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "sp-handle-ts"

    .line 3555
    const-wide/16 v12, 0x0

    invoke-virtual {v1, v10, v12, v13, v6}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    const-string/jumbo v10, "prev-sp-handle"

    .line 3556
    invoke-virtual {v1, v10, v12, v13, v6}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v8

    .line 3554
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3557
    monitor-exit v7
    :try_end_99
    .catchall {:try_start_59 .. :try_end_99} :catchall_127

    .line 3559
    :try_start_99
    const-string v0, "SID: %x"

    new-array v7, v8, [Ljava/lang/Object;

    .line 3560
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v9

    invoke-interface {v9, v6}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v11

    .line 3559
    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_b2} :catch_b3

    .line 3563
    goto :goto_b4

    .line 3561
    :catch_b3
    move-exception v0

    .line 3566
    :goto_b4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Quality: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CredentialType: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3568
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v7

    .line 3567
    invoke-static {v7}, Lcom/android/server/locksettings/LockSettingsService;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SeparateChallenge: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3570
    const-string v0, "Metrics: %s"

    new-array v7, v8, [Ljava/lang/Object;

    .line 3571
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v8

    if-eqz v8, :cond_114

    const-string/jumbo v8, "known"

    goto :goto_117

    :cond_114
    const-string/jumbo v8, "unknown"

    :goto_117
    aput-object v8, v7, v11

    .line 3570
    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3572
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3547
    .end local v6    # "userId":I
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2f

    .line 3557
    .restart local v6    # "userId":I
    :catchall_127
    move-exception v0

    :try_start_128
    monitor-exit v7
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_127

    throw v0

    .line 3574
    .end local v5    # "user":I
    .end local v6    # "userId":I
    :cond_12a
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3575
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3577
    const-string v0, "Keys in namespace:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3578
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3579
    invoke-direct {v1, v3}, Lcom/android/server/locksettings/LockSettingsService;->dumpKeystoreKeys(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3580
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3581
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3583
    const-string v0, "Storage:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3584
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3585
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3586
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3587
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3589
    const-string v0, "StrongAuth:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3590
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3591
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3592
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3593
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3595
    const-string v0, "RebootEscrow:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3596
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3597
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/RebootEscrowManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3598
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3599
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PasswordHandleCount: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3602
    return-void
.end method

.method public generateKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2739
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "metadata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2745
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .line 1285
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1286
    const-string/jumbo v0, "lock_pattern_autolock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1287
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1

    .line 1289
    :cond_16
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getCredentialType(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 1321
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission(I)V

    .line 1322
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v0

    return v0
.end method

.method public getCredentialTypeInternal(I)I
    .registers 7
    .param p1, "userId"    # I

    .line 1332
    const/16 v0, -0x270f

    if-ne p1, v0, :cond_9

    .line 1333
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getFrpCredentialType()I

    move-result v0

    return v0

    .line 1335
    :cond_9
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1336
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1337
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    .line 1338
    .local v1, "handle":J
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v3

    .line 1339
    .local v3, "rawType":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_21

    .line 1340
    monitor-exit v0

    return v3

    .line 1342
    :cond_21
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/locksettings/LockSettingsService;->pinOrPasswordQualityToCredentialType(I)I

    move-result v4

    monitor-exit v0

    return v4

    .line 1344
    .end local v1    # "handle":J
    .end local v3    # "rawType":I
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_51

    .line 1348
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result v0

    .line 1349
    .local v0, "savedQuality":I
    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 1350
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPattern(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1351
    const/4 v1, 0x1

    return v1

    .line 1353
    :cond_3e
    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_4f

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 1354
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPassword(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1355
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->pinOrPasswordQualityToCredentialType(I)I

    move-result v1

    return v1

    .line 1357
    :cond_4f
    const/4 v1, -0x1

    return v1

    .line 1344
    .end local v0    # "savedQuality":I
    :catchall_51
    move-exception v1

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v1
.end method

.method protected getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1442
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readChildProfileLock(I)[B

    move-result-object v0

    .line 1443
    .local v0, "storedData":[B
    if-eqz v0, :cond_53

    .line 1446
    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 1447
    .local v3, "iv":[B
    array-length v4, v0

    invoke-static {v0, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 1450
    .local v2, "encryptedPassword":[B
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_decrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v4

    check-cast v4, Ljavax/crypto/SecretKey;

    .line 1453
    .local v4, "decryptionKey":Ljavax/crypto/SecretKey;
    const-string v5, "AES/GCM/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 1456
    .local v5, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v5, v6, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1457
    invoke-virtual {v5, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 1458
    .local v6, "decryptionResult":[B
    invoke-static {v6}, Lcom/android/internal/widget/LockscreenCredential;->createManagedPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v7

    .line 1460
    .local v7, "credential":Lcom/android/internal/widget/LockscreenCredential;
    invoke-static {v6, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 1461
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v1, p1, v7}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;)V

    .line 1462
    return-object v7

    .line 1444
    .end local v2    # "encryptedPassword":[B
    .end local v3    # "iv":[B
    .end local v4    # "decryptionKey":Ljavax/crypto/SecretKey;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "decryptionResult":[B
    .end local v7    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    :cond_53
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Child profile lock file not found"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .registers 8

    monitor-enter p0

    .line 2806
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_59

    if-eqz v0, :cond_7

    .line 2807
    monitor-exit p0

    return-object v0

    .line 2810
    :cond_7
    :try_start_7
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_59

    .line 2811
    .local v0, "service":Landroid/os/IBinder;
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    .line 2813
    :try_start_11
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;

    invoke-direct {v3, p0, v2}, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient-IA;)V

    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_1a
    .catchall {:try_start_11 .. :try_end_19} :catchall_59

    .line 2816
    goto :goto_22

    .line 2814
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    :catch_1a
    move-exception v1

    .line 2815
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1b
    const-string v2, "LockSettingsService"

    const-string v3, " Unable to register death recipient"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2817
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_22
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_59

    .line 2818
    monitor-exit p0

    return-object v1

    .line 2821
    :cond_2a
    :try_start_2a
    const-string v3, "LockSettingsService"

    const-string v4, "Password get GateKeeperService fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v3

    const v4, 0x35e1f5ec

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "appname"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string/jumbo v6, "locksettings"

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v1

    .line 2823
    .local v1, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 2825
    const-string v3, "LockSettingsService"

    const-string v4, "Unable to acquire GateKeeperService"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_2a .. :try_end_57} :catchall_59

    .line 2826
    monitor-exit p0

    return-object v2

    .line 2805
    .end local v0    # "service":Landroid/os/IBinder;
    .end local v1    # "event":Lcom/miui/misight/MiEventStub;
    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B
    .registers 12
    .param p1, "currentCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I

    .line 3318
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 3320
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_61

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 3322
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_10
    .catchall {:try_start_a .. :try_end_e} :catchall_61

    move-object p1, v0

    .line 3326
    goto :goto_1d

    .line 3323
    :catch_10
    move-exception v0

    .line 3324
    .local v0, "e":Ljava/lang/Exception;
    :try_start_11
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to get work profile credential"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_61

    .line 3325
    nop

    .line 3343
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 3325
    return-object v1

    .line 3328
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1d
    :goto_1d
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_61

    .line 3329
    :try_start_20
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-nez v2, :cond_32

    .line 3330
    const-string v2, "LockSettingsService"

    const-string v3, "Synthetic password not enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_5e

    .line 3343
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 3331
    return-object v1

    .line 3333
    :cond_32
    :try_start_32
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 3334
    .local v4, "handle":J
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3335
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const/4 v8, 0x0

    .line 3334
    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    .line 3336
    .local v2, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v3, :cond_53

    .line 3337
    const-string v3, "LockSettingsService"

    const-string v6, "Current credential is incorrect"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_32 .. :try_end_4f} :catchall_5e

    .line 3343
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 3338
    return-object v1

    .line 3340
    :cond_53
    :try_start_53
    iget-object v1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePasswordHashFactor()[B

    move-result-object v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5e

    .line 3343
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 3340
    return-object v1

    .line 3341
    .end local v2    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v4    # "handle":J
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "currentCredential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "userId":I
    :try_start_60
    throw v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    .line 3343
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "currentCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "userId":I
    :catchall_61
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 3344
    throw v0
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2762
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2671
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I

    .line 1294
    invoke-direct {p0, p1, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1295
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 4

    .line 1417
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkCryptKeeperPermissions()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1418
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "no crypt_keeper or admin permission to get the password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    :cond_10
    sget-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRecoverySecretTypes()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2703
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoverySecretTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public getRecoveryStatus()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2692
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSeparateProfileChallengeEnabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1207
    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1208
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1300
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1301
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrongAuthForUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 2626
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2627
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    return v0
.end method

.method getSyntheticPasswordHandleLocked(I)J
    .registers 5
    .param p1, "userId"    # I

    .line 2946
    const-string/jumbo v0, "sp-handle"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .registers 4
    .param p1, "userHandle"    # I

    .line 2527
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2532
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object v0

    .line 2534
    :cond_d
    monitor-enter p0

    .line 2535
    :try_start_e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/PasswordMetrics;

    monitor-exit p0

    return-object v0

    .line 2536
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public hasPendingEscrowToken(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 3398
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 3399
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3400
    :try_start_6
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    monitor-exit v0

    return v1

    .line 3401
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public hasSecureLockScreen()Z
    .registers 2

    .line 1202
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    return v0
.end method

.method public importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2751
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "keyBytes"    # [B
    .param p3, "metadata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2757
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .registers 5
    .param p1, "rootCertificateAlias"    # Ljava/lang/String;
    .param p2, "recoveryServiceCertFile"    # [B
    .param p3, "recoveryServiceSigFile"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2665
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V

    .line 2667
    return-void
.end method

.method protected initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 15
    .param p1, "credentialHash"    # [B
    .param p2, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userId"    # I

    .line 2911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialize SyntheticPassword for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    nop

    .line 2913
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 2912
    :goto_26
    const-string v2, "Cannot reinitialize SP"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 2916
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2917
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    .line 2916
    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    .line 2918
    .local v0, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    const/4 v2, 0x0

    if-nez v0, :cond_3f

    .line 2919
    const-string/jumbo v3, "initializeSyntheticPasswordLocked returns null auth token"

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    return-object v2

    .line 2922
    :cond_3f
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-virtual {v1, v3, p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    move-result-wide v9

    .line 2924
    .local v9, "handle":J
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-nez v1, :cond_76

    .line 2925
    if-nez p1, :cond_5a

    .line 2928
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2930
    :cond_5a
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object v5, v0

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2931
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/android/server/locksettings/LockSettingsService;->setUserKeyProtection(I[B)V

    .line 2932
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_7f

    .line 2934
    :cond_76
    invoke-direct {p0, p3, v2}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B)V

    .line 2935
    invoke-virtual {p0, v2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 2936
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 2938
    :goto_7f
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 2939
    invoke-direct {p0, v9, v10, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSyntheticPasswordHandleLocked(JI)V

    .line 2940
    invoke-direct {p0, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 2941
    return-object v0
.end method

.method protected isCredentialSharableWithParent(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1972
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserManagerFromCache(I)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isCredentialSharableWithParent()Z

    move-result v0

    return v0
.end method

.method isSyntheticPasswordBasedCredential(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 2960
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2961
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2962
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public isWeakEscrowTokenActive(JI)Z
    .registers 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 2045
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2046
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2048
    .local v0, "token":J
    :try_start_7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 2050
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2048
    return v2

    .line 2050
    :catchall_f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2051
    throw v2
.end method

.method public isWeakEscrowTokenValid(J[BI)Z
    .registers 16
    .param p1, "handle"    # J
    .param p3, "token"    # [B
    .param p4, "userId"    # I

    .line 2056
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2057
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2059
    .local v0, "restoreToken":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_45

    .line 2060
    :try_start_a
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1f

    .line 2061
    const-string v3, "LockSettingsService"

    const-string v5, "Escrow token is disabled on the current user"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_42

    .line 2073
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2062
    return v4

    .line 2064
    :cond_1f
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2065
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v6

    .line 2064
    move-wide v7, p1

    move-object v9, p3

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapWeakTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v3

    .line 2066
    .local v3, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v5, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v5, :cond_3c

    .line 2067
    const-string v5, "LockSettingsService"

    const-string v6, "Invalid escrow token supplied"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_42

    .line 2073
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2068
    return v4

    .line 2070
    :cond_3c
    const/4 v4, 0x1

    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_42

    .line 2073
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2070
    return v4

    .line 2071
    .end local v3    # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    :catchall_42
    move-exception v3

    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    .end local v0    # "restoreToken":J
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "handle":J
    .end local p3    # "token":[B
    .end local p4    # "userId":I
    :try_start_44
    throw v3
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    .line 2073
    .restart local v0    # "restoreToken":J
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "handle":J
    .restart local p3    # "token":[B
    .restart local p4    # "userId":I
    :catchall_45
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2074
    throw v2
.end method

.method synthetic lambda$getEncryptionNotificationDetail$1$com-android-server-locksettings-LockSettingsService()Ljava/lang/String;
    .registers 3

    .line 719
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v1, 0x104081e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getEncryptionNotificationMessage$2$com-android-server-locksettings-LockSettingsService()Ljava/lang/String;
    .registers 3

    .line 725
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v1, 0x104081f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getEncryptionNotificationTitle$0$com-android-server-locksettings-LockSettingsService()Ljava/lang/String;
    .registers 3

    .line 713
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v1, 0x1040820

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$notifyPasswordChanged$5$com-android-server-locksettings-LockSettingsService(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 5
    .param p1, "newCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I

    .line 2552
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 2553
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    .line 2552
    invoke-virtual {v0, v1, p2}, Landroid/app/admin/DevicePolicyManager;->reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V

    .line 2555
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->reportPasswordChanged(I)V

    .line 2556
    return-void
.end method

.method synthetic lambda$setLockCredentialWithToken$7$com-android-server-locksettings-LockSettingsService(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 3449
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B)V

    return-void
.end method

.method synthetic lambda$storeGatekeeperPasswordTemporarily$6$com-android-server-locksettings-LockSettingsService(J)V
    .registers 7
    .param p1, "finalHandle"    # J

    .line 3059
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 3060
    :try_start_3
    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 3062
    monitor-exit v0

    .line 3063
    return-void

    .line 3062
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public onCleanupUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 755
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    .line 759
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    .line 760
    .local v0, "strongAuthRequired":I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 761
    monitor-enter p0

    .line 762
    :try_start_12
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 763
    monitor-exit p0

    .line 764
    return-void

    .line 763
    :catchall_19
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 21
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2644
    move-object v9, p0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceShell()V

    .line 2645
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 2646
    .local v10, "origPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2649
    .local v11, "origUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2650
    .local v12, "origId":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Caller uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    :try_start_32
    new-instance v1, Lcom/android/server/locksettings/LockSettingsShellCommand;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, v9, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v2, v9, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2, v10, v11}, Lcom/android/server/locksettings/LockSettingsShellCommand;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;II)V

    .line 2655
    .local v1, "command":Lcom/android/server/locksettings/LockSettingsShellCommand;
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_4f
    .catchall {:try_start_32 .. :try_end_4f} :catchall_55

    .line 2657
    nop

    .end local v1    # "command":Lcom/android/server/locksettings/LockSettingsShellCommand;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2658
    nop

    .line 2659
    return-void

    .line 2657
    :catchall_55
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2658
    throw v0
.end method

.method public onStartUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 767
    const-string/jumbo v0, "user started"

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V

    .line 768
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 819
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$1;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 840
    return-void
.end method

.method public recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .registers 5
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "recoveryKeyBlob"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2723
    .local p3, "applicationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .line 2590
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2591
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 2592
    return-void
.end method

.method public registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 5
    .param p1, "listener"    # Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    .line 1990
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 1991
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1993
    .local v0, "token":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 1995
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1993
    return v2

    .line 1995
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1996
    throw v2
.end method

.method public removeCachedUnifiedChallenge(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 3514
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->removePassword(I)V

    .line 3515
    return-void
.end method

.method public removeGatekeeperPasswordHandle(J)V
    .registers 5
    .param p1, "gatekeeperPasswordHandle"    # J

    .line 2338
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2339
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 2340
    :try_start_6
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 2341
    monitor-exit v0

    .line 2342
    return-void

    .line 2341
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public removeKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2734
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->removeKey(Ljava/lang/String;)V

    .line 2735
    return-void
.end method

.method public removeWeakEscrowToken(JI)Z
    .registers 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 2034
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2035
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2037
    .local v0, "token":J
    :try_start_7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 2039
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2037
    return v2

    .line 2039
    :catchall_f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2040
    throw v2
.end method

.method public reportSuccessfulBiometricUnlock(ZI)V
    .registers 4
    .param p1, "isStrongBiometric"    # Z
    .param p2, "userId"    # I

    .line 2608
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkBiometricPermission()V

    .line 2609
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulBiometricUnlock(ZI)V

    .line 2610
    return-void
.end method

.method public requireStrongAuth(II)V
    .registers 4
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 2602
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 2603
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 2604
    return-void
.end method

.method public resetKeyStore(I)V
    .registers 19
    .param p1, "userId"    # I

    .line 2226
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 2228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 2229
    .local v3, "profileUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 2230
    .local v4, "profileUserDecryptedPasswords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockscreenCredential;>;"
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 2231
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2233
    .local v7, "pi":Landroid/content/pm/UserInfo;
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    .line 2234
    invoke-direct {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    .line 2235
    invoke-virtual {v0, v8}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2237
    :try_start_44
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2238
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_44 .. :try_end_56} :catch_57
    .catch Ljava/security/InvalidKeyException; {:try_start_44 .. :try_end_56} :catch_57
    .catch Ljava/security/KeyStoreException; {:try_start_44 .. :try_end_56} :catch_57
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_44 .. :try_end_56} :catch_57
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_44 .. :try_end_56} :catch_57
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_44 .. :try_end_56} :catch_57
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_44 .. :try_end_56} :catch_57
    .catch Ljavax/crypto/BadPaddingException; {:try_start_44 .. :try_end_56} :catch_57
    .catch Ljava/security/cert/CertificateException; {:try_start_44 .. :try_end_56} :catch_57
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_56} :catch_57

    .line 2244
    goto :goto_5f

    .line 2239
    :catch_57
    move-exception v0

    .line 2243
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "LockSettingsService"

    const-string v9, "Failed to decrypt child profile key"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2246
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "pi":Landroid/content/pm/UserInfo;
    :cond_5f
    :goto_5f
    goto :goto_1d

    .line 2249
    :cond_60
    :try_start_60
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    array-length v7, v0

    const/4 v8, 0x0

    move v9, v8

    :goto_69
    if-ge v9, v7, :cond_8b

    aget v10, v0, v9

    .line 2250
    .local v10, "profileId":I
    sget-object v11, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    array-length v12, v11

    move v13, v8

    :goto_71
    if-ge v13, v12, :cond_86

    aget v14, v11, v13

    .line 2251
    .local v14, "uid":I
    nop

    .line 2252
    invoke-static {v10, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    move/from16 v16, v7

    int-to-long v6, v15

    .line 2251
    invoke-static {v8, v6, v7}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    .line 2250
    nop

    .end local v14    # "uid":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v16

    goto :goto_71

    :cond_86
    move/from16 v16, v7

    .line 2249
    .end local v10    # "profileId":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_69

    .line 2255
    :cond_8b
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 2256
    const/4 v0, 0x2

    const-wide/16 v6, 0x66

    invoke-static {v0, v6, v7}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I
    :try_end_9d
    .catchall {:try_start_60 .. :try_end_9d} :catchall_c6

    .line 2260
    :cond_9d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_c4

    .line 2261
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2262
    .local v6, "piUserId":I
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockscreenCredential;

    .line 2263
    .local v7, "piUserDecryptedPassword":Lcom/android/internal/widget/LockscreenCredential;
    const/4 v8, -0x1

    if-eq v6, v8, :cond_bc

    if-eqz v7, :cond_bc

    .line 2265
    invoke-virtual {v1, v6, v7}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V

    .line 2267
    :cond_bc
    if-eqz v7, :cond_c1

    .line 2268
    invoke-virtual {v7}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2260
    .end local v6    # "piUserId":I
    .end local v7    # "piUserDecryptedPassword":Lcom/android/internal/widget/LockscreenCredential;
    :cond_c1
    add-int/lit8 v0, v0, 0x1

    goto :goto_9e

    .line 2271
    .end local v0    # "i":I
    :cond_c4
    nop

    .line 2272
    return-void

    .line 2260
    :catchall_c6
    move-exception v0

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_c8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_ee

    .line 2261
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2262
    .local v7, "piUserId":I
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/LockscreenCredential;

    .line 2263
    .local v8, "piUserDecryptedPassword":Lcom/android/internal/widget/LockscreenCredential;
    const/4 v9, -0x1

    if-eq v7, v9, :cond_e6

    if-eqz v8, :cond_e6

    .line 2265
    invoke-virtual {v1, v7, v8}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V

    .line 2267
    :cond_e6
    if-eqz v8, :cond_eb

    .line 2268
    invoke-virtual {v8}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2260
    .end local v7    # "piUserId":I
    .end local v8    # "piUserDecryptedPassword":Lcom/android/internal/widget/LockscreenCredential;
    :cond_eb
    add-int/lit8 v6, v6, 0x1

    goto :goto_c8

    .line 2271
    .end local v6    # "i":I
    :cond_ee
    throw v0
.end method

.method public retainPassword(Ljava/lang/String;)V
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .line 1387
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1388
    if-eqz p1, :cond_b

    .line 1389
    sput-object p1, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    goto :goto_f

    .line 1391
    :cond_b
    const-string v0, "default_password"

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 1393
    :cond_f
    :goto_f
    return-void
.end method

.method public sanitizePassword()V
    .registers 2

    .line 1396
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1397
    const-string v0, "default_password"

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 1399
    :cond_a
    return-void
.end method

.method public savePrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3873
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 3874
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStub;->get()Lcom/android/server/locksettings/LockSettingsStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStub;->savePrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3875
    return-void
.end method

.method public scheduleNonStrongBiometricIdleTimeout(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2614
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkBiometricPermission()V

    .line 2615
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->scheduleNonStrongBiometricIdleTimeout(I)V

    .line 2616
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .line 1267
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1268
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setBoolean(Ljava/lang/String;ZI)V

    .line 1269
    return-void
.end method

.method setKeystorePassword([BI)V
    .registers 3
    .param p1, "password"    # [B
    .param p2, "userHandle"    # I

    .line 1427
    invoke-static {p2, p1}, Landroid/security/AndroidKeyStoreMaintenance;->onUserPasswordChanged(I[B)I

    .line 1428
    return-void
.end method

.method public setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    .registers 10
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userId"    # I

    .line 1731
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-nez v0, :cond_16

    if-eqz p1, :cond_16

    .line 1732
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    goto :goto_16

    .line 1733
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires secure lock screen feature"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1736
    :cond_16
    :goto_16
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1737
    const-string v0, "android.permission.SET_INITIAL_LOCK"

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_3e

    .line 1740
    :cond_35
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "setLockCredential requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1746
    :cond_3e
    :goto_3e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1748
    .local v0, "identity":J
    :try_start_42
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceFrpResolved()V

    .line 1757
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_65

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1761
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1763
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 1764
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    move-object p2, v2

    .line 1766
    :cond_65
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_68
    .catchall {:try_start_42 .. :try_end_68} :catchall_ab

    .line 1767
    :try_start_68
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v4

    if-nez v4, :cond_76

    .line 1769
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 1770
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_68 .. :try_end_72} :catchall_a8

    .line 1789
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1770
    return v3

    .line 1773
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_88

    .line 1774
    const-string/jumbo v3, "lockscreen.password_length"

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v3, v4, v5, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1777
    :cond_88
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, p3, v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 1778
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 1779
    monitor-exit v2
    :try_end_91
    .catchall {:try_start_76 .. :try_end_91} :catchall_a8

    .line 1780
    :try_start_91
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 1782
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 1784
    :cond_9a
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    .line 1785
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 1786
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V
    :try_end_a3
    .catchall {:try_start_91 .. :try_end_a3} :catchall_ab

    .line 1787
    nop

    .line 1789
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1787
    return v4

    .line 1779
    :catchall_a8
    move-exception v3

    :try_start_a9
    monitor-exit v2
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p3    # "userId":I
    :try_start_aa
    throw v3
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ab

    .line 1789
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p3    # "userId":I
    :catchall_ab
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1790
    throw v2
.end method

.method public setLong(Ljava/lang/String;JI)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I

    .line 1273
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1274
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->setLong(Ljava/lang/String;JI)V

    .line 1275
    return-void
.end method

.method public setRecoverySecretTypes([I)V
    .registers 3
    .param p1, "secretTypes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2698
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoverySecretTypes([I)V

    .line 2699
    return-void
.end method

.method public setRecoveryStatus(Ljava/lang/String;I)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2687
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoveryStatus(Ljava/lang/String;I)V

    .line 2688
    return-void
.end method

.method public setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z
    .param p3, "profileUserPassword"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 1220
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1221
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-nez v0, :cond_19

    if-eqz p3, :cond_19

    .line 1223
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    goto :goto_19

    .line 1224
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires secure lock screen feature."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1228
    if-eqz p3, :cond_20

    .line 1229
    move-object v1, p3

    goto :goto_24

    :cond_20
    :try_start_20
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 1228
    :goto_24
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 1230
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_2c

    .line 1231
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    .line 1232
    return-void

    .line 1230
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public setServerParams([B)V
    .registers 3
    .param p1, "serverParams"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2682
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setServerParams([B)V

    .line 2683
    return-void
.end method

.method public setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2677
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V

    .line 2678
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1279
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1280
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1281
    return-void
.end method

.method protected shouldMigrateToSyntheticPasswordLocked(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 2976
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .registers 14
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "rootCertificateAlias"    # Ljava/lang/String;
    .param p3, "verifierCertPath"    # Landroid/security/keystore/recovery/RecoveryCertPath;
    .param p4, "vaultParams"    # [B
    .param p5, "vaultChallenge"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/security/keystore/recovery/RecoveryCertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2713
    .local p6, "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public systemReady()V
    .registers 6

    .line 883
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 884
    const v0, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "28251513"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 886
    :cond_28
    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 888
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 889
    const-string v2, "android.software.secure_lock_screen"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    .line 890
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldData()V

    .line 891
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 892
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V

    .line 893
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getAuthSecretHal()V

    .line 894
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->onSystemReady()V

    .line 897
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    .line 898
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 899
    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFaceManager()Landroid/hardware/face/FaceManager;

    move-result-object v2

    .line 898
    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/BiometricDeferredQueue;->systemReady(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;)V

    .line 900
    return-void
.end method

.method public tieProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V
    .registers 12
    .param p1, "profileUserId"    # I
    .param p2, "profileUserPassword"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 385
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 386
    return-void

    .line 389
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 390
    return-void

    .line 393
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 394
    return-void

    .line 399
    :cond_17
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 400
    .local v0, "parentId":I
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_34

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-nez v1, :cond_34

    .line 403
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    invoke-direct {p0, v1, p2, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 405
    return-void

    .line 411
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v3
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3c} :catch_65

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_43

    .line 412
    return-void

    .line 422
    :cond_43
    nop

    .line 424
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->generateRandomProfilePassword()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 425
    .local v1, "unifiedProfilePassword":Lcom/android/internal/widget/LockscreenCredential;
    :try_start_48
    invoke-direct {p0, v1, p2, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 427
    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V

    .line 428
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;)V
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_59

    .line 429
    if-eqz v1, :cond_58

    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 430
    .end local v1    # "unifiedProfilePassword":Lcom/android/internal/widget/LockscreenCredential;
    :cond_58
    return-void

    .line 424
    .restart local v1    # "unifiedProfilePassword":Lcom/android/internal/widget/LockscreenCredential;
    :catchall_59
    move-exception v2

    if-eqz v1, :cond_64

    :try_start_5c
    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_64
    :goto_64
    throw v2

    .line 414
    .end local v1    # "unifiedProfilePassword":Lcom/android/internal/widget/LockscreenCredential;
    :catch_65
    move-exception v1

    .line 416
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "LockSettingsService"

    const-string v4, "Password GateKeeperService no response"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v4

    const v5, 0x35e1f5eb

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "appname"

    aput-object v8, v6, v7

    const-string/jumbo v7, "locksettings"

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v2

    .line 418
    .local v2, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 420
    const-string v4, "Failed to talk to GateKeeper service"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    return-void
.end method

.method protected tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "password"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 2083
    const-string v0, "NoPadding"

    const-string v1, "GCM"

    const-string/jumbo v2, "profile_key_name_encrypt_"

    :try_start_7
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 2084
    .local v3, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v4}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 2085
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v4
    :try_end_19
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_7 .. :try_end_19} :catch_12e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_19} :catch_12e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_19} :catch_12e
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_19} :catch_12e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_19} :catch_12e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_19} :catch_12e
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_19} :catch_12e

    .line 2087
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    :try_start_19
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v7, v4}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v8, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v10

    .line 2091
    invoke-virtual {v8, v10}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v8

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    .line 2092
    invoke-virtual {v8, v10}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v8

    .line 2093
    invoke-virtual {v8}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v8

    .line 2087
    invoke-virtual {v5, v6, v7, v8}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 2094
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "profile_key_name_decrypt_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v7, v4}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v8, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v10, 0x2

    invoke-direct {v8, v10}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 2098
    invoke-virtual {v8, v1}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2099
    invoke-virtual {v1, v0}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 2100
    invoke-virtual {v0, v9}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    const/16 v1, 0x1e

    .line 2101
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 2102
    invoke-virtual {v0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v0

    .line 2094
    invoke-virtual {v5, v6, v7, v0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 2104
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 2106
    .local v0, "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 2109
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1, v9, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 2110
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 2111
    .local v5, "encryptionResult":[B
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v6
    :try_end_bf
    .catchall {:try_start_19 .. :try_end_bf} :catchall_115

    .line 2114
    .end local v0    # "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .local v6, "iv":[B
    :try_start_bf
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_d5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_bf .. :try_end_d5} :catch_12e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_bf .. :try_end_d5} :catch_12e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_bf .. :try_end_d5} :catch_12e
    .catch Ljava/security/KeyStoreException; {:try_start_bf .. :try_end_d5} :catch_12e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_bf .. :try_end_d5} :catch_12e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_bf .. :try_end_d5} :catch_12e
    .catch Ljava/security/InvalidKeyException; {:try_start_bf .. :try_end_d5} :catch_12e

    .line 2115
    nop

    .line 2120
    .end local v3    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v4    # "secretKey":Ljavax/crypto/SecretKey;
    nop

    .line 2121
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2123
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_dc
    array-length v1, v6

    const/16 v2, 0xc

    if-ne v1, v2, :cond_f2

    .line 2126
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 2127
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_e7} :catch_10c

    .line 2130
    nop

    .line 2131
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeChildProfileLock(I[B)V

    .line 2132
    return-void

    .line 2124
    :cond_f2
    :try_start_f2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid iv length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "encryptionResult":[B
    .end local v6    # "iv":[B
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "userId":I
    .end local p2    # "password":Lcom/android/internal/widget/LockscreenCredential;
    throw v1
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_10c} :catch_10c

    .line 2128
    .restart local v0    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "encryptionResult":[B
    .restart local v6    # "iv":[B
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "userId":I
    .restart local p2    # "password":Lcom/android/internal/widget/LockscreenCredential;
    :catch_10c
    move-exception v1

    .line 2129
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to concatenate byte arrays"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2114
    .end local v0    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "encryptionResult":[B
    .end local v6    # "iv":[B
    .restart local v3    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .restart local v4    # "secretKey":Ljavax/crypto/SecretKey;
    :catchall_115
    move-exception v0

    :try_start_116
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mJavaKeyStore:Ljava/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 2115
    nop

    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "userId":I
    .end local p2    # "password":Lcom/android/internal/widget/LockscreenCredential;
    throw v0
    :try_end_12e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_116 .. :try_end_12e} :catch_12e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_116 .. :try_end_12e} :catch_12e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_116 .. :try_end_12e} :catch_12e
    .catch Ljava/security/KeyStoreException; {:try_start_116 .. :try_end_12e} :catch_12e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_116 .. :try_end_12e} :catch_12e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_116 .. :try_end_12e} :catch_12e
    .catch Ljava/security/InvalidKeyException; {:try_start_116 .. :try_end_12e} :catch_12e

    .line 2116
    .end local v3    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v4    # "secretKey":Ljavax/crypto/SecretKey;
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "userId":I
    .restart local p2    # "password":Lcom/android/internal/widget/LockscreenCredential;
    :catch_12e
    move-exception v0

    .line 2119
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to encrypt key"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public tryUnlockWithCachedUnifiedChallenge(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 3503
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->retrievePassword(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 3504
    .local v0, "cred":Lcom/android/internal/widget/LockscreenCredential;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 3505
    nop

    .line 3509
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 3505
    :cond_f
    return v1

    .line 3507
    :cond_10
    const/4 v2, 0x0

    :try_start_11
    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 3508
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_22

    if-nez v2, :cond_1c

    const/4 v1, 0x1

    .line 3509
    :cond_1c
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 3507
    :cond_21
    return v1

    .line 3503
    :catchall_22
    move-exception v1

    if-eqz v0, :cond_2d

    :try_start_25
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2d
    :goto_2d
    throw v1
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .line 2596
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2597
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 2598
    return-void
.end method

.method public unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 5
    .param p1, "listener"    # Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    .line 2003
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2004
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2006
    .local v0, "token":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 2008
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2006
    return v2

    .line 2008
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2009
    throw v2
.end method

.method public userPresent(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2620
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 2621
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportUnlock(I)V

    .line 2622
    return-void
.end method

.method public verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 2297
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1a

    .line 2298
    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "verifyCredential requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2302
    :cond_1a
    :goto_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2304
    .local v0, "identity":J
    const/4 v2, 0x0

    :try_start_1f
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_2a

    .line 2306
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2307
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2304
    return-object v2

    .line 2306
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2307
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2308
    throw v2
.end method

.method public verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 15
    .param p1, "gatekeeperPasswordHandle"    # J
    .param p3, "challenge"    # J
    .param p5, "userId"    # I

    .line 2315
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2320
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 2321
    :try_start_6
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 2322
    .local v1, "gatekeeperPassword":[B
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_30

    .line 2324
    iget-object v8, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v8

    .line 2325
    if-nez v1, :cond_1e

    .line 2326
    :try_start_14
    const-string v0, "LockSettingsService"

    const-string v2, "No gatekeeper password for handle"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_2b

    .line 2329
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1e
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-object v4, v1

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(Landroid/service/gatekeeper/IGateKeeperService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2332
    .restart local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_2b
    monitor-exit v8

    .line 2333
    return-object v0

    .line 2332
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_2d
    move-exception v0

    monitor-exit v8
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_2d

    throw v0

    .line 2322
    .end local v1    # "gatekeeperPassword":[B
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 9
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 2400
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2401
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2405
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 2407
    .local v0, "parentProfileId":I
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 2412
    .local v2, "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-eqz v3, :cond_1d

    .line 2414
    return-object v2

    .line 2419
    :cond_1d
    :try_start_1d
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v3

    invoke-direct {p0, v3, p2, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1
    :try_end_25
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljava/security/InvalidKeyException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljava/security/KeyStoreException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljava/security/cert/CertificateException; {:try_start_1d .. :try_end_25} :catch_2b
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_25} :catch_2b
    .catchall {:try_start_1d .. :try_end_25} :catchall_29

    .line 2428
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2419
    return-object v1

    .line 2428
    :catchall_29
    move-exception v1

    goto :goto_3b

    .line 2421
    :catch_2b
    move-exception v1

    .line 2425
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2c
    const-string v3, "LockSettingsService"

    const-string v4, "Failed to decrypt child profile key"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2426
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to get tied profile token"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parentProfileId":I
    .end local v2    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "userId":I
    .end local p3    # "flags":I
    throw v3
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_29

    .line 2428
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "parentProfileId":I
    .restart local v2    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "userId":I
    .restart local p3    # "flags":I
    :goto_3b
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2429
    throw v1

    .line 2402
    .end local v0    # "parentProfileId":I
    .end local v2    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User id must be managed/clone profile with unified lock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
