.class final Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;
.super Lcom/android/server/pm/HandlerParams;
.source "VerificationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VerificationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MultiPackageVerificationParams"
.end annotation


# instance fields
.field private final mChildParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/VerificationParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field private final mVerificationState:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/pm/VerificationParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/VerificationParams;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .registers 6
    .param p1, "parent"    # Lcom/android/server/pm/VerificationParams;
    .param p3, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/VerificationParams;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/VerificationParams;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 808
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/VerificationParams;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/VerificationParams;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/HandlerParams;-><init>(Landroid/os/UserHandle;Lcom/android/server/pm/PackageManagerService;)V

    .line 809
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_33

    .line 812
    iput-object p2, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    .line 814
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 815
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/VerificationParams;

    .line 816
    .local v1, "childParams":Lcom/android/server/pm/VerificationParams;
    iput-object p0, v1, Lcom/android/server/pm/VerificationParams;->mParentVerificationParams:Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;

    .line 814
    .end local v1    # "childParams":Lcom/android/server/pm/VerificationParams;
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 818
    .end local v0    # "i":I
    :cond_21
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mVerificationState:Ljava/util/Set;

    .line 819
    iget-object v0, p1, Lcom/android/server/pm/VerificationParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iput-object v0, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 820
    return-void

    .line 810
    :cond_33
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "No child sessions found!"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method handleReturnCode()V
    .registers 3

    .line 831
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/VerificationParams;

    .line 832
    .local v1, "params":Lcom/android/server/pm/VerificationParams;
    invoke-virtual {v1}, Lcom/android/server/pm/VerificationParams;->handleReturnCode()V

    .line 833
    .end local v1    # "params":Lcom/android/server/pm/VerificationParams;
    goto :goto_6

    .line 834
    :cond_16
    return-void
.end method

.method handleStartCopy()V
    .registers 3

    .line 824
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/VerificationParams;

    .line 825
    .local v1, "params":Lcom/android/server/pm/VerificationParams;
    invoke-virtual {v1}, Lcom/android/server/pm/VerificationParams;->handleStartCopy()V

    .line 826
    .end local v1    # "params":Lcom/android/server/pm/VerificationParams;
    goto :goto_6

    .line 827
    :cond_16
    return-void
.end method

.method trySendVerificationCompleteNotification(Lcom/android/server/pm/VerificationParams;)V
    .registers 8
    .param p1, "child"    # Lcom/android/server/pm/VerificationParams;

    .line 837
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mVerificationState:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 838
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mVerificationState:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 839
    return-void

    .line 841
    :cond_14
    const/4 v0, 0x1

    .line 842
    .local v0, "completeStatus":I
    const/4 v1, 0x0

    .line 843
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mVerificationState:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/VerificationParams;

    .line 844
    .local v3, "params":Lcom/android/server/pm/VerificationParams;
    invoke-static {v3}, Lcom/android/server/pm/VerificationParams;->-$$Nest$fgetmRet(Lcom/android/server/pm/VerificationParams;)I

    move-result v4

    .line 845
    .local v4, "status":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_35

    .line 846
    move v0, v4

    .line 847
    invoke-static {v3}, Lcom/android/server/pm/VerificationParams;->-$$Nest$fgetmErrorMessage(Lcom/android/server/pm/VerificationParams;)Ljava/lang/String;

    move-result-object v1

    .line 848
    goto :goto_36

    .line 850
    .end local v3    # "params":Lcom/android/server/pm/VerificationParams;
    .end local v4    # "status":I
    :cond_35
    goto :goto_1c

    .line 852
    :cond_36
    :goto_36
    :try_start_36
    iget-object v2, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    const/4 v3, 0x0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_41} :catch_42

    .line 856
    goto :goto_4a

    .line 854
    :catch_42
    move-exception v2

    .line 855
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PackageManager"

    const-string v4, "Observer no longer exists."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4a
    return-void
.end method
