.class public Lcom/android/server/usage/UsageStatsService$H;
.super Landroid/os/Handler;
.source "UsageStatsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V
    .registers 3

    .line 2123
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2124
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 2129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_13a

    .line 2217
    :pswitch_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 2163
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Lcom/android/server/usage/AppStandbyInternal;->postCheckIdleStates(I)V

    return-void

    .line 2160
    :pswitch_13
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->onUidRemoved(I)V

    return-void

    :pswitch_1f
    const/16 p1, 0x9

    .line 2174
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2188
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 2189
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v0

    monitor-enter v0

    .line 2190
    :try_start_30
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    .line 2191
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_a1

    add-int/lit8 v1, v1, -0x1

    :goto_3d
    if-ltz v1, :cond_10f

    .line 2193
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 2195
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v0

    monitor-enter v0

    .line 2196
    :try_start_49
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v2

    .line 2197
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 2198
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->remove(I)V

    .line 2199
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_49 .. :try_end_6a} :catchall_9e

    .line 2203
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_70
    if-ltz v0, :cond_9b

    .line 2204
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2205
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2206
    invoke-virtual {v4, v2, v3}, Lcom/android/server/usage/UsageStatsService;->getEstimatedPackageLaunchTime(ILjava/lang/String;)J

    move-result-wide v4

    .line 2208
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v6}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmEstimatedLaunchTimeChangedListeners(Lcom/android/server/usage/UsageStatsService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_88
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_98

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;

    .line 2209
    invoke-interface {v7, v2, v3, v4, v5}, Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;->onEstimatedLaunchTimeChanged(ILjava/lang/String;J)V

    goto :goto_88

    :cond_98
    add-int/lit8 v0, v0, -0x1

    goto :goto_70

    :cond_9b
    add-int/lit8 v1, v1, -0x1

    goto :goto_3d

    :catchall_9e
    move-exception p0

    .line 2199
    :try_start_9f
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw p0

    :catchall_a1
    move-exception p0

    .line 2191
    :try_start_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw p0

    .line 2169
    :pswitch_a4
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmLock(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2170
    :try_start_ab
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mloadGlobalComponentUsageLocked(Lcom/android/server/usage/UsageStatsService;)V

    .line 2171
    monitor-exit v0

    return-void

    :catchall_b2
    move-exception p0

    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_ab .. :try_end_b4} :catchall_b2

    throw p0

    .line 2166
    :pswitch_b5
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$monPackageRemoved(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;)V

    return-void

    .line 2140
    :pswitch_c1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-wide/32 v1, 0x80000

    .line 2142
    :try_start_c6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usageStatsHandleUserUnlocked("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2144
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$monUserUnlocked(Lcom/android/server/usage/UsageStatsService;I)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_e5} :catch_eb
    .catchall {:try_start_c6 .. :try_end_e5} :catchall_e9

    .line 2152
    :goto_e5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_10f

    :catchall_e9
    move-exception p0

    goto :goto_111

    :catch_eb
    move-exception v3

    .line 2146
    :try_start_ec
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_110

    .line 2149
    const-string p0, "UsageStatsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to unlock stopped or removed user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e5

    :cond_10f
    :goto_10f
    return-void

    .line 2147
    :cond_110
    throw v3
    :try_end_111
    .catchall {:try_start_ec .. :try_end_111} :catchall_e9

    .line 2152
    :goto_111
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2153
    throw p0

    .line 2134
    :pswitch_115
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    return-void

    .line 2157
    :pswitch_11f
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->onUserRemoved(I)V

    return-void

    .line 2137
    :pswitch_127
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDisk()V

    return-void

    .line 2131
    :pswitch_12d
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    return-void

    nop

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_12d
        :pswitch_127
        :pswitch_11f
        :pswitch_5
        :pswitch_115
        :pswitch_c1
        :pswitch_b5
        :pswitch_a4
        :pswitch_5
        :pswitch_1f
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method
