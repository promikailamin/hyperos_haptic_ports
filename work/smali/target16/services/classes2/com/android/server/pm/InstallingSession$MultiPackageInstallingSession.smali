.class public Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;
.super Ljava/lang/Object;
.source "InstallingSession.java"


# instance fields
.field public final mChildInstallingSessions:Ljava/util/List;

.field public final mCurrentInstallRequests:Ljava/util/Set;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mUser:Landroid/os/UserHandle;

.field public final synthetic this$0:Lcom/android/server/pm/InstallingSession;


# direct methods
.method public static synthetic $r8$lambda$FG4z4NCeCPsiEmF_i1M46hmAqCo(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;ILjava/util/List;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->lambda$tryProcessInstallRequest$0(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/InstallingSession;Landroid/os/UserHandle;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .registers 5

    .line 653
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->this$0:Lcom/android/server/pm/InstallingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_31

    .line 658
    iput-object p4, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 659
    iput-object p2, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mUser:Landroid/os/UserHandle;

    .line 660
    iput-object p3, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    const/4 p1, 0x0

    .line 661
    :goto_12
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_23

    .line 662
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallingSession;

    .line 663
    iput-object p0, p2, Lcom/android/server/pm/InstallingSession;->mParentInstallingSession:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    .line 665
    :cond_23
    new-instance p1, Landroid/util/ArraySet;

    iget-object p2, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    return-void

    .line 655
    :cond_31
    const-string p0, "No child sessions found!"

    const/16 p1, -0x14

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final synthetic lambda$tryProcessInstallRequest$0(ILjava/util/List;)V
    .registers 4

    .line 711
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->this$0:Lcom/android/server/pm/InstallingSession;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {p0, v0, p2}, Lcom/android/server/pm/InstallingSession;->-$$Nest$mprocessInstallRequests(Lcom/android/server/pm/InstallingSession;ZLjava/util/List;)V

    return-void
.end method

.method public start()V
    .registers 9

    .line 670
    const-string/jumbo v0, "queueInstall"

    .line 671
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 670
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 672
    const-string/jumbo v0, "start"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 675
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_20
    if-ge v5, v0, :cond_38

    .line 678
    iget-object v6, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/InstallingSession;

    .line 679
    new-instance v7, Lcom/android/server/pm/InstallRequest;

    invoke-direct {v7, v6}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/server/pm/InstallingSession;)V

    .line 680
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-static {v6, v7}, Lcom/android/server/pm/InstallingSession;->-$$Nest$mhandleStartCopy(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_38
    :goto_38
    if-ge v4, v0, :cond_4e

    .line 684
    iget-object v5, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/InstallingSession;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/InstallRequest;

    invoke-static {v5, v6}, Lcom/android/server/pm/InstallingSession;->-$$Nest$mhandleReturnCode(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 686
    :cond_4e
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiPackageInstallingSession{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    .line 718
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tryProcessInstallRequest(Lcom/android/server/pm/InstallRequest;)V
    .registers 5

    .line 690
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 691
    iget-object p1, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_14

    goto :goto_2d

    .line 696
    :cond_14
    iget-object p1, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    .line 697
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v2

    if-nez v2, :cond_2e

    :goto_2d
    return-void

    .line 699
    :cond_2e
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v2

    if-eq v2, v1, :cond_1a

    .line 700
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v1

    .line 704
    :cond_38
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    .line 705
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 706
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 707
    invoke-virtual {v2, v1}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 708
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 711
    :cond_5c
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
