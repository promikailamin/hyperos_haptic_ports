.class public Lcom/android/server/pm/PackageInstallerSession$StagedSession;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Lcom/android/server/pm/StagingManager$StagedSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StagedSession"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 515
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$containsApexSession$0(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 2
    .param p0, "s"    # Lcom/android/server/pm/StagingManager$StagedSession;

    .line 553
    invoke-interface {p0}, Lcom/android/server/pm/StagingManager$StagedSession;->isApexSession()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$sessionContains$1(Ljava/util/function/Predicate;Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 3
    .param p0, "filter"    # Ljava/util/function/Predicate;
    .param p1, "s"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 627
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-interface {p0, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abandon()V
    .registers 2

    .line 647
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 648
    return-void
.end method

.method public containsApexSession()Z
    .registers 2

    .line 553
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public containsApkSession()Z
    .registers 2

    .line 578
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->containsApkSession()Z

    move-result v0

    return v0
.end method

.method public getChildSessions()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v0, :cond_b

    .line 519
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 521
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmLock(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 522
    :try_start_12
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmChildSessions(Lcom/android/server/pm/PackageInstallerSession;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 523
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 524
    .local v2, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/StagingManager$StagedSession;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    if-ge v3, v1, :cond_38

    .line 525
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmChildSessions(Lcom/android/server/pm/PackageInstallerSession;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    iget-object v4, v4, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 527
    .end local v3    # "i":I
    :cond_38
    monitor-exit v0

    return-object v2

    .line 528
    .end local v1    # "size":I
    .end local v2    # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/StagingManager$StagedSession;>;"
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_12 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public getCommittedMillis()J
    .registers 3

    .line 622
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getCommittedMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 558
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentSessionId()I
    .registers 2

    .line 602
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v0

    return v0
.end method

.method public hasParentSessionId()Z
    .registers 2

    .line 597
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    return v0
.end method

.method public installSession()Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$massertCallerIsOwnerOrRootOrSystem(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 590
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const-string v1, "StagedSession#installSession"

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$massertNotChild(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 592
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$minstall(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public isApexSession()Z
    .registers 3

    .line 543
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public isCommitted()Z
    .registers 2

    .line 607
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .registers 2

    .line 617
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public isInTerminalState()Z
    .registers 2

    .line 612
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$misInTerminalState(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    return v0
.end method

.method public isMultiPackage()Z
    .registers 2

    .line 538
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    return v0
.end method

.method public isSessionApplied()Z
    .registers 2

    .line 637
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isSessionApplied()Z

    move-result v0

    return v0
.end method

.method public isSessionFailed()Z
    .registers 2

    .line 642
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isSessionFailed()Z

    move-result v0

    return v0
.end method

.method public isSessionReady()Z
    .registers 2

    .line 632
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isSessionReady()Z

    move-result v0

    return v0
.end method

.method public sessionContains(Ljava/util/function/Predicate;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;)Z"
        }
    .end annotation

    .line 627
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/StagingManager$StagedSession;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$StagedSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public sessionId()I
    .registers 2

    .line 548
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    return v0
.end method

.method public sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;
    .registers 2

    .line 533
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    return-object v0
.end method

.method public setSessionApplied()V
    .registers 2

    .line 573
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$msetSessionApplied(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 574
    return-void
.end method

.method public setSessionFailed(ILjava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 568
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 569
    return-void
.end method

.method public setSessionReady()V
    .registers 2

    .line 563
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->setSessionReady()V

    .line 564
    return-void
.end method

.method public verifySession()V
    .registers 2

    .line 658
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$massertCallerIsOwnerOrRootOrSystem(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 659
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isCommitted()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 660
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 661
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mverify(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 662
    return-void
.end method
