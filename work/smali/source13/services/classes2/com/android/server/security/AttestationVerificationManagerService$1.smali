.class Lcom/android/server/security/AttestationVerificationManagerService$1;
.super Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;
.source "AttestationVerificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/AttestationVerificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/security/AttestationVerificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/security/AttestationVerificationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/security/AttestationVerificationManagerService;

    .line 56
    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-direct {p0}, Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;-><init>()V

    return-void
.end method

.method private enforceUsePermission()V
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/security/AttestationVerificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_ATTESTATION_VERIFICATION_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method


# virtual methods
.method public verifyAttestation(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    .registers 14
    .param p1, "profile"    # Landroid/security/attestationverification/AttestationProfile;
    .param p2, "localBindingType"    # I
    .param p3, "requirements"    # Landroid/os/Bundle;
    .param p4, "attestation"    # [B
    .param p5, "resultCallback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const-string v0, "AVF"

    invoke-direct {p0}, Lcom/android/server/security/AttestationVerificationManagerService$1;->enforceUsePermission()V

    .line 66
    :try_start_5
    const-string/jumbo v1, "verifyAttestation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/security/AttestationVerificationManagerService;->-$$Nest$mverifyAttestationForAllVerifiers(Lcom/android/server/security/AttestationVerificationManagerService;Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_17

    .line 72
    nop

    .line 73
    return-void

    .line 69
    :catchall_17
    move-exception v1

    .line 70
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "failed to verify attestation"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const-class v0, Landroid/os/RemoteException;

    invoke-static {v1, v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public verifyToken(Landroid/security/attestationverification/VerificationToken;Landroid/os/ParcelDuration;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .param p1, "token"    # Landroid/security/attestationverification/VerificationToken;
    .param p2, "parcelDuration"    # Landroid/os/ParcelDuration;
    .param p3, "resultCallback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lcom/android/server/security/AttestationVerificationManagerService$1;->enforceUsePermission()V

    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method
