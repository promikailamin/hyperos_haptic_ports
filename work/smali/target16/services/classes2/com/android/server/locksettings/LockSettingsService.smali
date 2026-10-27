.class public Lcom/android/server/locksettings/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# static fields
.field public static final SYSTEM_CREDENTIAL_UIDS:[I


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field protected mAuthSecret:[B

.field public mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

.field public final mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

.field public mEarlyCreatedUsers:Landroid/util/SparseIntArray;

.field public mEarlyRemovedUsers:Landroid/util/SparseIntArray;

.field public mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field public final mGatekeeperPasswords:Landroid/util/LongSparseArray;

.field protected final mHandler:Landroid/os/Handler;

.field protected mHasSecureLockScreen:Z

.field protected final mHeadlessAuthSecretLock:Ljava/lang/Object;

.field public final mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

.field public final mKeyStore:Ljava/security/KeyStore;

.field public final mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

.field public final mLockSettingsStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public mProtectorsToDestroyOnBootCompleted:Ljava/util/ArrayList;

.field public final mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

.field public final mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

.field public final mSeparateChallengeLock:Ljava/lang/Object;

.field public final mSoftwareRateLimiter:Lcom/android/server/locksettings/SoftwareRateLimiter;

.field public final mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

.field protected final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field public final mStorageManager:Landroid/os/storage/IStorageManager;

.field public final mStorageManagerInternal:Lcom/android/server/StorageManagerInternal;

.field public final mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

.field public final mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

.field public mThirdPartyAppsStarted:Z

.field public final mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

.field public final mUserCreationAndRemovalLock:Ljava/lang/Object;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserPasswordMetrics:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$FWVI1eyxB9tmDBzH0SOsZo-74ts(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$setLockCredentialWithToken$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FkqdnypghUseyO7eQ_l96L38yvQ(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$lockUser$9(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gpv6G-TGq_8j7KKWezHrXxtjzR0(Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;JI)V
    .registers 4

    .line 2157
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;->onWeakEscrowTokenActivated(JI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 2159
    const-string p1, "LockSettingsService"

    const-string p2, "Exception while notifying weak escrow token has been activated"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$NG5dIc9cUKIi9Raet18tJdg14BE(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->lambda$onBootPhase$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$S7zkKjAgMNeAKjHN4_9C5fuoMvQ(Lcom/android/server/locksettings/LockSettingsService;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->lambda$getEncryptionNotificationTitle$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XCm7_eZIpHxSQ45mdjNGOtd8Hlo(Lcom/android/server/locksettings/LockSettingsService;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->lambda$getEncryptionNotificationDetail$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_YUMPkV62fDwDX-ler1_owz-3Gc(Lcom/android/server/locksettings/LockSettingsService;Landroid/app/admin/PasswordMetrics;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->lambda$notifyPasswordChanged$6(Landroid/app/admin/PasswordMetrics;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hiJP-SLuTLh5gLEsB8zZoC6u8Xg(Lcom/android/server/locksettings/LockSettingsService;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->lambda$storeGatekeeperPasswordTemporarily$7(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$vzY-KpEW3wradGt2aqXJJHw8JcU(I)V
    .registers 2

    .line 1423
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_d

    .line 1426
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->reportSeparateProfileChallengeChanged(I)V

    :cond_d
    return-void
.end method

.method public static synthetic $r8$lambda$w16uzHbczcF_I4cEtr8QSBkbM5g(Lcom/android/server/locksettings/LockSettingsService;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->lambda$getEncryptionNotificationMessage$3()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsService$Injector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockSettingsStateListeners(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockSettingsStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRebootEscrowManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStrongAuth(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddEscrowToken(Lcom/android/server/locksettings/LockSettingsService;[BIILcom/android/server/locksettings/EscrowTokenStateChangeCallback;)J
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BIILcom/android/server/locksettings/EscrowTokenStateChangeCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$mcreateNewUser(Lcom/android/server/locksettings/LockSettingsService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->createNewUser(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetGateKeeperService(Lcom/android/server/locksettings/LockSettingsService;)Landroid/service/gatekeeper/IGateKeeperService;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSeparateProfileChallengeEnabledInternal(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhideEncryptionNotification(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misEscrowTokenActive(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misProfileWithTiedLock(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithTiedLock(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misUserSecure(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mloadPasswordMetrics(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Landroid/app/admin/PasswordMetrics;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Landroid/app/admin/PasswordMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mlockUser(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->lockUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBootPhase(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->onBootPhase(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monCredentialVerified(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPostPasswordChanged(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monThirdPartyAppsStarted(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->onThirdPartyAppsStarted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStarting(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->onUserStarting(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserUnlocking(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->onUserUnlocking(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveEscrowToken(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveUser(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDeviceUnlockedForUser(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLockCredentialWithToken(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mtieProfileLockIfNecessary(Lcom/android/server/locksettings/LockSettingsService;ILcom/android/internal/widget/LockscreenCredential;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munlockUser(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munlockUserWithToken(Lcom/android/server/locksettings/LockSettingsService;J[BI)Z
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserWithToken(J[BI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateActivatedEncryptionNotifications(Lcom/android/server/locksettings/LockSettingsService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->updateActivatedEncryptionNotifications(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    const/16 v2, 0x3f8

    .line 334
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 710
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;-><init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V
    .registers 12

    .line 714
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 267
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 269
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    .line 299
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserCreationAndRemovalLock:Ljava/lang/Object;

    .line 302
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 304
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyRemovedUsers:Landroid/util/SparseIntArray;

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mProtectorsToDestroyOnBootCompleted:Ljava/util/ArrayList;

    .line 315
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    .line 321
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHeadlessAuthSecretLock:Ljava/lang/Object;

    .line 337
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockSettingsStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 960
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/locksettings/LockSettingsService$2;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 715
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 716
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 717
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 718
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getKeyStoreAuthorization()Landroid/security/KeyStoreAuthorization;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 719
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getRecoverableKeyStoreManager()Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 720
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getServiceThread()Lcom/android/server/ServiceThread;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getHandler(Lcom/android/server/ServiceThread;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 721
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuth()Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 722
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    .line 725
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110278

    .line 726
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 729
    new-instance v1, Lcom/android/server/locksettings/SoftwareRateLimiter;

    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$SoftwareRateLimiterInjector;

    const/4 v9, 0x0

    invoke-direct {v3, p0, v9}, Lcom/android/server/locksettings/LockSettingsService$SoftwareRateLimiterInjector;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService-IA;)V

    invoke-direct {v1, v3, v0}, Lcom/android/server/locksettings/SoftwareRateLimiter;-><init>(Lcom/android/server/locksettings/SoftwareRateLimiter$Injector;Z)V

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSoftwareRateLimiter:Lcom/android/server/locksettings/SoftwareRateLimiter;

    .line 732
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 733
    const-string v0, "android.intent.action.USER_STARTING"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 734
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 735
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 738
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorage()Lcom/android/server/locksettings/LockSettingsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 739
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 740
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 741
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 742
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManagerInternal()Lcom/android/server/StorageManagerInternal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManagerInternal:Lcom/android/server/StorageManagerInternal;

    .line 743
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuthTracker()Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    .line 744
    invoke-virtual {v1, v8}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->register(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V

    .line 745
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 747
    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getSyntheticPasswordManager(Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 748
    invoke-virtual {p1, v7}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUnifiedProfilePasswordCache(Ljava/security/KeyStore;)Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    .line 749
    new-instance v2, Lcom/android/server/locksettings/BiometricDeferredQueue;

    invoke-direct {v2, v1}, Lcom/android/server/locksettings/BiometricDeferredQueue;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 751
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;

    invoke-direct {v1, p0, v9}, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService-IA;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getRebootEscrowManager(Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 754
    new-instance p1, Lcom/android/server/locksettings/LockSettingsService$LocalService;

    invoke-direct {p1, p0, v9}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService-IA;)V

    const-class p0, Lcom/android/server/locksettings/LockSettingsInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static timestampToString(J)Ljava/lang/String;
    .registers 4

    .line 3603
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)V
    .registers 11

    .line 3421
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3422
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 3423
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3424
    const-string v5, "LockSettingsService"

    const-string v6, "Activating escrow token %016x for user %d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v2, v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3425
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedProtector(JLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Z

    goto :goto_10

    :catchall_35
    move-exception p0

    goto :goto_39

    .line 3427
    :cond_37
    monitor-exit v0

    return-void

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_35

    throw p0
.end method

.method public final addEscrowToken([BIILcom/android/server/locksettings/EscrowTokenStateChangeCallback;)J
    .registers 14

    .line 3393
    const-string v0, "LockSettingsService"

    const-string v1, "Adding escrow token for user %d"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3394
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    .line 3399
    :try_start_12
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-nez v0, :cond_32

    .line 3400
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v4

    .line 3401
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    .line 3402
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    const/4 v8, 0x0

    move v7, p3

    .line 3401
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    goto :goto_34

    :catchall_2f
    move-exception v0

    move-object p0, v0

    goto :goto_75

    :cond_32
    move v7, p3

    const/4 p3, 0x0

    .line 3404
    :goto_34
    invoke-virtual {p0, v7}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 3405
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 3408
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1, p2, v7, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->addPendingToken([BIILcom/android/server/locksettings/EscrowTokenStateChangeCallback;)J

    move-result-wide p1

    if-eqz p3, :cond_5c

    .line 3411
    const-string p4, "LockSettingsService"

    const-string v0, "Immediately activating escrow token %016x"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p4, v0, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3412
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1, p2, p3, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedProtector(JLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Z

    goto :goto_6b

    .line 3414
    :cond_5c
    const-string p0, "LockSettingsService"

    const-string p3, "Escrow token %016x will be activated when user is unlocked"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0, p3, p4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3416
    :goto_6b
    monitor-exit v1

    return-wide p1

    .line 3406
    :cond_6d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Escrow token is disabled on the current user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3417
    :goto_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_12 .. :try_end_76} :catchall_2f

    throw p0
.end method

.method public addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J
    .registers 7

    .line 2153
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2154
    const-string v0, "Listener can not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2155
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)V

    .line 2162
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 p3, 0x1

    .line 2164
    :try_start_12
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BIILcom/android/server/locksettings/EscrowTokenStateChangeCallback;)J

    move-result-wide p0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1a

    .line 2166
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :catchall_1a
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2167
    throw p0
.end method

.method public final callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V
    .registers 6

    .line 2980
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

    if-nez v0, :cond_6

    goto/16 :goto_e4

    .line 2985
    :cond_6
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 2986
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_14

    goto/16 :goto_e4

    .line 2992
    :cond_14
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->isHeadlessSystemUserMode()Z

    move-result v1

    if-nez v1, :cond_26

    if-eqz p1, :cond_20

    goto/16 :goto_e4

    .line 2998
    :cond_20
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveVendorAuthSecret()[B

    move-result-object p2

    goto/16 :goto_bc

    .line 2999
    :cond_26
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->isMainUserPermanentAdmin()Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 3000
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v1

    if-nez v1, :cond_3a

    goto/16 :goto_e4

    :cond_3a
    if-eqz p3, :cond_97

    .line 3006
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result p3

    if-eqz p3, :cond_68

    .line 3009
    const-string p3, "LockSettingsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generating new vendor auth secret and storing for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x20

    .line 3010
    invoke-static {p3}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    move-result-object p3

    .line 3012
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHeadlessAuthSecretLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3013
    :try_start_61
    iput-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecret:[B

    .line 3014
    monitor-exit v0

    goto :goto_8d

    :catchall_65
    move-exception p0

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_65

    throw p0

    .line 3018
    :cond_68
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mHeadlessAuthSecretLock:Ljava/lang/Object;

    monitor-enter p3

    .line 3019
    :try_start_6b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecret:[B

    .line 3020
    monitor-exit p3
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_94

    if-nez v0, :cond_8c

    .line 3022
    const-string p0, "LockSettingsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Creating non-main user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but vendor auth secret is not in memory"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8c
    move-object p3, v0

    .line 3028
    :goto_8d
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p3, p2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->writeVendorAuthSecret([BLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)V

    move-object p2, p3

    goto :goto_bc

    :catchall_94
    move-exception p0

    .line 3020
    :try_start_95
    monitor-exit p3
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw p0

    .line 3032
    :cond_97
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->readVendorAuthSecret(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)[B

    move-result-object p2

    if-nez p2, :cond_b6

    .line 3034
    const-string p0, "LockSettingsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to read vendor auth secret for user: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3038
    :cond_b6
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mHeadlessAuthSecretLock:Ljava/lang/Object;

    monitor-enter p3

    .line 3039
    :try_start_b9
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecret:[B

    .line 3040
    monitor-exit p3
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_e1

    .line 3042
    :goto_bc
    const-string p3, "LockSettingsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending vendor auth secret to IAuthSecret HAL as user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    :try_start_d2
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

    invoke-interface {p0, p2}, Landroid/hardware/authsecret/IAuthSecret;->setPrimaryUserCredential([B)V
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_d7} :catch_d8

    return-void

    :catch_d8
    move-exception p0

    .line 3046
    const-string p1, "LockSettingsService"

    const-string p2, "Failed to send vendor auth secret to IAuthSecret HAL"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_e1
    move-exception p0

    .line 3040
    :try_start_e2
    monitor-exit p3
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    throw p0

    :cond_e4
    :goto_e4
    return-void
.end method

.method public final checkBiometricPermission()V
    .registers 3

    .line 1339
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MANAGE_BIOMETRIC"

    const-string v1, "LockSettingsBiometric"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7

    .line 2356
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2357
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 2359
    :try_start_8
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_13

    .line 2361
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2362
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroizeIfFromParcel(Lcom/android/internal/widget/LockscreenCredential;)V

    return-object p0

    :catchall_13
    move-exception p0

    .line 2361
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2362
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroizeIfFromParcel(Lcom/android/internal/widget/LockscreenCredential;)V

    .line 2363
    throw p0
.end method

.method public final checkDatabaseReadPermission(Ljava/lang/String;I)V
    .registers 6

    .line 1331
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-void

    .line 1332
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/widget/ILockSettings$Stub;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " needs permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to read "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkManageWeakEscrowTokenMethodUsage()V
    .registers 4

    .line 1347
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_WEAK_ESCROW_TOKEN"

    const-string v2, "Requires MANAGE_WEAK_ESCROW_TOKEN permission."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    return-void

    .line 1351
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Weak escrow token are only for automotive devices."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkPasswordHavePermission()V
    .registers 3

    .line 1327
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v1, "LockSettingsHave"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final checkPasswordReadPermission()V
    .registers 3

    .line 1323
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v1, "LockSettingsRead"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final checkWritePermission()V
    .registers 3

    .line 1318
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v1, "LockSettingsWrite"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public closeSession(Ljava/lang/String;)V
    .registers 2

    .line 2865
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->closeSession(Ljava/lang/String;)V

    return-void
.end method

.method public final createNewUser(II)V
    .registers 7

    .line 2659
    invoke-static {p1}, Landroid/security/AndroidKeyStoreMaintenance;->onUserAdded(I)I

    .line 2661
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserCreationAndRemovalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2667
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mThirdPartyAppsStarted:Z

    if-nez v1, :cond_27

    .line 2668
    const-string v1, "LockSettingsService"

    const-string v2, "Delaying locksettings state creation for user %d until third-party apps are started"

    .line 2669
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 2668
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2670
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2671
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyRemovedUsers:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2672
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    goto :goto_2f

    .line 2674
    :cond_27
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->removeStateForReusedUserIdIfNecessary(II)V

    .line 2675
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 2676
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_25

    throw p0
.end method

.method public deleteRepairModePersistentDataIfNeeded()V
    .registers 2

    .line 1114
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 1115
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 1116
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->isGsiRunning()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1e

    .line 1119
    :cond_19
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteRepairModePersistentData()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public final destroyMigratedProtectors()V
    .registers 9

    .line 1268
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mProtectorsToDestroyOnBootCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1269
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1270
    :try_start_b
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mProtectorsToDestroyOnBootCompleted:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_34

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/util/Pair;

    .line 1271
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v6, v7, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyLskfBasedProtector(JI)V

    goto :goto_12

    :catchall_32
    move-exception p0

    goto :goto_36

    .line 1273
    :cond_34
    monitor-exit v0

    goto :goto_38

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_32

    throw p0

    :cond_38
    :goto_38
    const/4 v0, 0x0

    .line 1275
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mProtectorsToDestroyOnBootCompleted:Ljava/util/ArrayList;

    return-void
.end method

.method public final disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V
    .registers 6

    .line 3720
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasAnyEscrowData(I)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_49

    .line 3724
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3726
    :try_start_d
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDeviceStateCache()Landroid/app/admin/DeviceStateCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/admin/DeviceStateCache;->isUserOrganizationManaged(I)Z

    move-result v2
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_24

    const-string v3, "LockSettingsService"

    if-eqz v2, :cond_26

    .line 3727
    :try_start_1b
    const-string p0, "Organization managed users can have escrow token"

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_24

    .line 3731
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_24
    move-exception p0

    goto :goto_75

    :cond_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3737
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDeviceStateCache()Landroid/app/admin/DeviceStateCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DeviceStateCache;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 3738
    const-string p0, "Postpone disabling escrow tokens until device is provisioned"

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3743
    :cond_3b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :goto_49
    return-void

    .line 3747
    :cond_4a
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 3748
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isForTesting()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 3749
    const-string p0, "Keeping escrow data for test-only user"

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3754
    :cond_62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Permanently disabling support for escrow tokens on user %d"

    invoke-static {v3, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3755
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyEscrowData(I)V

    return-void

    .line 3731
    :goto_75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3732
    throw p0
.end method

.method public final doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 16

    if-eqz p1, :cond_149

    .line 2429
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_149

    const/16 v0, -0x270f

    if-ne p2, v0, :cond_25

    .line 2432
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_25

    .line 2434
    const-string p0, "LockSettingsService"

    const-string p1, "FRP credential can only be verified prior to provisioning."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    :cond_25
    const/16 v1, -0x270e

    if-ne p2, v1, :cond_3b

    .line 2437
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 2438
    const-string p0, "LockSettingsService"

    const-string p1, "Repair mode is not active on the device."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    .line 2441
    :cond_3b
    const-string v1, "LockSettingsService"

    const-string v2, "Verifying lockscreen credential for user %d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2446
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    .line 2448
    :try_start_4d
    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(I)Z

    move-result v2

    if-eqz v2, :cond_57

    const-wide/16 v2, 0x0

    :goto_55
    move-wide v6, v2

    goto :goto_5c

    .line 2450
    :cond_57
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v2

    goto :goto_55

    .line 2451
    :goto_5c
    new-instance v2, Lcom/android/server/locksettings/LskfIdentifier;

    invoke-direct {v2, p2, v6, v7}, Lcom/android/server/locksettings/LskfIdentifier;-><init>(IJ)V

    .line 2453
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSoftwareRateLimiter:Lcom/android/server/locksettings/SoftwareRateLimiter;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/locksettings/SoftwareRateLimiter;->apply(Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/server/locksettings/SoftwareRateLimiterResult;

    move-result-object v3

    .line 2454
    iget v4, v3, Lcom/android/server/locksettings/SoftwareRateLimiterResult;->code:I

    if-eqz v4, :cond_141

    const/4 v5, 0x2

    if-eq v4, v5, :cond_139

    const/4 v3, 0x3

    if-eq v4, v3, :cond_133

    const/4 v3, 0x4

    if-eq v4, v3, :cond_7e

    .line 2464
    invoke-static {}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_7a
    move-exception v0

    move-object p0, v0

    goto/16 :goto_147

    .line 2467
    :cond_7e
    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(I)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 2468
    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-virtual {p4, p2, v3, p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifySpecialUserCredential(ILandroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p3

    .line 2470
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result p4

    if-eqz p4, :cond_9b

    if-ne p2, v0, :cond_9b

    .line 2471
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p2}, Lcom/android/server/locksettings/LockSettingsStorage;->deactivateFactoryResetProtectionWithoutSecret()V

    .line 2473
    :cond_9b
    invoke-virtual {p0, p3, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->reportResultToSoftwareRateLimiter(Lcom/android/internal/widget/VerifyCredentialResponse;Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 2475
    :cond_a1
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2476
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    move-object v8, p1

    move v9, p2

    move-object v10, p3

    .line 2475
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p1

    .line 2477
    iget-object p2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {p0, p2, v2, v8}, Lcom/android/server/locksettings/LockSettingsService;->reportResultToSoftwareRateLimiter(Lcom/android/internal/widget/VerifyCredentialResponse;Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p2

    .line 2479
    invoke-virtual {p2}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result p3

    if-eqz p3, :cond_dc

    and-int/lit8 p3, p4, 0x2

    if-eqz p3, :cond_d1

    .line 2481
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p3, v6, v7, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->writeRepairModeCredentialLocked(JI)Z

    move-result p3

    if-nez p3, :cond_d1

    .line 2482
    const-string p0, "LockSettingsService"

    const-string p1, "Failed to write repair mode credential"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v1

    return-object p0

    .line 2487
    :cond_d1
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    iget-object v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 2488
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveGkPassword()[B

    move-result-object v0

    .line 2487
    invoke-virtual {p3, v9, v0}, Lcom/android/server/locksettings/BiometricDeferredQueue;->addPendingLockoutResetForUser(I[B)V

    .line 2490
    :cond_dc
    monitor-exit v1
    :try_end_dd
    .catchall {:try_start_4d .. :try_end_dd} :catchall_7a

    .line 2491
    invoke-virtual {p2}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result p3

    if-eqz p3, :cond_11a

    .line 2492
    const-string p3, "LockSettingsService"

    const-string v0, "Successfully verified lockscreen credential for user %d"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2493
    iget-object p3, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 2494
    invoke-static {v8}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    .line 2493
    invoke-virtual {p0, p3, v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V

    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_116

    .line 2496
    iget-object p1, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 2497
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveGkPassword()[B

    move-result-object p1

    .line 2496
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->storeGatekeeperPasswordTemporarily([B)J

    move-result-wide p1

    .line 2498
    new-instance p3, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {p3}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    .line 2499
    invoke-virtual {p3, p1, p2}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperPasswordHandle(J)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    move-result-object p1

    .line 2500
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p2

    .line 2502
    :cond_116
    invoke-virtual {p0, v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    goto :goto_12b

    .line 2503
    :cond_11a
    invoke-virtual {p2}, Lcom/android/internal/widget/VerifyCredentialResponse;->hasTimeout()Z

    move-result p1

    if-eqz p1, :cond_12b

    invoke-virtual {p2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result p1

    if-lez p1, :cond_12b

    const/16 p1, 0x8

    .line 2504
    invoke-virtual {p0, p1, v9}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 2506
    :cond_12b
    :goto_12b
    invoke-virtual {p2}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result p1

    invoke-virtual {p0, p1, v9}, Lcom/android/server/locksettings/LockSettingsService;->notifyLockSettingsStateListeners(ZI)V

    return-object p2

    .line 2462
    :cond_133
    :try_start_133
    invoke-static {}, Lcom/android/internal/widget/VerifyCredentialResponse;->credAlreadyTried()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 2458
    :cond_139
    iget-object p0, v3, Lcom/android/server/locksettings/SoftwareRateLimiterResult;->timeout:Ljava/time/Duration;

    invoke-static {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(Ljava/time/Duration;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 2460
    :cond_141
    invoke-static {}, Lcom/android/internal/widget/VerifyCredentialResponse;->credTooShort()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 2490
    :goto_147
    monitor-exit v1
    :try_end_148
    .catchall {:try_start_133 .. :try_end_148} :catchall_7a

    throw p0

    .line 2430
    :cond_149
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Credential can\'t be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final doVerifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7

    .line 2556
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "LockSettingsService"

    const-string v2, "Verifying tied profile challenge for user %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2558
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithTiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 2562
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    .line 2564
    invoke-virtual {p0, p1, v0, v2, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    .line 2569
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v0

    if-nez v0, :cond_29

    return-object p1

    .line 2574
    :cond_29
    :try_start_29
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForUnifiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1
    :try_end_2d
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_29 .. :try_end_2d} :catch_37
    .catch Ljava/security/InvalidKeyException; {:try_start_29 .. :try_end_2d} :catch_37
    .catch Ljava/security/KeyStoreException; {:try_start_29 .. :try_end_2d} :catch_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_29 .. :try_end_2d} :catch_37
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_29 .. :try_end_2d} :catch_37
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_29 .. :try_end_2d} :catch_37
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_29 .. :try_end_2d} :catch_37
    .catch Ljavax/crypto/BadPaddingException; {:try_start_29 .. :try_end_2d} :catch_37
    .catch Ljava/security/cert/CertificateException; {:try_start_29 .. :try_end_2d} :catch_37
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_37

    .line 2576
    :try_start_2d
    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_3a

    if-eqz p1, :cond_39

    .line 2577
    :try_start_33
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_36
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_33 .. :try_end_36} :catch_37
    .catch Ljava/security/InvalidKeyException; {:try_start_33 .. :try_end_36} :catch_37
    .catch Ljava/security/KeyStoreException; {:try_start_33 .. :try_end_36} :catch_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_33 .. :try_end_36} :catch_37
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_33 .. :try_end_36} :catch_37
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_33 .. :try_end_36} :catch_37
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_33 .. :try_end_36} :catch_37
    .catch Ljavax/crypto/BadPaddingException; {:try_start_33 .. :try_end_36} :catch_37
    .catch Ljava/security/cert/CertificateException; {:try_start_33 .. :try_end_36} :catch_37
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    return-object p0

    :catch_37
    move-exception p0

    goto :goto_46

    :cond_39
    return-object p0

    :catchall_3a
    move-exception p0

    if-eqz p1, :cond_45

    .line 2574
    :try_start_3d
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception p1

    :try_start_42
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    throw p0
    :try_end_46
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_42 .. :try_end_46} :catch_37
    .catch Ljava/security/InvalidKeyException; {:try_start_42 .. :try_end_46} :catch_37
    .catch Ljava/security/KeyStoreException; {:try_start_42 .. :try_end_46} :catch_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_42 .. :try_end_46} :catch_37
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_42 .. :try_end_46} :catch_37
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_42 .. :try_end_46} :catch_37
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_42 .. :try_end_46} :catch_37
    .catch Ljavax/crypto/BadPaddingException; {:try_start_42 .. :try_end_46} :catch_37
    .catch Ljava/security/cert/CertificateException; {:try_start_42 .. :try_end_46} :catch_37
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_37

    .line 2581
    :goto_46
    const-string p1, "Failed to decrypt child profile key"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2582
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unable to get tied profile token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2559
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "User id must be managed/clone profile with tied lock"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 3608
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string p3, "LockSettingsService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 3610
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3612
    :try_start_f
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_16

    .line 3614
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3615
    throw p0
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .registers 13

    .line 3619
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3621
    const-string p1, "Current lock settings service state:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3622
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3624
    const-string p1, "User State:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3625
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3626
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 3627
    :goto_1f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_127

    .line 3628
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 3629
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3630
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3631
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v4

    .line 3632
    :try_start_47
    const-string v5, "LSKF-based SP protector ID: %016x"

    .line 3633
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 3632
    invoke-static {v5, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3634
    const-string v5, "LSKF last changed: %s (previous protector: %016x)"

    const-string/jumbo v6, "sp-handle-ts"

    const-wide/16 v7, 0x0

    .line 3636
    invoke-virtual {p0, v6, v7, v8, v3}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "prev-sp-handle"

    .line 3637
    invoke-virtual {p0, v9, v7, v8, v3}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 3634
    invoke-static {v5, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3638
    monitor-exit v4
    :try_end_82
    .catchall {:try_start_47 .. :try_end_82} :catchall_124

    .line 3640
    :try_start_82
    const-string v4, "SID: %016x"

    .line 3641
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 3640
    invoke-static {v4, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_9b} :catch_9b

    .line 3647
    :catch_9b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quality: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3648
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v4

    .line 3649
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CredentialType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3650
    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3649
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, -0x1

    if-ne v4, v5, :cond_ec

    .line 3652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsLockScreenDisabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "lockscreen.disabled"

    .line 3653
    invoke-virtual {p0, v5, v1, v3}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3652
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3655
    :cond_ec
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SeparateChallenge: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3656
    const-string v4, "Metrics: %s"

    .line 3657
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v3

    if-eqz v3, :cond_10f

    const-string v3, "known"

    goto :goto_112

    :cond_10f
    const-string/jumbo v3, "unknown"

    :goto_112
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 3656
    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3658
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1f

    :catchall_124
    move-exception p0

    .line 3638
    :try_start_125
    monitor-exit v4
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_124

    throw p0

    .line 3660
    :cond_127
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3661
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3663
    const-string p1, "Keys in namespace:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3664
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3665
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->dumpKeystoreKeys(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3666
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3667
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3669
    const-string p1, "Storage:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3670
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3671
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3672
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3673
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3675
    const-string p1, "StrongAuth:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3676
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3677
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3678
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3679
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3681
    const-string p1, "RebootEscrow:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3682
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3683
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3684
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3685
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3688
    const-string p1, "SoftwareRateLimiter:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3689
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3690
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSoftwareRateLimiter:Lcom/android/server/locksettings/SoftwareRateLimiter;

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/SoftwareRateLimiter;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3691
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3692
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3695
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PasswordHandleCount: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3696
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserCreationAndRemovalLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3697
    :try_start_1a7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThirdPartyAppsStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mThirdPartyAppsStarted:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3698
    monitor-exit p1

    return-void

    :catchall_1bf
    move-exception p0

    monitor-exit p1
    :try_end_1c1
    .catchall {:try_start_1a7 .. :try_end_1c1} :catchall_1bf

    throw p0
.end method

.method public final dumpKeystoreKeys(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 3703
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p0

    .line 3704
    :goto_6
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3705
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception p0

    goto :goto_19

    :cond_18
    return-void

    .line 3708
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get keys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3709
    const-string p1, "LockSettingsService"

    const-string v0, "Dump error"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final enforceFrpNotActive()V
    .registers 2

    .line 1305
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result v0

    if-gez v0, :cond_14

    .line 1307
    const-string p0, "LockSettingsService"

    const-string v0, "No Main user on device; skipping enforceFrpNotActive"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1311
    :cond_14
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->isFactoryResetProtectionActive()Z

    move-result p0

    if-nez p0, :cond_1d

    return-void

    .line 1312
    :cond_1d
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Cannot change credential while factory reset protection is active"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceShell()V
    .registers 2

    .line 2768
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->isCallerShell()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 2769
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller must be shell"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final faceManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/face/FaceManager$RemovalCallback;
    .registers 3

    .line 3329
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$5;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method public final fingerprintManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    .registers 3

    .line 3312
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$4;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method public final gateKeeperClearSecureUserId(I)V
    .registers 3

    .line 2944
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 2946
    const-string p1, "LockSettingsService"

    const-string v0, "Failed to clear SID"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public generateKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2875
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 3

    .line 2881
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final generateRandomProfilePassword()Lcom/android/internal/widget/LockscreenCredential;
    .registers 5

    const/16 p0, 0x28

    .line 421
    invoke-static {p0}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    move-result-object p0

    .line 422
    invoke-static {p0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    .line 423
    array-length v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 424
    :goto_e
    array-length v3, v0

    if-ge v2, v3, :cond_19

    .line 425
    aget-char v3, v0, v2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 428
    :cond_19
    invoke-static {v1}, Lcom/android/internal/widget/LockscreenCredential;->createUnifiedProfilePassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    .line 429
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->zeroize([C)V

    .line 430
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 431
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-object v2
.end method

.method public final getAuthSecretHal()V
    .registers 4

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/authsecret/IAuthSecret;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1018
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1017
    invoke-static {v0}, Landroid/hardware/authsecret/IAuthSecret$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/authsecret/IAuthSecret;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

    .line 1019
    const-string v1, "LockSettingsService"

    if-eqz v0, :cond_27

    .line 1020
    const-string p0, "Device implements AIDL AuthSecret HAL"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    const/4 v0, 0x1

    .line 1024
    :try_start_28
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->getService(Z)Landroid/hardware/authsecret/V1_0/IAuthSecret;

    move-result-object v0

    .line 1025
    new-instance v2, Lcom/android/server/locksettings/AuthSecretHidlAdapter;

    invoke-direct {v2, v0}, Lcom/android/server/locksettings/AuthSecretHidlAdapter;-><init>(Landroid/hardware/authsecret/V1_0/IAuthSecret;)V

    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

    .line 1026
    const-string p0, "Device implements HIDL AuthSecret HAL"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/util/NoSuchElementException; {:try_start_28 .. :try_end_38} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception p0

    .line 1030
    const-string v0, "Failed to get AuthSecret HAL(hidl)"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    .line 1028
    :catch_40
    const-string p0, "Device doesn\'t implement AuthSecret HAL"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    return-void
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .registers 4

    .line 1454
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkDatabaseReadPermission(Ljava/lang/String;I)V

    .line 1455
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public getCredentialType(I)I
    .registers 2

    .line 1529
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission()V

    .line 1530
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result p0

    return p0
.end method

.method public final getCredentialTypeInternal(I)I
    .registers 7

    .line 1539
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1540
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSpecialUserCredentialType(I)I

    move-result p0

    return p0

    .line 1542
    :cond_d
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1543
    :try_start_10
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1f

    const/4 p0, -0x1

    .line 1546
    monitor-exit v0

    return p0

    :catchall_1d
    move-exception p0

    goto :goto_34

    .line 1548
    :cond_1f
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2a

    .line 1550
    monitor-exit v0

    return v1

    .line 1552
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->pinOrPasswordQualityToCredentialType(I)I

    move-result p0

    monitor-exit v0

    return p0

    .line 1553
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_1d

    throw p0
.end method

.method public getCurrentLskfBasedProtectorId(I)J
    .registers 5

    .line 3080
    const-string/jumbo v0, "sp-handle"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getDecryptedPasswordForUnifiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;
    .registers 6

    .line 1598
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "LockSettingsService"

    const-string v2, "Decrypting password for unified profile %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1599
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readChildProfileLock(I)[B

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 1603
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    invoke-static {v2, p1, v0}, Lcom/android/server/locksettings/UnifiedProfilePasswordCrypto;->decryptProfilePassword(Ljava/security/KeyStore;I[B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 1605
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 1606
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 1605
    invoke-interface {v2, v3}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v2

    .line 1607
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;J)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_32} :catch_33

    return-object v0

    :catch_33
    move-exception p0

    .line 1609
    const-string p1, "Failed to talk to GateKeeper service"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    .line 1601
    :cond_3a
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Child profile lock file not found"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDecryptedPasswordsForAllUnifiedProfiles(I)Ljava/util/Map;
    .registers 9

    .line 1724
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialShareableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1727
    :cond_8
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1728
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    .line 1729
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_58

    .line 1731
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1732
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialShareableWithParent(I)Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_55

    .line 1735
    :cond_29
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 1736
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_55

    .line 1740
    :cond_32
    :try_start_32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForUnifiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    goto :goto_55

    :catch_3e
    move-exception v4

    .line 1745
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDecryptedPasswordsForAllUnifiedProfiles failed for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "LockSettingsService"

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_58
    return-object v0
.end method

.method public final getEncryptionNotificationDetail()Ljava/lang/String;
    .registers 3

    .line 839
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    const-string p0, "Core.PROFILE_ENCRYPTED_DETAIL"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEncryptionNotificationMessage()Ljava/lang/String;
    .registers 3

    .line 845
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    const-string p0, "Core.PROFILE_ENCRYPTED_MESSAGE"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEncryptionNotificationTitle()Ljava/lang/String;
    .registers 3

    .line 833
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    const-string p0, "Core.PROFILE_ENCRYPTED_TITLE"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .registers 5

    monitor-enter p0

    .line 2923
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-eqz v0, :cond_7

    .line 2924
    monitor-exit p0

    return-object v0

    .line 2927
    :cond_7
    :try_start_7
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1a

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 2930
    :try_start_10
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;

    invoke-direct {v2, p0, v1}, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService-IA;)V

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1c
    .catchall {:try_start_10 .. :try_end_19} :catchall_1a

    goto :goto_24

    :catchall_1a
    move-exception v0

    goto :goto_35

    :catch_1c
    move-exception v1

    .line 2932
    :try_start_1d
    const-string v2, "LockSettingsService"

    const-string v3, " Unable to register death recipient"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2934
    :goto_24
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_1a

    .line 2935
    monitor-exit p0

    return-object v0

    .line 2938
    :cond_2c
    :try_start_2c
    const-string v0, "LockSettingsService"

    const-string v2, "Unable to acquire GateKeeperService"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_1a

    .line 2939
    monitor-exit p0

    return-object v1

    :goto_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_1a

    throw v0
.end method

.method public getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B
    .registers 3

    .line 3383
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 3385
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->getHashFactorInternal(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 3387
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroizeIfFromParcel(Lcom/android/internal/widget/LockscreenCredential;)V

    return-object p0

    :catchall_b
    move-exception p0

    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroizeIfFromParcel(Lcom/android/internal/widget/LockscreenCredential;)V

    .line 3388
    throw p0
.end method

.method public final getHashFactorInternal(Lcom/android/internal/widget/LockscreenCredential;I)[B
    .registers 13

    const/4 v1, 0x0

    .line 3354
    :try_start_1
    const-string v0, "LockSettingsService"

    const-string v2, "Getting password history hash factor for user %d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3355
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithTiedLock(I)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1c

    if-eqz v0, :cond_29

    .line 3357
    :try_start_16
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForUnifiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_1f
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1c

    move-object v6, p1

    goto :goto_2b

    :catchall_1c
    move-exception v0

    move-object p0, v0

    goto :goto_63

    :catch_1f
    move-exception v0

    move-object p0, v0

    .line 3360
    :try_start_21
    const-string p1, "LockSettingsService"

    const-string p2, "Failed to get unified profile password"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_1c

    return-object v1

    :cond_29
    move-object v6, p1

    move-object p1, v1

    .line 3364
    :goto_2b
    :try_start_2b
    iget-object v9, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v9
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_60

    .line 3365
    :try_start_2e
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v4

    .line 3366
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3367
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const/4 v8, 0x0

    move v7, p2

    .line 3366
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p0

    .line 3368
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-nez p0, :cond_53

    .line 3369
    const-string p0, "LockSettingsService"

    const-string p2, "Current credential is incorrect"

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    monitor-exit v9
    :try_end_4a
    .catchall {:try_start_2e .. :try_end_4a} :catchall_50

    if-eqz p1, :cond_4f

    .line 3376
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_4f
    return-object v1

    :catchall_50
    move-exception v0

    move-object p0, v0

    goto :goto_5e

    .line 3372
    :cond_53
    :try_start_53
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->derivePasswordHashFactor()[B

    move-result-object p0

    monitor-exit v9
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_50

    if-eqz p1, :cond_5d

    .line 3376
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_5d
    return-object p0

    .line 3373
    :goto_5e
    :try_start_5e
    monitor-exit v9
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_50

    :try_start_5f
    throw p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    :catchall_60
    move-exception v0

    move-object p0, v0

    move-object v1, p1

    :goto_63
    if-eqz v1, :cond_68

    .line 3376
    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 3378
    :cond_68
    throw p0
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2898
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 1

    .line 2807
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyguardStoredQuality(I)I
    .registers 5

    .line 1473
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string v0, "lockscreen.password_type"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getLockPatternSize(I)B
    .registers 2

    .line 1812
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockPatternSize(I)B

    move-result p0

    return p0
.end method

.method public getLockoutEndTime(I)Landroid/os/ParcelDuration;
    .registers 6

    .line 3767
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission()V

    .line 3768
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 3771
    sget-object p0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    goto :goto_1b

    .line 3773
    :cond_10
    new-instance v2, Lcom/android/server/locksettings/LskfIdentifier;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/locksettings/LskfIdentifier;-><init>(IJ)V

    .line 3774
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSoftwareRateLimiter:Lcom/android/server/locksettings/SoftwareRateLimiter;

    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/SoftwareRateLimiter;->getLockoutEndTime(Lcom/android/server/locksettings/LskfIdentifier;)Ljava/time/Duration;

    move-result-object p0

    .line 3776
    :goto_1b
    new-instance p1, Landroid/os/ParcelDuration;

    invoke-direct {p1, p0}, Landroid/os/ParcelDuration;-><init>(Ljava/time/Duration;)V

    return-object p1
.end method

.method public getLong(Ljava/lang/String;JI)J
    .registers 5

    .line 1460
    invoke-virtual {p0, p1, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkDatabaseReadPermission(Ljava/lang/String;I)V

    .line 1461
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPinLength(I)I
    .registers 7

    .line 1487
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission()V

    .line 1488
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1489
    iget v1, v0, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    .line 1490
    iget p0, v0, Landroid/app/admin/PasswordMetrics;->length:I

    return p0

    .line 1492
    :cond_11
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1493
    :try_start_14
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_23

    const/4 p0, -0x1

    .line 1496
    monitor-exit v0

    return p0

    :catchall_21
    move-exception p0

    goto :goto_2b

    .line 1498
    :cond_23
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPinLength(JI)I

    move-result p0

    monitor-exit v0

    return p0

    .line 1499
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_21

    throw p0
.end method

.method public final getProfilesWithSameLockScreen(I)Ljava/util/Set;
    .registers 7

    .line 1867
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1868
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1869
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v3, p1, :cond_29

    iget v4, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v4, p1, :cond_f

    .line 1871
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithTiedLock(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1872
    :cond_29
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_33
    return-object v0
.end method

.method public getRecoverySecretTypes()[I
    .registers 1

    .line 2839
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoverySecretTypes()[I

    move-result-object p0

    return-object p0
.end method

.method public getRecoveryStatus()Ljava/util/Map;
    .registers 1

    .line 2828
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoveryStatus()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getRequestedPasswordHistoryLength(I)I
    .registers 3

    .line 2111
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method

.method public final getSalt(I)Ljava/lang/String;
    .registers 7

    .line 2102
    const-string v0, "lockscreen.password_salt"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-nez v1, :cond_13

    .line 2104
    invoke-static {}, Lcom/android/server/locksettings/SecureRandomUtils;->randomLong()J

    move-result-wide v3

    .line 2105
    invoke-virtual {p0, v0, v3, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 2107
    :cond_13
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSeparateProfileChallengeEnabled(I)Z
    .registers 3

    .line 1363
    const-string v0, "lockscreen.profilechallenge"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkDatabaseReadPermission(Ljava/lang/String;I)V

    .line 1364
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result p0

    return p0
.end method

.method public final getSeparateProfileChallengeEnabledInternal(I)Z
    .registers 5

    .line 1368
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1369
    :try_start_3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string v1, "lockscreen.profilechallenge"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 1370
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 1466
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkDatabaseReadPermission(Ljava/lang/String;I)V

    .line 1467
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStrongAuthForUser(I)I
    .registers 2

    .line 2758
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2759
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p0

    return p0
.end method

.method public getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .registers 3

    .line 2615
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2620
    new-instance p0, Landroid/app/admin/PasswordMetrics;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object p0

    .line 2622
    :cond_d
    monitor-enter p0

    .line 2623
    :try_start_e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/PasswordMetrics;

    monitor-exit p0

    return-object p1

    :catchall_18
    move-exception p1

    .line 2624
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public final getUserProperties(I)Landroid/content/pm/UserProperties;
    .registers 2

    .line 2115
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    return-object p0
.end method

.method public hasPendingEscrowToken(I)Z
    .registers 3

    .line 3438
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 3439
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3440
    :try_start_6
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 3441
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .registers 2

    .line 1343
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public hasSecureLockScreen()Z
    .registers 1

    .line 1358
    iget-boolean p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    return p0
.end method

.method public final hasUnifiedProfilePassword(I)Z
    .registers 3

    .line 1718
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 1719
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final hideEncryptionNotification(Landroid/os/UserHandle;)V
    .registers 5

    .line 871
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "LockSettingsService"

    const-string v2, "Hiding encryption notification for user %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 872
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 3

    .line 2887
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;
    .registers 4

    .line 2893
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initKeystoreSuperKeys(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V
    .registers 5

    .line 1562
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveKeyStorePassword()[B

    move-result-object p0

    .line 1564
    :try_start_4
    invoke-static {p1, p0, p3}, Landroid/security/AndroidKeyStoreMaintenance;->initUserSuperKeys(I[BZ)I

    move-result p2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_25

    if-nez p2, :cond_e

    .line 1570
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-void

    .line 1566
    :cond_e
    :try_start_e
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to initialize Keystore super keys for user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p1

    .line 1570
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1571
    throw p1
.end method

.method public initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .registers 4

    .line 2801
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V

    return-void
.end method

.method public initializeSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;
    .registers 8

    .line 3060
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3061
    :try_start_3
    const-string v1, "LockSettingsService"

    const-string v2, "Initializing synthetic password for user %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3062
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    const-string v3, "Cannot reinitialize SP"

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 3066
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    move-result-object v1

    .line 3067
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    .line 3068
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v5

    .line 3067
    invoke-virtual {v3, v4, v5, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    move-result-wide v3

    .line 3069
    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->setCurrentLskfBasedProtectorId(JI)V

    .line 3070
    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->setCeStorageProtection(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 3071
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->initKeystoreSuperKeys(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 3072
    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordCreated(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 3073
    const-string p0, "LockSettingsService"

    const-string v2, "Successfully initialized synthetic password for user %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3074
    monitor-exit v0

    return-object v1

    :catchall_56
    move-exception p0

    .line 3075
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw p0
.end method

.method public final isCallerShell()Z
    .registers 2

    .line 2763
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_d

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public final isCeStorageUnlocked(I)Z
    .registers 3

    .line 2247
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->isCeStorageUnlocked(I)Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 2249
    const-string p1, "LockSettingsService"

    const-string v0, "Error checking whether CE storage is unlocked"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isCredentialShareableWithParent(I)Z
    .registers 2

    .line 2120
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 2121
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->isCredentialShareableWithParent()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isEscrowTokenActive(JI)Z
    .registers 5

    .line 3431
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3432
    :try_start_3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->protectorExists(JI)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 3433
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isProfileWithTiedLock(I)Z
    .registers 3

    .line 1807
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialShareableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1808
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserSecure(I)Z
    .registers 2

    .line 1557
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isWeakEscrowTokenActive(JI)Z
    .registers 6

    .line 2183
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2184
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2186
    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 2188
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2189
    throw p0
.end method

.method public isWeakEscrowTokenValid(J[BI)Z
    .registers 16

    .line 2194
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2197
    :try_start_7
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_47

    .line 2198
    :try_start_a
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_22

    .line 2199
    const-string p0, "LockSettingsService"

    const-string p1, "Escrow token is disabled on the current user"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_1f

    .line 2211
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_1f
    move-exception v0

    move-object p0, v0

    goto :goto_45

    .line 2202
    :cond_22
    :try_start_22
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2203
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v6

    move-wide v7, p1

    move-object v9, p3

    move v10, p4

    .line 2202
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockWeakTokenBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p0

    .line 2204
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-nez p0, :cond_3f

    .line 2205
    const-string p0, "LockSettingsService"

    const-string p1, "Invalid escrow token supplied"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_22 .. :try_end_3b} :catchall_1f

    .line 2211
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 2208
    :cond_3f
    :try_start_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_1f

    .line 2211
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    .line 2209
    :goto_45
    :try_start_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_1f

    :try_start_46
    throw p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v0

    move-object p0, v0

    .line 2211
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2212
    throw p0
.end method

.method public final isWeaverDisabledOnUnsecuredUsers()Z
    .registers 2

    .line 1123
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110150

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$getEncryptionNotificationDetail$2()Ljava/lang/String;
    .registers 2

    .line 841
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v0, 0x1040933

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$getEncryptionNotificationMessage$3()Ljava/lang/String;
    .registers 2

    .line 847
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v0, 0x1040934

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$getEncryptionNotificationTitle$1()Ljava/lang/String;
    .registers 2

    .line 835
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v0, 0x1040935

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$lockUser$9(I)V
    .registers 3

    .line 3573
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 3575
    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->getAllowStoppingUserWithDelayedLocking()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3576
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 3577
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    .line 3578
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    :cond_15
    return-void
.end method

.method public final synthetic lambda$notifyPasswordChanged$6(Landroid/app/admin/PasswordMetrics;I)V
    .registers 3

    .line 2647
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V

    .line 2648
    const-class p0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerInternal;->reportPasswordChanged(I)V

    return-void
.end method

.method public final synthetic lambda$onBootPhase$0()V
    .registers 1

    .line 387
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->destroyMigratedProtectors()V

    .line 389
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->loadEscrowData()V

    return-void
.end method

.method public final synthetic lambda$setLockCredentialWithToken$8(I)V
    .registers 2

    .line 3485
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I)V

    return-void
.end method

.method public final synthetic lambda$storeGatekeeperPasswordTemporarily$7(J)V
    .registers 7

    .line 3109
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 3110
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 3111
    const-string v1, "LockSettingsService"

    const-string v2, "Cached Gatekeeper password with handle %016x has expired"

    .line 3112
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 3111
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3113
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_24

    .line 3115
    :cond_22
    :goto_22
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_20

    throw p0
.end method

.method public final loadEscrowData()V
    .registers 2

    .line 1012
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataIfAvailable(Landroid/os/Handler;)V

    return-void
.end method

.method public final loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Landroid/app/admin/PasswordMetrics;
    .registers 7

    .line 2628
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2629
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, 0x0

    .line 2630
    monitor-exit v0

    return-object p0

    :catchall_c
    move-exception p0

    goto :goto_1a

    .line 2632
    :cond_e
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;JI)Landroid/app/admin/PasswordMetrics;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 2634
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_c

    throw p0
.end method

.method public final lockUser(I)V
    .registers 5

    .line 3549
    :try_start_0
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Locking CE storage for user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->lockCeStorage(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_2a

    .line 3571
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_2a
    move-exception p0

    .line 3552
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V
    .registers 6

    .line 776
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_49

    .line 784
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCeStorageUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_49

    .line 790
    :cond_14
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 791
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 792
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 793
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 794
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 795
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 796
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 799
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_49
    :goto_49
    return-void
.end method

.method public final migrateFrpCredential()V
    .registers 7

    .line 1075
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    .line 1076
    sget-object v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    if-eq v0, v1, :cond_11

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->isBadFormatFromAndroid14Beta()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_59

    .line 1079
    :cond_11
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1080
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1081
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2

    .line 1082
    :try_start_3a
    const-string v0, "lockscreen.password_type"

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v0, v4, v5, v3}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    long-to-int v0, v3

    .line 1085
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1086
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v4

    .line 1088
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->redactActualQualityToMostLenientEquivalentQuality(I)I

    move-result p0

    .line 1085
    invoke-virtual {v3, v4, v5, v1, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V

    .line 1089
    monitor-exit v2

    return-void

    :catchall_56
    move-exception p0

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_3a .. :try_end_58} :catchall_56

    throw p0

    :cond_59
    :goto_59
    return-void
.end method

.method public final migrateOldData()V
    .registers 4

    .line 1036
    const-string/jumbo v0, "migrated_keystore_namespace"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_38

    .line 1038
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1039
    :try_start_e
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateKeyNamespace()Z

    move-result v1

    .line 1040
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_35

    .line 1041
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateProfileLockKeys()Z

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_2d

    .line 1043
    const-string/jumbo v0, "migrated_keystore_namespace"

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1044
    const-string p0, "LockSettingsService"

    const-string v0, "Migrated keys to LSS namespace"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1046
    :cond_2d
    const-string p0, "LockSettingsService"

    const-string v0, "Failed to migrate keys to LSS namespace"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_35
    move-exception p0

    .line 1040
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0

    :cond_38
    return-void
.end method

.method public migrateOldDataAfterSystemReady()V
    .registers 4

    .line 1062
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1063
    const-string/jumbo v0, "migrated_frp2"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1064
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateFrpCredential()V

    const/4 v2, 0x1

    .line 1065
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    :cond_19
    return-void
.end method

.method public final migrateProfileLockKeys()Z
    .registers 7

    .line 1097
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 1098
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_3d

    .line 1100
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1101
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialShareableWithParent(I)Z

    move-result v5

    if-eqz v5, :cond_3a

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1102
    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 1103
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1104
    invoke-static {v5}, Lcom/android/server/locksettings/UnifiedProfilePasswordCrypto;->profilePasswordEncryptAlias(I)Ljava/lang/String;

    move-result-object v5

    .line 1103
    invoke-static {v5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 1105
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1106
    invoke-static {v4}, Lcom/android/server/locksettings/UnifiedProfilePasswordCrypto;->profilePasswordDecryptAlias(I)Ljava/lang/String;

    move-result-object v4

    .line 1105
    invoke-static {v4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_3d
    return v2
.end method

.method public final migrateUserToSpWithBoundKeysLocked(I)V
    .registers 15

    .line 1197
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    const-string v1, "LockSettingsService"

    if-eqz v0, :cond_16

    .line 1198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "User %d is secured; no migration needed"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1201
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-nez v0, :cond_31

    .line 1203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Migrating unsecured user %d to SP-based credential"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1204
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    return-void

    .line 1207
    :cond_31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Existing unsecured user %d has a synthetic password"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1208
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 1209
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    const/4 v8, 0x0

    move v7, p1

    .line 1208
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p1

    .line 1211
    iget-object v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 1212
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->isWeaverDisabledOnUnsecuredUsers()Z

    move-result v2

    if-eqz v2, :cond_db

    .line 1213
    const-string v2, "config_disableWeaverOnUnsecuredUsers=true"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v9, v2

    :goto_5d
    const/16 v2, 0xc

    if-ge v9, v2, :cond_81

    if-nez v0, :cond_81

    .line 1219
    const-string p1, "Failed to unwrap synthetic password. Waiting 5 seconds to retry."

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1388

    .line 1220
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1221
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    .line 1222
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    const/4 v8, 0x0

    .line 1221
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p1

    .line 1223
    iget-object v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5d

    :cond_81
    if-eqz v0, :cond_d3

    .line 1231
    iget-boolean p1, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->usedWeaver:Z

    if-eqz p1, :cond_cd

    .line 1232
    const-string p1, "Removing Weaver protection from the synthetic password"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 1235
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v3

    .line 1234
    invoke-virtual {p1, v2, v3, v0, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    move-result-wide v8

    .line 1238
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    move v11, v7

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v7

    .line 1239
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v10

    const/4 v12, 0x0

    .line 1238
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p1

    move v7, v11

    .line 1240
    iget-object v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-eqz v0, :cond_c5

    .line 1247
    invoke-virtual {p0, v8, v9, v7}, Lcom/android/server/locksettings/LockSettingsService;->setCurrentLskfBasedProtectorId(JI)V

    .line 1248
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mProtectorsToDestroyOnBootCompleted:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_dd

    .line 1242
    :cond_c5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "New SP protector does not work"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1250
    :cond_cd
    const-string p1, "Synthetic password is already not protected by Weaver"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dd

    .line 1226
    :cond_d3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to unwrap synthetic password for unsecured user"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_db
    if-eqz v0, :cond_ff

    .line 1260
    :goto_dd
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Encrypting CE key of user %d with synthetic password"

    invoke-static {v1, v2, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1261
    invoke-virtual {p0, v7, v0}, Lcom/android/server/locksettings/LockSettingsService;->setCeStorageProtection(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 1263
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Initializing Keystore super keys for user %d"

    invoke-static {v1, v2, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 1264
    invoke-virtual {p0, v7, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->initKeystoreSuperKeys(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    return-void

    .line 1253
    :cond_ff
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to unwrap synthetic password for unsecured user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final notifyLockSettingsStateListeners(ZI)V
    .registers 4

    .line 2545
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockSettingsStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsStateListener;

    if-eqz p1, :cond_18

    .line 2547
    invoke-interface {v0, p2}, Lcom/android/server/locksettings/LockSettingsStateListener;->onAuthenticationSucceeded(I)V

    goto :goto_6

    .line 2549
    :cond_18
    invoke-interface {v0, p2}, Lcom/android/server/locksettings/LockSettingsStateListener;->onAuthenticationFailed(I)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public final notifyPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 5

    .line 2645
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    .line 2646
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/locksettings/LockSettingsService;Landroid/app/admin/PasswordMetrics;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final notifySeparateProfileChallengeChanged(I)V
    .registers 3

    .line 1422
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onBootPhase(I)V
    .registers 3

    const/16 v0, 0x226

    if-ne p1, v0, :cond_b

    .line 381
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldDataAfterSystemReady()V

    .line 382
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->deleteRepairModePersistentDataIfNeeded()V

    return-void

    :cond_b
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_19

    .line 384
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_19
    return-void
.end method

.method public final onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V
    .registers 5

    .line 3127
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 3128
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getSecureLockDeviceServiceInternal()Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3130
    invoke-virtual {v0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;->isSecureLockDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3131
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerifiedInSecureLockDeviceMode(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V

    return-void

    .line 3133
    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerifiedInternal(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V

    return-void
.end method

.method public final onCredentialVerifiedInSecureLockDeviceMode(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V
    .registers 5

    if-eqz p2, :cond_d

    .line 3142
    monitor-enter p0

    .line 3143
    :try_start_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3144
    monitor-exit p0

    goto :goto_d

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1

    .line 3146
    :cond_d
    :goto_d
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 3147
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 3148
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)V

    .line 3149
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordUnlocked(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 3151
    const-string p1, "LockSettingsService"

    const-string p2, "Secure lock device is enabled: reporting successful primary auth, but awaiting two-factor authentication completion before full strong auth unlock."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p1, p3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulPrimaryAuthInSecureLockDeviceMode(I)V

    .line 3155
    const-string p1, "LockSettingsService"

    const-string p2, "Successful primary auth in secure lock device mode: process biometric lockout resets."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    invoke-virtual {p0}, Lcom/android/server/locksettings/BiometricDeferredQueue;->processPendingLockoutResets()V

    return-void
.end method

.method public final onCredentialVerifiedInternal(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V
    .registers 5

    if-eqz p2, :cond_d

    .line 3164
    monitor-enter p0

    .line 3165
    :try_start_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3166
    monitor-exit p0

    goto :goto_d

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1

    .line 3169
    :cond_d
    :goto_d
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 3171
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 3173
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I)V

    .line 3175
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)V

    .line 3177
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialShareableWithParent(I)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 3178
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result p2

    if-eqz p2, :cond_29

    .line 3179
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    goto :goto_2e

    .line 3186
    :cond_29
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p2, p3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportUnlock(I)V

    .line 3190
    :cond_2e
    :goto_2e
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p2, p3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    .line 3192
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordUnlocked(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    return-void
.end method

.method public final onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 4

    .line 2044
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->updatePasswordHistory(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 2045
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/trust/TrustManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/trust/TrustManager;

    invoke-virtual {p1, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 2046
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->sendMainUserCredentialChangedNotificationIfNeeded(I)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 17

    .line 2776
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceShell()V

    .line 2777
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2778
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2783
    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, ""

    goto :goto_17

    :cond_14
    const/4 v3, 0x0

    aget-object v3, p4, v3

    :goto_17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 2782
    const-string v4, "LockSettingsService"

    const-string v5, "Executing shell command \'%s\'; callingPid=%d, callingUid=%d"

    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2786
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2788
    :try_start_2e
    new-instance v3, Lcom/android/server/locksettings/LockSettingsShellCommand;

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5, v0, v2}, Lcom/android/server/locksettings/LockSettingsShellCommand;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;II)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object v0, v3

    move-object v3, p2

    .line 2791
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_48
    .catchall {:try_start_2e .. :try_end_48} :catchall_4c

    .line 2793
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4c
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2794
    throw v0
.end method

.method public final onSyntheticPasswordCreated(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V
    .registers 4

    const/4 v0, 0x1

    .line 2951
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    return-void
.end method

.method public final onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V
    .registers 7

    .line 2960
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->isGsiRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2961
    const-string p0, "LockSettingsService"

    const-string p1, "Running in GSI; skipping calls to AuthSecret and RebootEscrow"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2965
    :cond_10
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 2966
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->getVersion()B

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->getSyntheticPassword()[B

    move-result-object v2

    .line 2965
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->callToRebootEscrowIfNeeded(IB[B)V

    .line 2967
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    return-void
.end method

.method public final onSyntheticPasswordUnlocked(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V
    .registers 4

    const/4 v0, 0x0

    .line 2955
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    return-void
.end method

.method public final onThirdPartyAppsStarted()V
    .registers 9

    .line 1130
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserCreationAndRemovalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 1132
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyRemovedUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 1133
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyRemovedUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 1134
    const-string v4, "LockSettingsService"

    const-string v5, "Removing locksettings state for removed user %d now that boot is complete"

    .line 1135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 1134
    invoke-static {v4, v5, v6}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1136
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->removeUserState(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catchall_28
    move-exception p0

    goto/16 :goto_b6

    :cond_2b
    const/4 v2, 0x0

    .line 1138
    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyRemovedUsers:Landroid/util/SparseIntArray;

    move v3, v1

    .line 1139
    :goto_2f
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5b

    .line 1140
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 1141
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 1143
    invoke-virtual {p0, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->removeStateForReusedUserIdIfNecessary(II)V

    .line 1144
    const-string v5, "LockSettingsService"

    const-string v6, "Creating locksettings state for user %d now that boot is complete"

    .line 1145
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 1144
    invoke-static {v5, v6, v7}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1146
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 1148
    :cond_5b
    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 1176
    const-string/jumbo v2, "migrated_all_users_to_sp_and_bound_keys"

    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_76

    .line 1177
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->isWeaverDisabledOnUnsecuredUsers()Z

    move-result v2

    if-eqz v2, :cond_b2

    const-string/jumbo v2, "migrated_weaver_disabled_on_unsecured_users"

    .line 1178
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_b2

    .line 1179
    :cond_76
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_80
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1180
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    iget v6, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->removeStateForReusedUserIdIfNecessary(II)V

    .line 1181
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v5
    :try_end_96
    .catchall {:try_start_5 .. :try_end_96} :catchall_28

    .line 1182
    :try_start_96
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->migrateUserToSpWithBoundKeysLocked(I)V

    .line 1183
    monitor-exit v5

    goto :goto_80

    :catchall_9d
    move-exception p0

    monitor-exit v5
    :try_end_9f
    .catchall {:try_start_96 .. :try_end_9f} :catchall_9d

    :try_start_9f
    throw p0

    .line 1185
    :cond_a0
    const-string/jumbo v2, "migrated_all_users_to_sp_and_bound_keys"

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1186
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->isWeaverDisabledOnUnsecuredUsers()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 1187
    const-string/jumbo v2, "migrated_weaver_disabled_on_unsecured_users"

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1191
    :cond_b2
    iput-boolean v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mThirdPartyAppsStarted:Z

    .line 1192
    monitor-exit v0

    return-void

    :goto_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_9f .. :try_end_b7} :catchall_28

    throw p0
.end method

.method public final onUserStarting(I)V
    .registers 3

    .line 909
    const-string/jumbo v0, "user started"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V

    return-void
.end method

.method public onUserStopped(I)V
    .registers 3

    .line 878
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    .line 894
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 895
    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->getAllowStoppingUserWithDelayedLocking()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 898
    :cond_15
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    .line 899
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 903
    monitor-enter p0

    .line 904
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 905
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_26

    throw p1
.end method

.method public final onUserUnlocking(I)V
    .registers 4

    .line 947
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$1;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .registers 4

    .line 2859
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final redactActualQualityToMostLenientEquivalentQuality(I)I
    .registers 3

    .line 0
    const/high16 p0, 0x20000

    if-eq p1, p0, :cond_15

    const/high16 v0, 0x30000

    if-eq p1, v0, :cond_15

    const/high16 p0, 0x40000

    if-eq p1, p0, :cond_15

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_15

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_15

    return p1

    :cond_15
    return p0
.end method

.method public refreshStoredPinLength(I)Z
    .registers 6

    .line 1509
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission()V

    .line 1510
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1511
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1513
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v2

    .line 1514
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->refreshPinLengthOnDisk(Landroid/app/admin/PasswordMetrics;JI)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    goto :goto_24

    .line 1516
    :cond_1a
    const-string p0, "LockSettingsService"

    const-string p1, "PasswordMetrics is not available"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 1517
    monitor-exit v0

    return p0

    .line 1519
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_18

    throw p0
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 2

    .line 2722
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2723
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method public registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 4

    .line 2128
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2131
    :try_start_7
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 2133
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2134
    throw p0
.end method

.method public final removeAllFaceForUser(I)V
    .registers 6

    .line 3296
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFaceManager()Landroid/hardware/face/FaceManager;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 3297
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3298
    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3299
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3300
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->faceManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/face/FaceManager$RemovalCallback;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/hardware/face/FaceManager;->removeAll(ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    .line 3302
    :try_start_21
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p0

    .line 3304
    const-string p1, "LockSettingsService"

    const-string v0, "Latch interrupted when removing face"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    return-void
.end method

.method public final removeAllFingerprintForUser(I)V
    .registers 6

    .line 3281
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 3282
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3283
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3284
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3285
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->fingerprintManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/hardware/fingerprint/FingerprintManager;->removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 3287
    :try_start_21
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p0

    .line 3289
    const-string p1, "LockSettingsService"

    const-string v0, "Latch interrupted when removing fingerprint"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    return-void
.end method

.method public final removeBiometricsForUser(I)V
    .registers 2

    .line 3276
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeAllFingerprintForUser(I)V

    .line 3277
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeAllFaceForUser(I)V

    return-void
.end method

.method public removeCachedUnifiedChallenge(I)V
    .registers 2

    .line 3598
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 3599
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->removePassword(I)V

    return-void
.end method

.method public final removeEscrowToken(JI)Z
    .registers 8

    .line 3445
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3446
    :try_start_3
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v1

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 3447
    const-string p0, "LockSettingsService"

    const-string p1, "Escrow token handle equals LSKF-based protector ID"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    monitor-exit v0

    return v2

    :catchall_15
    move-exception p0

    goto :goto_33

    .line 3450
    :cond_17
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removePendingToken(JI)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_22

    .line 3451
    monitor-exit v0

    return v3

    .line 3453
    :cond_22
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->protectorExists(JI)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3454
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedProtector(JI)V

    .line 3455
    monitor-exit v0

    return v3

    .line 3457
    :cond_31
    monitor-exit v0

    return v2

    .line 3459
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_15

    throw p0
.end method

.method public removeGatekeeperPasswordHandle(J)V
    .registers 4

    .line 2412
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2413
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 2414
    :try_start_6
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 2415
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public removeKey(Ljava/lang/String;)V
    .registers 2

    .line 2870
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public final removeStateForReusedUserIdIfNecessary(II)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_30

    .line 929
    :cond_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "serial-number"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(Ljava/lang/String;II)I

    move-result v0

    if-eq v0, p2, :cond_30

    if-eq v0, v2, :cond_2b

    .line 936
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 937
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 936
    const-string v2, "LockSettingsService"

    const-string v3, "Removing stale state for reused userId %d (serial %d => %d)"

    invoke-static {v2, v3, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 938
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeUserState(I)V

    .line 940
    :cond_2b
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->setInt(Ljava/lang/String;II)V

    :cond_30
    :goto_30
    return-void
.end method

.method public final removeUser(I)V
    .registers 6

    .line 2680
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserCreationAndRemovalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2686
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mThirdPartyAppsStarted:Z

    if-nez v1, :cond_2e

    .line 2687
    const-string v1, "LockSettingsService"

    const-string v2, "Delaying locksettings state removal for user %d until third-party apps are started"

    .line 2688
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 2687
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2689
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_26

    .line 2690
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_2c

    :catchall_24
    move-exception p0

    goto :goto_42

    .line 2692
    :cond_26
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyRemovedUsers:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2694
    :goto_2c
    monitor-exit v0

    return-void

    .line 2696
    :cond_2e
    const-string v1, "LockSettingsService"

    const-string v2, "Removing state for user %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2697
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeUserState(I)V

    .line 2698
    monitor-exit v0

    return-void

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_24

    throw p0
.end method

.method public final removeUserState(I)V
    .registers 4

    .line 2702
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeBiometricsForUser(I)V

    .line 2703
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removeUser(Landroid/service/gatekeeper/IGateKeeperService;I)V

    .line 2704
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->removeUser(I)V

    .line 2707
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSoftwareRateLimiter:Lcom/android/server/locksettings/SoftwareRateLimiter;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/SoftwareRateLimiter;->clearUserState(I)V

    .line 2710
    invoke-static {p1}, Landroid/security/AndroidKeyStoreMaintenance;->onUserRemoved(I)I

    .line 2711
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->removePassword(I)V

    .line 2713
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 2714
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCrypto;->removeKeystoreProfileKey(Ljava/security/KeyStore;I)V

    .line 2717
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    return-void
.end method

.method public removeWeakEscrowToken(JI)Z
    .registers 6

    .line 2172
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2173
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2175
    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 2177
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2178
    throw p0
.end method

.method public final reportResultToSoftwareRateLimiter(Lcom/android/internal/widget/VerifyCredentialResponse;Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 6

    .line 2520
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2521
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSoftwareRateLimiter:Lcom/android/server/locksettings/SoftwareRateLimiter;

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/SoftwareRateLimiter;->reportSuccess(Lcom/android/server/locksettings/LskfIdentifier;)V

    return-object p1

    .line 2523
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isCredCertainlyIncorrect()Z

    move-result v0

    .line 2524
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeoutAsDuration()Ljava/time/Duration;

    move-result-object v1

    .line 2530
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSoftwareRateLimiter:Lcom/android/server/locksettings/SoftwareRateLimiter;

    .line 2531
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/android/server/locksettings/SoftwareRateLimiter;->reportFailure(Lcom/android/server/locksettings/LskfIdentifier;Lcom/android/internal/widget/LockscreenCredential;ZLjava/time/Duration;)Ljava/time/Duration;

    move-result-object p0

    .line 2533
    invoke-virtual {p0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p2

    if-lez p2, :cond_2c

    if-eqz v0, :cond_27

    .line 2536
    invoke-static {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->credIncorrect(Ljava/time/Duration;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    .line 2537
    :cond_27
    invoke-static {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(Ljava/time/Duration;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    :cond_2c
    return-object p1
.end method

.method public reportSuccessfulBiometricUnlock(ZI)V
    .registers 3

    .line 2740
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkBiometricPermission()V

    .line 2741
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulBiometricUnlock(ZI)V

    return-void
.end method

.method public requireStrongAuth(II)V
    .registers 3

    .line 2734
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2735
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    return-void
.end method

.method public resetKeyStore(I)V
    .registers 15

    .line 2308
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2309
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "LockSettingsService"

    const-string v2, "Resetting keystore for user %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2312
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 2313
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 2315
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialShareableWithParent(I)Z

    move-result v5

    if-eqz v5, :cond_26

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->hasUnifiedProfilePassword(I)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 2317
    :try_start_42
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForUnifiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2318
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_42 .. :try_end_54} :catch_55
    .catch Ljava/security/InvalidKeyException; {:try_start_42 .. :try_end_54} :catch_55
    .catch Ljava/security/KeyStoreException; {:try_start_42 .. :try_end_54} :catch_55
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_42 .. :try_end_54} :catch_55
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_42 .. :try_end_54} :catch_55
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_42 .. :try_end_54} :catch_55
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_42 .. :try_end_54} :catch_55
    .catch Ljavax/crypto/BadPaddingException; {:try_start_42 .. :try_end_54} :catch_55
    .catch Ljava/security/cert/CertificateException; {:try_start_42 .. :try_end_54} :catch_55
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_54} :catch_55

    goto :goto_26

    :catch_55
    move-exception v4

    .line 2323
    const-string v5, "Failed to decrypt child profile key"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    :cond_5c
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 2329
    :try_start_5e
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v4

    array-length v5, v4

    move v6, v3

    :goto_66
    if-ge v6, v5, :cond_82

    aget v7, v4, v6

    .line 2330
    sget-object v8, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    array-length v9, v8

    move v10, v3

    :goto_6e
    if-ge v10, v9, :cond_7f

    aget v11, v8, v10

    .line 2332
    invoke-static {v7, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v11

    int-to-long v11, v11

    .line 2331
    invoke-static {v3, v11, v12}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_6e

    :catchall_7d
    move-exception v4

    goto :goto_ba

    :cond_7f
    add-int/lit8 v6, v6, 0x1

    goto :goto_66

    .line 2335
    :cond_82
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_94

    const/4 v4, 0x2

    const-wide/16 v5, 0x66

    .line 2336
    invoke-static {v4, v5, v6}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I
    :try_end_94
    .catchall {:try_start_5e .. :try_end_94} :catchall_7d

    .line 2340
    :cond_94
    :goto_94
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b9

    .line 2341
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2342
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockscreenCredential;

    if-eq v4, v1, :cond_b1

    if-eqz v5, :cond_b1

    .line 2344
    invoke-virtual {p0, v4, p1, v5}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(IILcom/android/internal/widget/LockscreenCredential;)V

    :cond_b1
    if-eqz v5, :cond_b6

    .line 2347
    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_b6
    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    :cond_b9
    return-void

    .line 2340
    :goto_ba
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_df

    .line 2341
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2342
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockscreenCredential;

    if-eq v5, v1, :cond_d7

    if-eqz v6, :cond_d7

    .line 2344
    invoke-virtual {p0, v5, p1, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(IILcom/android/internal/widget/LockscreenCredential;)V

    :cond_d7
    if-eqz v6, :cond_dc

    .line 2347
    invoke-virtual {v6}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_dc
    add-int/lit8 v3, v3, 0x1

    goto :goto_ba

    .line 2350
    :cond_df
    throw v4
.end method

.method public scheduleNonStrongBiometricIdleTimeout(I)V
    .registers 2

    .line 2746
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkBiometricPermission()V

    .line 2747
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->scheduleNonStrongBiometricIdleTimeout(I)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 5

    .line 3272
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V
    .registers 5

    if-eqz p3, :cond_3

    goto :goto_21

    .line 1857
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_21

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 1858
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    goto :goto_b

    :cond_21
    :goto_21
    return-void
.end method

.method public final sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 5

    .line 1821
    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_33

    .line 1826
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_33

    .line 1833
    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithTiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_33

    .line 1838
    :cond_15
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1839
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretAvailable(Lcom/android/internal/widget/LockscreenCredential;I)V

    goto :goto_1d

    :cond_33
    :goto_33
    return-void
.end method

.method public final sendMainUserCredentialChangedNotificationIfNeeded(I)V
    .registers 4

    .line 3262
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result v0

    if-eq p1, v0, :cond_d

    return-void

    .line 3266
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN_USER_LOCKSCREEN_KNOWLEDGE_FACTOR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3267
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const-string v1, "android.permission.CONFIGURE_FACTORY_RESET_PROTECTION"

    .line 3266
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->sendBroadcast(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .registers 4

    .line 1433
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 1434
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setBoolean(Ljava/lang/String;ZI)V

    return-void
.end method

.method public final setCeStorageProtection(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V
    .registers 6

    .line 2235
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveFileBasedEncryptionKey()[B

    move-result-object p2

    .line 2237
    :try_start_4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManagerInternal:Lcom/android/server/StorageManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerInternal;->setCeStorageProtection(I[B)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_f
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 2241
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-void

    :catchall_d
    move-exception p0

    goto :goto_27

    :catch_f
    move-exception p0

    .line 2239
    :try_start_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to protect CE key for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_d

    .line 2241
    :goto_27
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 2242
    throw p0
.end method

.method public final setCurrentLskfBasedProtectorId(JI)V
    .registers 7

    .line 3085
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v0

    .line 3086
    const-string/jumbo v2, "sp-handle"

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 3087
    const-string/jumbo p1, "prev-sp-handle"

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 3088
    const-string/jumbo p1, "sp-handle-ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method public final setDeviceUnlockedForUser(I)V
    .registers 3

    .line 3196
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/trust/TrustManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/trust/TrustManager;

    const/4 v0, 0x0

    .line 3197
    invoke-virtual {p0, p1, v0}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    return-void
.end method

.method public setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    .registers 10

    .line 1884
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-nez v0, :cond_16

    if-eqz p1, :cond_16

    .line 1885
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    goto :goto_16

    .line 1886
    :cond_e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This operation requires secure lock screen feature"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1889
    :cond_16
    :goto_16
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 1890
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1891
    const-string v0, "android.permission.SET_INITIAL_LOCK"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_3e

    .line 1894
    :cond_35
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "setLockCredential requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1900
    :cond_3e
    :goto_3e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1902
    :try_start_42
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->validateBasicRequirements()V

    .line 1904
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceFrpNotActive()V

    .line 1913
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_6b

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithTiedLock(I)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1917
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 1919
    invoke-virtual {v2, p3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 1917
    invoke-virtual {p0, p2, v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1922
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 1923
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    goto :goto_6b

    :catchall_69
    move-exception p0

    goto :goto_9b

    .line 1925
    :cond_6b
    :goto_6b
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6e
    .catchall {:try_start_42 .. :try_end_6e} :catchall_69

    .line 1926
    :try_start_6e
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v5

    if-nez v5, :cond_81

    .line 1928
    monitor-exit v2
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_7f

    .line 1941
    :goto_75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1942
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroizeIfFromParcel(Lcom/android/internal/widget/LockscreenCredential;)V

    .line 1943
    invoke-static {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroizeIfFromParcel(Lcom/android/internal/widget/LockscreenCredential;)V

    return v4

    :catchall_7f
    move-exception p0

    goto :goto_99

    :cond_81
    const/4 v4, 0x1

    .line 1930
    :try_start_82
    invoke-virtual {p0, p3, v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 1931
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 1932
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_7f

    .line 1933
    :try_start_89
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialShareableWithParent(I)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 1935
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 1937
    :cond_92
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    .line 1938
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V
    :try_end_98
    .catchall {:try_start_89 .. :try_end_98} :catchall_69

    goto :goto_75

    .line 1932
    :goto_99
    :try_start_99
    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_7f

    :try_start_9a
    throw p0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_69

    .line 1941
    :goto_9b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1942
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroizeIfFromParcel(Lcom/android/internal/widget/LockscreenCredential;)V

    .line 1943
    invoke-static {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroizeIfFromParcel(Lcom/android/internal/widget/LockscreenCredential;)V

    .line 1944
    throw p0
.end method

.method public final setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .registers 15

    .line 1980
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1984
    :try_start_7
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_8a

    .line 1985
    :try_start_a
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithTiedLock(I)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1d

    if-eqz v0, :cond_30

    .line 1989
    :try_start_16
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForUnifiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_1a} :catch_29
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_16 .. :try_end_1a} :catch_20
    .catch Ljava/security/InvalidKeyException; {:try_start_16 .. :try_end_1a} :catch_20
    .catch Ljava/security/KeyStoreException; {:try_start_16 .. :try_end_1a} :catch_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_1a} :catch_20
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_16 .. :try_end_1a} :catch_20
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_16 .. :try_end_1a} :catch_20
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_16 .. :try_end_1a} :catch_20
    .catch Ljavax/crypto/BadPaddingException; {:try_start_16 .. :try_end_1a} :catch_20
    .catch Ljava/security/cert/CertificateException; {:try_start_16 .. :try_end_1a} :catch_20
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_20
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1d

    move-object v1, p2

    move-object v7, v1

    goto :goto_31

    :catchall_1d
    move-exception v0

    move-object p0, v0

    goto :goto_88

    :catch_20
    move-exception v0

    .line 2003
    :try_start_21
    const-string v3, "LockSettingsService"

    const-string v4, "Failed to decrypt child profile key"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 1992
    :catch_29
    const-string v0, "LockSettingsService"

    const-string v3, "Child profile key not found"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    :goto_30
    move-object v7, p2

    .line 2006
    :goto_31
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v5

    .line 2007
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2009
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    const/4 v9, 0x0

    move v8, p3

    .line 2008
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p2

    .line 2014
    iget-object p3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2015
    iget-object p2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-nez p2, :cond_66

    if-eqz p3, :cond_57

    .line 2018
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->hasTimeout()Z

    move-result p0

    if-eqz p0, :cond_57

    .line 2019
    const-string p0, "LockSettingsService"

    const-string p1, "Failed to enroll: rate limit exceeded."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 2021
    :cond_57
    const-string p0, "LockSettingsService"

    const-string p1, "Failed to enroll: incorrect credential."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    :goto_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_21 .. :try_end_5f} :catchall_1d

    if-eqz v1, :cond_64

    .line 2038
    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_64
    const/4 p0, 0x0

    return p0

    .line 2026
    :cond_66
    :try_start_66
    invoke-virtual {p0, v8, p2}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordUnlocked(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 2027
    invoke-virtual {p0, p1, p2, v8}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithSpLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    .line 2028
    invoke-virtual {v7}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result p2

    if-eqz p2, :cond_7d

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result p2

    if-nez p2, :cond_7d

    .line 2031
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p2, v8}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportUnlock(I)V

    .line 2033
    :cond_7d
    invoke-virtual {p0, p1, v8, p4}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V

    .line 2034
    monitor-exit v2
    :try_end_81
    .catchall {:try_start_66 .. :try_end_81} :catchall_1d

    if-eqz v1, :cond_86

    .line 2038
    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_86
    const/4 p0, 0x1

    return p0

    .line 2035
    :goto_88
    :try_start_88
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_1d

    :try_start_89
    throw p0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v0

    move-object p0, v0

    if-eqz v1, :cond_91

    .line 2038
    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2040
    :cond_91
    throw p0
.end method

.method public final setLockCredentialWithSpLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J
    .registers 16

    .line 3212
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 3211
    const-string v6, "LockSettingsService"

    const-string v1, "Changing lockscreen credential of user %d; newCredentialType=%s\n"

    invoke-static {v6, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3213
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v7

    .line 3214
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v8

    .line 3215
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    move-result-wide v10

    .line 3218
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 3222
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasSidForUser(I)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 3223
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)V

    .line 3224
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    :cond_4d
    const/4 v0, 0x0

    goto :goto_67

    .line 3229
    :cond_4f
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordsForAllUnifiedProfiles(I)Ljava/util/Map;

    move-result-object v0

    .line 3231
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 3232
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 3233
    invoke-virtual {p0, p3, p2}, Lcom/android/server/locksettings/LockSettingsService;->unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 3234
    invoke-virtual {p0, p3, p2}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 3235
    invoke-static {p3}, Landroid/security/AndroidKeyStoreMaintenance;->onUserLskfRemoved(I)I

    .line 3236
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeBiometricsForUser(I)V

    .line 3238
    :goto_67
    invoke-virtual {p0, v10, v11, p3}, Lcom/android/server/locksettings/LockSettingsService;->setCurrentLskfBasedProtectorId(JI)V

    .line 3239
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->invalidateCredentialTypeCache()V

    .line 3240
    invoke-virtual {p0, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeTiedChallengeForProfiles(ILjava/util/Map;)V

    .line 3242
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 3243
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    invoke-virtual {p1, p3}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->removePassword(I)V

    const/4 p1, -0x1

    if-eq v7, p1, :cond_80

    .line 3245
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyAllWeakTokenBasedProtectors(I)V

    :cond_80
    if-eqz v0, :cond_a0

    .line 3249
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3250
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    goto :goto_8a

    .line 3254
    :cond_a0
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSoftwareRateLimiter:Lcom/android/server/locksettings/SoftwareRateLimiter;

    new-instance v0, Lcom/android/server/locksettings/LskfIdentifier;

    invoke-direct {v0, p3, v8, v9}, Lcom/android/server/locksettings/LskfIdentifier;-><init>(IJ)V

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/SoftwareRateLimiter;->clearLskfState(Lcom/android/server/locksettings/LskfIdentifier;)V

    .line 3256
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, v8, v9, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyLskfBasedProtector(JI)V

    .line 3257
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Successfully changed lockscreen credential of user %d"

    invoke-static {v6, p1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v10
.end method

.method public final setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 14

    .line 3465
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->validateBasicRequirements()V

    .line 3466
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    .line 3467
    :try_start_6
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 3470
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result v0

    if-nez v0, :cond_34

    .line 3471
    const-string p0, "LockSettingsService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown or unactivated token: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 3472
    monitor-exit v1

    return p0

    :catchall_31
    move-exception v0

    move-object p0, v0

    goto :goto_6d

    :cond_34
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    .line 3474
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result p0

    .line 3476
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_31

    if-eqz p0, :cond_64

    .line 3478
    iget-object p1, v2, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 3479
    :try_start_45
    invoke-virtual {v2, v7, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 3480
    monitor-exit p1
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_60

    .line 3481
    invoke-virtual {v3}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 3485
    iget-object p1, v2, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;

    invoke-direct {p2, v2, v7}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3487
    :cond_59
    invoke-virtual {v2, v3, v7}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 3488
    invoke-virtual {v2, v7}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    return p0

    :catchall_60
    move-exception v0

    move-object p0, v0

    .line 3480
    :try_start_62
    monitor-exit p1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_60

    throw p0

    :cond_64
    return p0

    .line 3468
    :cond_65
    :try_start_65
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Escrow token is disabled on the current user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3476
    :goto_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_31

    throw p0
.end method

.method public final setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 15

    .line 3497
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 3496
    const-string v1, "LockSettingsService"

    const-string v2, "Resetting lockscreen credential of user %d using escrow token %016x"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3499
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-wide v5, p2

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p2

    .line 3501
    iget-object p3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    const/4 p4, 0x0

    if-nez p3, :cond_2b

    .line 3502
    const-string p0, "Invalid escrow token supplied"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 3505
    :cond_2b
    iget-object p3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result p3

    if-nez p3, :cond_39

    .line 3508
    const-string p0, "Obsolete token: synthetic password decrypted but it fails GK verification."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 3512
    :cond_39
    iget-object p3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-virtual {p0, v8, p3}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordUnlocked(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 3513
    iget-object p2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-virtual {p0, p1, p2, v8}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithSpLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    const/4 p0, 0x1

    return p0
.end method

.method public setLong(Ljava/lang/String;JI)V
    .registers 5

    .line 1440
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 1441
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method public setRecoverySecretTypes([I)V
    .registers 2

    .line 2834
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoverySecretTypes([I)V

    return-void
.end method

.method public setRecoveryStatus(Ljava/lang/String;I)V
    .registers 3

    .line 2823
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoveryStatus(Ljava/lang/String;I)V

    return-void
.end method

.method public setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V
    .registers 6

    .line 1376
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 1378
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-nez v0, :cond_1b

    if-eqz p3, :cond_1b

    .line 1380
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    goto :goto_1b

    .line 1381
    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This operation requires secure lock screen feature."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_19
    move-exception p0

    goto :goto_34

    .line 1384
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_19

    if-eqz p3, :cond_22

    move-object v1, p3

    goto :goto_26

    .line 1390
    :cond_22
    :try_start_22
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 1385
    :goto_26
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 1391
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_31

    .line 1392
    :try_start_2a
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_19

    .line 1394
    invoke-static {p3}, Lcom/android/internal/widget/LockscreenCredential;->zeroizeIfFromParcel(Lcom/android/internal/widget/LockscreenCredential;)V

    return-void

    :catchall_31
    move-exception p0

    .line 1391
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_19

    .line 1394
    :goto_34
    invoke-static {p3}, Lcom/android/internal/widget/LockscreenCredential;->zeroizeIfFromParcel(Lcom/android/internal/widget/LockscreenCredential;)V

    .line 1395
    throw p0
.end method

.method public final setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V
    .registers 6

    .line 1401
    const-string v0, "lockscreen.profilechallenge"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    .line 1402
    const-string v1, "lockscreen.profilechallenge"

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    if-eqz p2, :cond_1b

    .line 1405
    :try_start_e
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 1406
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    invoke-static {p2, p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCrypto;->removeKeystoreProfileKey(Ljava/security/KeyStore;I)V

    return-void

    :catch_19
    move-exception p2

    goto :goto_26

    .line 1408
    :cond_1b
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter p2
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_1e} :catch_19

    .line 1409
    :try_start_1e
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V

    .line 1410
    monitor-exit p2

    return-void

    :catchall_23
    move-exception p3

    monitor-exit p2
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_23

    :try_start_25
    throw p3
    :try_end_26
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_26} :catch_19

    .line 1413
    :goto_26
    const-string p3, "lockscreen.profilechallenge"

    invoke-virtual {p0, p3, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1414
    throw p2
.end method

.method public setServerParams([B)V
    .registers 2

    .line 2818
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setServerParams([B)V

    return-void
.end method

.method public setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .registers 2

    .line 2813
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 1447
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 1448
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 4

    .line 2603
    monitor-enter p0

    .line 2604
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2605
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 10

    .line 852
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v2, "DEVICE_ADMIN_ALERTS"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x1080615

    .line 854
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 855
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 856
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 857
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    .line 858
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 860
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 861
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 862
    invoke-virtual {p2, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 863
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 864
    invoke-virtual {p2, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 865
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 866
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 p3, 0x0

    const/16 p4, 0x9

    invoke-virtual {p0, p3, p4, p2, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final showEncryptionNotificationForProfile(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 16

    .line 806
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getEncryptionNotificationTitle()Ljava/lang/String;

    move-result-object v2

    .line 807
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getEncryptionNotificationMessage()Ljava/lang/String;

    move-result-object v3

    .line 808
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getEncryptionNotificationDetail()Ljava/lang/String;

    move-result-object v4

    .line 810
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    .line 812
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v0, v1, v1, v5}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_22

    goto :goto_28

    .line 818
    :cond_22
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    if-nez v0, :cond_29

    :goto_28
    return-void

    :cond_29
    const/high16 v0, 0x10800000

    .line 820
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 822
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const/high16 v9, 0xa000000

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v11, p2

    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 827
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 826
    const-string p3, "LockSettingsService"

    const-string v0, "Showing encryption notification for user %d; reason: %s"

    invoke-static {p3, v0, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    .line 829
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .registers 7

    .line 2849
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object p0

    return-object p0
.end method

.method public startRemoteLockscreenValidation()Landroid/app/RemoteLockscreenValidationSession;
    .registers 2

    .line 2904
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRemoteLockscreenValidation(Lcom/android/server/locksettings/LockSettingsService;)Landroid/app/RemoteLockscreenValidationSession;

    move-result-object p0

    return-object p0
.end method

.method public final storeGatekeeperPasswordTemporarily([B)J
    .registers 8

    .line 3100
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_6
    cmp-long v5, v3, v1

    if-eqz v5, :cond_29

    .line 3101
    :try_start_a
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_13

    goto :goto_29

    .line 3104
    :cond_13
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v3, v4, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3105
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_27

    .line 3108
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/LockSettingsService;J)V

    const-wide/32 v1, 0x927c0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-wide v3

    :catchall_27
    move-exception p0

    goto :goto_2e

    .line 3102
    :cond_29
    :goto_29
    :try_start_29
    invoke-static {}, Lcom/android/server/locksettings/SecureRandomUtils;->randomLong()J

    move-result-wide v3

    goto :goto_6

    .line 3105
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_27

    throw p0
.end method

.method public final synchronizeTiedChallengeForProfiles(ILjava/util/Map;)V
    .registers 10

    .line 1767
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialShareableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6a

    .line 1770
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    .line 1771
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    .line 1772
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_6a

    .line 1774
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1775
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 1776
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialShareableWithParent(I)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 1777
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_67

    :cond_2d
    if-eqz v0, :cond_37

    .line 1782
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    .line 1781
    invoke-virtual {p0, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V

    goto :goto_67

    :cond_37
    if-eqz p2, :cond_60

    .line 1787
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 1788
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    .line 1789
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v6, 0x1

    .line 1788
    invoke-virtual {p0, v4, v5, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 1792
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v4, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 1793
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    invoke-static {v4, v3}, Lcom/android/server/locksettings/UnifiedProfilePasswordCrypto;->removeKeystoreProfileKey(Ljava/security/KeyStore;I)V

    goto :goto_67

    .line 1795
    :cond_60
    const-string v3, "LockSettingsService"

    const-string v4, "Attempt to clear tied challenge, but no password supplied."

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_6a
    :goto_6a
    return-void
.end method

.method public systemReady()V
    .registers 5

    .line 974
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 976
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.secure_lock_screen"

    .line 977
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    .line 978
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldData()V

    .line 979
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getAuthSecretHal()V

    .line 980
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->onSystemReady()V

    .line 984
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->invalidateCredentialTypeCache()V

    .line 987
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    .line 988
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 989
    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFaceManager()Landroid/hardware/face/FaceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getBiometricManager()Landroid/hardware/biometrics/BiometricManager;

    move-result-object v3

    .line 988
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/BiometricDeferredQueue;->systemReady(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;Landroid/hardware/biometrics/BiometricManager;)V

    .line 997
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 998
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getSecureLockDeviceServiceInternal()Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 1000
    invoke-virtual {v0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;->isSecureLockDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1001
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1002
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applying Secure Lock Device strong auth flags to user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LockSettingsService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1800

    .line 1005
    invoke-virtual {p0, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    goto :goto_54

    :cond_7e
    return-void
.end method

.method public final tieProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V
    .registers 10

    .line 446
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialShareableWithParent(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_6d

    .line 450
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_6d

    .line 454
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_6d

    .line 457
    :cond_17
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_6d

    .line 464
    :cond_20
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "LockSettingsService"

    if-nez v1, :cond_46

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-nez v1, :cond_46

    .line 465
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Clearing password for profile user %d to match parent"

    invoke-static {v3, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    return-void

    .line 475
    :cond_46
    :try_start_46
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v4}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v3
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_50} :catch_7a

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_57

    goto :goto_6d

    .line 483
    :cond_57
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->generateRandomProfilePassword()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 484
    :try_start_5b
    invoke-virtual {p0, v1, p2, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 486
    iget p2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(IILcom/android/internal/widget/LockscreenCredential;)V

    .line 487
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;J)V
    :try_end_68
    .catchall {:try_start_5b .. :try_end_68} :catchall_6e

    if-eqz v1, :cond_6d

    .line 489
    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    :cond_6d
    :goto_6d
    return-void

    :catchall_6e
    move-exception p0

    if-eqz v1, :cond_79

    .line 483
    :try_start_71
    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_79

    :catchall_75
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_79
    :goto_79
    throw p0

    :catch_7a
    move-exception p0

    .line 480
    const-string p1, "Failed to talk to GateKeeper service"

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final tieProfileLockToParent(IILcom/android/internal/widget/LockscreenCredential;)V
    .registers 7

    .line 2221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2222
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 2221
    const-string v1, "LockSettingsService"

    const-string v2, "Tying lock for profile user %d to parent user %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2225
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1b} :catch_27

    .line 2229
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    invoke-static {p2, p1, v0, v1, p3}, Lcom/android/server/locksettings/UnifiedProfilePasswordCrypto;->encryptProfilePassword(Ljava/security/KeyStore;IJLcom/android/internal/widget/LockscreenCredential;)[B

    move-result-object p2

    .line 2231
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeChildProfileLock(I[B)V

    return-void

    :catch_27
    move-exception p0

    .line 2227
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to talk to GateKeeper service"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public tryUnlockWithCachedUnifiedChallenge(I)Z
    .registers 5

    .line 3586
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 3587
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->retrievePassword(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    if-eqz v0, :cond_11

    .line 3593
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    :cond_11
    return v1

    :cond_12
    const/4 v2, 0x0

    .line 3591
    :try_start_13
    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    .line 3592
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result p0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1f

    .line 3593
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    return p0

    :catchall_1f
    move-exception p0

    .line 3587
    :try_start_20
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_28
    throw p0
.end method

.method public final unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V
    .registers 6

    .line 2261
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCeStorageUnlocked(I)Z

    move-result v0

    const-string v1, "LockSettingsService"

    if-eqz v0, :cond_16

    .line 2262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "CE storage for user %d is already unlocked"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2265
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "secured"

    goto :goto_23

    :cond_20
    const-string/jumbo v0, "unsecured"

    .line 2266
    :goto_23
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveFileBasedEncryptionKey()[B

    move-result-object p2

    .line 2268
    :try_start_27
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManagerInternal:Lcom/android/server/StorageManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerInternal;->unlockCeStorage(I[B)V

    .line 2269
    const-string p0, "Unlocked CE storage for %s user %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_39} :catch_3f
    .catchall {:try_start_27 .. :try_end_39} :catchall_3d

    .line 2273
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-void

    :catchall_3d
    move-exception p0

    goto :goto_51

    :catch_3f
    move-exception p0

    .line 2271
    :try_start_40
    const-string v2, "Failed to unlock CE storage for %s user %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, v2, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_3d

    .line 2273
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-void

    :goto_51
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 2274
    throw p0
.end method

.method public final unlockChildProfile(I)V
    .registers 5

    .line 1616
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForUnifiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_4} :catch_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_4} :catch_1b
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_4} :catch_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_1b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_4} :catch_1b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_4} :catch_1b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_4} :catch_1b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_4} :catch_1b
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_4} :catch_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_1b

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1617
    :try_start_6
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_2d

    .line 1619
    :try_start_b
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_b .. :try_end_e} :catch_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_e} :catch_1b
    .catch Ljava/security/KeyStoreException; {:try_start_b .. :try_end_e} :catch_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_e} :catch_1b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b .. :try_end_e} :catch_1b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_b .. :try_end_e} :catch_1b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_b .. :try_end_e} :catch_1b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_b .. :try_end_e} :catch_1b
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_e} :catch_1b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_1b

    return-void

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_1a

    .line 1615
    :try_start_12
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    :try_start_17
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p0
    :try_end_1b
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_17 .. :try_end_1b} :catch_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_17 .. :try_end_1b} :catch_1b
    .catch Ljava/security/KeyStoreException; {:try_start_17 .. :try_end_1b} :catch_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_1b} :catch_1b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_17 .. :try_end_1b} :catch_1b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_17 .. :try_end_1b} :catch_1b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_17 .. :try_end_1b} :catch_1b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_17 .. :try_end_1b} :catch_1b
    .catch Ljava/security/cert/CertificateException; {:try_start_17 .. :try_end_1b} :catch_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception p0

    .line 1623
    instance-of p1, p0, Ljava/io/FileNotFoundException;

    const-string v0, "LockSettingsService"

    if-eqz p1, :cond_28

    .line 1624
    const-string p0, "Child profile key not found"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 1626
    :cond_28
    const-string p1, "Failed to decrypt child profile key"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d
    :goto_2d
    return-void
.end method

.method public final unlockKeystore(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V
    .registers 3

    .line 1575
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveKeyStorePassword()[B

    move-result-object p2

    .line 1577
    :try_start_4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    invoke-virtual {p0, p1, p2}, Landroid/security/KeyStoreAuthorization;->onDeviceUnlocked(I[B)I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 1579
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1580
    throw p0
.end method

.method public final unlockUser(I)V
    .registers 8

    .line 1641
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    .line 1642
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1643
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$3;

    invoke-direct {v2, p0, v1}, Lcom/android/server/locksettings/LockSettingsService$3;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    .line 1662
    :try_start_11
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3, p1, v2}, Landroid/app/IActivityManager;->unlockUser2(ILandroid/os/IProgressListener;)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_a2

    .line 1668
    :try_start_16
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xf

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1d} :catch_1e

    goto :goto_25

    .line 1670
    :catch_1e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1673
    :goto_25
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialShareableWithParent(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1674
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hasUnifiedProfilePassword(I)Z

    move-result p1

    if-nez p1, :cond_36

    .line 1675
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    invoke-virtual {p0}, Lcom/android/server/locksettings/BiometricDeferredQueue;->processPendingLockoutResets()V

    :cond_36
    return-void

    .line 1680
    :cond_37
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_41
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1681
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, p1, :cond_52

    goto :goto_41

    .line 1682
    :cond_52
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialShareableWithParent(I)Z

    move-result v3

    if-nez v3, :cond_59

    goto :goto_41

    .line 1684
    :cond_59
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->hasUnifiedProfilePassword(I)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 1685
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 1687
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(I)V

    goto :goto_85

    .line 1689
    :cond_71
    :try_start_71
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 1690
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForUnifiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v3

    if-eqz v3, :cond_85

    .line 1693
    invoke-virtual {v3}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_7c
    .catch Ljava/security/GeneralSecurityException; {:try_start_71 .. :try_end_7c} :catch_7d
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7c} :catch_7d

    goto :goto_85

    :catch_7d
    move-exception v3

    .line 1694
    const-string v4, "LockSettingsService"

    const-string v5, "Cache unified profile password failed"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_85
    :goto_85
    if-nez v0, :cond_41

    .line 1701
    invoke-static {}, Lcom/android/internal/widget/ILockSettings$Stub;->clearCallingIdentity()J

    move-result-wide v3

    .line 1703
    :try_start_8b
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v5, "parent unlocked"

    invoke-virtual {p0, v2, v5}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V
    :try_end_93
    .catchall {:try_start_8b .. :try_end_93} :catchall_97

    .line 1705
    invoke-static {v3, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->restoreCallingIdentity(J)V

    goto :goto_41

    :catchall_97
    move-exception p0

    invoke-static {v3, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->restoreCallingIdentity(J)V

    .line 1706
    throw p0

    .line 1710
    :cond_9c
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    invoke-virtual {p0}, Lcom/android/server/locksettings/BiometricDeferredQueue;->processPendingLockoutResets()V

    return-void

    :catch_a2
    move-exception p0

    .line 1664
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public unlockUserKeyIfUnsecured(I)V
    .registers 13

    .line 2279
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2280
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    .line 2281
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCeStorageUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2282
    const-string p0, "LockSettingsService"

    const-string v0, "CE storage for user %d is already unlocked"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2285
    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    move-object p0, v0

    goto :goto_7e

    .line 2287
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2288
    const-string p0, "LockSettingsService"

    const-string v0, "Not unlocking CE storage for user %d yet because user is secured"

    .line 2289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 2288
    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2290
    monitor-exit v1

    return-void

    .line 2292
    :cond_37
    const-string v0, "LockSettingsService"

    const-string v2, "Unwrapping synthetic password for unsecured user %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2293
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2294
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v6

    .line 2295
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v8

    const/4 v10, 0x0

    move v9, p1

    .line 2293
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p1

    .line 2296
    iget-object v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-nez v0, :cond_6f

    .line 2297
    const-string p0, "LockSettingsService"

    const-string p1, "Failed to unwrap synthetic password for unsecured user %d"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2298
    monitor-exit v1

    return-void

    .line 2300
    :cond_6f
    invoke-virtual {p0, v9, v0}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordUnlocked(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 2301
    iget-object v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-virtual {p0, v9, v0}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 2302
    iget-object p1, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    invoke-virtual {p0, v9, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 2303
    monitor-exit v1

    return-void

    :goto_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_6 .. :try_end_7f} :catchall_1d

    throw p0
.end method

.method public final unlockUserWithToken(J[BI)Z
    .registers 14

    .line 3519
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    .line 3520
    :try_start_3
    const-string v0, "LockSettingsService"

    const-string v2, "Unlocking user %d using escrow token %016x"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3521
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_33

    .line 3522
    const-string p0, "LockSettingsService"

    const-string p1, "Escrow token support is disabled on user %d"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3523
    monitor-exit v1

    return v2

    :catchall_30
    move-exception v0

    move-object p0, v0

    goto :goto_68

    .line 3525
    :cond_33
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-wide v5, p1

    move-object v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p1

    .line 3527
    iget-object p2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-nez p2, :cond_4d

    .line 3528
    const-string p0, "LockSettingsService"

    const-string p1, "Invalid escrow token supplied"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    monitor-exit v1

    return v2

    .line 3531
    :cond_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_30

    .line 3533
    const-string p2, "LockSettingsService"

    const-string p3, "Unlocked synthetic password for user %d using escrow token"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3534
    iget-object p1, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 3535
    invoke-virtual {p0, p1, v8}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Landroid/app/admin/PasswordMetrics;

    move-result-object p2

    .line 3534
    invoke-virtual {p0, p1, p2, v8}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V

    const/4 p0, 0x1

    return p0

    .line 3531
    :goto_68
    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_30

    throw p0
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 2

    .line 2728
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2729
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method public unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 4

    .line 2141
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 2142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2144
    :try_start_7
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 2146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2147
    throw p0
.end method

.method public final updateActivatedEncryptionNotifications(Ljava/lang/String;)V
    .registers 9

    .line 758
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 759
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    .line 760
    const-string/jumbo v3, "notification"

    .line 761
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 762
    invoke-virtual {v2}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    array-length v3, v2

    :goto_31
    if-ge v4, v3, :cond_a

    aget-object v5, v2, v4

    .line 763
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_43

    .line 764
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V

    goto :goto_a

    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_46
    return-void
.end method

.method public final updatePasswordHistory(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 9

    .line 2057
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_d

    .line 2060
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x0

    .line 2065
    const-string v1, "lockscreen.passwordhistory"

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2067
    const-string v2, ""

    if-nez v0, :cond_1a

    move-object v0, v2

    .line 2070
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getRequestedPasswordHistoryLength(I)I

    move-result v3

    if-nez v3, :cond_21

    goto :goto_71

    .line 2074
    :cond_21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "LockSettingsService"

    const-string v5, "Adding new password to password history for user %d"

    invoke-static {v4, v5, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2075
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->getHashFactorInternal(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v2

    .line 2076
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSalt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 2077
    invoke-virtual {p1, v5, v2}, Lcom/android/internal/widget/LockscreenCredential;->passwordToHistoryHash([B[B)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_48

    .line 2082
    const-string p0, "Failed to compute password hash; password history won\'t be updated"

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2085
    :cond_48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4f

    goto :goto_71

    .line 2088
    :cond_4f
    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2090
    new-instance v4, Ljava/util/StringJoiner;

    invoke-direct {v4, p1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 2091
    invoke-virtual {v4, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/4 p1, 0x0

    :goto_5e
    add-int/lit8 v2, v3, -0x1

    if-ge p1, v2, :cond_6d

    .line 2092
    array-length v2, v0

    if-ge p1, v2, :cond_6d

    .line 2093
    aget-object v2, v0, p1

    invoke-virtual {v4, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 p1, p1, 0x1

    goto :goto_5e

    .line 2095
    :cond_6d
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2098
    :goto_71
    invoke-virtual {p0, v1, v2, p2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public userPresent(I)V
    .registers 2

    .line 2752
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 2753
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportUnlock(I)V

    return-void
.end method

.method public validateRemoteLockscreen([B)Landroid/app/RemoteLockscreenValidationResult;
    .registers 3

    .line 2911
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->validateRemoteLockscreen([BLcom/android/server/locksettings/LockSettingsService;)Landroid/app/RemoteLockscreenValidationResult;

    move-result-object p0

    return-object p0
.end method

.method public verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7

    .line 2370
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 2371
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1a

    .line 2372
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "verifyCredential requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2376
    :cond_1a
    :goto_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 2378
    :try_start_1f
    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_2a

    .line 2380
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2381
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroizeIfFromParcel(Lcom/android/internal/widget/LockscreenCredential;)V

    return-object p0

    :catchall_2a
    move-exception p0

    .line 2380
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2381
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroizeIfFromParcel(Lcom/android/internal/widget/LockscreenCredential;)V

    .line 2382
    throw p0
.end method

.method public verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 14

    .line 2389
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2394
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 2395
    :try_start_6
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [B

    .line 2396
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_32

    .line 2398
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter p1

    if-nez v4, :cond_22

    .line 2400
    :try_start_15
    const-string p0, "LockSettingsService"

    const-string p2, "No gatekeeper password for handle"

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_2e

    :catchall_1f
    move-exception v0

    move-object p0, v0

    goto :goto_30

    .line 2403
    :cond_22
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(Landroid/service/gatekeeper/IGateKeeperService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    .line 2406
    :goto_2e
    monitor-exit p1

    return-object p0

    :goto_30
    monitor-exit p1
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_1f

    throw p0

    :catchall_32
    move-exception v0

    move-object p0, v0

    .line 2396
    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_32

    throw p0
.end method

.method public verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 4

    .line 2589
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 2591
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 2593
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroizeIfFromParcel(Lcom/android/internal/widget/LockscreenCredential;)V

    return-object p0

    :catchall_b
    move-exception p0

    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroizeIfFromParcel(Lcom/android/internal/widget/LockscreenCredential;)V

    .line 2594
    throw p0
.end method

.method public writeRepairModeCredential(I)Z
    .registers 7

    .line 1949
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 1950
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1952
    :try_start_7
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_1c

    .line 1953
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    move-result-wide v3

    .line 1954
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->writeRepairModeCredentialLocked(JI)Z

    move-result p0

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_19

    .line 1957
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_19
    move-exception p0

    .line 1955
    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p0

    .line 1957
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1958
    throw p0
.end method
