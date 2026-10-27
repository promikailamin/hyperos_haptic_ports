.class public Lcom/android/server/security/AttestationVerificationManagerService;
.super Lcom/android/server/SystemService;
.source "AttestationVerificationManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AVF"


# instance fields
.field private final mPeerDeviceVerifier:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic -$$Nest$mverifyAttestationForAllVerifiers(Lcom/android/server/security/AttestationVerificationManagerService;Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/security/AttestationVerificationManagerService;->verifyAttestationForAllVerifiers(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Lcom/android/server/security/AttestationVerificationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/security/AttestationVerificationManagerService$1;-><init>(Lcom/android/server/security/AttestationVerificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mService:Landroid/os/IBinder;

    .line 53
    new-instance v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    invoke-direct {v0, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mPeerDeviceVerifier:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    .line 54
    return-void
.end method

.method private verifyAttestationForAllVerifiers(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    .registers 9
    .param p1, "profile"    # Landroid/security/attestationverification/AttestationProfile;
    .param p2, "localBindingType"    # I
    .param p3, "requirements"    # Landroid/os/Bundle;
    .param p4, "attestation"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/attestationverification/AttestationProfile;",
            "I",
            "Landroid/os/Bundle;",
            "[B",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/security/attestationverification/IVerificationResult;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p5, "resultCallback":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/security/attestationverification/IVerificationResult;>;"
    new-instance v0, Landroid/security/attestationverification/IVerificationResult;

    invoke-direct {v0}, Landroid/security/attestationverification/IVerificationResult;-><init>()V

    .line 93
    .local v0, "result":Landroid/security/attestationverification/IVerificationResult;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/security/attestationverification/IVerificationResult;->token:Landroid/security/attestationverification/VerificationToken;

    .line 94
    invoke-virtual {p1}, Landroid/security/attestationverification/AttestationProfile;->getAttestationProfileId()I

    move-result v1

    const-string v2, "AVF"

    packed-switch v1, :pswitch_data_42

    .line 111
    const-string v1, "No profile found, defaulting."

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x0

    iput v1, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    goto :goto_3e

    .line 106
    :pswitch_1a
    const-string v1, "Verifying Peer Device profile."

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mPeerDeviceVerifier:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->verifyAttestation(ILandroid/os/Bundle;[B)I

    move-result v1

    iput v1, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    .line 109
    goto :goto_3e

    .line 96
    :pswitch_28
    const-string v1, "Verifying Self Trusted profile."

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    nop

    .line 99
    :try_start_2e
    invoke-static {}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->getInstance()Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    move-result-object v1

    .line 100
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->verifyAttestation(ILandroid/os/Bundle;[B)I

    move-result v1

    iput v1, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_39

    .line 103
    goto :goto_3e

    .line 101
    :catchall_39
    move-exception v1

    .line 102
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x2

    iput v2, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    .line 104
    .end local v1    # "t":Ljava/lang/Throwable;
    nop

    .line 114
    :goto_3e
    invoke-virtual {p5, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 115
    return-void

    :pswitch_data_42
    .packed-switch 0x2
        :pswitch_28
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 119
    const-string v0, "AVF"

    const-string v1, "Started"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mService:Landroid/os/IBinder;

    const-string v1, "attestation_verification"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/security/AttestationVerificationManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 121
    return-void
.end method
