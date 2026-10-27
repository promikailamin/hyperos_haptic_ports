.class final Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;
.super Lcom/android/server/pm/HandlerParams;
.source "InstallParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstallParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MultiPackageInstallParams"
.end annotation


# instance fields
.field private final mChildParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/pm/InstallArgs;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/InstallParams;


# direct methods
.method constructor <init>(Lcom/android/server/pm/InstallParams;Lcom/android/server/pm/InstallParams;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/pm/InstallParams;
    .param p2, "parent"    # Lcom/android/server/pm/InstallParams;
    .param p4, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/InstallParams;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallParams;",
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

    .line 385
    .local p3, "childParams":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallParams;>;"
    iput-object p1, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->this$0:Lcom/android/server/pm/InstallParams;

    .line 386
    invoke-virtual {p2}, Lcom/android/server/pm/InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/android/server/pm/HandlerParams;-><init>(Landroid/os/UserHandle;Lcom/android/server/pm/PackageManagerService;)V

    .line 387
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_31

    .line 390
    iput-object p3, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mChildParams:Ljava/util/List;

    .line 391
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 392
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallParams;

    .line 393
    .local v1, "childParam":Lcom/android/server/pm/InstallParams;
    iput-object p0, v1, Lcom/android/server/pm/InstallParams;->mParentInstallParams:Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;

    .line 391
    .end local v1    # "childParam":Lcom/android/server/pm/InstallParams;
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 395
    .end local v0    # "i":I
    :cond_23
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mChildParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    .line 396
    return-void

    .line 388
    :cond_31
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "No child sessions found!"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method handleReturnCode()V
    .registers 3

    .line 407
    iget-object v0, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mChildParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallParams;

    .line 408
    .local v1, "params":Lcom/android/server/pm/InstallParams;
    invoke-virtual {v1}, Lcom/android/server/pm/InstallParams;->handleReturnCode()V

    .line 409
    .end local v1    # "params":Lcom/android/server/pm/InstallParams;
    goto :goto_6

    .line 410
    :cond_16
    return-void
.end method

.method handleStartCopy()V
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mChildParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallParams;

    .line 401
    .local v1, "params":Lcom/android/server/pm/InstallParams;
    invoke-virtual {v1}, Lcom/android/server/pm/InstallParams;->handleStartCopy()V

    .line 402
    .end local v1    # "params":Lcom/android/server/pm/InstallParams;
    goto :goto_6

    .line 403
    :cond_16
    return-void
.end method

.method tryProcessInstallRequest(Lcom/android/server/pm/InstallArgs;I)V
    .registers 11
    .param p1, "args"    # Lcom/android/server/pm/InstallArgs;
    .param p2, "currentStatus"    # I

    .line 413
    iget-object v0, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mChildParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_18

    .line 415
    return-void

    .line 417
    :cond_18
    const/4 v0, 0x1

    .line 418
    .local v0, "completeStatus":I
    iget-object v1, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 419
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_37

    .line 420
    return-void

    .line 421
    :cond_37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_42

    .line 422
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 423
    goto :goto_43

    .line 425
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_42
    goto :goto_23

    .line 426
    :cond_43
    :goto_43
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 427
    .local v1, "installRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    iget-object v2, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 428
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/InstallArgs;Ljava/lang/Integer;>;"
    new-instance v5, Lcom/android/server/pm/InstallRequest;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/InstallArgs;

    new-instance v7, Lcom/android/server/pm/PackageInstalledInfo;

    invoke-direct {v7, v0}, Lcom/android/server/pm/PackageInstalledInfo;-><init>(I)V

    invoke-direct {v5, v6, v7}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/server/pm/InstallArgs;Lcom/android/server/pm/PackageInstalledInfo;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/InstallArgs;Ljava/lang/Integer;>;"
    goto :goto_58

    .line 431
    :cond_78
    iget-object v2, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->this$0:Lcom/android/server/pm/InstallParams;

    if-ne v0, v3, :cond_7d

    goto :goto_7e

    :cond_7d
    const/4 v3, 0x0

    :goto_7e
    invoke-static {v2, v3, v1}, Lcom/android/server/pm/InstallParams;->-$$Nest$mprocessInstallRequestsAsync(Lcom/android/server/pm/InstallParams;ZLjava/util/List;)V

    .line 434
    return-void
.end method
