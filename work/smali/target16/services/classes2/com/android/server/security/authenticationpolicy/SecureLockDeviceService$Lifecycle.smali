.class public final Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "SecureLockDeviceService.java"


# instance fields
.field public final mService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 732
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 733
    invoke-static {p1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->create(Landroid/content/Context;)Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$Lifecycle;->mService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_a

    .line 746
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$Lifecycle;->mService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;

    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->onLockSettingsReady()V

    return-void

    :cond_a
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_13

    .line 748
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$Lifecycle;->mService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;

    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->onBootCompleted()V

    :cond_13
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 738
    const-string v0, "Starting SecureLockDeviceService"

    const-string v1, "SecureLockDeviceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$Lifecycle;->mService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->-$$Nest$mstart(Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;)V

    .line 740
    const-string p0, "Started SecureLockDeviceService"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
