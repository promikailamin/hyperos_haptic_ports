.class public Lcom/android/server/wm/ActivityStartController;
.super Ljava/lang/Object;
.source "ActivityStartController.java"


# static fields
.field private static final DO_PENDING_ACTIVITY_LAUNCHES_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field mCheckedForSetup:Z

.field private final mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

.field private mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

.field private mLastHomeActivityStartResult:I

.field private mLastStarter:Lcom/android/server/wm/ActivityStarter;

.field private final mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 105
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    new-instance v1, Lcom/android/server/wm/ActivityStarter$DefaultFactory;

    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    new-instance v3, Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v4, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-direct {v3, p1, v4}, Lcom/android/server/wm/ActivityStartInterceptor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/wm/ActivityStarter$DefaultFactory;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStartController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V

    .line 108
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;
    .param p3, "factory"    # Lcom/android/server/wm/ActivityStarter$Factory;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 113
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 114
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 115
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    .line 116
    invoke-interface {p3, p0}, Lcom/android/server/wm/ActivityStarter$Factory;->setController(Lcom/android/server/wm/ActivityStartController;)V

    .line 117
    new-instance v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 119
    return-void
.end method

.method static synthetic lambda$startActivities$0(I)[Landroid/content/Intent;
    .registers 2
    .param p0, "x$0"    # I

    .line 377
    new-array v0, p0, [Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method checkTargetUser(IZIILjava/lang/String;)I
    .registers 7
    .param p1, "targetUserId"    # I
    .param p2, "validateIncomingUser"    # Z
    .param p3, "realCallingPid"    # I
    .param p4, "realCallingUid"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 251
    if-eqz p2, :cond_9

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p3, p4, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v0

    return v0

    .line 255
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->ensureNotSpecialUser(I)V

    .line 256
    return p1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 557
    const/4 v0, 0x0

    .line 559
    .local v0, "dumped":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_7

    move v3, v2

    goto :goto_8

    :cond_7
    move v3, v1

    .line 561
    .local v3, "dumpPackagePresent":Z
    :goto_8
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    const-string v5, "  "

    if-eqz v4, :cond_3a

    if-eqz v3, :cond_18

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 562
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 563
    :cond_18
    const/4 v0, 0x1

    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStartController;->dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 566
    const-string v4, "mLastHomeActivityStartRecord:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v6, v2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 570
    :cond_3a
    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-eqz v4, :cond_7e

    .line 571
    if-eqz v3, :cond_54

    .line 572
    invoke-virtual {v4, p3}, Lcom/android/server/wm/ActivityStarter;->relatedToPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_54

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_53

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 574
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    goto :goto_54

    :cond_53
    goto :goto_55

    :cond_54
    :goto_54
    move v1, v2

    .line 576
    .local v1, "dump":Z
    :goto_55
    if-eqz v1, :cond_7e

    .line 577
    if-nez v0, :cond_5d

    .line 578
    const/4 v0, 0x1

    .line 579
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStartController;->dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 581
    :cond_5d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    const-string v2, "mLastStarter:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/android/server/wm/ActivityStarter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 585
    if-eqz v3, :cond_7e

    .line 586
    return-void

    .line 591
    .end local v1    # "dump":Z
    :cond_7e
    if-nez v0, :cond_88

    .line 592
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 593
    const-string v1, "(nothing)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    :cond_88
    return-void
.end method

.method dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 551
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 552
    const-string v0, "mLastHomeActivityStartResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 553
    iget v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 554
    return-void
.end method

.method getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;
    .registers 2

    .line 547
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    return-object v0
.end method

.method obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "reason"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V
    .registers 3
    .param p1, "starter"    # Lcom/android/server/wm/ActivityStarter;

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_c

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 135
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->set(Lcom/android/server/wm/ActivityStarter;)V

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0, p1}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V

    .line 137
    return-void
.end method

.method postStartActivityProcessingForLastStarter(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "targetRootTask"    # Lcom/android/server/wm/Task;

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_5

    .line 146
    return-void

    .line 149
    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V

    .line 150
    return-void
.end method

.method registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p3, "launchCookie"    # Landroid/os/IBinder;

    .line 543
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->addPendingAnimation(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V

    .line 544
    return-void
.end method

.method startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I
    .registers 44
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "incomingRealCallingPid"    # I
    .param p4, "incomingRealCallingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callingFeatureId"    # Ljava/lang/String;
    .param p7, "intents"    # [Landroid/content/Intent;
    .param p8, "resolvedTypes"    # [Ljava/lang/String;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p11, "userId"    # I
    .param p12, "reason"    # Ljava/lang/String;
    .param p13, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p14, "allowBackgroundActivityStart"    # Z

    .line 346
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    if-eqz v4, :cond_3bb

    .line 349
    if-eqz v5, :cond_3b0

    .line 352
    array-length v0, v4

    array-length v6, v5

    if-ne v0, v6, :cond_3a6

    .line 356
    if-eqz p3, :cond_17

    .line 357
    move/from16 v0, p3

    goto :goto_1b

    .line 358
    :cond_17
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    :goto_1b
    move v6, v0

    .line 359
    .local v6, "realCallingPid":I
    const/4 v0, -0x1

    move/from16 v7, p4

    if-eq v7, v0, :cond_23

    .line 360
    move v8, v7

    goto :goto_27

    .line 361
    :cond_23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    :goto_27
    nop

    .line 364
    .local v8, "realCallingUid":I
    if-ltz p2, :cond_2f

    .line 365
    const/4 v9, -0x1

    move v10, v9

    move/from16 v9, p2

    .local v9, "callingPid":I
    goto :goto_3b

    .line 366
    .end local v9    # "callingPid":I
    :cond_2f
    if-nez v2, :cond_39

    .line 367
    move v9, v6

    .line 368
    .restart local v9    # "callingPid":I
    move v10, v8

    move/from16 v28, v10

    move v10, v9

    move/from16 v9, v28

    .end local p2    # "callingUid":I
    .local v10, "callingUid":I
    goto :goto_3b

    .line 370
    .end local v9    # "callingPid":I
    .end local v10    # "callingUid":I
    .restart local p2    # "callingUid":I
    :cond_39
    move v9, v0

    .end local p2    # "callingUid":I
    .local v9, "callingUid":I
    move v10, v0

    .line 372
    .local v10, "callingPid":I
    :goto_3b
    const/16 v11, -0x2710

    invoke-static {v9, v8, v11}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v11

    .line 374
    .local v11, "filterCallingUid":I
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    move-object v15, v12

    .line 375
    .local v15, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 377
    .local v19, "origId":J
    :try_start_4b
    new-instance v12, Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;

    invoke-direct {v12}, Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v4, v12}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/Intent;
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_397

    move-object v4, v12

    .line 378
    .end local p7    # "intents":[Landroid/content/Intent;
    .local v4, "intents":[Landroid/content/Intent;
    :try_start_57
    array-length v12, v4

    new-array v12, v12, [Lcom/android/server/wm/ActivityStarter;

    move-object v14, v12

    .line 381
    .local v14, "starters":[Lcom/android/server/wm/ActivityStarter;
    const/4 v12, 0x0

    move v13, v12

    .local v13, "i":I
    :goto_5d
    array-length v12, v4
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_38b

    const/16 v21, 0x0

    const/16 v22, 0x0

    if-ge v13, v12, :cond_1fc

    .line 382
    :try_start_64
    aget-object v12, v4, v13

    .line 383
    .local v12, "intent":Landroid/content/Intent;
    const/16 v23, 0x0

    .line 386
    .local v23, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    invoke-virtual {v12}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v16

    if-nez v16, :cond_1d7

    .line 391
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_77

    const/16 v16, 0x1

    goto :goto_79

    :cond_77
    move/from16 v16, v22

    :goto_79
    move/from16 p2, v16

    .line 393
    .local p2, "componentSpecified":Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_80
    .catchall {:try_start_64 .. :try_end_80} :catchall_1ea

    move-object v12, v0

    .line 395
    const v24, 0x10004000

    .line 396
    .local v24, "returnHomeFlags":I
    if-eqz p10, :cond_b8

    :try_start_86
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz v0, :cond_b8

    .line 397
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    const/4 v7, 0x5

    if-ne v0, v7, :cond_b8

    .line 398
    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v7, 0x10004000

    and-int/2addr v0, v7

    if-ne v0, v7, :cond_b8

    .line 399
    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, -0x4001

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_aa
    .catchall {:try_start_86 .. :try_end_aa} :catchall_ab

    goto :goto_b8

    .line 505
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "i":I
    .end local v14    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v23    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v24    # "returnHomeFlags":I
    .end local p2    # "componentSpecified":Z
    :catchall_ab
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v18, v6

    move v6, v11

    move-object v7, v15

    move-object/from16 v11, p6

    move-object/from16 v15, p9

    goto/16 :goto_3a2

    .line 404
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v13    # "i":I
    .restart local v14    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v23    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v24    # "returnHomeFlags":I
    .restart local p2    # "componentSpecified":Z
    :cond_b8
    :goto_b8
    :try_start_b8
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    aget-object v7, v5, v13
    :try_end_bc
    .catchall {:try_start_b8 .. :try_end_bc} :catchall_1ea

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v25, v12

    .end local v12    # "intent":Landroid/content/Intent;
    .local v25, "intent":Landroid/content/Intent;
    move-object v12, v0

    move/from16 v26, v13

    .end local v13    # "i":I
    .local v26, "i":I
    move-object/from16 v13, v25

    move-object/from16 v27, v14

    .end local v14    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v27, "starters":[Lcom/android/server/wm/ActivityStarter;
    move-object v14, v7

    move-object v7, v15

    .end local v15    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v7, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    move/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, p11

    move/from16 v18, v11

    :try_start_d3
    invoke-virtual/range {v12 .. v18}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 406
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v12, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    move/from16 v13, p11

    invoke-virtual {v12, v0, v13}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12
    :try_end_e1
    .catchall {:try_start_d3 .. :try_end_e1} :catchall_1c6

    .line 408
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v12, :cond_13a

    .line 411
    :try_start_e3
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v14, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v15, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 414
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15
    :try_end_f5
    .catch Ljava/lang/SecurityException; {:try_start_e3 .. :try_end_f5} :catch_12a
    .catchall {:try_start_e3 .. :try_end_f5} :catchall_11e

    .line 412
    move-object/from16 v13, v25

    .end local v25    # "intent":Landroid/content/Intent;
    .local v13, "intent":Landroid/content/Intent;
    :try_start_f7
    invoke-interface {v0, v13, v11, v14, v15}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0
    :try_end_fb
    .catch Ljava/lang/SecurityException; {:try_start_f7 .. :try_end_fb} :catch_11c
    .catchall {:try_start_f7 .. :try_end_fb} :catchall_11e

    move-object/from16 v23, v0

    .line 418
    nop

    .line 420
    :try_start_fe
    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_114

    .line 425
    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v23

    goto :goto_13e

    .line 422
    :cond_114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v14, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "intents":[Landroid/content/Intent;
    .end local v6    # "realCallingPid":I
    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v8    # "realCallingUid":I
    .end local v9    # "callingUid":I
    .end local v10    # "callingPid":I
    .end local v11    # "filterCallingUid":I
    .end local v19    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p8    # "resolvedTypes":[Ljava/lang/String;
    .end local p9    # "resultTo":Landroid/os/IBinder;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p14    # "allowBackgroundActivityStart":Z
    throw v0

    .line 415
    .restart local v4    # "intents":[Landroid/content/Intent;
    .restart local v6    # "realCallingPid":I
    .restart local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v8    # "realCallingUid":I
    .restart local v9    # "callingUid":I
    .restart local v10    # "callingPid":I
    .restart local v11    # "filterCallingUid":I
    .restart local v19    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p8    # "resolvedTypes":[Ljava/lang/String;
    .restart local p9    # "resultTo":Landroid/os/IBinder;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p14    # "allowBackgroundActivityStart":Z
    :catch_11c
    move-exception v0

    goto :goto_12d

    .line 505
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v23    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v24    # "returnHomeFlags":I
    .end local v26    # "i":I
    .end local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local p2    # "componentSpecified":Z
    :catchall_11e
    move-exception v0

    move-object/from16 v15, p9

    move-object/from16 v16, v4

    move/from16 v18, v6

    move v6, v11

    move-object/from16 v11, p6

    goto/16 :goto_3a2

    .line 415
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v23    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v24    # "returnHomeFlags":I
    .restart local v25    # "intent":Landroid/content/Intent;
    .restart local v26    # "i":I
    .restart local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local p2    # "componentSpecified":Z
    :catch_12a
    move-exception v0

    move-object/from16 v13, v25

    .line 416
    .end local v25    # "intent":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v13    # "intent":Landroid/content/Intent;
    :goto_12d
    const-string v14, "ActivityTaskManager"

    const-string v15, "Not allowed to start activity since no uri permission."

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_134
    .catchall {:try_start_fe .. :try_end_134} :catchall_11e

    .line 417
    const/16 v14, -0x60

    .line 505
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 417
    return v14

    .line 408
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v13    # "intent":Landroid/content/Intent;
    .restart local v25    # "intent":Landroid/content/Intent;
    :cond_13a
    move-object/from16 v13, v25

    .end local v25    # "intent":Landroid/content/Intent;
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v23

    .line 429
    .end local v23    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v0, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    :goto_13e
    :try_start_13e
    array-length v14, v4
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_1c6

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    move/from16 v15, v26

    .end local v26    # "i":I
    .local v15, "i":I
    if-ne v15, v14, :cond_147

    const/16 v22, 0x1

    :cond_147
    move/from16 v14, v22

    .line 430
    .local v14, "top":Z
    if-eqz v14, :cond_14e

    .line 431
    move-object/from16 v21, p10

    goto :goto_14f

    .line 432
    :cond_14e
    nop

    :goto_14f
    move-object/from16 p7, v21

    .line 433
    .local p7, "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    move-object/from16 v16, v4

    move/from16 v17, v11

    move-object/from16 v4, p12

    .end local v4    # "intents":[Landroid/content/Intent;
    .end local v11    # "filterCallingUid":I
    .local v16, "intents":[Landroid/content/Intent;
    .local v17, "filterCallingUid":I
    :try_start_157
    invoke-virtual {v1, v13, v4}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v11

    .line 434
    invoke-virtual {v11, v0}, Lcom/android/server/wm/ActivityStarter;->setIntentGrants(Lcom/android/server/uri/NeededUriGrants;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v11

    .line 435
    invoke-virtual {v11, v2}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v11

    move-object/from16 v18, v0

    .end local v0    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .local v18, "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    aget-object v0, v5, v15

    .line 436
    invoke-virtual {v11, v0}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 437
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 438
    const/4 v11, -0x1

    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 439
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 440
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 441
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_180
    .catchall {:try_start_157 .. :try_end_180} :catchall_1c1

    .line 442
    move-object/from16 v11, p6

    :try_start_182
    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 443
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 444
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 445
    move-object/from16 v2, p7

    .end local p7    # "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v2, "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 446
    move-object/from16 v21, v2

    move/from16 v2, p2

    .end local p2    # "componentSpecified":Z
    .local v2, "componentSpecified":Z
    .local v21, "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 450
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 451
    move/from16 v22, v2

    move-object/from16 v2, p13

    .end local v2    # "componentSpecified":Z
    .local v22, "componentSpecified":Z
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 452
    move/from16 v2, p14

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v2, v27

    .end local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v2, "starters":[Lcom/android/server/wm/ActivityStarter;
    aput-object v0, v2, v15

    .line 381
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "top":Z
    .end local v18    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .end local v21    # "checkedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v22    # "componentSpecified":Z
    .end local v24    # "returnHomeFlags":I
    add-int/lit8 v13, v15, 0x1

    move-object v14, v2

    move-object v15, v7

    move-object/from16 v4, v16

    move/from16 v11, v17

    const/4 v0, -0x1

    move-object/from16 v2, p1

    move/from16 v7, p4

    .end local v15    # "i":I
    .local v13, "i":I
    goto/16 :goto_5d

    .line 505
    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v13    # "i":I
    :catchall_1c1
    move-exception v0

    move-object/from16 v11, p6

    goto/16 :goto_24a

    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v17    # "filterCallingUid":I
    .restart local v4    # "intents":[Landroid/content/Intent;
    .restart local v11    # "filterCallingUid":I
    :catchall_1c6
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v17, v11

    move-object/from16 v11, p6

    move-object/from16 v4, p12

    move-object/from16 v15, p9

    move/from16 v18, v6

    move/from16 v6, v17

    .end local v4    # "intents":[Landroid/content/Intent;
    .end local v11    # "filterCallingUid":I
    .restart local v16    # "intents":[Landroid/content/Intent;
    .restart local v17    # "filterCallingUid":I
    goto/16 :goto_3a2

    .line 387
    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v17    # "filterCallingUid":I
    .restart local v4    # "intents":[Landroid/content/Intent;
    .restart local v11    # "filterCallingUid":I
    .local v12, "intent":Landroid/content/Intent;
    .restart local v13    # "i":I
    .local v14, "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v15, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v23    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    :cond_1d7
    move-object/from16 v16, v4

    move/from16 v17, v11

    move-object v2, v14

    move-object v7, v15

    move-object/from16 v11, p6

    move-object/from16 v4, p12

    move v15, v13

    .end local v4    # "intents":[Landroid/content/Intent;
    .end local v11    # "filterCallingUid":I
    .end local v13    # "i":I
    .end local v14    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v15, "i":I
    .restart local v16    # "intents":[Landroid/content/Intent;
    .restart local v17    # "filterCallingUid":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v13, "File descriptors passed in Intent"

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "realCallingPid":I
    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v8    # "realCallingUid":I
    .end local v9    # "callingUid":I
    .end local v10    # "callingPid":I
    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v17    # "filterCallingUid":I
    .end local v19    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p8    # "resolvedTypes":[Ljava/lang/String;
    .end local p9    # "resultTo":Landroid/os/IBinder;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p14    # "allowBackgroundActivityStart":Z
    throw v0
    :try_end_1ea
    .catchall {:try_start_182 .. :try_end_1ea} :catchall_249

    .line 505
    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v23    # "intentGrants":Lcom/android/server/uri/NeededUriGrants;
    .restart local v4    # "intents":[Landroid/content/Intent;
    .restart local v6    # "realCallingPid":I
    .restart local v8    # "realCallingUid":I
    .restart local v9    # "callingUid":I
    .restart local v10    # "callingPid":I
    .restart local v11    # "filterCallingUid":I
    .local v15, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v19    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p8    # "resolvedTypes":[Ljava/lang/String;
    .restart local p9    # "resultTo":Landroid/os/IBinder;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p14    # "allowBackgroundActivityStart":Z
    :catchall_1ea
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v17, v11

    move-object v7, v15

    move-object/from16 v11, p6

    move-object/from16 v4, p12

    move-object/from16 v15, p9

    move/from16 v18, v6

    move/from16 v6, v17

    .end local v4    # "intents":[Landroid/content/Intent;
    .end local v11    # "filterCallingUid":I
    .end local v15    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v16    # "intents":[Landroid/content/Intent;
    .restart local v17    # "filterCallingUid":I
    goto/16 :goto_3a2

    .line 381
    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v17    # "filterCallingUid":I
    .restart local v4    # "intents":[Landroid/content/Intent;
    .restart local v11    # "filterCallingUid":I
    .restart local v13    # "i":I
    .restart local v14    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v15    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_1fc
    move-object/from16 v16, v4

    move/from16 v17, v11

    move-object v2, v14

    move-object v7, v15

    move-object/from16 v11, p6

    move-object/from16 v4, p12

    move v15, v13

    .line 455
    .end local v4    # "intents":[Landroid/content/Intent;
    .end local v11    # "filterCallingUid":I
    .end local v13    # "i":I
    .end local v14    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v15    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v16    # "intents":[Landroid/content/Intent;
    .restart local v17    # "filterCallingUid":I
    :try_start_207
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_20b
    .catchall {:try_start_207 .. :try_end_20b} :catchall_383

    const/4 v12, 0x1

    if-le v0, v12, :cond_252

    .line 456
    :try_start_20e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "startActivities: different apps ["

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 458
    .local v12, "size":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_21b
    if-ge v13, v12, :cond_236

    .line 459
    invoke-virtual {v7, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v12, -0x1

    if-ne v13, v15, :cond_22e

    const-string v15, "]"

    goto :goto_230

    :cond_22e
    const-string v15, ", "

    :goto_230
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    add-int/lit8 v13, v13, 0x1

    goto :goto_21b

    .line 461
    .end local v13    # "i":I
    :cond_236
    const-string v13, " from "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const-string v13, "ActivityTaskManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_248
    .catchall {:try_start_20e .. :try_end_248} :catchall_249

    goto :goto_252

    .line 505
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v12    # "size":I
    :catchall_249
    move-exception v0

    :goto_24a
    move-object/from16 v15, p9

    move/from16 v18, v6

    move/from16 v6, v17

    goto/16 :goto_3a2

    .line 465
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :cond_252
    :goto_252
    move-object/from16 v12, p9

    .line 466
    .local v12, "sourceResultTo":Landroid/os/IBinder;
    const/4 v0, 0x1

    :try_start_255
    new-array v13, v0, [Lcom/android/server/wm/ActivityRecord;

    .line 468
    .local v13, "outActivity":[Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v14
    :try_end_25c
    .catchall {:try_start_255 .. :try_end_25c} :catchall_383

    :try_start_25c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 469
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 473
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/StartingSurfaceController;->beginDeferAddStartingWindow()V
    :try_end_26d
    .catchall {:try_start_25c .. :try_end_26d} :catchall_371

    .line 475
    const/4 v0, 0x0

    move-object/from16 v15, p9

    .end local p9    # "resultTo":Landroid/os/IBinder;
    .local v0, "i":I
    .local v15, "resultTo":Landroid/os/IBinder;
    :goto_270
    :try_start_270
    array-length v3, v2

    if-ge v0, v3, :cond_32c

    .line 476
    aget-object v3, v2, v0

    invoke-virtual {v3, v15}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 477
    invoke-virtual {v3, v13}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v3
    :try_end_281
    .catchall {:try_start_270 .. :try_end_281} :catchall_352

    .line 478
    .local v3, "startResult":I
    if-gez v3, :cond_2d2

    .line 480
    add-int/lit8 v18, v0, 0x1

    move/from16 v4, v18

    .local v4, "j":I
    :goto_287
    :try_start_287
    array-length v5, v2

    if-ge v4, v5, :cond_2a1

    .line 481
    iget-object v5, v1, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;
    :try_end_28c
    .catchall {:try_start_287 .. :try_end_28c} :catchall_2c9

    move/from16 v18, v6

    .end local v6    # "realCallingPid":I
    .local v18, "realCallingPid":I
    :try_start_28e
    aget-object v6, v2, v4

    invoke-interface {v5, v6}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V
    :try_end_293
    .catchall {:try_start_28e .. :try_end_293} :catchall_29a

    .line 480
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, p8

    move/from16 v6, v18

    goto :goto_287

    .line 499
    .end local v0    # "i":I
    .end local v3    # "startResult":I
    .end local v4    # "j":I
    :catchall_29a
    move-exception v0

    move-object/from16 v27, v2

    move/from16 v6, v17

    goto/16 :goto_359

    .line 480
    .end local v18    # "realCallingPid":I
    .restart local v0    # "i":I
    .restart local v3    # "startResult":I
    .restart local v4    # "j":I
    .restart local v6    # "realCallingPid":I
    :cond_2a1
    move/from16 v18, v6

    .line 483
    .end local v4    # "j":I
    .end local v6    # "realCallingPid":I
    .restart local v18    # "realCallingPid":I
    nop

    .line 499
    :try_start_2a4
    iget-object v4, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    .line 500
    if-eqz p10, :cond_2b0

    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v21

    :cond_2b0
    move-object/from16 v5, v21

    .line 499
    invoke-virtual {v4, v5}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V

    .line 501
    iget-object v4, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    monitor-exit v14
    :try_end_2bb
    .catchall {:try_start_2a4 .. :try_end_2bb} :catchall_2c2

    .line 505
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 483
    return v3

    .line 503
    .end local v0    # "i":I
    .end local v3    # "startResult":I
    :catchall_2c2
    move-exception v0

    move-object/from16 v27, v2

    move/from16 v6, v17

    goto/16 :goto_37a

    .line 499
    .end local v18    # "realCallingPid":I
    .restart local v6    # "realCallingPid":I
    :catchall_2c9
    move-exception v0

    move/from16 v18, v6

    move-object/from16 v27, v2

    move/from16 v6, v17

    .end local v6    # "realCallingPid":I
    .restart local v18    # "realCallingPid":I
    goto/16 :goto_359

    .line 485
    .end local v18    # "realCallingPid":I
    .restart local v0    # "i":I
    .restart local v3    # "startResult":I
    .restart local v6    # "realCallingPid":I
    :cond_2d2
    move/from16 v18, v6

    .end local v6    # "realCallingPid":I
    .restart local v18    # "realCallingPid":I
    :try_start_2d4
    aget-object v4, v13, v22
    :try_end_2d6
    .catchall {:try_start_2d4 .. :try_end_2d6} :catchall_326

    .line 486
    .local v4, "started":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_2f4

    :try_start_2d8
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v5
    :try_end_2dc
    .catchall {:try_start_2d8 .. :try_end_2dc} :catchall_2ed

    move/from16 v6, v17

    .end local v17    # "filterCallingUid":I
    .local v6, "filterCallingUid":I
    if-ne v5, v6, :cond_2f6

    .line 489
    :try_start_2e0
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;
    :try_end_2e2
    .catchall {:try_start_2e0 .. :try_end_2e2} :catchall_2e8

    move-object/from16 v27, v2

    move-object v15, v5

    const/16 v17, 0x1

    .end local v15    # "resultTo":Landroid/os/IBinder;
    .local v5, "resultTo":Landroid/os/IBinder;
    goto :goto_312

    .line 499
    .end local v0    # "i":I
    .end local v3    # "startResult":I
    .end local v4    # "started":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "resultTo":Landroid/os/IBinder;
    .restart local v15    # "resultTo":Landroid/os/IBinder;
    :catchall_2e8
    move-exception v0

    move-object/from16 v27, v2

    goto/16 :goto_359

    .end local v6    # "filterCallingUid":I
    .restart local v17    # "filterCallingUid":I
    :catchall_2ed
    move-exception v0

    move/from16 v6, v17

    move-object/from16 v27, v2

    .end local v17    # "filterCallingUid":I
    .restart local v6    # "filterCallingUid":I
    goto/16 :goto_359

    .line 486
    .end local v6    # "filterCallingUid":I
    .restart local v0    # "i":I
    .restart local v3    # "startResult":I
    .restart local v4    # "started":Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "filterCallingUid":I
    :cond_2f4
    move/from16 v6, v17

    .line 491
    .end local v17    # "filterCallingUid":I
    .restart local v6    # "filterCallingUid":I
    :cond_2f6
    move-object v15, v12

    .line 493
    :try_start_2f7
    array-length v5, v2

    const/16 v17, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_310

    .line 494
    add-int/lit8 v5, v0, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStarter;->getIntent()Landroid/content/Intent;

    move-result-object v5
    :try_end_306
    .catchall {:try_start_2f7 .. :try_end_306} :catchall_322

    move-object/from16 v27, v2

    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    const/high16 v2, 0x10000000

    :try_start_30a
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_30d
    .catchall {:try_start_30a .. :try_end_30d} :catchall_30e

    goto :goto_312

    .line 499
    .end local v0    # "i":I
    .end local v3    # "startResult":I
    .end local v4    # "started":Lcom/android/server/wm/ActivityRecord;
    :catchall_30e
    move-exception v0

    goto :goto_359

    .line 493
    .end local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v0    # "i":I
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v3    # "startResult":I
    .restart local v4    # "started":Lcom/android/server/wm/ActivityRecord;
    :cond_310
    move-object/from16 v27, v2

    .line 475
    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v3    # "startResult":I
    .end local v4    # "started":Lcom/android/server/wm/ActivityRecord;
    .restart local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :goto_312
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p5

    move-object/from16 v5, p8

    move-object/from16 v4, p12

    move/from16 v17, v6

    move/from16 v6, v18

    move-object/from16 v2, v27

    goto/16 :goto_270

    .line 499
    .end local v0    # "i":I
    .end local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :catchall_322
    move-exception v0

    move-object/from16 v27, v2

    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    goto :goto_359

    .end local v6    # "filterCallingUid":I
    .end local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v17    # "filterCallingUid":I
    :catchall_326
    move-exception v0

    move-object/from16 v27, v2

    move/from16 v6, v17

    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v17    # "filterCallingUid":I
    .restart local v6    # "filterCallingUid":I
    .restart local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    goto :goto_359

    .line 475
    .end local v18    # "realCallingPid":I
    .end local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v0    # "i":I
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v6, "realCallingPid":I
    .restart local v17    # "filterCallingUid":I
    :cond_32c
    move-object/from16 v27, v2

    move/from16 v18, v6

    move/from16 v6, v17

    .line 499
    .end local v0    # "i":I
    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v17    # "filterCallingUid":I
    .local v6, "filterCallingUid":I
    .restart local v18    # "realCallingPid":I
    .restart local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :try_start_332
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    .line 500
    if-eqz p10, :cond_33e

    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v21

    :cond_33e
    move-object/from16 v2, v21

    .line 499
    invoke-virtual {v0, v2}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V

    .line 501
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 502
    nop

    .line 503
    monitor-exit v14
    :try_end_34a
    .catchall {:try_start_332 .. :try_end_34a} :catchall_381

    :try_start_34a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_34d
    .catchall {:try_start_34a .. :try_end_34d} :catchall_37f

    .line 505
    .end local v12    # "sourceResultTo":Landroid/os/IBinder;
    .end local v13    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    nop

    .line 508
    return v22

    .line 499
    .end local v18    # "realCallingPid":I
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v6, "realCallingPid":I
    .restart local v12    # "sourceResultTo":Landroid/os/IBinder;
    .restart local v13    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "filterCallingUid":I
    :catchall_352
    move-exception v0

    move-object/from16 v27, v2

    move/from16 v18, v6

    move/from16 v6, v17

    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v17    # "filterCallingUid":I
    .local v6, "filterCallingUid":I
    .restart local v18    # "realCallingPid":I
    .restart local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :goto_359
    :try_start_359
    iget-object v2, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    .line 500
    if-eqz p10, :cond_365

    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v21

    :cond_365
    move-object/from16 v3, v21

    .line 499
    invoke-virtual {v2, v3}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V

    .line 501
    iget-object v2, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 502
    nop

    .end local v6    # "filterCallingUid":I
    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v8    # "realCallingUid":I
    .end local v9    # "callingUid":I
    .end local v10    # "callingPid":I
    .end local v12    # "sourceResultTo":Landroid/os/IBinder;
    .end local v13    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v15    # "resultTo":Landroid/os/IBinder;
    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v18    # "realCallingPid":I
    .end local v19    # "origId":J
    .end local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p8    # "resolvedTypes":[Ljava/lang/String;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p14    # "allowBackgroundActivityStart":Z
    throw v0

    .line 503
    .restart local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v6, "realCallingPid":I
    .restart local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v8    # "realCallingUid":I
    .restart local v9    # "callingUid":I
    .restart local v10    # "callingPid":I
    .restart local v12    # "sourceResultTo":Landroid/os/IBinder;
    .restart local v13    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .restart local v16    # "intents":[Landroid/content/Intent;
    .restart local v17    # "filterCallingUid":I
    .restart local v19    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p8    # "resolvedTypes":[Ljava/lang/String;
    .restart local p9    # "resultTo":Landroid/os/IBinder;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p14    # "allowBackgroundActivityStart":Z
    :catchall_371
    move-exception v0

    move-object/from16 v27, v2

    move/from16 v18, v6

    move/from16 v6, v17

    move-object/from16 v15, p9

    .end local v2    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .end local v17    # "filterCallingUid":I
    .end local p9    # "resultTo":Landroid/os/IBinder;
    .local v6, "filterCallingUid":I
    .restart local v15    # "resultTo":Landroid/os/IBinder;
    .restart local v18    # "realCallingPid":I
    .restart local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :goto_37a
    monitor-exit v14
    :try_end_37b
    .catchall {:try_start_359 .. :try_end_37b} :catchall_381

    :try_start_37b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v6    # "filterCallingUid":I
    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v8    # "realCallingUid":I
    .end local v9    # "callingUid":I
    .end local v10    # "callingPid":I
    .end local v15    # "resultTo":Landroid/os/IBinder;
    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v18    # "realCallingPid":I
    .end local v19    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p3    # "incomingRealCallingPid":I
    .end local p4    # "incomingRealCallingUid":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p8    # "resolvedTypes":[Ljava/lang/String;
    .end local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .end local p11    # "userId":I
    .end local p12    # "reason":Ljava/lang/String;
    .end local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .end local p14    # "allowBackgroundActivityStart":Z
    throw v0
    :try_end_37f
    .catchall {:try_start_37b .. :try_end_37f} :catchall_37f

    .line 505
    .end local v12    # "sourceResultTo":Landroid/os/IBinder;
    .end local v13    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .restart local v6    # "filterCallingUid":I
    .restart local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v8    # "realCallingUid":I
    .restart local v9    # "callingUid":I
    .restart local v10    # "callingPid":I
    .restart local v15    # "resultTo":Landroid/os/IBinder;
    .restart local v16    # "intents":[Landroid/content/Intent;
    .restart local v18    # "realCallingPid":I
    .restart local v19    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStartController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p3    # "incomingRealCallingPid":I
    .restart local p4    # "incomingRealCallingUid":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p8    # "resolvedTypes":[Ljava/lang/String;
    .restart local p10    # "options":Lcom/android/server/wm/SafeActivityOptions;
    .restart local p11    # "userId":I
    .restart local p12    # "reason":Ljava/lang/String;
    .restart local p13    # "originatingPendingIntent":Lcom/android/server/am/PendingIntentRecord;
    .restart local p14    # "allowBackgroundActivityStart":Z
    :catchall_37f
    move-exception v0

    goto :goto_3a2

    .line 503
    .restart local v12    # "sourceResultTo":Landroid/os/IBinder;
    .restart local v13    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .restart local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    :catchall_381
    move-exception v0

    goto :goto_37a

    .line 505
    .end local v12    # "sourceResultTo":Landroid/os/IBinder;
    .end local v13    # "outActivity":[Lcom/android/server/wm/ActivityRecord;
    .end local v15    # "resultTo":Landroid/os/IBinder;
    .end local v18    # "realCallingPid":I
    .end local v27    # "starters":[Lcom/android/server/wm/ActivityStarter;
    .local v6, "realCallingPid":I
    .restart local v17    # "filterCallingUid":I
    .restart local p9    # "resultTo":Landroid/os/IBinder;
    :catchall_383
    move-exception v0

    move/from16 v18, v6

    move/from16 v6, v17

    move-object/from16 v15, p9

    .end local v17    # "filterCallingUid":I
    .local v6, "filterCallingUid":I
    .restart local v18    # "realCallingPid":I
    goto :goto_3a2

    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v18    # "realCallingPid":I
    .local v4, "intents":[Landroid/content/Intent;
    .local v6, "realCallingPid":I
    .restart local v11    # "filterCallingUid":I
    .local v15, "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catchall_38b
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v18, v6

    move v6, v11

    move-object v7, v15

    move-object/from16 v11, p6

    move-object/from16 v15, p9

    .end local v4    # "intents":[Landroid/content/Intent;
    .end local v11    # "filterCallingUid":I
    .end local v15    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v6, "filterCallingUid":I
    .restart local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v16    # "intents":[Landroid/content/Intent;
    .restart local v18    # "realCallingPid":I
    goto :goto_3a2

    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v18    # "realCallingPid":I
    .local v6, "realCallingPid":I
    .restart local v11    # "filterCallingUid":I
    .restart local v15    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p7, "intents":[Landroid/content/Intent;
    :catchall_397
    move-exception v0

    move/from16 v18, v6

    move v6, v11

    move-object v7, v15

    move-object/from16 v11, p6

    move-object/from16 v16, p7

    move-object/from16 v15, p9

    .end local v11    # "filterCallingUid":I
    .end local p7    # "intents":[Landroid/content/Intent;
    .end local p9    # "resultTo":Landroid/os/IBinder;
    .local v6, "filterCallingUid":I
    .restart local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v15, "resultTo":Landroid/os/IBinder;
    .restart local v16    # "intents":[Landroid/content/Intent;
    .restart local v18    # "realCallingPid":I
    :goto_3a2
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    throw v0

    .line 353
    .end local v6    # "filterCallingUid":I
    .end local v7    # "startingUidPkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v8    # "realCallingUid":I
    .end local v9    # "callingUid":I
    .end local v10    # "callingPid":I
    .end local v15    # "resultTo":Landroid/os/IBinder;
    .end local v16    # "intents":[Landroid/content/Intent;
    .end local v18    # "realCallingPid":I
    .end local v19    # "origId":J
    .local p2, "callingUid":I
    .restart local p7    # "intents":[Landroid/content/Intent;
    .restart local p9    # "resultTo":Landroid/os/IBinder;
    :cond_3a6
    move-object/from16 v11, p6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "intents are length different than resolvedTypes"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_3b0
    move-object/from16 v11, p6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "resolvedTypes is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_3bb
    move-object/from16 v11, p6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "intents is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 36
    .param p1, "uid"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "intents"    # [Landroid/content/Intent;
    .param p7, "resolvedTypes"    # [Ljava/lang/String;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p10, "userId"    # I
    .param p11, "validateIncomingUser"    # Z
    .param p12, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p13, "allowBackgroundActivityStart"    # Z

    .line 330
    const-string/jumbo v0, "startActivityInPackage"

    .line 332
    .local v0, "reason":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 333
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 332
    const-string/jumbo v6, "startActivityInPackage"

    move-object/from16 v1, p0

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v1

    .line 336
    .end local p10    # "userId":I
    .local v1, "userId":I
    const/4 v8, 0x0

    const-string/jumbo v19, "startActivityInPackage"

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    move/from16 v18, v1

    move-object/from16 v20, p12

    move/from16 v21, p13

    invoke-virtual/range {v7 .. v21}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    move-result v2

    return v2
.end method

.method final startActivitiesInPackage(ILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 26
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p8, "userId"    # I
    .param p9, "validateIncomingUser"    # Z
    .param p10, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p11, "allowBackgroundActivityStart"    # Z

    .line 306
    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/ActivityStartController;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    return v0
.end method

.method final startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 35
    .param p1, "uid"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "resolvedType"    # Ljava/lang/String;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "options"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p13, "userId"    # I
    .param p14, "inTask"    # Lcom/android/server/wm/Task;
    .param p15, "reason"    # Ljava/lang/String;
    .param p16, "validateIncomingUser"    # Z
    .param p17, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p18, "allowBackgroundActivityStart"    # Z

    .line 267
    move-object/from16 v0, p0

    move/from16 v1, p13

    move/from16 v2, p16

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p15

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v0

    .line 271
    .end local p13    # "userId":I
    .local v0, "userId":I
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p15

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 272
    move/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 273
    move/from16 v6, p2

    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 274
    move/from16 v7, p3

    invoke-virtual {v4, v7}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 275
    move-object/from16 v8, p4

    invoke-virtual {v4, v8}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 276
    move-object/from16 v9, p5

    invoke-virtual {v4, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 277
    move-object/from16 v10, p7

    invoke-virtual {v4, v10}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 278
    move-object/from16 v11, p8

    invoke-virtual {v4, v11}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 279
    move-object/from16 v12, p9

    invoke-virtual {v4, v12}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 280
    move/from16 v13, p10

    invoke-virtual {v4, v13}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 281
    move/from16 v14, p11

    invoke-virtual {v4, v14}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 282
    move-object/from16 v15, p12

    invoke-virtual {v4, v15}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 283
    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 284
    move/from16 p13, v0

    move-object/from16 v0, p14

    .end local v0    # "userId":I
    .restart local p13    # "userId":I
    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStarter;->setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 285
    move-object/from16 v0, p17

    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 286
    move/from16 v0, p18

    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 287
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v4

    .line 271
    return v4
.end method

.method startActivityInTaskFragment(Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;IILandroid/os/IBinder;)I
    .registers 11
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p2, "activityIntent"    # Landroid/content/Intent;
    .param p3, "activityOptions"    # Landroid/os/Bundle;
    .param p4, "resultTo"    # Landroid/os/IBinder;
    .param p5, "callingUid"    # I
    .param p6, "callingPid"    # I
    .param p7, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 526
    if-eqz p4, :cond_7

    invoke-static {p4}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 527
    .local v0, "caller":Lcom/android/server/wm/ActivityRecord;
    :goto_8
    const-string/jumbo v1, "startActivityInTaskFragment"

    invoke-virtual {p0, p2, v1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 528
    invoke-virtual {v1, p3}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 529
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStarter;->setInTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 530
    invoke-virtual {v1, p4}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    const/4 v2, -0x1

    .line 531
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 532
    invoke-virtual {v1, p5}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 533
    invoke-virtual {v1, p6}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 534
    invoke-virtual {v1, p5}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 535
    invoke-virtual {v1, p6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 536
    if-eqz v0, :cond_35

    iget v2, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    goto :goto_3b

    :cond_35
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v2

    :goto_3b
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 537
    invoke-virtual {v1, p7}, Lcom/android/server/wm/ActivityStarter;->setErrorCallbackToken(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 538
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v1

    .line 527
    return v1
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 154
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 155
    .local v0, "options":Landroid/app/ActivityOptions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 156
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 160
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 162
    :cond_14
    invoke-virtual {p4}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    .line 163
    .local v2, "displayId":I
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 164
    iget-object v3, p4, Lcom/android/server/wm/TaskDisplayArea;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 165
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v3

    .line 164
    invoke-virtual {v0, v3}, Landroid/app/ActivityOptions;->setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    .line 169
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 173
    :try_start_29
    invoke-virtual {p4, v1}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_78

    .line 175
    .local v1, "rootHomeTask":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 176
    nop

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startHomeActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 179
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 180
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 181
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 182
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 183
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    .line 184
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    .line 185
    iget-boolean v3, v1, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    if-eqz v3, :cond_77

    .line 189
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleResumeTopActivities()V

    .line 191
    :cond_77
    return-void

    .line 175
    .end local v1    # "rootHomeTask":Lcom/android/server/wm/Task;
    :catchall_78
    move-exception v1

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 176
    throw v1
.end method

.method startSetupActivity()V
    .registers 11

    .line 198
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    if-eqz v0, :cond_5

    .line 199
    return-void

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 206
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9f

    .line 207
    const-string v1, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9f

    .line 208
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 211
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPGRADE_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 213
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v4, 0x100480

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 216
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9f

    .line 217
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 218
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.SETUP_VERSION"

    if-eqz v5, :cond_52

    .line 219
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_53

    .line 220
    :cond_52
    const/4 v5, 0x0

    :goto_53
    nop

    .line 221
    .local v5, "vers":Ljava/lang/String;
    if-nez v5, :cond_68

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_68

    .line 222
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    :cond_68
    const-string v6, "last_setup_shown"

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, "lastVers":Ljava/lang/String;
    if-eqz v5, :cond_9f

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9f

    .line 228
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 231
    const-string/jumbo v7, "startSetupActivity"

    invoke-virtual {p0, v1, v7}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    .line 232
    invoke-virtual {v7, v3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 233
    invoke-virtual {v3, v7}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 234
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 238
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "vers":Ljava/lang/String;
    .end local v6    # "lastVers":Ljava/lang/String;
    :cond_9f
    return-void
.end method
