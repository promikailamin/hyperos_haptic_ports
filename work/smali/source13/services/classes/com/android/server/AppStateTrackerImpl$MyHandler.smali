.class Lcom/android/server/AppStateTrackerImpl$MyHandler;
.super Landroid/os/Handler;
.source "AppStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MSG_ALL_EXEMPTION_LIST_CHANGED:I = 0x5

.field private static final MSG_ALL_UNEXEMPTED:I = 0x4

.field private static final MSG_AUTO_RESTRICTED_BUCKET_FEATURE_FLAG_CHANGED:I = 0xb

.field private static final MSG_EXEMPTED_BUCKET_CHANGED:I = 0xa

.field private static final MSG_FORCE_ALL_CHANGED:I = 0x7

.field private static final MSG_FORCE_APP_STANDBY_FEATURE_FLAG_CHANGED:I = 0x9

.field private static final MSG_ON_UID_ACTIVE:I = 0xc

.field private static final MSG_ON_UID_GONE:I = 0xd

.field private static final MSG_ON_UID_IDLE:I = 0xe

.field private static final MSG_RUN_ANY_CHANGED:I = 0x3

.field private static final MSG_TEMP_EXEMPTION_LIST_CHANGED:I = 0x6

.field private static final MSG_UID_ACTIVE_STATE_CHANGED:I = 0x0

.field private static final MSG_USER_REMOVED:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/AppStateTrackerImpl;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 838
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 839
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 840
    return-void
.end method

