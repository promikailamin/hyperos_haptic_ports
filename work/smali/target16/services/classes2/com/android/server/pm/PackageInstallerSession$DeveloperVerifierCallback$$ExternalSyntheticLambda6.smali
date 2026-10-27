.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;

.field public final synthetic f$1:Landroid/content/pm/verify/developer/DeveloperVerificationStatus;

.field public final synthetic f$2:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;Landroid/content/pm/verify/developer/DeveloperVerificationStatus;Landroid/os/PersistableBundle;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda6;->f$1:Landroid/content/pm/verify/developer/DeveloperVerificationStatus;

    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda6;->f$2:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda6;->f$1:Landroid/content/pm/verify/developer/DeveloperVerificationStatus;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback$$ExternalSyntheticLambda6;->f$2:Landroid/os/PersistableBundle;

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->$r8$lambda$xfrYFZOMOheXoYtA8DVgybqa8VQ(Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;Landroid/content/pm/verify/developer/DeveloperVerificationStatus;Landroid/os/PersistableBundle;)V

    return-void
.end method
