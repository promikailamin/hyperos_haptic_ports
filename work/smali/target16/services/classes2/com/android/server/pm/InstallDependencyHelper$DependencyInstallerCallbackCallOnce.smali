.class public Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;
.super Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback$Stub;
.source "InstallDependencyHelper.java"


# instance fields
.field public final mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

.field public mDependencyInstallerCallbackInvoked:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/pm/InstallDependencyHelper;


# direct methods
.method public static synthetic $r8$lambda$Kt3-GGszpNON01-m61rud1b8C_c(ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 2

    .line 426
    iget p1, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$T8pWQuu5GiV4_bkHl0Oll56UgMo(Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->lambda$onFailureToResolveAllDependencies$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$rd2v2mEAXOx0nOy7DznzLts-3xg(Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->lambda$onAllDependenciesResolved$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/InstallDependencyHelper;Landroid/os/Handler;Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;I)V
    .registers 5

    .line 314
    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-direct {p0}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback$Stub;-><init>()V

    const/4 p1, 0x0

    .line 311
    iput-boolean p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    .line 315
    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mHandler:Landroid/os/Handler;

    .line 316
    iput-object p3, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    .line 317
    iput p4, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mUserId:I

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onAllDependenciesResolved$0(I)V
    .registers 2

    .line 359
    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper;->notifySessionComplete(I)V

    return-void
.end method

.method public final synthetic lambda$onFailureToResolveAllDependencies$1()V
    .registers 2

    .line 383
    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    const-string v0, "Failed to resolve all dependencies automatically"

    invoke-static {p0, v0}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$smonError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V

    return-void
.end method

.method public onAllDependenciesResolved([I)V
    .registers 5

    .line 322
    monitor-enter p0

    .line 323
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    if-nez v0, :cond_6c

    const/4 v0, 0x1

    .line 327
    iput-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    .line 328
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_6a

    .line 337
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->validateSessionIds([I)Landroid/util/ArraySet;

    move-result-object p1

    .line 339
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 340
    iget-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onResult(Ljava/lang/Void;)V

    return-void

    :catch_1a
    move-exception p1

    goto :goto_61

    .line 345
    :cond_1c
    new-instance v0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;

    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    invoke-direct {v0, v1, p1}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;-><init>(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Landroid/util/ArraySet;)V

    .line 347
    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v1}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmTrackers(Lcom/android/server/pm/InstallDependencyHelper;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2a} :catch_1a

    .line 348
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v2}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmTrackers(Lcom/android/server/pm/InstallDependencyHelper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_5e

    .line 353
    :try_start_34
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_38
    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 354
    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v1}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmPackageInstallerService(Lcom/android/server/pm/InstallDependencyHelper;)Lcom/android/server/pm/PackageInstallerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageInstallerService;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    if-nez v1, :cond_38

    .line 358
    new-instance v1, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_5c} :catch_1a

    goto :goto_38

    :cond_5d
    return-void

    :catchall_5e
    move-exception p1

    .line 349
    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw p1
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_61} :catch_1a

    .line 365
    :goto_61
    monitor-enter p0

    const/4 v0, 0x0

    .line 366
    :try_start_63
    iput-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    .line 367
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    .line 368
    throw p1

    :catchall_67
    move-exception p1

    .line 367
    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p1

    :catchall_6a
    move-exception p1

    goto :goto_74

    .line 324
    :cond_6c
    :try_start_6c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Callback is being or has been already processed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 328
    :goto_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_6a

    throw p1
.end method

.method public onFailureToResolveAllDependencies()V
    .registers 3

    .line 374
    monitor-enter p0

    .line 375
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    .line 380
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_12

    .line 382
    new-instance v0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    :catchall_12
    move-exception v0

    goto :goto_1c

    .line 376
    :cond_14
    :try_start_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback is being or has been already processed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_12

    throw v0
.end method

.method public final validateSessionIds([I)Landroid/util/ArraySet;
    .registers 10

    .line 389
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    .line 392
    :goto_8
    array-length v4, p1

    if-ge v2, v4, :cond_9e

    .line 393
    aget v4, p1, v2

    .line 394
    iget-object v5, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v5}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmPackageInstallerService(Lcom/android/server/pm/InstallDependencyHelper;)Lcom/android/server/pm/PackageInstallerService;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PackageInstallerService;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    .line 397
    const-string v6, "Session already finished: "

    if-eqz v5, :cond_40

    .line 398
    iget-boolean v7, v5, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    if-nez v7, :cond_2b

    .line 404
    iget-boolean v5, v5, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    if-nez v5, :cond_6f

    .line 408
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 399
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    if-nez v3, :cond_52

    .line 421
    iget-object v3, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v3}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmPackageInstallerService(Lcom/android/server/pm/InstallDependencyHelper;)Lcom/android/server/pm/PackageInstallerService;

    move-result-object v3

    iget v5, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mUserId:I

    invoke-virtual {v3, v5}, Lcom/android/server/pm/PackageInstallerService;->getHistoricalSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 422
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 425
    :cond_52
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda2;

    invoke-direct {v7, v4}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 426
    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInstaller$SessionInfo;

    if-eqz v5, :cond_87

    .line 433
    iget-boolean v5, v5, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    if-eqz v5, :cond_72

    :cond_6f
    :goto_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 434
    :cond_72
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 429
    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to find session: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9e
    return-object v0
.end method
