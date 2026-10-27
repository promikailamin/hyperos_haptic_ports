.class public Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$1;
.super Landroid/hardware/biometrics/BiometricStateListener;
.source "SecureLockDeviceService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$1;->this$0:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentsChanged(IIZ)V
    .registers 4

    .line 215
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$1;->this$0:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;

    invoke-static {p0, p1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->-$$Nest$mnotifySecureLockDeviceAvailabilityForUser(Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;I)V

    return-void
.end method
