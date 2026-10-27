.class public Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;
.super Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;
.source "SecureLockDeviceService.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public final mBiometricAuthStateLock:Ljava/lang/Object;

.field public final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field public final mContext:Landroid/content/Context;

.field public final mFaceManager:Landroid/hardware/face/FaceManager;

.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockSettingsInternal:Lcom/android/server/locksettings/LockSettingsInternal;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSecureLockDeviceSettingsManager:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;

.field public final mSecureLockDeviceStatusListenerLock:Ljava/lang/Object;

.field public final mSecureLockDeviceStatusListeners:Landroid/os/RemoteCallbackList;

.field public mSkipSecurityFeaturesForTest:Z

.field public final mStore:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;

.field public mStrongAuthTracker:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$StrongAuthTracker;

.field public mUserAuthenticatedWithStrongBiometric:Landroid/os/UserHandle;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBiometricAuthStateLock(Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mBiometricAuthStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmUserAuthenticatedWithStrongBiometric(Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;Landroid/os/UserHandle;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mUserAuthenticatedWithStrongBiometric:Landroid/os/UserHandle;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySecureLockDeviceAvailabilityForUser(Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->notifySecureLockDeviceAvailabilityForUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstart(Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->start()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 94
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;Landroid/hardware/biometrics/BiometricManager;Landroid/hardware/face/FaceManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/PowerManager;Lcom/android/server/pm/UserManagerInternal;)V
    .registers 9

    .line 129
    invoke-direct {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListenerLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mBiometricAuthStateLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListeners:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mUserAuthenticatedWithStrongBiometric:Landroid/os/UserHandle;

    .line 130
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mContext:Landroid/content/Context;

    .line 131
    iput-object p3, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 132
    iput-object p4, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 133
    iput-object p5, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 134
    iput-object p6, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mPowerManager:Landroid/os/PowerManager;

    .line 135
    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceSettingsManager:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;

    .line 136
    invoke-interface {p2}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;->resetManagedSettings()V

    .line 137
    iput-object p7, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 138
    new-instance p1, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;-><init>(Landroid/os/Handler;Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;)V

    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mStore:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;
    .registers 9

    .line 147
    new-instance v2, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;

    .line 149
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    const-string/jumbo v1, "statusbar"

    .line 150
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    const-string/jumbo v3, "voiceinteraction"

    .line 151
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v3

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;-><init>(Landroid/content/Context;Landroid/app/ActivityTaskManager;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/internal/app/IVoiceInteractionManagerService;)V

    .line 155
    new-instance v0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;

    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    .line 158
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/hardware/biometrics/BiometricManager;

    const-class v1, Landroid/hardware/face/FaceManager;

    .line 159
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/hardware/face/FaceManager;

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 160
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/hardware/fingerprint/FingerprintManager;

    const-class v1, Landroid/os/PowerManager;

    .line 161
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/os/PowerManager;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, Landroid/os/PowerManager;

    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 162
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/pm/UserManagerInternal;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;-><init>(Landroid/content/Context;Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;Landroid/hardware/biometrics/BiometricManager;Landroid/hardware/face/FaceManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/PowerManager;Lcom/android/server/pm/UserManagerInternal;)V

    return-object v0
.end method


# virtual methods
.method public disableSecureLockDevice(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;Z)I
    .registers 6

    .line 497
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->isSecureLockDeviceEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_13

    .line 498
    sget-boolean p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->DEBUG:Z

    if-eqz p0, :cond_12

    .line 499
    const-string p0, "SecureLockDeviceService"

    const-string p1, "Secure lock device is already disabled."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return v0

    .line 504
    :cond_13
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mStore:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;

    invoke-virtual {p2}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;->retrieveSecureLockDeviceClientId()I

    move-result p2

    .line 505
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const/16 v1, -0x2710

    if-eq p2, v1, :cond_43

    if-eq p1, p2, :cond_43

    .line 511
    const-string p0, "SecureLockDeviceService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " attempted to disable secure lock device enabled by user "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x7

    return p0

    .line 516
    :cond_43
    iget-boolean p1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSkipSecurityFeaturesForTest:Z

    if-eqz p1, :cond_4e

    .line 519
    iget-object p1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mLockSettingsInternal:Lcom/android/server/locksettings/LockSettingsInternal;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsInternal;->disableSecureLockDevice(IZ)V

    goto :goto_53

    .line 524
    :cond_4e
    iget-object p1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mLockSettingsInternal:Lcom/android/server/locksettings/LockSettingsInternal;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsInternal;->disableSecureLockDevice(IZ)V

    .line 527
    :goto_53
    invoke-virtual {p0, p2}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->disableSecurityFeatures(I)V

    .line 529
    iget-object p1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mStore:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;

    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;->storeSecureLockDeviceDisabled()V

    .line 530
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->notifyAllSecureLockDeviceListenersEnabledStatusUpdated()V

    .line 531
    const-string p1, "SecureLockDeviceService"

    const-string p2, "Secure lock device is disabled"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object p1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mBiometricAuthStateLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x0

    .line 534
    :try_start_69
    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mUserAuthenticatedWithStrongBiometric:Landroid/os/UserHandle;

    .line 535
    monitor-exit p1

    return v0

    :catchall_6d
    move-exception p0

    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public final disableSecurityFeatures(I)V
    .registers 2

    .line 659
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceSettingsManager:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;

    invoke-interface {p0, p1}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;->restoreOriginalSettings(I)V

    return-void
.end method

.method public enableSecureLockDevice(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;)I
    .registers 7

    .line 435
    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->getSecureLockDeviceAvailability(Landroid/os/UserHandle;)I

    move-result p2

    if-eqz p2, :cond_7

    return p2

    .line 440
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->isSecureLockDeviceEnabled()Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 441
    sget-boolean p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->DEBUG:Z

    if-eqz p0, :cond_18

    .line 442
    const-string p0, "SecureLockDeviceService"

    const-string p1, "Device is already in secure lock device."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 p0, 0x6

    return p0

    .line 449
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->switchUserToForeground(Landroid/os/UserHandle;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_41

    .line 451
    sget-boolean p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->DEBUG:Z

    if-eqz p0, :cond_40

    .line 452
    const-string p0, "SecureLockDeviceService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to switch calling user "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to foreground, returning error."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return v0

    .line 458
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->setSecureLockDeviceStrongAuthFlags()V

    .line 460
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v0, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 462
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerInternal;->lockNow()V

    .line 464
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 465
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceSettingsManager:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;

    invoke-interface {p2, p1}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;->enableSecurityFeatures(I)V

    .line 466
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mStore:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;

    invoke-virtual {p2, p1}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;->storeSecureLockDeviceEnabled(I)V

    .line 468
    iget-object p1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mBiometricAuthStateLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x0

    .line 469
    :try_start_65
    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mUserAuthenticatedWithStrongBiometric:Landroid/os/UserHandle;

    .line 470
    monitor-exit p1
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_73

    .line 472
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->notifyAllSecureLockDeviceListenersEnabledStatusUpdated()V

    .line 473
    const-string p0, "SecureLockDeviceService"

    const-string p1, "Secure lock device is enabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_73
    move-exception p0

    .line 470
    :try_start_74
    monitor-exit p1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw p0
.end method

.method public final enableSecureLockDeviceAfterBoot()Z
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mStore:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;

    invoke-virtual {v0}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;->retrieveSecureLockDeviceClientId()I

    move-result v0

    .line 185
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->switchUserToForeground(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 188
    sget-boolean p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->DEBUG:Z

    if-eqz p0, :cond_1b

    .line 189
    const-string p0, "SecureLockDeviceService"

    const-string v0, "Failed to switch calling user to foreground."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 p0, 0x0

    return p0

    .line 193
    :cond_1d
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceSettingsManager:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;

    invoke-interface {v1, v0}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;->enableSecurityFeaturesFromBoot(I)V

    .line 195
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mBiometricAuthStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 196
    :try_start_26
    iput-object v2, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mUserAuthenticatedWithStrongBiometric:Landroid/os/UserHandle;

    .line 197
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_3e

    .line 199
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mStore:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;

    invoke-virtual {v1, v0}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;->storeSecureLockDeviceEnabled(I)V

    .line 200
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->notifyAllSecureLockDeviceListenersEnabledStatusUpdated()V

    .line 202
    sget-boolean p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->DEBUG:Z

    if-eqz p0, :cond_3c

    .line 203
    const-string p0, "SecureLockDeviceService"

    const-string v0, "Secure lock device is re-enabled after boot"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    const/4 p0, 0x1

    return p0

    :catchall_3e
    move-exception p0

    .line 197
    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public getSecureLockDeviceAvailability(Landroid/os/UserHandle;)I
    .registers 4

    .line 371
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    const-string v1, "SecureLockDeviceService"

    if-nez v0, :cond_d

    .line 372
    const-string p0, "BiometricManager not available: secure lock device is unsupported."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 374
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->hasStrongBiometricSensor()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 375
    sget-boolean p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->DEBUG:Z

    if-eqz p0, :cond_1c

    .line 376
    const-string p0, "Secure lock device unavailable: device does not have biometricsensors of sufficient strength."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 p0, 0x5

    return p0

    .line 380
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->hasStrongBiometricsEnrolled(Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_2f

    .line 381
    sget-boolean p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->DEBUG:Z

    if-eqz p0, :cond_2d

    .line 382
    const-string p0, "Secure lock device unavailable: device is missing enrollments for strong biometric sensor."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/4 p0, 0x4

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public getStore()Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mStore:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;

    return-object p0
.end method

.method public final hasStrongBiometricSensor()Z
    .registers 3

    .line 392
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricManager;->getSensorProperties()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/SensorProperties;

    .line 393
    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public final hasStrongBiometricsEnrolled(Landroid/os/UserHandle;)Z
    .registers 5

    .line 401
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 402
    const-class p1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/biometrics/BiometricManager;

    if-nez p0, :cond_19

    .line 405
    const-string p0, "SecureLockDeviceService"

    const-string p1, "BiometricManager not available, strong biometric enrollment cannot be checked."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 410
    :cond_19
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricManager;->getEnrollmentStatus()Ljava/util/Map;

    move-result-object p0

    .line 412
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricEnrollmentStatus;

    .line 413
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricEnrollmentStatus;->getStrength()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_25

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricEnrollmentStatus;->getEnrollmentCount()I

    move-result p1

    if-lez p1, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_41
    return v0
.end method

.method public hasUserCompletedTwoFactorAuthentication(Landroid/os/UserHandle;)Z
    .registers 3

    .line 564
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mBiometricAuthStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_3
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mUserAuthenticatedWithStrongBiometric:Landroid/os/UserHandle;

    if-eqz p0, :cond_11

    .line 566
    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    .line 567
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public isSecureLockDeviceEnabled()Z
    .registers 1

    .line 580
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mStore:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;

    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;->retrieveSecureLockDeviceEnabled()Z

    move-result p0

    return p0
.end method

.method public final listenForBiometricEnrollmentChanges()V
    .registers 4

    .line 209
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mFaceManager:Landroid/hardware/face/FaceManager;

    const-string v1, "SecureLockDeviceService"

    if-eqz v0, :cond_f

    .line 210
    new-instance v2, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$1;

    invoke-direct {v2, p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$1;-><init>(Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;)V

    invoke-virtual {v0, v2}, Landroid/hardware/face/FaceManager;->registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V

    goto :goto_14

    .line 219
    :cond_f
    const-string v0, "FaceManager is null: not registering listener"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_14
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_21

    .line 223
    new-instance v1, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$2;

    invoke-direct {v1, p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$2;-><init>(Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;)V

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V

    return-void

    .line 232
    :cond_21
    const-string p0, "FingerprintManager is null: not registering listener"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final notifyAllSecureLockDeviceListenersEnabledStatusUpdated()V
    .registers 10

    .line 616
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->isSecureLockDeviceEnabled()Z

    move-result v0

    .line 617
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_a
    if-lez v1, :cond_e7

    add-int/lit8 v1, v1, -0x1

    .line 621
    :try_start_e
    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListeners:Landroid/os/RemoteCallbackList;

    .line 622
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;

    .line 624
    iget-object v3, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListeners:Landroid/os/RemoteCallbackList;

    .line 625
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_40

    .line 626
    const-string v4, "SecureLockDeviceService"

    if-nez v3, :cond_43

    .line 627
    :try_start_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find UserHandle for listener "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-interface {v2}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", skipping notification"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 627
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catchall_40
    move-exception v0

    goto/16 :goto_e1

    .line 633
    :cond_43
    invoke-virtual {p0, v3}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->getSecureLockDeviceAvailability(Landroid/os/UserHandle;)I

    move-result v5

    .line 635
    sget-boolean v6, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->DEBUG:Z
    :try_end_49
    .catchall {:try_start_22 .. :try_end_49} :catchall_40

    const-string v7, " for user "

    if-eqz v6, :cond_7f

    .line 636
    :try_start_4d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notifying listener "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " of secure lock device status update: enabled = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", available = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 636
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_4d .. :try_end_7f} :catchall_40

    .line 642
    :cond_7f
    :try_start_7f
    invoke-interface {v2, v5}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;->onSecureLockDeviceAvailableStatusChanged(I)V

    .line 643
    invoke-interface {v2, v0}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;->onSecureLockDeviceEnabledStatusChanged(Z)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_85} :catch_88
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_85} :catch_86
    .catchall {:try_start_7f .. :try_end_85} :catchall_40

    goto :goto_a

    :catch_86
    move-exception v5

    goto :goto_8a

    :catch_88
    move-exception v5

    goto :goto_b8

    .line 648
    :goto_8a
    :try_start_8a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception thrown by listener "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " during callback: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 648
    invoke-static {v4, v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    iget-object v3, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto/16 :goto_a

    .line 645
    :goto_b8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to notify listener "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", RemoteException thrown: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 645
    invoke-static {v4, v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_df
    .catchall {:try_start_8a .. :try_end_df} :catchall_40

    goto/16 :goto_a

    .line 654
    :goto_e1
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 655
    throw v0

    .line 654
    :cond_e7
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifySecureLockDeviceAvailabilityForUser(I)V
    .registers 10

    .line 671
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_3
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_bf

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_c1

    .line 675
    :try_start_c
    iget-object v3, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListeners:Landroid/os/RemoteCallbackList;

    .line 676
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;

    .line 677
    iget-object v4, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListeners:Landroid/os/RemoteCallbackList;

    .line 678
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    if-eqz v4, :cond_b5

    .line 682
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-eq v5, p1, :cond_26

    goto/16 :goto_b5

    .line 687
    :cond_26
    invoke-virtual {p0, v4}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->getSecureLockDeviceAvailability(Landroid/os/UserHandle;)I

    move-result v4

    .line 690
    sget-boolean v5, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->DEBUG:Z

    if-eqz v5, :cond_5b

    .line 691
    const-string v5, "SecureLockDeviceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " of secure lock device availability update: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_c .. :try_end_58} :catchall_59

    goto :goto_5b

    :catchall_59
    move-exception p1

    goto :goto_b9

    .line 696
    :cond_5b
    :goto_5b
    :try_start_5b
    invoke-interface {v3, v4}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;->onSecureLockDeviceAvailableStatusChanged(I)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_5e} :catch_8d
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f
    .catchall {:try_start_5b .. :try_end_5e} :catchall_59

    goto :goto_b5

    :catch_5f
    move-exception v4

    .line 702
    :try_start_60
    const-string v5, "SecureLockDeviceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown by listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " during callback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 704
    iget-object v4, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_b5

    :catch_8d
    move-exception v4

    .line 699
    const-string v5, "SecureLockDeviceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to notify listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", RemoteException thrown: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b5
    .catchall {:try_start_60 .. :try_end_b5} :catchall_59

    :cond_b5
    :goto_b5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    .line 708
    :goto_b9
    :try_start_b9
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 709
    throw p1

    :catchall_bf
    move-exception p0

    goto :goto_c8

    .line 708
    :cond_c1
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 710
    monitor-exit v0

    return-void

    :goto_c8
    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_b9 .. :try_end_c9} :catchall_bf

    throw p0
.end method

.method public onBootCompleted()V
    .registers 7

    .line 334
    sget-boolean v0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->DEBUG:Z

    const-string v1, "SecureLockDeviceService"

    if-eqz v0, :cond_c

    .line 335
    const-string/jumbo v2, "onBootCompleted()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->listenForBiometricEnrollmentChanges()V

    .line 340
    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceSettingsManager:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;

    iget-object v3, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    .line 341
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/hardware/usb/UsbManager;

    .line 342
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    const-class v5, Landroid/hardware/usb/IUsbManagerInternal;

    .line 343
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/IUsbManagerInternal;

    .line 340
    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;->initSettingsControllerDependencies(Landroid/app/admin/DevicePolicyManager;Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/IUsbManagerInternal;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->isSecureLockDeviceEnabled()Z

    move-result v2

    if-eqz v2, :cond_48

    if-eqz v0, :cond_3d

    .line 348
    const-string v0, "Restoring secure lock device enabled state after boot"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->enableSecureLockDeviceAfterBoot()Z

    move-result p0

    if-nez p0, :cond_48

    .line 352
    const-string p0, "Failed to re-enable secure lock device after boot"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return-void
.end method

.method public onLockSettingsReady()V
    .registers 3

    .line 317
    sget-boolean v0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 318
    const-string v0, "SecureLockDeviceService"

    const-string/jumbo v1, "onLockSettingsReady()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_c
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mActivityManager:Landroid/app/ActivityManager;

    .line 321
    const-class v0, Lcom/android/server/locksettings/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsInternal;

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mLockSettingsInternal:Lcom/android/server/locksettings/LockSettingsInternal;

    .line 322
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_43

    .line 323
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 324
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mStrongAuthTracker:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$StrongAuthTracker;

    if-nez v0, :cond_3c

    .line 325
    new-instance v0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$StrongAuthTracker;

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$StrongAuthTracker;-><init>(Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mStrongAuthTracker:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$StrongAuthTracker;

    .line 327
    :cond_3c
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mStrongAuthTracker:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$StrongAuthTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    .line 329
    :cond_43
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-void
.end method

.method public onStrongBiometricAuthenticationSuccess(Landroid/os/UserHandle;)V
    .registers 5

    .line 549
    const-string v0, "SecureLockDeviceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received strong biometric authentication success for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", awaiting device entry completion to disable secure lock device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mBiometricAuthStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_1e
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mUserAuthenticatedWithStrongBiometric:Landroid/os/UserHandle;

    .line 553
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_22

    throw p0
.end method

.method public registerSecureLockDeviceStatusListener(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;)V
    .registers 10

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->getSecureLockDeviceAvailability(Landroid/os/UserHandle;)I

    move-result v0

    .line 244
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->isSecureLockDeviceEnabled()Z

    move-result v2

    .line 248
    iget-object v3, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 249
    sget-boolean v3, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->DEBUG:Z

    if-eqz v3, :cond_3d

    .line 250
    const-string v4, "SecureLockDeviceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Registered listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_3a

    goto :goto_3d

    :catchall_3a
    move-exception p0

    goto/16 :goto_ca

    .line 254
    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-interface {p2, v0}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;->onSecureLockDeviceAvailableStatusChanged(I)V

    .line 255
    invoke-interface {p2, v2}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;->onSecureLockDeviceEnabledStatusChanged(Z)V

    if-eqz v3, :cond_c8

    .line 258
    const-string v3, "SecureLockDeviceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sent initial enabled state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " and available state "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to listener "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-interface {p2}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "for user "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_7b} :catch_7c
    .catchall {:try_start_3d .. :try_end_7b} :catchall_3a

    goto :goto_c8

    :catch_7c
    move-exception v0

    .line 264
    :try_start_7d
    const-string v2, "SecureLockDeviceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed initial callback to listener for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", unregistering listener."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-static {v2, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_c8

    .line 269
    :cond_a2
    const-string p0, "SecureLockDeviceService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register listener "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for user "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_c8
    :goto_c8
    monitor-exit v1

    return-void

    :goto_ca
    monitor-exit v1
    :try_end_cb
    .catchall {:try_start_7d .. :try_end_cb} :catchall_3a

    throw p0
.end method

.method public final setSecureLockDeviceStrongAuthFlags()V
    .registers 7

    .line 302
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1d

    aget v3, v0, v2

    .line 303
    iget-object v4, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x800

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 306
    iget-object v4, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x1000

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return-void
.end method

.method public setSecureLockDeviceTestStatus(Z)V
    .registers 4

    .line 718
    sget-boolean v0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSecureLockDeviceTestStatus(isTestMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecureLockDeviceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_20
    iput-boolean p1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSkipSecurityFeaturesForTest:Z

    .line 722
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceSettingsManager:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;

    invoke-interface {p0, p1}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;->setSkipSecurityFeaturesForTest(Z)V

    return-void
.end method

.method public final start()V
    .registers 2

    .line 174
    const-class v0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final switchUserToForeground(Landroid/os/UserHandle;)Z
    .registers 7

    .line 594
    const-string v0, "SecureLockDeviceService"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManager;->isProfileForeground(Landroid/os/UserHandle;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_65

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Target user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not currently in the foreground. Attempting switch before locking."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->switchUser(Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_4c

    .line 598
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to switch to user "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", returning error "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_4a
    move-exception p0

    goto :goto_66

    .line 602
    :cond_4c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User switch to "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " initiated."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_65} :catch_4a

    :cond_65
    return v3

    .line 605
    :goto_66
    const-string p1, "Exception during user switch attempt"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public unregisterSecureLockDeviceStatusListener(Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;)V
    .registers 5

    .line 281
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_3
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mSecureLockDeviceStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 283
    sget-boolean p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->DEBUG:Z

    if-eqz p0, :cond_46

    .line 284
    const-string p0, "SecureLockDeviceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistered listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :catchall_2a
    move-exception p0

    goto :goto_48

    .line 287
    :cond_2c
    const-string p0, "SecureLockDeviceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unregister listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_46
    :goto_46
    monitor-exit v0

    return-void

    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_2a

    throw p0
.end method
