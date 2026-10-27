.class Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;
.super Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedTimeoutAlarmListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 3
    .param p2, "userId"    # I

    .line 2019
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2020
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    .line 2021
    return-void
.end method

.method private disableNonrenewableTrustWhileRenewableTrustIsPresent()V
    .registers 5

    .line 2040
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmUserTrustState(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 2041
    :try_start_7
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmUserTrustState(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v1, v2, :cond_2c

    .line 2044
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmUserTrustState(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->mUserId:I

    sget-object v3, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2045
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 2047
    :cond_2c
    monitor-exit v0

    .line 2048
    return-void

    .line 2047
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v1
.end method


# virtual methods
.method public handleAlarm()V
    .registers 5

    .line 2027
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->ENABLE_ACTIVE_UNLOCK_FLAG:Z

    if-eqz v0, :cond_2e

    .line 2028
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustableTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    .line 2029
    .local v0, "otherAlarm":Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->isQueued()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 2030
    .local v1, "otherAlarmPresent":Z
    :goto_1d
    if-eqz v1, :cond_2e

    .line 2031
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmAlarmLock(Lcom/android/server/trust/TrustManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2032
    :try_start_26
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->disableNonrenewableTrustWhileRenewableTrustIsPresent()V

    .line 2033
    monitor-exit v2

    .line 2034
    return-void

    .line 2033
    :catchall_2b
    move-exception v3

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2b

    throw v3

    .line 2037
    .end local v0    # "otherAlarm":Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;
    .end local v1    # "otherAlarmPresent":Z
    :cond_2e
    return-void
.end method
