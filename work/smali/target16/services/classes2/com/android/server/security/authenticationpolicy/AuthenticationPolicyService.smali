.class public Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;
.super Lcom/android/server/SystemService;
.source "AuthenticationPolicyService.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAuthenticationStateListener:Landroid/hardware/biometrics/AuthenticationStateListener;

.field public final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field public final mEnableFailedAuthLock:Z

.field public final mEnableFailedAuthLockToggle:Z

.field final mFailedAttemptsForUser:Landroid/util/SparseIntArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mLastLockedTimestamp:Landroid/util/SparseLongArray;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockSettings:Lcom/android/server/locksettings/LockSettingsInternal;

.field public final mLockSettingsStateListener:Lcom/android/server/locksettings/LockSettingsStateListener;

.field public final mMaxAllowedFailedAuthAttempts:I

.field public mSecureLockDeviceService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

.field public final mService:Landroid/os/IBinder;

.field public final mUserManager:Lcom/android/server/pm/UserManagerInternal;

.field public mWatchRangingService:Lcom/android/server/security/authenticationpolicy/WatchRangingServiceInternal;

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecureLockDeviceService(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mSecureLockDeviceService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWatchRangingService(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Lcom/android/server/security/authenticationpolicy/WatchRangingServiceInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mWatchRangingService:Lcom/android/server/security/authenticationpolicy/WatchRangingServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$menforceCrossUserPermission(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->enforceCrossUserPermission(Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleReportBiometricAuthError(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->handleReportBiometricAuthError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleReportBiometricAuthFailure(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->handleReportBiometricAuthFailure(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleReportBiometricAuthSuccess(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->handleReportBiometricAuthSuccess(Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleReportPrimaryAuthAttempt(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;ZI)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->handleReportPrimaryAuthAttempt(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 93
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 120
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 5

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mFailedAttemptsForUser:Landroid/util/SparseIntArray;

    .line 117
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLastLockedTimestamp:Landroid/util/SparseLongArray;

    .line 209
    new-instance v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$1;-><init>(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLockSettingsStateListener:Lcom/android/server/locksettings/LockSettingsStateListener;

    .line 228
    new-instance v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$2;

    invoke-direct {v0, p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$2;-><init>(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mAuthenticationStateListener:Landroid/hardware/biometrics/AuthenticationStateListener;

    .line 266
    new-instance v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$3;-><init>(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mHandler:Landroid/os/Handler;

    .line 491
    new-instance v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;

    invoke-direct {v0, p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;-><init>(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mService:Landroid/os/IBinder;

    .line 126
    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 127
    const-class p2, Lcom/android/server/locksettings/LockSettingsInternal;

    .line 128
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/locksettings/LockSettingsInternal;

    .line 127
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLockSettings:Lcom/android/server/locksettings/LockSettingsInternal;

    .line 129
    const-class p2, Landroid/hardware/biometrics/BiometricManager;

    .line 130
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/biometrics/BiometricManager;

    .line 129
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 131
    const-class p2, Landroid/app/KeyguardManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 132
    const-class p2, Lcom/android/server/wm/WindowManagerInternal;

    .line 133
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowManagerInternal;

    .line 132
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 134
    const-class p2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    .line 136
    const-class p2, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    .line 137
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    .line 136
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mSecureLockDeviceService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1110187

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mEnableFailedAuthLock:Z

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e00e1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mMaxAllowedFailedAuthAttempts:I

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110188

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mEnableFailedAuthLockToggle:Z

    return-void
.end method

.method public static collectTimeElapsedSinceLastLocked(JJI)V
    .registers 12

    const/4 v0, 0x1

    if-eqz p4, :cond_6

    if-eq p4, v0, :cond_8

    const/4 v0, 0x0

    :cond_6
    :goto_6
    move v6, v0

    goto :goto_a

    :cond_8
    const/4 v0, 0x2

    goto :goto_6

    .line 431
    :goto_a
    sget-boolean p4, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->DEBUG:Z

    if-eqz p4, :cond_34

    .line 432
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "collectTimeElapsedSinceLastLockedForUser: lastLockedTime="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", authTime="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", unlockType="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "AuthenticationPolicyService"

    invoke-static {v0, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    cmp-long p4, p0, p2

    if-lez p4, :cond_39

    return-void

    :cond_39
    const/16 v1, 0x334

    move-wide v2, p0

    move-wide v4, p2

    .line 444
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJJI)V

    return-void
.end method


# virtual methods
.method public final enforceCrossUserPermission(Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 4

    .line 483
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p1, v0, :cond_b

    return-void

    .line 486
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleReportBiometricAuthError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V
    .registers 4

    .line 322
    sget-boolean v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->DEBUG:Z

    if-eqz v0, :cond_42

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleReportBiometricAuthError: biometricSourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->getRequestReason()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->getErrCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->getErrString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    const-string v1, "AuthenticationPolicyService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_42
    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->getErrCode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_54

    .line 333
    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->getErrCode()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_52

    goto :goto_54

    :cond_52
    const/4 p1, 0x0

    goto :goto_55

    :cond_54
    :goto_54
    const/4 p1, 0x1

    .line 335
    :goto_55
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mSecureLockDeviceService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    .line 336
    invoke-virtual {v0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;->isSecureLockDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_67

    if-eqz p1, :cond_67

    .line 341
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 p1, 0x800

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    :cond_67
    return-void
.end method

.method public final handleReportBiometricAuthFailure(I)V
    .registers 4

    .line 315
    sget-boolean v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleReportBiometricAuthFailure: userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthenticationPolicyService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 318
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->reportAuthAttempt(IZI)V

    return-void
.end method

.method public final handleReportBiometricAuthSuccess(Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V
    .registers 5

    .line 298
    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->isIsStrongBiometric()Z

    move-result v0

    .line 299
    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->getUserId()I

    move-result p1

    .line 301
    sget-boolean v1, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->DEBUG:Z

    if-eqz v1, :cond_2a

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleReportBiometricAuthSuccess: isStrongBiometric="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthenticationPolicyService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    if-eqz v0, :cond_3d

    .line 305
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mSecureLockDeviceService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    .line 306
    invoke-virtual {v0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;->isSecureLockDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 309
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mSecureLockDeviceService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;->onStrongBiometricAuthenticationSuccess(Landroid/os/UserHandle;)V

    :cond_3d
    const/4 v0, 0x1

    .line 311
    invoke-virtual {p0, v0, v0, p1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->reportAuthAttempt(IZI)V

    return-void
.end method

.method public final handleReportPrimaryAuthAttempt(ZI)V
    .registers 5

    .line 290
    sget-boolean v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleReportPrimaryAuthAttempt: success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthenticationPolicyService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 v0, 0x0

    .line 294
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->reportAuthAttempt(IZI)V

    return-void
.end method

.method public init()V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLockSettings:Lcom/android/server/locksettings/LockSettingsInternal;

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLockSettingsStateListener:Lcom/android/server/locksettings/LockSettingsStateListener;

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsInternal;->registerLockSettingsStateListener(Lcom/android/server/locksettings/LockSettingsStateListener;)V

    .line 174
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mAuthenticationStateListener:Landroid/hardware/biometrics/AuthenticationStateListener;

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricManager;->registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 176
    iget-boolean v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mEnableFailedAuthLock:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mEnableFailedAuthLockToggle:Z

    if-eqz v0, :cond_2f

    .line 177
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_24

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mayInitiateFailedAuthLockSettings(I)V

    return-void

    .line 181
    :cond_24
    const-string v0, "AuthenticationPolicyService"

    const-string v1, "No main user exists so use user 0 instead"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mayInitiateFailedAuthLockSettings(I)V

    :cond_2f
    return-void
.end method

.method public final lockDevice(I)V
    .registers 6

    .line 455
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v1, 0x200

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 460
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockDevice: userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", parentUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AuthenticationPolicyService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, p1, :cond_32

    .line 463
    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 468
    :cond_32
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->lockNow()V

    .line 472
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLastLockedTimestamp:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method

.method public final mayInitiateFailedAuthLockSettings(I)V
    .registers 5

    .line 189
    const-string v0, "disable_adaptive_auth_limit_lock"

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p1

    .line 193
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 192
    invoke-static {v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_13
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_13} :catch_14

    return-void

    .line 200
    :catch_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiate the failed auth lock settings for userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthenticationPolicyService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 204
    iget-boolean p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mEnableFailedAuthLock:Z

    xor-int/lit8 p0, p0, 0x1

    .line 201
    invoke-static {v1, v0, p0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_7

    .line 160
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->init()V

    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 153
    const-string v0, "authentication_policy"

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 154
    const-class v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 166
    iget-boolean p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mEnableFailedAuthLock:Z

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mEnableFailedAuthLockToggle:Z

    if-eqz p1, :cond_f

    .line 167
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mayInitiateFailedAuthLockSettings(I)V

    :cond_f
    return-void
.end method

.method public final reportAuthAttempt(IZI)V
    .registers 8

    .line 349
    iget-boolean v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mEnableFailedAuthLock:Z

    const-string v1, "AuthenticationPolicyService"

    if-nez v0, :cond_c

    .line 350
    const-string p0, "Failed auth lock is disabled by the device manufacturer"

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 355
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_3e

    :cond_1d
    if-eqz p2, :cond_3f

    .line 361
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mFailedAttemptsForUser:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseIntArray;->delete(I)V

    .line 364
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLastLockedTimestamp:Landroid/util/SparseLongArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_3e

    .line 365
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLastLockedTimestamp:Landroid/util/SparseLongArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    .line 367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 366
    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->collectTimeElapsedSinceLastLocked(JJI)V

    .line 371
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mLastLockedTimestamp:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseLongArray;->delete(I)V

    :cond_3e
    :goto_3e
    return-void

    .line 376
    :cond_3f
    iget-object p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mFailedAttemptsForUser:Landroid/util/SparseIntArray;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 377
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reportAuthAttempt: numFailedAttempts="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", userId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mFailedAttemptsForUser:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p3, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 383
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p2, p3}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p2

    if-eqz p2, :cond_80

    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p2

    if-eqz p2, :cond_80

    .line 384
    const-string p0, "Not locking the device because the device is already locked."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 388
    :cond_80
    iget p2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mMaxAllowedFailedAuthAttempts:I

    if-ge p1, p2, :cond_8a

    .line 389
    const-string p0, "Not locking the device because the number of failed attempts is below the threshold."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 397
    :cond_8a
    iget-boolean p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mEnableFailedAuthLockToggle:Z

    if-nez p1, :cond_92

    .line 398
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_cf

    .line 403
    :cond_92
    iget-object p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p1, p3}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p1

    .line 405
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 407
    iget-boolean v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->mEnableFailedAuthLock:Z

    xor-int/lit8 v0, v0, 0x1

    .line 404
    const-string v2, "disable_adaptive_auth_limit_lock"

    invoke-static {p2, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_cf

    .line 410
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "userId="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", parentUserId="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", failed auth lock is disabled by user in settings"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 417
    :cond_cf
    invoke-virtual {p0, p3}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->lockDevice(I)V

    return-void
.end method
