.class public final synthetic Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda6;->f$0:I

    iput-object p2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda6;->f$0:I

    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;

    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->$r8$lambda$lYoN4ViONfbnwPwH5cccQenFldM(ILcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method