.method private handleUidDisabled(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 1015
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 1016
    .local v3, "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    invoke-virtual {v3, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->removeAlarmsForUid(I)V

    .line 1015
    .end local v3    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1018
    :cond_12
    return-void
.end method

.method private removeUid(IZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "remove"    # Z

    .line 1038
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1039
    :try_start_7
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$smremoveUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1040
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyUidActiveStateChanged(I)V

    .line 1042
    :cond_1a
    monitor-exit v0

    .line 1043
    return-void

    .line 1042
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method


# virtual methods
.method public doUserRemoved(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 887
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 888
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 904
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_17a

    .line 911
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    goto :goto_15

    .line 906
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTrackerImpl;->handleUserRemoved(I)V

    .line 907
    return-void

    .line 912
    :goto_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-boolean v1, v1, Lcom/android/server/AppStateTrackerImpl;->mStarted:Z

    if-nez v1, :cond_1d

    .line 913
    monitor-exit v0

    return-void

    .line 915
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_177

    .line 916
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 918
    .local v0, "sender":Lcom/android/server/AppStateTrackerImpl;
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v1

    .line 919
    .local v1, "start":J
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_180

    .line 1012
    :pswitch_31
    return-void

    .line 1006
    :pswitch_32
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidIdle(I)V

    .line 1007
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_40

    .line 1008
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidDisabled(I)V

    .line 1010
    :cond_40
    return-void

    .line 1000
    :pswitch_41
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidGone(I)V

    .line 1001
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_4f

    .line 1002
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidDisabled(I)V

    .line 1004
    :cond_4f
    return-void

    .line 997
    :pswitch_50
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidActive(I)V

    .line 998
    return-void

    .line 990
    :pswitch_56
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_5b

    goto :goto_5c

    :cond_5b
    move v5, v4

    :goto_5c
    move v3, v5

    .line 991
    .local v3, "autoRestrictedBucket":Z
    iget-object v5, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v5}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v5

    array-length v6, v5

    :goto_64
    if-ge v4, v6, :cond_6e

    aget-object v7, v5, v4

    .line 992
    .local v7, "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    invoke-static {v7, v0, v3}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monAutoRestrictedBucketFeatureFlagChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;Z)V

    .line 991
    .end local v7    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 994
    :cond_6e
    return-void

    .line 956
    .end local v3    # "autoRestrictedBucket":Z
    :pswitch_6f
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v3

    array-length v5, v3

    :goto_76
    if-ge v4, v5, :cond_80

    aget-object v6, v3, v4

    .line 957
    .local v6, "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    invoke-static {v6, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monExemptedBucketChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    .line 956
    .end local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_76

    .line 959
    :cond_80
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 960
    return-void

    .line 972
    :pswitch_8b
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 973
    :try_start_92
    iget-object v6, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-boolean v6, v6, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    if-nez v6, :cond_99

    goto :goto_9a

    :cond_99
    move v5, v4

    .line 974
    .local v5, "unblockAlarms":Z
    :goto_9a
    monitor-exit v3
    :try_end_9b
    .catchall {:try_start_92 .. :try_end_9b} :catchall_bd

    .line 975
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v3

    array-length v6, v3

    :goto_a2
    if-ge v4, v6, :cond_b1

    aget-object v7, v3, v4

    .line 976
    .restart local v7    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    invoke-virtual {v7}, Lcom/android/server/AppStateTrackerImpl$Listener;->updateAllJobs()V

    .line 977
    if-eqz v5, :cond_ae

    .line 978
    invoke-virtual {v7}, Lcom/android/server/AppStateTrackerImpl$Listener;->unblockAllUnrestrictedAlarms()V

    .line 975
    .end local v7    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    :cond_ae
    add-int/lit8 v4, v4, 0x1

    goto :goto_a2

    .line 981
    :cond_b1
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 983
    return-void

    .line 974
    .end local v5    # "unblockAlarms":Z
    :catchall_bd
    move-exception v4

    :try_start_be
    monitor-exit v3
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw v4

    .line 986
    :pswitch_c0
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/server/AppStateTrackerImpl;->handleUserRemoved(I)V

    .line 987
    return-void

    .line 963
    :pswitch_c8
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v3

    array-length v5, v3

    :goto_cf
    if-ge v4, v5, :cond_d9

    aget-object v6, v3, v4

    .line 964
    .restart local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    invoke-static {v6, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monForceAllAppsStandbyChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    .line 963
    .end local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_cf

    .line 966
    :cond_d9
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 967
    return-void

    .line 949
    :pswitch_e4
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v3

    array-length v5, v3

    :goto_eb
    if-ge v4, v5, :cond_f5

    aget-object v6, v3, v4

    .line 950
    .restart local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    invoke-static {v6, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monTempPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    .line 949
    .end local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_eb

    .line 952
    :cond_f5
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 953
    return-void

    .line 942
    :pswitch_100
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v3

    array-length v5, v3

    :goto_107
    if-ge v4, v5, :cond_111

    aget-object v6, v3, v4

    .line 943
    .restart local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    invoke-static {v6, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    .line 942
    .end local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_107

    .line 945
    :cond_111
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 946
    return-void

    .line 935
    :pswitch_11c
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v3

    array-length v5, v3

    :goto_123
    if-ge v4, v5, :cond_12d

    aget-object v6, v3, v4

    .line 936
    .restart local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    invoke-static {v6, v0}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monPowerSaveUnexempted(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    .line 935
    .end local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_123

    .line 938
    :cond_12d
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 939
    return-void

    .line 928
    :pswitch_138
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v3

    array-length v5, v3

    :goto_13f
    if-ge v4, v5, :cond_14f

    aget-object v6, v3, v4

    .line 929
    .restart local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v0, v7, v8}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monRunAnyAppOpsChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;ILjava/lang/String;)V

    .line 928
    .end local v6    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_13f

    .line 931
    :cond_14f
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 932
    return-void

    .line 921
    :pswitch_15a
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v3

    array-length v6, v3

    :goto_161
    if-ge v4, v6, :cond_16d

    aget-object v7, v3, v4

    .line 922
    .restart local v7    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v0, v8}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monUidActiveStateChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;I)V

    .line 921
    .end local v7    # "l":Lcom/android/server/AppStateTrackerImpl$Listener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_161

    .line 924
    :cond_16d
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v3}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v3

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 925
    return-void

    .line 915
    .end local v0    # "sender":Lcom/android/server/AppStateTrackerImpl;
    .end local v1    # "start":J
    :catchall_177
    move-exception v1

    :try_start_178
    monitor-exit v0
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_177

    throw v1

    :pswitch_data_17a
    .packed-switch 0x8
        :pswitch_d
    .end packed-switch

    :pswitch_data_180
    .packed-switch 0x0
        :pswitch_15a
        :pswitch_31
        :pswitch_31
        :pswitch_138
        :pswitch_11c
        :pswitch_100
        :pswitch_e4
        :pswitch_c8
        :pswitch_c0
        :pswitch_8b
        :pswitch_6f
        :pswitch_56
        :pswitch_50
        :pswitch_41
        :pswitch_32
    .end packed-switch
.end method

.method public handleUidActive(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 1021
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1022
    :try_start_7
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$smaddUidToArray(Landroid/util/SparseBooleanArray;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1023
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyUidActiveStateChanged(I)V

    .line 1025
    :cond_1a
    monitor-exit v0

    .line 1026
    return-void

    .line 1025
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public handleUidGone(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 1029
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeUid(IZ)V

    .line 1030
    return-void
.end method

.method public handleUidIdle(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 1034
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeUid(IZ)V

    .line 1035
    return-void
.end method

.method public notifyAllExemptionListChanged()V
    .registers 2

    .line 856
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeMessages(I)V

    .line 857
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 858
    return-void
.end method

.method public notifyAllUnexempted()V
    .registers 2

    .line 851
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeMessages(I)V

    .line 852
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 853
    return-void
.end method

.method public notifyAutoRestrictedBucketFeatureFlagChanged(Z)V
    .registers 4
    .param p1, "autoRestrictedBucket"    # Z

    .line 881
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeMessages(I)V

    .line 882
    nop

    .line 883
    const/4 v1, 0x0

    .line 882
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 883
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 884
    return-void
.end method

.method public notifyExemptedBucketChanged()V
    .registers 2

    .line 876
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeMessages(I)V

    .line 877
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 878
    return-void
.end method

.method public notifyForceAllAppsStandbyChanged()V
    .registers 2

    .line 866
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeMessages(I)V

    .line 867
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 868
    return-void
.end method

.method public notifyForcedAppStandbyFeatureFlagChanged()V
    .registers 2

    .line 871
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeMessages(I)V

    .line 872
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 873
    return-void
.end method

.method public notifyRunAnyAppOpsChanged(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 847
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 848
    return-void
.end method

.method public notifyTempExemptionListChanged()V
    .registers 2

    .line 861
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeMessages(I)V

    .line 862
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 863
    return-void
.end method

.method public notifyUidActiveStateChanged(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 843
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 844
    return-void
.end method

.method public onUidActive(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 891
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 892
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 895
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 896
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 899
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 900
    return-void
.end method
