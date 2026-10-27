.class public Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"


# instance fields
.field public final mFailedMessage:Ljava/lang/String;

.field public final mSuccess:Z

.field public final mVerificationFailureReason:I


# direct methods
.method public constructor <init>(ZILjava/lang/String;)V
    .registers 4

    .line 3802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3803
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->mSuccess:Z

    .line 3804
    iput p2, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->mVerificationFailureReason:I

    .line 3805
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->mFailedMessage:Ljava/lang/String;

    return-void
.end method

.method public static ofFailure(ILjava/lang/String;)Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;
    .registers 4

    .line 3793
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    const/4 v1, 0x0

    .line 3796
    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$smgetVerificationFailureReason(I)I

    move-result p0

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;-><init>(ZILjava/lang/String;)V

    return-object v0
.end method

.method public static ofSuccess()Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;
    .registers 4

    .line 3785
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;-><init>(ZILjava/lang/String;)V

    return-object v0
.end method
