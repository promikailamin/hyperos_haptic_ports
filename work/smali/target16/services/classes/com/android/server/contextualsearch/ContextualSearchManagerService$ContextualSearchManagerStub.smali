.class public Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;
.super Landroid/app/contextualsearch/IContextualSearchManager$Stub;
.source "ContextualSearchManagerService.java"


# instance fields
.field public mConfig:Landroid/app/contextualsearch/ContextualSearchConfig;

.field public mToken:Landroid/app/contextualsearch/CallbackToken;

.field public mTokenHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;


# direct methods
.method public static synthetic $r8$lambda$yWxB1r1awJsSYdg1F_xzjWbqxew(Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;ILandroid/app/contextualsearch/ContextualSearchConfig;ILjava/lang/String;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->lambda$startContextualSearchInternal$0(ILandroid/app/contextualsearch/ContextualSearchConfig;ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minvalidateToken(Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->invalidateToken()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V
    .registers 2

    .line 512
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-direct {p0}, Landroid/app/contextualsearch/IContextualSearchManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Lcom/android/server/contextualsearch/ContextualSearchManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V

    return-void
.end method


# virtual methods
.method public getContextualSearchState(Landroid/os/IBinder;Landroid/app/contextualsearch/IContextualSearchCallback;)V
    .registers 4

    .line 639
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mToken:Landroid/app/contextualsearch/CallbackToken;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/app/contextualsearch/CallbackToken;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_2c

    .line 653
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->invalidateToken()V

    .line 688
    iget-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fgetmLock(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 689
    :try_start_19
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {v0, p2}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fputmStateCallback(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Landroid/app/contextualsearch/IContextualSearchCallback;)V

    .line 690
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_29

    .line 691
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fgetmAssistDataRequester(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Lcom/android/server/am/AssistDataRequester;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->processPendingAssistData()V

    return-void

    :catchall_29
    move-exception p0

    .line 690
    :try_start_2a
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0

    .line 644
    :cond_2c
    :goto_2c
    :try_start_2c
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid token"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, p0}, Landroid/app/contextualsearch/IContextualSearchCallback;->onError(Landroid/os/ParcelableException;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p0

    .line 647
    invoke-static {}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Could not invoke onError callback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final invalidateToken()V
    .registers 4

    .line 519
    monitor-enter p0

    .line 520
    :try_start_1
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    .line 521
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Landroid/os/Handler;

    goto :goto_f

    :catchall_d
    move-exception v0

    goto :goto_15

    .line 525
    :cond_f
    :goto_f
    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mToken:Landroid/app/contextualsearch/CallbackToken;

    .line 526
    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mConfig:Landroid/app/contextualsearch/ContextualSearchConfig;

    .line 527
    monitor-exit p0

    return-void

    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_d

    throw v0
.end method

.method public isContextualSearchAvailable()Z
    .registers 3

    .line 555
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fgetmContext(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.feature.CONTEXTUAL_SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 556
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$mgetResolvedLaunchIntent(Lcom/android/server/contextualsearch/ContextualSearchManagerService;I)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public final issueToken(Landroid/app/contextualsearch/ContextualSearchConfig;)V
    .registers 5

    .line 531
    monitor-enter p0

    .line 532
    :try_start_1
    new-instance v0, Landroid/app/contextualsearch/CallbackToken;

    invoke-direct {v0}, Landroid/app/contextualsearch/CallbackToken;-><init>()V

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mToken:Landroid/app/contextualsearch/CallbackToken;

    .line 533
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mConfig:Landroid/app/contextualsearch/ContextualSearchConfig;

    .line 534
    iget-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    if-nez p1, :cond_1e

    .line 535
    new-instance p1, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$1;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Landroid/os/Handler;

    goto :goto_21

    :catchall_1c
    move-exception p1

    goto :goto_2e

    .line 546
    :cond_1e
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    :goto_21
    iget-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 549
    invoke-static {v1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$mgetTokenValidDurationMs(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)J

    move-result-wide v1

    .line 548
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 550
    monitor-exit p0

    return-void

    :goto_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_1c

    throw p1
.end method

.method public final synthetic lambda$startContextualSearchInternal$0(ILandroid/app/contextualsearch/ContextualSearchConfig;ILjava/lang/String;)V
    .registers 11

    .line 619
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    iget-object v5, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mToken:Landroid/app/contextualsearch/CallbackToken;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$mgetContextualSearchIntent(Lcom/android/server/contextualsearch/ContextualSearchManagerService;ILandroid/app/contextualsearch/ContextualSearchConfig;ILjava/lang/String;Landroid/app/contextualsearch/CallbackToken;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 622
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 623
    invoke-static {p0, p1, v3, v2}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$minvokeContextualSearchIntent(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Landroid/content/Intent;ILandroid/app/contextualsearch/ContextualSearchConfig;)I

    :cond_13
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 701
    new-instance v0, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 702
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public startContextualSearch(ILandroid/app/contextualsearch/ContextualSearchConfig;)V
    .registers 5

    .line 593
    monitor-enter p0

    .line 598
    :try_start_1
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    const-string/jumbo v1, "startContextualSearch"

    invoke-static {v0, v1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$menforcePermission(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Ljava/lang/String;)V

    if-nez p2, :cond_17

    .line 600
    new-instance p2, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;

    invoke-direct {p2}, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;-><init>()V

    invoke-virtual {p2}, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->build()Landroid/app/contextualsearch/ContextualSearchConfig;

    move-result-object p2

    goto :goto_17

    :catchall_15
    move-exception p1

    goto :goto_1c

    .line 602
    :cond_17
    :goto_17
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->startContextualSearchInternal(ILandroid/app/contextualsearch/ContextualSearchConfig;)V

    .line 603
    monitor-exit p0

    return-void

    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_15

    throw p1
.end method

.method public startContextualSearchForActivity(Landroid/os/IBinder;Landroid/app/contextualsearch/ContextualSearchConfig;)V
    .registers 7

    .line 564
    monitor-enter p0

    .line 570
    :try_start_1
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    const-string/jumbo v1, "startContextualSearchForActivity"

    invoke-static {v0, v1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$menforceForegroundApp(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eqz p2, :cond_15

    .line 573
    invoke-virtual {p2}, Landroid/app/contextualsearch/ContextualSearchConfig;->getDisplayId()I

    move-result v1

    if-ne v1, v0, :cond_4e

    goto :goto_15

    :catchall_13
    move-exception p1

    goto :goto_53

    :cond_15
    :goto_15
    if-eqz p2, :cond_1d

    .line 575
    new-instance v1, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;

    invoke-direct {v1, p2}, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;-><init>(Landroid/app/contextualsearch/ContextualSearchConfig;)V

    goto :goto_22

    .line 576
    :cond_1d
    new-instance v1, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;

    invoke-direct {v1}, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;-><init>()V

    .line 577
    :goto_22
    iget-object p2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {p2}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fgetmAtmInternal(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getDisplayId(Landroid/os/IBinder;)I

    move-result p2

    if-ne p2, v0, :cond_47

    .line 579
    invoke-static {}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid display id for activity token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 582
    :cond_47
    invoke-virtual {v1, p2}, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->setDisplayId(I)Landroid/app/contextualsearch/ContextualSearchConfig$Builder;

    .line 583
    invoke-virtual {v1}, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->build()Landroid/app/contextualsearch/ContextualSearchConfig;

    move-result-object p2

    .line 585
    :cond_4e
    invoke-virtual {p0, v0, p2}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->startContextualSearchInternal(ILandroid/app/contextualsearch/ContextualSearchConfig;)V

    .line 586
    monitor-exit p0

    return-void

    :goto_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_13

    throw p1
.end method

.method public final startContextualSearchInternal(ILandroid/app/contextualsearch/ContextualSearchConfig;)V
    .registers 11

    .line 610
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    .line 611
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 612
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fgetmAssistDataRequester(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Lcom/android/server/am/AssistDataRequester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AssistDataRequester;->cancel()V

    .line 614
    invoke-virtual {p0, p2}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->issueToken(Landroid/app/contextualsearch/ContextualSearchConfig;)V

    .line 618
    new-instance v2, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;ILandroid/app/contextualsearch/ContextualSearchConfig;ILjava/lang/String;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
