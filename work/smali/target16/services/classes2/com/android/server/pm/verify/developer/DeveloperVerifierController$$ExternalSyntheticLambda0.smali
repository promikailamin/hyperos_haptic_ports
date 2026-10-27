.class public final synthetic Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;

.field public final synthetic f$3:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;ILcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    iput p2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;

    iput-object p4, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    iget v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;

    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->$r8$lambda$API4qKtmNVxMdjladrkxgiGokL8(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;ILcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V

    return-void
.end method
