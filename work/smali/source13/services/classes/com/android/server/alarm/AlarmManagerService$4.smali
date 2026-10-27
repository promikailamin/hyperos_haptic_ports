.class Lcom/android/server/alarm/AlarmManagerService$4;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/alarm/AlarmManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 2062
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .registers 13
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2066
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2067
    .local v0, "userId":I
    const/16 v1, 0x6b

    if-ne p1, v1, :cond_9b

    .line 2068
    invoke-static {p3, v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smisExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_9b

    .line 2071
    :cond_10
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2, p3, p2}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2072
    return-void

    .line 2074
    :cond_19
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 2076
    return-void

    .line 2079
    :cond_2c
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 2083
    .local v2, "newMode":I
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2084
    :try_start_39
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    .line 2085
    .local v4, "index":I
    if-gez v4, :cond_4f

    .line 2086
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    .line 2088
    .local v1, "oldMode":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5e

    .line 2090
    .end local v1    # "oldMode":I
    :cond_4f
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 2091
    .restart local v1    # "oldMode":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 2093
    .end local v4    # "index":I
    :goto_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_39 .. :try_end_5f} :catchall_98

    .line 2094
    if-ne v1, v2, :cond_62

    .line 2095
    return-void

    .line 2097
    :cond_62
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2098
    invoke-virtual {v3, p3, p2}, Lcom/android/server/alarm/AlarmManagerService;->isScheduleExactAlarmAllowedByDefault(Ljava/lang/String;I)Z

    move-result v3

    .line 2101
    .local v3, "allowedByDefault":Z
    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v1, v5, :cond_73

    .line 2102
    if-nez v1, :cond_71

    move v7, v4

    goto :goto_72

    :cond_71
    move v7, v6

    .local v7, "hadPermission":Z
    :goto_72
    goto :goto_74

    .line 2104
    .end local v7    # "hadPermission":Z
    :cond_73
    move v7, v3

    .line 2107
    .restart local v7    # "hadPermission":Z
    :goto_74
    if-eq v2, v5, :cond_7b

    .line 2108
    if-nez v2, :cond_79

    goto :goto_7a

    :cond_79
    move v4, v6

    .local v4, "hasPermission":Z
    :goto_7a
    goto :goto_7c

    .line 2110
    .end local v4    # "hasPermission":Z
    :cond_7b
    move v4, v3

    .line 2113
    .restart local v4    # "hasPermission":Z
    :goto_7c
    if-eqz v7, :cond_8e

    if-nez v4, :cond_8e

    .line 2114
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 v8, 0x8

    invoke-virtual {v5, v8, p2, v6, p3}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2115
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_97

    .line 2116
    :cond_8e
    if-nez v7, :cond_97

    if-eqz v4, :cond_97

    .line 2117
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v5, p3, v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$msendScheduleExactAlarmPermissionStateChangedBroadcast(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)V

    .line 2120
    :cond_97
    :goto_97
    return-void

    .line 2093
    .end local v1    # "oldMode":I
    .end local v3    # "allowedByDefault":Z
    .end local v4    # "hasPermission":Z
    .end local v7    # "hadPermission":Z
    :catchall_98
    move-exception v1

    :try_start_99
    monitor-exit v3
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v1

    .line 2069
    .end local v2    # "newMode":I
    :cond_9b
    :goto_9b
    return-void
.end method
