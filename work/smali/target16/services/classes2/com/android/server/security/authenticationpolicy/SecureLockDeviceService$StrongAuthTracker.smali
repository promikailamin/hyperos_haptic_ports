.class public Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "SecureLockDeviceService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;Landroid/content/Context;)V
    .registers 3

    .line 755
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$StrongAuthTracker;->this$0:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;

    .line 756
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final containsFlag(II)Z
    .registers 3

    .line 0
    and-int p0, p1, p2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized onStrongAuthRequiredChanged(I)V
    .registers 4

    monitor-enter p0

    .line 765
    :try_start_1
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$StrongAuthTracker;->this$0:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;

    invoke-virtual {v0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->isSecureLockDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 766
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p1

    const/16 v0, 0x800

    invoke-virtual {p0, p1, v0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$StrongAuthTracker;->containsFlag(II)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 769
    const-string p1, "SecureLockDeviceService"

    const-string v0, "Primary auth is required for secure lock device; reset pending biometric auth success state."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object p1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$StrongAuthTracker;->this$0:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;

    invoke-static {p1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->-$$Nest$fgetmBiometricAuthStateLock(Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_2e

    .line 772
    :try_start_23
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$StrongAuthTracker;->this$0:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->-$$Nest$fputmUserAuthenticatedWithStrongBiometric(Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;Landroid/os/UserHandle;)V

    .line 773
    monitor-exit p1

    goto :goto_30

    :catchall_2b
    move-exception v0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p1

    goto :goto_32

    .line 775
    :cond_30
    :goto_30
    monitor-exit p0

    return-void

    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2e

    throw p1
.end method
