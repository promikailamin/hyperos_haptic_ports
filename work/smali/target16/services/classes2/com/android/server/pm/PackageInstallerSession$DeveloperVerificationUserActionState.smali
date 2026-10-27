.class public Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"


# instance fields
.field public final mFuture:Ljava/util/concurrent/CompletableFuture;

.field public final mUserActionNeededReason:I

.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;ILjava/util/concurrent/CompletableFuture;)V
    .registers 4

    .line 5530
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5531
    iput p2, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;->mUserActionNeededReason:I

    .line 5532
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;->mFuture:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public onUserResponseReceived(I)V
    .registers 4

    if-eqz p1, :cond_34

    const/4 v0, 0x1

    if-eq p1, v0, :cond_34

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2c

    const/4 v0, 0x3

    if-ne p1, v0, :cond_15

    .line 5553
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofSuccess()Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    .line 5555
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5549
    :cond_2c
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1, p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mstartDeveloperVerificationSession(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/concurrent/CompletableFuture;Z)V

    return-void

    :cond_34
    if-nez p1, :cond_39

    .line 5540
    const-string p1, "User could not be notified about the pending verification."

    goto :goto_3b

    .line 5541
    :cond_39
    const-string p1, "User denied proceeding with the pending verification."

    .line 5542
    :goto_3b
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;->mFuture:Ljava/util/concurrent/CompletableFuture;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationUserActionState;->mUserActionNeededReason:I

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;->ofFailure(ILjava/lang/String;)Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
