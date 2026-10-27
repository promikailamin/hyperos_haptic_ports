.class public Lcom/android/server/trust/TrustManagerService$4;
.super Landroid/os/Handler;
.source "TrustManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 2170
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 2173
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v1, "TrustManagerService"

    const-string v2, "handler: %s"

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2174
    :cond_15
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_15c

    :pswitch_1d
    goto/16 :goto_100

    .line 2188
    :pswitch_1f
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchUserMayRequestUnlock(Lcom/android/server/trust/TrustManagerService;I)V

    return-void

    :pswitch_27
    if-eqz v0, :cond_3a

    .line 2245
    const-string v1, "TrustManagerService"

    const-string v2, "REFRESH_TRUSTABLE_TIMERS_AFTER_AUTH userId=%s"

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2247
    :cond_3a
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustableTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2248
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    if-eqz v0, :cond_65

    if-eqz v1, :cond_5e

    .line 2251
    const-string v0, "TrustManagerService"

    const-string v2, "REFRESH_TRUSTABLE_TIMERS_AFTER_AUTH trustable alarm isQueued=%s"

    iget-boolean v3, v1, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 2255
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 2251
    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_65

    .line 2257
    :cond_5e
    const-string v0, "TrustManagerService"

    const-string v2, "REFRESH_TRUSTABLE_TIMERS_AFTER_AUTH no trustable alarm"

    invoke-static {v0, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    :goto_65
    if-eqz v1, :cond_100

    .line 2262
    invoke-virtual {v1}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->isQueued()Z

    move-result v0

    if-eqz v0, :cond_100

    .line 2263
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshTrustableTimers(Lcom/android/server/trust/TrustManagerService;I)V

    return-void

    .line 2185
    :pswitch_75
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_7e

    move v3, v4

    :cond_7e
    invoke-static {p0, v0, v3}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchUserRequestedUnlock(Lcom/android/server/trust/TrustManagerService;IZ)V

    return-void

    .line 2238
    :pswitch_82
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_87

    move v3, v4

    .line 2240
    :cond_87
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v4, :cond_8e

    sget-object p1, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    goto :goto_90

    :cond_8e
    sget-object p1, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    .line 2241
    :goto_90
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0, v3, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mhandleScheduleTrustTimeout(Lcom/android/server/trust/TrustManagerService;ZLcom/android/server/trust/TrustManagerService$TimeoutType;)V

    return-void

    .line 2230
    :pswitch_96
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v4, :cond_a2

    .line 2231
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mupdateTrust(Lcom/android/server/trust/TrustManagerService;IIZLcom/android/internal/infra/AndroidFuture;)V

    .line 2233
    :cond_a2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "except"

    const/16 v2, -0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2235
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;II)V

    return-void

    .line 2191
    :pswitch_b6
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchUnlockLockout(Lcom/android/server/trust/TrustManagerService;II)V

    return-void

    .line 2213
    :pswitch_c0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v4}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$msetDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;IZ)V

    return-void

    .line 2217
    :pswitch_c8
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustUsuallyManagedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    monitor-enter v0

    .line 2218
    :try_start_cf
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustUsuallyManagedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 2219
    monitor-exit v0
    :try_end_da
    .catchall {:try_start_cf .. :try_end_da} :catchall_101

    .line 2221
    :goto_da
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_100

    .line 2222
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 2223
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    .line 2224
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v2

    if-eq v1, v2, :cond_fd

    .line 2225
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setTrustUsuallyManaged(ZI)V

    :cond_fd
    add-int/lit8 v3, v3, 0x1

    goto :goto_da

    :cond_100
    :goto_100
    return-void

    :catchall_101
    move-exception p0

    .line 2219
    :try_start_102
    monitor-exit v0
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    throw p0

    .line 2209
    :pswitch_104
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fputmCurrentUser(Lcom/android/server/trust/TrustManagerService;I)V

    .line 2210
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0, v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;I)V

    return-void

    .line 2206
    :pswitch_111
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    return-void

    .line 2200
    :pswitch_119
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchTrustableDowngrade(Lcom/android/server/trust/TrustManagerService;)V

    .line 2201
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;I)V

    return-void

    .line 2194
    :pswitch_128
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 2196
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0, v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;I)V

    .line 2197
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchOnEnabledTrustAgentsChanged(Lcom/android/server/trust/TrustManagerService;I)V

    return-void

    .line 2182
    :pswitch_13a
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_141

    move v3, v4

    :cond_141
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v3, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchUnlockAttempt(Lcom/android/server/trust/TrustManagerService;ZI)V

    return-void

    .line 2179
    :pswitch_147
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/trust/ITrustListener;

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mremoveListener(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    return-void

    .line 2176
    :pswitch_151
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/trust/ITrustListener;

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$maddListener(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    return-void

    nop

    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_151
        :pswitch_147
        :pswitch_13a
        :pswitch_128
        :pswitch_1d
        :pswitch_119
        :pswitch_111
        :pswitch_111
        :pswitch_104
        :pswitch_c8
        :pswitch_111
        :pswitch_c0
        :pswitch_b6
        :pswitch_96
        :pswitch_82
        :pswitch_75
        :pswitch_27
        :pswitch_1f
    .end packed-switch
.end method
