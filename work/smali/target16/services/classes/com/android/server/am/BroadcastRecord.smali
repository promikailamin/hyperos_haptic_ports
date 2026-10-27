.class public final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "BroadcastRecord.java"


# static fields
.field public static CORE_DEFER_UNTIL_ACTIVE:Z = true

.field public static final EMPTY_RECEIVERS:Ljava/util/List;

.field static final LIMIT_PRIORITY_SCOPE:J = 0x1621b4c8L


# instance fields
.field public final alarm:Z

.field public anrCount:I

.field public final appOp:I

.field public beyondCount:I

.field public final blockedUntilBeyondCount:[I

.field public final callerApp:Lcom/android/server/am/ProcessRecord;

.field public final callerFeatureId:Ljava/lang/String;

.field public final callerInstantApp:Z

.field public final callerInstrumented:Z

.field public final callerPackage:Ljava/lang/String;

.field public final callerProcState:I

.field public final callingPid:I

.field public final callingUid:I

.field public curApp:Lcom/android/server/am/ProcessRecord;

.field public curComponent:Landroid/content/ComponentName;

.field public curFilter:Lcom/android/server/am/BroadcastFilter;

.field public curFilteredExtras:Landroid/os/Bundle;

.field public curReceiver:Landroid/content/pm/ActivityInfo;

.field public final deferUntilActive:Z

.field public deferredCount:I

.field public final delivery:[I

.field public final deliveryReasons:[Ljava/lang/String;

.field public dispatchClockTime:J

.field public dispatchRealTime:J

.field public dispatchTime:J

.field public enqueueClockTime:J

.field public enqueueRealTime:J

.field public enqueueTime:J

.field public final excludedPackages:[Ljava/lang/String;

.field public final excludedPermissions:[Ljava/lang/String;

.field public final filterExtrasForReceiver:Ljava/util/function/BiFunction;

.field public finishTime:J

.field public final initialSticky:Z

.field public final intent:Landroid/content/Intent;

.field public final interactive:Z

.field public final mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

.field public mBroadcastProcessedRecords:Landroid/util/ArrayMap;

.field public mCachedToShortString:Ljava/lang/String;

.field public mCachedToString:Ljava/lang/String;

.field public mMatchingRecordsCache:Landroid/util/ArrayMap;

.field public manifestCount:I

.field public manifestSkipCount:I

.field public nextReceiver:I

.field public final options:Landroid/app/BroadcastOptions;

.field public final ordered:Z

.field public originalEnqueueClockTime:J

.field public final originalStickyCallingUid:I

.field public final prioritized:Z

.field public final pushMessage:Z

.field public final pushMessageOverQuota:Z

.field public queue:Lcom/android/server/am/BroadcastQueue;

.field public final realCallingUid:I

.field public receiverTime:J

.field public final receivers:Ljava/util/List;

.field public final requiredPermissions:[Ljava/lang/String;

.field public final resolvedType:Ljava/lang/String;

.field public resultAbort:Z

.field public resultCode:I

.field public resultData:Ljava/lang/String;

.field public resultExtras:Landroid/os/Bundle;

.field public resultTo:Landroid/content/IIntentReceiver;

.field public resultToApp:Lcom/android/server/am/ProcessRecord;

.field public final scheduledTime:[J

.field public final shareIdentity:Z

.field public state:I

.field public final sticky:Z

.field public final targetComp:Landroid/content/ComponentName;

.field public terminalCount:I

.field public final terminalTime:[J

.field public final timeoutExempt:Z

.field public final urgent:Z

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 188
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/android/server/am/BroadcastRecord;->EMPTY_RECEIVERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;ILcom/android/server/compat/PlatformCompat;)V
    .registers 36

    move-object/from16 v0, p14

    move-object/from16 v1, p17

    move/from16 v2, p21

    .line 461
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 173
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    if-eqz p2, :cond_fb

    .line 465
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 466
    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 467
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 468
    iput-object p3, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 469
    iput-object p4, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 470
    iput-object p5, p0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    .line 471
    iput p6, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 472
    iput p7, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 p1, p30

    .line 473
    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    .line 474
    iput-boolean p8, p0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    .line 475
    invoke-static {p3, p7}, Lcom/android/server/am/BroadcastRecord;->isCallerInstrumented(Lcom/android/server/am/ProcessRecord;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    .line 476
    iput-object p9, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    .line 477
    iput-object p10, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    move-object p1, p11

    .line 478
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    move-object/from16 p1, p12

    .line 479
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    move/from16 p1, p13

    .line 480
    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 481
    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz p15, :cond_48

    move-object/from16 p1, p15

    goto :goto_4a

    .line 482
    :cond_48
    sget-object p1, Lcom/android/server/am/BroadcastRecord;->EMPTY_RECEIVERS:Ljava/util/List;

    :goto_4a
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 p3, 0x0

    if-eqz p15, :cond_54

    .line 483
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result p4

    goto :goto_55

    :cond_54
    move p4, p3

    :goto_55
    new-array p4, p4, [I

    iput-object p4, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 484
    array-length p5, p4

    new-array p5, p5, [Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    .line 485
    invoke-static {p2, v0}, Lcom/android/server/am/BroadcastRecord;->calculateUrgent(Landroid/content/Intent;Landroid/app/BroadcastOptions;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    .line 486
    invoke-static {p7, v0, v1, v2, p2}, Lcom/android/server/am/BroadcastRecord;->calculateDeferUntilActive(ILandroid/app/BroadcastOptions;Landroid/content/IIntentReceiver;ZZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    move-object/from16 p2, p31

    .line 488
    invoke-static {p1, v2, p2}, Lcom/android/server/am/BroadcastRecord;->calculateBlockedUntilBeyondCount(Ljava/util/List;ZLcom/android/server/compat/PlatformCompat;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    .line 490
    array-length p2, p4

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    .line 491
    array-length p2, p4

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    move-object/from16 p2, p16

    .line 492
    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    .line 493
    iput-object v1, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move/from16 p2, p18

    .line 494
    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 p2, p19

    .line 495
    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 p2, p20

    .line 496
    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 497
    iput-boolean v2, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 p2, p22

    .line 498
    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 p2, p23

    .line 499
    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 500
    invoke-static {p1, v2}, Lcom/android/server/am/BroadcastRecord;->isPrioritized([IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    move/from16 p1, p24

    .line 501
    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 502
    iput p3, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 503
    iput p3, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    move-object/from16 p1, p27

    .line 504
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    move/from16 p1, p28

    .line 505
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    const/4 p1, 0x1

    if-eqz v0, :cond_b9

    .line 506
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->isAlarmBroadcast()Z

    move-result p2

    if-eqz p2, :cond_b9

    move p2, p1

    goto :goto_ba

    :cond_b9
    move p2, p3

    :goto_ba
    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v0, :cond_c6

    .line 507
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->isPushMessagingBroadcast()Z

    move-result p2

    if-eqz p2, :cond_c6

    move p2, p1

    goto :goto_c7

    :cond_c6
    move p2, p3

    :goto_c7
    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v0, :cond_d3

    .line 508
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->isPushMessagingOverQuotaBroadcast()Z

    move-result p2

    if-eqz p2, :cond_d3

    move p2, p1

    goto :goto_d4

    :cond_d3
    move p2, p3

    :goto_d4
    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz v0, :cond_e0

    .line 509
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->isInteractive()Z

    move-result p2

    if-eqz p2, :cond_e0

    move p2, p1

    goto :goto_e1

    :cond_e0
    move p2, p3

    :goto_e1
    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v0, :cond_ec

    .line 510
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->isShareIdentityEnabled()Z

    move-result p2

    if-eqz p2, :cond_ec

    move p3, p1

    :cond_ec
    iput-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    move-object/from16 p1, p29

    .line 511
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    move/from16 p1, p25

    .line 512
    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    move/from16 p1, p26

    .line 513
    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->realCallingUid:I

    return-void

    .line 463
    :cond_fb
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Can\'t construct with a null intent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V
    .registers 5

    .line 520
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 173
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    .line 521
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 522
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 524
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 525
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 526
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    .line 527
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 528
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 529
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    .line 530
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    .line 531
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    .line 532
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 533
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 534
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 535
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    .line 536
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 537
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    .line 538
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 539
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    .line 540
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    .line 541
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 542
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 543
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 544
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 545
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    .line 546
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    .line 547
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    .line 548
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    .line 549
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    .line 550
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    .line 551
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 552
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 553
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 554
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 555
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 556
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    .line 557
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 558
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 559
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 560
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 561
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 562
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 563
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 564
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 565
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 566
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 567
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    .line 568
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    .line 569
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 570
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 571
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    .line 572
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    .line 573
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    .line 574
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    .line 575
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    .line 576
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    .line 577
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    .line 578
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    .line 579
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    .line 580
    iget p1, p1, Lcom/android/server/am/BroadcastRecord;->realCallingUid:I

    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->realCallingUid:I

    return-void
.end method

.method public static areMatchingKeysEqual(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .registers 4

    .line 1219
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingNamespaceFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v0

    .line 1220
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingNamespaceFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v1

    .line 1221
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 1225
    :cond_10
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingKeyFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object p0

    .line 1226
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingKeyFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object p1

    .line 1227
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static calculateBlockedUntilBeyondCount(Ljava/util/List;ZLcom/android/server/compat/PlatformCompat;)[I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/android/server/compat/PlatformCompat;",
            ")[I"
        }
    .end annotation

    .line 792
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 793
    new-array v1, v0, [I

    const/4 v2, 0x0

    if-eqz p1, :cond_10

    :goto_9
    if-ge v2, v0, :cond_63

    .line 798
    aput v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_10
    const-wide/32 v3, 0x1621b4c8

    .line 801
    invoke-static {p0, v3, v4, p2}, Lcom/android/server/am/BroadcastRecord;->calculateChangeStateForReceivers(Ljava/util/List;JLcom/android/server/compat/PlatformCompat;)[Z

    move-result-object p1

    const/4 p2, -0x1

    move v5, p2

    move v6, v5

    move v7, v6

    move v3, v2

    move v4, v3

    :goto_1d
    if-ge v2, v0, :cond_58

    .line 816
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/BroadcastRecord;->getReceiverPriority(Ljava/lang/Object;)I

    move-result v8

    if-nez v2, :cond_30

    .line 819
    aget-boolean v3, p1, v2

    if-nez v3, :cond_2e

    move v7, v2

    :cond_2e
    move v3, v8

    goto :goto_55

    :cond_30
    if-eq v8, v3, :cond_3a

    if-eq v7, p2, :cond_35

    move v6, v7

    :cond_35
    add-int/lit8 v5, v2, -0x1

    move v7, p2

    move v4, v8

    goto :goto_3d

    :cond_3a
    move v10, v4

    move v4, v3

    move v3, v10

    .line 836
    :goto_3d
    aget-boolean v9, p1, v2

    if-nez v9, :cond_4a

    add-int/lit8 v7, v5, 0x1

    .line 841
    aput v7, v1, v2

    move v7, v4

    move v4, v3

    move v3, v7

    move v7, v2

    goto :goto_55

    :cond_4a
    if-eq v8, v3, :cond_52

    if-eq v6, p2, :cond_52

    add-int/lit8 v8, v6, 0x1

    .line 847
    aput v8, v1, v2

    :cond_52
    move v10, v4

    move v4, v3

    move v3, v10

    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_58
    if-lez v0, :cond_63

    if-eq v5, p2, :cond_60

    if-ne v6, p2, :cond_63

    if-ne v7, p2, :cond_63

    .line 856
    :cond_60
    invoke-static {v1, p2}, Ljava/util/Arrays;->fill([II)V

    :cond_63
    return-object v1
.end method

.method public static calculateChangeStateForReceivers(Ljava/util/List;JLcom/android/server/compat/PlatformCompat;)[Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;J",
            "Lcom/android/server/compat/PlatformCompat;",
            ")[Z"
        }
    .end annotation

    .line 867
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 868
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 869
    new-array v2, v1, [Z

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_3c

    .line 871
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/BroadcastRecord;->getReceiverAppInfo(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 873
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_29

    .line 875
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_37

    .line 877
    :cond_29
    invoke-virtual {p3, p1, p2, v4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v5

    .line 879
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    .line 881
    :goto_37
    aput-boolean v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_3c
    return-object v2
.end method

.method public static calculateDeferUntilActive(ILandroid/app/BroadcastOptions;Landroid/content/IIntentReceiver;ZZ)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-nez p3, :cond_a

    if-eqz p2, :cond_a

    return v1

    :cond_a
    if-eqz p1, :cond_18

    .line 989
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->getDeferralPolicy()I

    move-result p1

    if-eq p1, v1, :cond_17

    const/4 p2, 0x2

    if-eq p1, p2, :cond_16

    goto :goto_18

    :cond_16
    return v1

    :cond_17
    return v0

    :cond_18
    :goto_18
    if-eqz p4, :cond_1b

    return v0

    .line 1003
    :cond_1b
    sget-boolean p1, Lcom/android/server/am/BroadcastRecord;->CORE_DEFER_UNTIL_ACTIVE:Z

    if-eqz p1, :cond_26

    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p0

    if-eqz p0, :cond_26

    return v1

    :cond_26
    return v0
.end method

.method public static calculateUrgent(Landroid/content/Intent;Landroid/app/BroadcastOptions;)Z
    .registers 3

    .line 954
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    const/4 v0, 0x1

    if-eqz p0, :cond_b

    return v0

    :cond_b
    if-eqz p1, :cond_1b

    .line 958
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_14

    return v0

    .line 961
    :cond_14
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isAlarmBroadcast()Z

    move-result p0

    if-eqz p0, :cond_1b

    return v0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public static debugLog(Landroid/app/BroadcastOptions;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 1319
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->isDebugLogEnabled()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static deliveryStateToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_1e

    .line 232
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 231
    :pswitch_8
    const-string p0, "DEFERRED"

    return-object p0

    .line 230
    :pswitch_b
    const-string p0, "FAILURE"

    return-object p0

    .line 229
    :pswitch_e
    const-string p0, "SCHEDULED"

    return-object p0

    .line 228
    :pswitch_11
    const-string p0, "TIMEOUT"

    return-object p0

    .line 227
    :pswitch_14
    const-string p0, "SKIPPED"

    return-object p0

    .line 226
    :pswitch_17
    const-string p0, "DELIVERED"

    return-object p0

    .line 225
    :pswitch_1a
    const-string p0, "PENDING"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static getDeliveryGroupMatchingFilter(Lcom/android/server/am/BroadcastRecord;)Landroid/content/IntentFilter;
    .registers 1

    .line 1245
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public static getDeliveryGroupMatchingKeyFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .registers 1

    .line 1239
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1240
    :cond_6
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingKeyFragment()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeliveryGroupMatchingNamespaceFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .registers 1

    .line 1233
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1234
    :cond_6
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingNamespaceFragment()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReceiverAppInfo(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 887
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_b

    .line 888
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastFilter;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    .line 890
    :cond_b
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public static getReceiverClassName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 919
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_b

    .line 920
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastFilter;->getReceiverClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 922
    :cond_b
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 911
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_f

    .line 912
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    iget-object p0, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object p0, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 914
    :cond_f
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static getReceiverPriority(Ljava/lang/Object;)I
    .registers 2

    .line 927
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_b

    .line 928
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getPriority()I

    move-result p0

    return p0

    .line 930
    :cond_b
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget p0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    return p0
.end method

.method public static getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 903
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_d

    .line 904
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    iget-object p0, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object p0, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    return-object p0

    .line 906
    :cond_d
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public static getReceiverUid(Ljava/lang/Object;)I
    .registers 2

    .line 895
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_9

    .line 896
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    iget p0, p0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    return p0

    .line 898
    :cond_9
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public static intentToString(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 1307
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 1309
    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v0
.end method

.method public static isCallerInstrumented(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 4

    .line 755
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_16

    const/16 v1, 0x7d0

    if-eq p1, v1, :cond_16

    const/4 p1, 0x0

    if-eqz p0, :cond_15

    .line 762
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object p0

    if-eqz p0, :cond_15

    return v0

    :cond_15
    return p1

    :cond_16
    return v0
.end method

.method public static isDeliveryStateBeyond(I)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v1, 0x2

    if-eq p0, v1, :cond_11

    const/4 v1, 0x3

    if-eq p0, v1, :cond_11

    const/4 v1, 0x5

    if-eq p0, v1, :cond_11

    const/4 v1, 0x6

    if-eq p0, v1, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    return v0
.end method

.method public static isDeliveryStateTerminal(I)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v1, 0x2

    if-eq p0, v1, :cond_e

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    const/4 v1, 0x5

    if-eq p0, v1, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    return v0
.end method

.method public static isMatchingKeyNull(Lcom/android/server/am/BroadcastRecord;)Z
    .registers 2

    .line 1211
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingNamespaceFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v0

    .line 1212
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingKeyFragment(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_f

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static isPrioritized([IZ)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 773
    array-length p1, p0

    if-lez p1, :cond_d

    aget p0, p0, v0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    return v0
.end method

.method public static isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 937
    :cond_4
    instance-of v1, p0, Landroid/content/pm/ResolveInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    instance-of v1, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_2e

    .line 938
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 939
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 940
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 941
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    return v0

    :cond_2e
    return v2
.end method

.method public static matchesDeliveryGroup(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .registers 4

    .line 1197
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupMatchingFilter(Lcom/android/server/am/BroadcastRecord;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 1200
    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->isMatchingKeyNull(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->isMatchingKeyNull(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_1b

    if-nez v0, :cond_1b

    .line 1202
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_1b
    if-eqz v0, :cond_2b

    .line 1204
    invoke-virtual {v0}, Landroid/content/IntentFilter;->asPredicate()Ljava/util/function/Predicate;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 p0, 0x0

    return p0

    .line 1207
    :cond_2b
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastRecord;->areMatchingKeysEqual(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public allReceiversPending()Z
    .registers 5

    .line 1256
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    if-nez v0, :cond_e

    iget-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public applySingletonPolicy(Lcom/android/server/am/ActivityManagerService;)V
    .registers 9

    .line 1144
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-nez v0, :cond_5

    goto :goto_52

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    .line 1145
    :goto_7
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_52

    .line 1146
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1147
    instance-of v3, v2, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_4f

    .line 1148
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1151
    :try_start_1b
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {p1, v4, v5, v6, v3}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v3
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_29} :catch_2a

    goto :goto_33

    :catch_2a
    move-exception v3

    .line 1155
    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    move v3, v0

    .line 1157
    :goto_33
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1158
    iget v5, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_4f

    if-eqz v3, :cond_4f

    .line 1159
    invoke-virtual {p1, v5, v4}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1160
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v3, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_52
    :goto_52
    return-void
.end method

.method public calculateTypeForLogging()I
    .registers 3

    .line 1012
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    .line 1017
    :goto_9
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v1, :cond_f

    or-int/lit8 v0, v0, 0x4

    .line 1020
    :cond_f
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v1, :cond_15

    or-int/lit8 v0, v0, 0x8

    .line 1023
    :cond_15
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v1, :cond_1b

    or-int/lit8 v0, v0, 0x10

    .line 1026
    :cond_1b
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v1, :cond_21

    or-int/lit8 v0, v0, 0x20

    .line 1029
    :cond_21
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v1, :cond_27

    or-int/lit8 v0, v0, 0x40

    .line 1032
    :cond_27
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v1, :cond_2d

    or-int/lit16 v0, v0, 0x80

    .line 1035
    :cond_2d
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v1, :cond_33

    or-int/lit16 v0, v0, 0x100

    .line 1038
    :cond_33
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz v1, :cond_39

    or-int/lit16 v0, v0, 0x200

    .line 1041
    :cond_39
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-eqz v1, :cond_3f

    or-int/lit16 v0, v0, 0x400

    .line 1044
    :cond_3f
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz p0, :cond_46

    or-int/lit16 p0, v0, 0x800

    return p0

    :cond_46
    return v0
.end method

.method public calculateTypesForLogging()[I
    .registers 3

    .line 1051
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x2

    .line 1053
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    goto :goto_14

    :cond_10
    const/4 v1, 0x1

    .line 1055
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1057
    :goto_14
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v1, :cond_1c

    const/4 v1, 0x4

    .line 1058
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1060
    :cond_1c
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v1, :cond_25

    const/16 v1, 0x8

    .line 1061
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1063
    :cond_25
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v1, :cond_2e

    const/16 v1, 0x10

    .line 1064
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1066
    :cond_2e
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v1, :cond_37

    const/16 v1, 0x20

    .line 1067
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1069
    :cond_37
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v1, :cond_40

    const/16 v1, 0x40

    .line 1070
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1072
    :cond_40
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v1, :cond_49

    const/16 v1, 0x80

    .line 1073
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1075
    :cond_49
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v1, :cond_52

    const/16 v1, 0x100

    .line 1076
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1078
    :cond_52
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz v1, :cond_5b

    const/16 v1, 0x200

    .line 1079
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1081
    :cond_5b
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-eqz v1, :cond_64

    const/16 v1, 0x400

    .line 1082
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 1084
    :cond_64
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz p0, :cond_6d

    const/16 p0, 0x800

    .line 1085
    invoke-virtual {v0, p0}, Landroid/util/IntArray;->add(I)V

    .line 1087
    :cond_6d
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p3, v2, :cond_c

    move v4, v3

    goto :goto_d

    :cond_c
    move v4, v1

    .line 1105
    :goto_d
    iget v5, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v5, v2, :cond_13

    move v2, v3

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    if-eq v5, p3, :cond_1b

    if-nez v4, :cond_1b

    if-nez v2, :cond_1b

    return v1

    .line 1112
    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_20
    if-ltz v0, :cond_67

    .line 1113
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1114
    instance-of v5, v2, Landroid/content/pm/ResolveInfo;

    if-nez v5, :cond_2d

    goto :goto_64

    .line 1117
    :cond_2d
    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_47

    .line 1119
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1120
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    if-eqz p2, :cond_47

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1121
    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    :cond_47
    if-nez v4, :cond_53

    .line 1122
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1123
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p3, :cond_64

    :cond_53
    if-nez p4, :cond_56

    return v3

    .line 1128
    :cond_56
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1129
    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v0, v1, :cond_63

    add-int/lit8 v1, v1, -0x1

    .line 1130
    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    :cond_63
    move v1, v3

    :cond_64
    :goto_64
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 1134
    :cond_67
    iget p1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    return v1
.end method

.method public clearMatchingRecordsCache()V
    .registers 2

    const/4 v0, 0x0

    .line 1283
    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    return-void
.end method

.method public containsAllReceivers(Ljava/util/List;)Z
    .registers 5

    .line 1177
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_17

    .line 1178
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/BroadcastRecord;->containsReceiver(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_17
    return v1
.end method

.method public containsReceiver(Ljava/lang/Object;)Z
    .registers 5

    .line 1168
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1a

    .line 1169
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    return v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public copyEnqueueTimeFrom(Lcom/android/server/am/BroadcastRecord;)V
    .registers 4

    .line 679
    iget-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    .line 680
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 681
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 682
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    return-void
.end method

.method public debugLog()Z
    .registers 1

    .line 1315
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->debugLog(Landroid/app/BroadcastOptions;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .registers 16
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 287
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " to user "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 288
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v2, :cond_3d

    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eq v2, v3, :cond_3d

    .line 290
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  targetComp: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    :cond_3d
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 294
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  extras: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    :cond_54
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "caller="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_6f

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_72

    :cond_6f
    const-string/jumbo v2, "null"

    :goto_72
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    const-string v2, " pid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 299
    const-string v2, " uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 300
    const-string v2, " realCallingUid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->realCallingUid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 301
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    const/4 v3, -0x1

    if-eqz v2, :cond_9b

    array-length v2, v2

    if-gtz v2, :cond_9f

    :cond_9b
    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v2, v3, :cond_bb

    .line 303
    :cond_9f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "requiredPermissions="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    const-string v2, "  appOp="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 307
    :cond_bb
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_d3

    array-length v2, v2

    if-lez v2, :cond_d3

    .line 308
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "excludedPermissions="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    :cond_d3
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    if-eqz v2, :cond_eb

    array-length v2, v2

    if-lez v2, :cond_eb

    .line 312
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "excludedPackages="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    :cond_eb
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v2, :cond_101

    .line 316
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "options="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 318
    :cond_101
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "enqueueClockTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    const-string v2, " dispatchClockTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_145

    .line 323
    const-string v2, " originalEnqueueClockTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    :cond_145
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 327
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "dispatchTime="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 329
    const-string p3, " ("

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v8, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v4, v8

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 331
    const-string v2, " since enq)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_188

    .line 333
    const-string v2, " finishTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 334
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    iget-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 336
    const-string p3, " since disp)"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_192

    .line 338
    :cond_188
    const-string p3, " receiverTime="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 340
    :goto_192
    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz p3, :cond_1a8

    .line 342
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "anrCount="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 344
    :cond_1a8
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez p3, :cond_1b4

    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    if-ne p3, v3, :cond_1b4

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-eqz p3, :cond_1d6

    .line 345
    :cond_1b4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "resultTo="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 346
    const-string p3, " resultCode="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 347
    const-string p3, " resultData="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    :cond_1d6
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    if-eqz p3, :cond_1e8

    .line 350
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "resultExtras="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 352
    :cond_1e8
    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez p3, :cond_1f8

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez p3, :cond_1f8

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez p3, :cond_1f8

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz p3, :cond_22e

    .line 353
    :cond_1f8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "resultAbort="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 354
    const-string p3, " ordered="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 355
    const-string p3, " sticky="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 356
    const-string p3, " initialSticky="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 357
    const-string p3, " originalStickyCallingUid="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 359
    :cond_22e
    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-eqz p3, :cond_240

    .line 360
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "nextReceiver="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 362
    :cond_240
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz p3, :cond_251

    .line 363
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "curFilter="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 365
    :cond_251
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz p3, :cond_262

    .line 366
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "curReceiver="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 368
    :cond_262
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz p3, :cond_2a2

    .line 369
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "curApp="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 370
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "curComponent="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz p3, :cond_284

    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    goto :goto_286

    :cond_284
    const-string p3, "--"

    :goto_286
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz p3, :cond_2a2

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p3, :cond_2a2

    .line 373
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "curSourceDir="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 374
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    :cond_2a2
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curFilteredExtras:Landroid/os/Bundle;

    if-eqz p3, :cond_2b0

    .line 378
    const-string p3, " filtered extras: "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curFilteredExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 380
    :cond_2b0
    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz p3, :cond_2df

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2cc

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2c9

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2c6

    const/4 v0, 0x4

    if-eq p3, v0, :cond_2c3

    .line 382
    const-string p3, " (?)"

    goto :goto_2ce

    .line 386
    :cond_2c3
    const-string p3, " (WAITING_SERVICES)"

    goto :goto_2ce

    .line 385
    :cond_2c6
    const-string p3, " (CALL_DONE_RECEIVE)"

    goto :goto_2ce

    .line 384
    :cond_2c9
    const-string p3, " (CALL_IN_RECEIVE)"

    goto :goto_2ce

    .line 383
    :cond_2cc
    const-string p3, " (APP_RECEIVE)"

    .line 388
    :goto_2ce
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "state="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    :cond_2df
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "terminalCount="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 391
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p3, :cond_2f7

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_2f8

    :cond_2f7
    move p3, v0

    .line 392
    :goto_2f8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    move v3, v0

    :goto_30f
    if-ge v3, p3, :cond_3b9

    .line 395
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 396
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    iget-object v5, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v5, v5, v3

    invoke-static {v5}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v5, 0x20

    .line 398
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 399
    iget-object v8, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v8, v8, v3

    cmp-long v8, v8, v6

    if-eqz v8, :cond_345

    .line 400
    const-string/jumbo v8, "scheduled "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    iget-object v8, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v8, v8, v3

    iget-wide v10, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 402
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 404
    :cond_345
    iget-object v8, p0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide v8, v8, v3

    cmp-long v8, v8, v6

    if-eqz v8, :cond_362

    .line 405
    const-string/jumbo v8, "terminal "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    iget-object v8, p0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide v8, v8, v3

    iget-object v10, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v10, v10, v3

    sub-long/2addr v8, v10

    invoke-static {v8, v9, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 407
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 409
    :cond_362
    const-string v5, "("

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    aget v5, v5, v3

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ") "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    const-string v5, "#"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    instance-of v5, v4, Lcom/android/server/am/BroadcastFilter;

    if-eqz v5, :cond_38d

    .line 412
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 413
    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v4, p1, v1}, Lcom/android/server/am/BroadcastFilter;->dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_39f

    .line 414
    :cond_38d
    instance-of v5, v4, Landroid/content/pm/ResolveInfo;

    if-eqz v5, :cond_39c

    .line 415
    const-string v5, "(manifest)"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v2, v1, v0}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    goto :goto_39f

    .line 418
    :cond_39c
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 420
    :goto_39f
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_3b5

    .line 421
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "reason: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3b5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_30f

    :cond_3b9
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1324
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 1325
    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1326
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-wide v0, 0x10900000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1327
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getBroadcastProcessedRecordsForTest()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/BroadcastProcessedEventRecord;",
            ">;"
        }
    .end annotation

    .line 1371
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public getDeliveryGroupPolicy()I
    .registers 1

    .line 1187
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->getDeliveryGroupPolicy()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getDeliveryState(I)I
    .registers 2

    .line 644
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget p0, p0, p1

    return p0
.end method

.method public getHostingRecordTriggerType()Ljava/lang/String;
    .registers 2

    .line 710
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v0, :cond_7

    .line 711
    const-string p0, "alarm"

    return-object p0

    .line 712
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v0, :cond_f

    .line 713
    const-string/jumbo p0, "push_message"

    return-object p0

    .line 714
    :cond_f
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz p0, :cond_17

    .line 715
    const-string/jumbo p0, "push_message_over_quota"

    return-object p0

    .line 717
    :cond_17
    const-string/jumbo p0, "unknown"

    return-object p0
.end method

.method public getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;
    .registers 6

    .line 731
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 732
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 734
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v2

    .line 735
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_20

    return-object v1

    .line 740
    :cond_20
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 741
    invoke-virtual {v1, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 745
    :cond_2a
    instance-of v0, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_42

    if-nez v1, :cond_37

    .line 747
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 749
    :cond_37
    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_42
    if-eqz v1, :cond_45

    return-object v1

    .line 751
    :cond_45
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public isAssumedDelivered(I)Z
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez p1, :cond_14

    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public isBlocked(I)Z
    .registers 3

    .line 652
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    aget p0, p0, p1

    if-ge v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isDeferUntilActive()Z
    .registers 1

    .line 702
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    return p0
.end method

.method public isForeground()Z
    .registers 2

    .line 686
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isMatchingRecord(Lcom/android/server/am/BroadcastRecord;)Z
    .registers 7

    .line 1260
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_15

    .line 1262
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 1265
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_27

    move v0, v3

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    if-eqz v0, :cond_49

    .line 1267
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_31
    if-ltz v1, :cond_49

    .line 1268
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    goto :goto_4a

    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    :cond_49
    move v2, v0

    .line 1274
    :goto_4a
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public isNoAbort()Z
    .registers 2

    .line 694
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x8000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isOffload()Z
    .registers 2

    .line 698
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isReplacePending()Z
    .registers 2

    .line 690
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isUrgent()Z
    .registers 1

    .line 706
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    return p0
.end method

.method public logBroadcastProcessedEventRecord()V
    .registers 4

    .line 1361
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 1363
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastProcessedEventRecord;

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessedEventRecord;->logToStatsD()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1365
    :cond_17
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public matchesDeliveryGroup(Lcom/android/server/am/BroadcastRecord;)Z
    .registers 2

    .line 1192
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastRecord;->matchesDeliveryGroup(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result p0

    return p0
.end method

.method public maybeStripForHistory()Lcom/android/server/am/BroadcastRecord;
    .registers 3

    .line 1091
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-nez v0, :cond_9

    return-object p0

    .line 1094
    :cond_9
    new-instance v0, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->maybeStripForHistory()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V

    return-object v0
.end method

.method public setDeliveryState(IILjava/lang/String;)Z
    .registers 10

    .line 593
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v0, v0, p1

    .line 594
    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_65

    if-ne p2, v0, :cond_e

    goto :goto_65

    :cond_e
    const/4 v1, 0x6

    const/4 v3, 0x1

    if-eq v0, v1, :cond_13

    goto :goto_18

    .line 603
    :cond_13
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->deferredCount:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->deferredCount:I

    :goto_18
    packed-switch p2, :pswitch_data_66

    goto :goto_3f

    .line 614
    :pswitch_1c
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->deferredCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->deferredCount:I

    goto :goto_3f

    .line 611
    :pswitch_22
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, p1

    goto :goto_3f

    .line 620
    :pswitch_2b
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, p1

    .line 621
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    goto :goto_3f

    .line 608
    :pswitch_39
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v0, p1

    .line 625
    :goto_3f
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aput p2, v0, p1

    .line 626
    iget-object p2, p0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    aput-object p3, p2, p1

    .line 630
    iget p2, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    if-lt p1, p2, :cond_60

    move p1, p2

    .line 632
    :goto_4c
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    array-length p3, p3

    if-ge p1, p3, :cond_60

    .line 633
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p3

    invoke-static {p3}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateBeyond(I)Z

    move-result p3

    if-eqz p3, :cond_60

    add-int/lit8 p1, p1, 0x1

    .line 634
    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    goto :goto_4c

    .line 640
    :cond_60
    iget p0, p0, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    if-eq p0, p2, :cond_65

    return v3

    :cond_65
    :goto_65
    return v2

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_39
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_22
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method

.method public setMatchingRecordsCache(Landroid/util/ArrayMap;)V
    .registers 2

    .line 1279
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->mMatchingRecordsCache:Landroid/util/ArrayMap;

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 4

    .line 1297
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    if-nez v0, :cond_32

    .line 1298
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->intentToString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/u"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    .line 1302
    :cond_32
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1289
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    .line 1292
    :cond_21
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    return-object p0
.end method

.method public updateBroadcastProcessedEventRecord(Ljava/lang/Object;J)V
    .registers 7

    .line 1339
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1340
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    .line 1341
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastProcessedEventRecord;

    if-nez v1, :cond_3c

    .line 1343
    new-instance v1, Lcom/android/server/am/BroadcastProcessedEventRecord;

    invoke-direct {v1}, Lcom/android/server/am/BroadcastProcessedEventRecord;-><init>()V

    .line 1344
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->calculateTypesForLogging()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastProcessedEventRecord;->setBroadcastTypes([I)Lcom/android/server/am/BroadcastProcessedEventRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1345
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastProcessedEventRecord;->setIntentAction(Ljava/lang/String;)Lcom/android/server/am/BroadcastProcessedEventRecord;

    move-result-object v1

    .line 1346
    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastProcessedEventRecord;->setReceiverProcessName(Ljava/lang/String;)Lcom/android/server/am/BroadcastProcessedEventRecord;

    move-result-object v1

    .line 1347
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastProcessedEventRecord;->setReceiverUid(I)Lcom/android/server/am/BroadcastProcessedEventRecord;

    move-result-object p1

    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1348
    invoke-virtual {p1, v1}, Lcom/android/server/am/BroadcastProcessedEventRecord;->setSenderUid(I)Lcom/android/server/am/BroadcastProcessedEventRecord;

    move-result-object v1

    .line 1350
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    :cond_3c
    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/BroadcastProcessedEventRecord;->addReceiverFinishTime(J)V

    return-void
.end method

.method public wasDelivered(I)Z
    .registers 3

    .line 668
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    return p1
.end method

.method public wasDeliveryAttempted(I)Z
    .registers 3

    .line 656
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_f

    const/4 v0, 0x5

    if-eq p0, v0, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    return p1
.end method
