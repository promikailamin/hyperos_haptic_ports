.class public Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mCallingPid:I

.field public final mCallingUid:I

.field public final mCancellationElapsedTimeMs:J

.field public final mCount:I

.field public final mId:I

.field public final mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final mMustHaveFlags:I

.field public final mMustNotHaveFlags:I

.field public final mPkg:Ljava/lang/String;

.field public final mRank:I

.field public final mReason:I

.field public final mSendDelete:Z

.field public final mTag:Ljava/lang/String;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public static synthetic $r8$lambda$JqwDe9ZkYXAqtt5oz-qopN18Czk(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->lambda$run$0(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kYFIDEcWoLAYUYKeGjvl50FfPbY(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$smisChildOfCurrentGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;J)V
    .registers 17

    .line 9892
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9893
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    .line 9894
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    .line 9895
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 9896
    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    .line 9897
    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    .line 9898
    iput p7, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    .line 9899
    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    .line 9900
    iput-boolean p9, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    .line 9901
    iput p10, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    .line 9902
    iput p11, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    .line 9903
    iput p12, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mRank:I

    .line 9904
    iput p13, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCount:I

    .line 9905
    iput-object p14, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-wide p1, p15

    .line 9906
    iput-wide p1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCancellationElapsedTimeMs:J

    return-void
.end method


# virtual methods
.method public final synthetic lambda$run$0(I)Z
    .registers 6

    .line 9958
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_20

    if-eq v0, v2, :cond_20

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    const/16 v1, 0x18

    if-ne v0, v1, :cond_11

    goto :goto_20

    :cond_11
    const/16 v1, 0x8

    if-ne v0, v1, :cond_25

    and-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_1f

    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_25

    :cond_1f
    return v3

    :cond_20
    :goto_20
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_25

    return v3

    .line 9973
    :cond_25
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_2b

    return v3

    :cond_2b
    return v2
.end method

.method public run()V
    .registers 19

    move-object/from16 v0, p0

    .line 9911
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    :goto_7
    move-object v7, v1

    goto :goto_10

    :cond_9
    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 9912
    :goto_10
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_2d

    .line 9913
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    move-object v9, v7

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    iget v8, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    move-object v11, v9

    iget v9, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    iget v10, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    invoke-static/range {v2 .. v11}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    move-object v9, v11

    goto :goto_2e

    :cond_2d
    move-object v9, v7

    .line 9918
    :goto_2e
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mgetPackageImportanceWithIdentity(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)I

    move-result v1

    .line 9920
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v15, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v15

    .line 9922
    :try_start_3b
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v3

    if-eqz v3, :cond_12e

    .line 9928
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/4 v12, 0x1

    if-ne v2, v12, :cond_5d

    .line 9929
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUsageStats(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_5d

    :catchall_5a
    move-exception v0

    goto/16 :goto_160

    .line 9932
    :cond_5d
    :goto_5d
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/16 v4, 0xa

    if-ne v2, v4, :cond_6d

    .line 9933
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v2

    if-nez v2, :cond_7d

    :cond_6d
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    if-ne v2, v12, :cond_a4

    .line 9934
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 9935
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->isFlagBubbleRemoved()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 9937
    :cond_7d
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    if-eqz v1, :cond_94

    .line 9938
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    move-result v1

    goto :goto_95

    :cond_94
    const/4 v1, 0x0

    :goto_95
    or-int/lit8 v1, v1, 0x2

    .line 9941
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/android/server/notification/NotificationDelegate;->onBubbleMetadataFlagChanged(Ljava/lang/String;I)V

    .line 9942
    monitor-exit v15

    return-void

    .line 9944
    :cond_a4
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_b1

    .line 9945
    monitor-exit v15

    return-void

    .line 9947
    :cond_b1
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_c5

    .line 9951
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mmaybeNotifySystemUiListenerLifetimeExtendedLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    .line 9954
    monitor-exit v15

    return-void

    .line 9957
    :cond_c5
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V

    .line 9980
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mremoveFromNotificationListsLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v8

    .line 9981
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mRank:I

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCount:I

    iget-wide v10, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCancellationElapsedTimeMs:J

    invoke-static/range {v2 .. v11}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelNotificationLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;J)V

    .line 9984
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_113

    .line 9985
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object v4, v3

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    move-object v5, v4

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    move-object v6, v5

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    move-object v7, v6

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    iget-boolean v8, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    new-instance v10, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable$$ExternalSyntheticLambda1;

    invoke-direct {v10}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable$$ExternalSyntheticLambda1;-><init>()V

    .line 9988
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v11

    move v13, v12

    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    move/from16 v16, v13

    iget-wide v13, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCancellationElapsedTimeMs:J

    move-object/from16 v17, v9

    move-object v9, v1

    move-object v1, v7

    move-object/from16 v7, v17

    .line 9985
    invoke-static/range {v2 .. v14}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelGroupChildrenLocked(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V

    goto :goto_114

    :cond_113
    move-object v1, v3

    .line 9990
    :goto_114
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 9991
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v2

    if-eqz v2, :cond_15e

    .line 9992
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v0

    const/4 v13, 0x1

    invoke-virtual {v0, v1, v13}, Lcom/android/server/notification/ShortcutHelper;->maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;Z)V

    goto :goto_15e

    .line 9999
    :cond_12e
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmGroupHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/GroupHelper;->maybeCancelGroupChildrenForCanceledSummary(Ljava/lang/String;Ljava/lang/String;III)V

    .line 10005
    iget v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_15e

    .line 10006
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_15e

    .line 10008
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 10012
    :cond_15e
    :goto_15e
    monitor-exit v15

    return-void

    :goto_160
    monitor-exit v15
    :try_end_161
    .catchall {:try_start_3b .. :try_end_161} :catchall_5a

    throw v0
.end method
