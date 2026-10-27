.class public Lcom/android/server/AppStateTrackerImpl$MyHandler;
.super Landroid/os/Handler;
.source "AppStateTrackerImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;Landroid/os/Looper;)V
    .registers 3

    .line 823
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 824
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public doUserRemoved(I)V
    .registers 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 867
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 888
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_145

    .line 895
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 896
    :try_start_d
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-boolean v2, v1, Lcom/android/server/AppStateTrackerImpl;->mStarted:Z

    if-nez v2, :cond_18

    .line 897
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    goto/16 :goto_143

    .line 899
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_15

    .line 902
    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v2

    .line 903
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_14e

    :pswitch_28
    goto :goto_6f

    .line 980
    :pswitch_29
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_30

    move v4, v5

    :cond_30
    invoke-virtual {p0, v0, v4}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidCached(IZ)V

    return-void

    .line 974
    :pswitch_34
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidIdle(I)V

    .line 975
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_6f

    .line 976
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidDisabled(I)V

    return-void

    .line 968
    :pswitch_43
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidGone(I)V

    .line 969
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_6f

    .line 970
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidDisabled(I)V

    return-void

    .line 965
    :pswitch_52
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidActive(I)V

    return-void

    .line 958
    :pswitch_58
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v5, :cond_5d

    goto :goto_5e

    :cond_5d
    move v5, v4

    .line 959
    :goto_5e
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p0

    array-length p1, p0

    :goto_65
    if-ge v4, p1, :cond_6f

    aget-object v0, p0, v4

    .line 960
    invoke-static {v0, v1, v5}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monAutoRestrictedBucketFeatureFlagChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    :cond_6f
    :goto_6f
    return-void

    .line 940
    :pswitch_70
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p1

    array-length v0, p1

    :goto_77
    if-ge v4, v0, :cond_81

    aget-object v5, p1, v4

    .line 941
    invoke-static {v5, v1}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monExemptedBucketChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 943
    :cond_81
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 954
    :pswitch_8c
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->handleUserRemoved(I)V

    return-void

    .line 947
    :pswitch_94
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p1

    array-length v0, p1

    :goto_9b
    if-ge v4, v0, :cond_a5

    aget-object v5, p1, v4

    .line 948
    invoke-static {v5, v1}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monForceAllAppsStandbyChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9b

    .line 950
    :cond_a5
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 933
    :pswitch_b0
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p1

    array-length v0, p1

    :goto_b7
    if-ge v4, v0, :cond_c1

    aget-object v5, p1, v4

    .line 934
    invoke-static {v5, v1}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monTempPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    .line 936
    :cond_c1
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 926
    :pswitch_cc
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p1

    array-length v0, p1

    :goto_d3
    if-ge v4, v0, :cond_dd

    aget-object v5, p1, v4

    .line 927
    invoke-static {v5, v1}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d3

    .line 929
    :cond_dd
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 919
    :pswitch_e8
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p1

    array-length v0, p1

    :goto_ef
    if-ge v4, v0, :cond_f9

    aget-object v5, p1, v4

    .line 920
    invoke-static {v5, v1}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monPowerSaveUnexempted(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_ef

    .line 922
    :cond_f9
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 912
    :pswitch_104
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v0

    array-length v5, v0

    :goto_10b
    if-ge v4, v5, :cond_11b

    aget-object v6, v0, v4

    .line 913
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v1, v7, v8}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monRunAnyAppOpsChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;ILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_10b

    .line 915
    :cond_11b
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 905
    :pswitch_126
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v0

    array-length v6, v0

    :goto_12d
    if-ge v4, v6, :cond_139

    aget-object v7, v0, v4

    .line 906
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v1, v8}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monUidActiveStateChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_12d

    .line 908
    :cond_139
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 899
    :goto_143
    :try_start_143
    monitor-exit v0
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_15

    throw p0

    .line 890
    :cond_145
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->handleUserRemoved(I)V

    return-void

    nop

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_126
        :pswitch_28
        :pswitch_28
        :pswitch_104
        :pswitch_e8
        :pswitch_cc
        :pswitch_b0
        :pswitch_94
        :pswitch_8c
        :pswitch_28
        :pswitch_70
        :pswitch_58
        :pswitch_52
        :pswitch_43
        :pswitch_34
        :pswitch_29
    .end packed-switch
.end method

.method public handleUidActive(I)V
    .registers 4

    .line 998
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 999
    :try_start_7
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$smaddUidToArray(Landroid/util/SparseBooleanArray;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1000
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyUidActiveStateChanged(I)V

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_1f

    .line 1002
    :cond_1d
    :goto_1d
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1b

    throw p0
.end method

.method public final handleUidCached(IZ)V
    .registers 6

    .line 986
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    .line 987
    invoke-virtual {v2, p1, p2}, Lcom/android/server/AppStateTrackerImpl$Listener;->handleUidCachedChanged(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public final handleUidDisabled(I)V
    .registers 5

    .line 992
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    .line 993
    invoke-virtual {v2, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->removeAlarmsForUid(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method public handleUidGone(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1006
    invoke-virtual {p0, p1, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeUid(IZ)V

    return-void
.end method

.method public handleUidIdle(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1011
    invoke-virtual {p0, p1, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeUid(IZ)V

    return-void
.end method

.method public notifyAllExemptionListChanged()V
    .registers 2

    const/4 v0, 0x5

    .line 841
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 842
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyAllUnexempted()V
    .registers 2

    const/4 v0, 0x4

    .line 836
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 837
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyAutoRestrictedBucketFeatureFlagChanged(Z)V
    .registers 4

    const/16 v0, 0xb

    .line 861
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 862
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 863
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyExemptedBucketChanged()V
    .registers 2

    const/16 v0, 0xa

    .line 856
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 857
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyForceAllAppsStandbyChanged()V
    .registers 2

    const/4 v0, 0x7

    .line 851
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 852
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyRunAnyAppOpsChanged(ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 832
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTempExemptionListChanged()V
    .registers 2

    const/4 v0, 0x6

    .line 846
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 847
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyUidActiveStateChanged(I)V
    .registers 3

    const/4 v0, 0x0

    .line 828
    invoke-virtual {p0, v0, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidActive(I)V
    .registers 4

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 871
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 4

    const/16 v0, 0xf

    .line 883
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidGone(IZ)V
    .registers 4

    const/16 v0, 0xd

    .line 875
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 4

    const/16 v0, 0xe

    .line 879
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeUid(IZ)V
    .registers 5

    .line 1015
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1016
    :try_start_7
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$smremoveUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 1017
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyUidActiveStateChanged(I)V

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_1f

    .line 1019
    :cond_1d
    :goto_1d
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1b

    throw p0
.end method
