.class Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;
.super Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustableTimeoutAlarmListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 3
    .param p2, "userId"    # I

    .line 2053
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2054
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    .line 2055
    return-void
.end method

.method private cancelBothTrustableAlarms()V
    .registers 5

    .line 2075
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmIdleTrustableTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->mUserId:I

    .line 2076
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    .line 2078
    .local v0, "idleTimeout":Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustableTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->mUserId:I

    .line 2079
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    .line 2081
    .local v1, "trustableTimeout":Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;
    const/4 v2, 0x0

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->isQueued()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2082
    invoke-virtual {v0, v2}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->setQueued(Z)V

    .line 2083
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmAlarmManager(Lcom/android/server/trust/TrustManagerService;)Landroid/app/AlarmManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2085
    :cond_31
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->isQueued()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 2086
    invoke-virtual {v1, v2}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->setQueued(Z)V

    .line 2087
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmAlarmManager(Lcom/android/server/trust/TrustManagerService;)Landroid/app/AlarmManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2089
    :cond_45
    return-void
.end method

.method private disableRenewableTrustWhileNonrenewableTrustIsPresent()V
    .registers 4

    .line 2094
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmActiveAgents(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 2095
    .local v1, "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->setUntrustable()V

    .line 2096
    .end local v1    # "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    goto :goto_a

    .line 2097
    :cond_1c
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 2098
    return-void
.end method


# virtual methods
.method public handleAlarm()V
    .registers 5

    .line 2061
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->ENABLE_ACTIVE_UNLOCK_FLAG:Z

    if-eqz v0, :cond_35

    .line 2062
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->cancelBothTrustableAlarms()V

    .line 2063
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;

    .line 2064
    .local v0, "otherAlarm":Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->isQueued()Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 2065
    .local v1, "otherAlarmPresent":Z
    :goto_24
    if-eqz v1, :cond_35

    .line 2066
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmAlarmLock(Lcom/android/server/trust/TrustManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2067
    :try_start_2d
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->disableRenewableTrustWhileNonrenewableTrustIsPresent()V

    .line 2068
    monitor-exit v2

    .line 2069
    return-void

    .line 2068
    :catchall_32
    move-exception v3

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_32

    throw v3

    .line 2072
    .end local v0    # "otherAlarm":Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;
    .end local v1    # "otherAlarmPresent":Z
    :cond_35
    return-void
.end method
