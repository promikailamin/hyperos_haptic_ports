.class Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;
.super Landroid/os/Handler;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppStandbyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method constructor <init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/usage/AppStandbyController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2681
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 2682
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2683
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 2687
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_150

    .line 2771
    :pswitch_7
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_14e

    .line 2767
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mreportExemptedSyncStart(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V

    .line 2768
    goto/16 :goto_14e

    .line 2758
    :pswitch_19
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-lez v0, :cond_1e

    move v1, v2

    :cond_1e
    move v0, v1

    .line 2759
    .local v0, "exempted":Z
    if-eqz v0, :cond_2e

    .line 2760
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v3}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mreportExemptedSyncScheduled(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V

    goto/16 :goto_14e

    .line 2762
    :cond_2e
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v3}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mreportUnexemptedSyncScheduled(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V

    .line 2764
    goto/16 :goto_14e

    .line 2753
    .end local v0    # "exempted":Z
    :pswitch_3b
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 2754
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v8

    .line 2753
    invoke-static/range {v4 .. v9}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mcheckAndUpdateStandbyState(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIJ)V

    .line 2755
    goto/16 :goto_14e

    .line 2732
    :pswitch_53
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmHandler(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 2733
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mwaitForAdminData(Lcom/android/server/usage/AppStandbyController;)V

    .line 2734
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController;->checkIdleStates(I)Z

    .line 2735
    goto/16 :goto_14e

    .line 2749
    :pswitch_6b
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$minformParoleStateChanged(Lcom/android/server/usage/AppStandbyController;)V

    .line 2750
    goto/16 :goto_14e

    .line 2742
    :pswitch_72
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    .line 2743
    .local v0, "record":Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->packageName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->userId:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mreportContentProviderUsage(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2744
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->recycle()V

    .line 2745
    goto/16 :goto_14e

    .line 2738
    .end local v0    # "record":Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;
    :pswitch_86
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mtriggerListenerQuotaBump(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V

    .line 2739
    goto/16 :goto_14e

    .line 2702
    :pswitch_93
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 2704
    const-wide v3, 0x7fffffffffffffffL

    .line 2705
    .local v3, "earliestCheck":J
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v5

    .line 2706
    .local v5, "nowElapsed":J
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v1}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmPendingIdleStateChecks(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseLongArray;

    move-result-object v7

    monitor-enter v7

    .line 2707
    :try_start_ab
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v1}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmPendingIdleStateChecks(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseLongArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_b6
    if-ltz v1, :cond_103

    .line 2708
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v2}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmPendingIdleStateChecks(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseLongArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v8

    .line 2710
    .local v8, "expirationTime":J
    cmp-long v2, v8, v5

    if-gtz v2, :cond_fa

    .line 2711
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v2}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmPendingIdleStateChecks(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseLongArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    .line 2712
    .local v2, "userId":I
    iget-object v10, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v10, v2}, Lcom/android/server/usage/AppStandbyController;->checkIdleStates(I)Z

    move-result v10

    if-eqz v10, :cond_f0

    iget-object v10, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v10}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmAppIdleEnabled(Lcom/android/server/usage/AppStandbyController;)Z

    move-result v10

    if-eqz v10, :cond_f0

    .line 2713
    iget-object v10, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-wide v10, v10, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    add-long v8, v5, v10

    .line 2714
    iget-object v10, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v10}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmPendingIdleStateChecks(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseLongArray;

    move-result-object v10

    invoke-virtual {v10, v2, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_fa

    .line 2716
    :cond_f0
    iget-object v10, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v10}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmPendingIdleStateChecks(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseLongArray;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 2717
    goto :goto_100

    .line 2721
    .end local v2    # "userId":I
    :cond_fa
    :goto_fa
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    move-wide v2, v10

    move-wide v3, v2

    .line 2707
    .end local v8    # "expirationTime":J
    :goto_100
    add-int/lit8 v1, v1, -0x1

    goto :goto_b6

    .line 2723
    .end local v1    # "i":I
    :cond_103
    monitor-exit v7
    :try_end_104
    .catchall {:try_start_ab .. :try_end_104} :catchall_123

    .line 2724
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v3, v1

    if-eqz v1, :cond_14e

    .line 2725
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v1}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmHandler(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v2}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmHandler(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object v2

    .line 2726
    invoke-virtual {v2, v0}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sub-long v7, v3, v5

    .line 2725
    invoke-virtual {v1, v0, v7, v8}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_14e

    .line 2723
    :catchall_123
    move-exception v0

    :try_start_124
    monitor-exit v7
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_123

    throw v0

    .line 2698
    .end local v3    # "earliestCheck":J
    .end local v5    # "nowElapsed":J
    :pswitch_126
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v2, :cond_133

    move v1, v2

    :cond_133
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/usage/AppStandbyController;->forceIdleState(Ljava/lang/String;IZ)V

    .line 2699
    goto :goto_14e

    .line 2691
    :pswitch_137
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    .line 2692
    .local v0, "r":Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->packageName:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->userId:I

    iget v4, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->bucket:I

    iget v5, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->reason:I

    iget-boolean v6, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->isUserInteraction:Z

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$minformListeners(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIIZ)V

    .line 2694
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->recycle()V

    .line 2695
    nop

    .line 2775
    .end local v0    # "r":Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
    :cond_14e
    :goto_14e
    return-void

    nop

    :pswitch_data_150
    .packed-switch 0x3
        :pswitch_137
        :pswitch_126
        :pswitch_93
        :pswitch_7
        :pswitch_86
        :pswitch_72
        :pswitch_6b
        :pswitch_53
        :pswitch_3b
        :pswitch_19
        :pswitch_c
    .end packed-switch
.end method
