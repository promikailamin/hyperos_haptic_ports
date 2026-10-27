.class final Lcom/android/server/power/hint/HintManagerService$MyUidObserver;
.super Landroid/app/UidObserver;
.source "HintManagerService.java"


# instance fields
.field public final mProcStatesCache:Landroid/util/SparseIntArray;

.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public static synthetic $r8$lambda$8-3q2FSoHxKJS5M75tlJXQ5W92M(Lcom/android/server/power/hint/HintManagerService$MyUidObserver;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->lambda$onUidGone$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$G5ujTcrPvq25wCnbVcETC3ZVxqA(Lcom/android/server/power/hint/HintManagerService$MyUidObserver;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->lambda$onUidStateChanged$1(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;)V
    .registers 2

    .line 861
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 862
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->mProcStatesCache:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public isUidForeground(I)Z
    .registers 4

    .line 865
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 866
    :try_start_7
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->mProcStatesCache:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-gt p0, v1, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 868
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final synthetic lambda$onUidGone$0(I)V
    .registers 10

    .line 874
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 875
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->mProcStatesCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 876
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_23

    .line 878
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    goto/16 :goto_11f

    .line 880
    :cond_23
    const-string v2, "HintManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid gone for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3f
    if-ltz v2, :cond_a6

    .line 883
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 884
    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    .line 886
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_52
    if-ltz v5, :cond_72

    .line 887
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 888
    invoke-virtual {v6}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isTrackedBySf()Z

    move-result v7

    if-eqz v7, :cond_6f

    const/4 v7, 0x0

    .line 890
    invoke-virtual {v6, v7}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->setTrackedBySf(Z)V

    .line 891
    invoke-virtual {v6}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getSessionId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/IntArray;->add(I)V

    :cond_6f
    add-int/lit8 v5, v5, -0x1

    goto :goto_52

    .line 894
    :cond_72
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v5}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionManager(Lcom/android/server/power/hint/HintManagerService;)Landroid/adpf/ISessionManager;

    move-result-object v5
    :try_end_78
    .catchall {:try_start_7 .. :try_end_78} :catchall_20

    if-eqz v5, :cond_8f

    .line 896
    :try_start_7a
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v5}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionManager(Lcom/android/server/power/hint/HintManagerService;)Landroid/adpf/ISessionManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    invoke-interface {v5, v4}, Landroid/adpf/ISessionManager;->trackedSessionsDied([I)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_87} :catch_88
    .catchall {:try_start_7a .. :try_end_87} :catchall_20

    goto :goto_8f

    .line 898
    :catch_88
    :try_start_88
    const-string v4, "HintManagerService"

    const-string v5, "Failed to communicate with SessionManager"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_8f
    :goto_8f
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_95
    if-ltz v4, :cond_a3

    .line 902
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    invoke-virtual {v5}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->close()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_95

    :cond_a3
    add-int/lit8 v2, v2, -0x1

    goto :goto_3f

    .line 905
    :cond_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_88 .. :try_end_a7} :catchall_20

    .line 906
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmChannelMapLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 908
    :try_start_ae
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmChannelMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    if-eqz v0, :cond_ed

    .line 910
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 911
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    invoke-virtual {v2}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->closeChannel()V

    goto :goto_c8

    :catchall_de
    move-exception p0

    goto :goto_11d

    .line 913
    :cond_e0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmChannelMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    :cond_ed
    monitor-exit v1
    :try_end_ee
    .catchall {:try_start_ae .. :try_end_ee} :catchall_de

    .line 916
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 917
    :try_start_f5
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz v1, :cond_119

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmUidToLastUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_119

    .line 918
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmUidToLastUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_119

    :catchall_117
    move-exception p0

    goto :goto_11b

    .line 920
    :cond_119
    :goto_119
    monitor-exit v0

    return-void

    :goto_11b
    monitor-exit v0
    :try_end_11c
    .catchall {:try_start_f5 .. :try_end_11c} :catchall_117

    throw p0

    .line 915
    :goto_11d
    :try_start_11d
    monitor-exit v1
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_de

    throw p0

    .line 905
    :goto_11f
    :try_start_11f
    monitor-exit v0
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_20

    throw p0
.end method

.method public final synthetic lambda$onUidStateChanged$1(II)V
    .registers 10

    .line 931
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 933
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmPowerHalVersion(Lcom/android/server/power/hint/HintManagerService;)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_24

    .line 934
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->mProcStatesCache:Landroid/util/SparseIntArray;

    const v2, 0x7fffffff

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_24

    if-le p2, v2, :cond_24

    move v3, v4

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_98

    .line 941
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->mProcStatesCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 942
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    if-nez p2, :cond_3d

    .line 944
    monitor-exit v0

    return-void

    :cond_3d
    if-eqz v3, :cond_6f

    .line 947
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCleanUpHandler(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    move-result-object v1

    .line 948
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    .line 947
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 949
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmCleanUpHandler(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    move-result-object v2

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 950
    const-string v1, "HintManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sent cleanup message for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_6f
    invoke-virtual {p0, p1}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->isUidForeground(I)Z

    move-result p0

    .line 953
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p1

    sub-int/2addr p1, v4

    :goto_78
    if-ltz p1, :cond_96

    .line 954
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 955
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v4

    :goto_85
    if-ltz v2, :cond_93

    .line 956
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    invoke-virtual {v3, p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->updateHintAllowedByProcState(Z)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_85

    :cond_93
    add-int/lit8 p1, p1, -0x1

    goto :goto_78

    .line 959
    :cond_96
    monitor-exit v0

    return-void

    :goto_98
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_7 .. :try_end_99} :catchall_22

    throw p0
.end method

.method public onUidGone(IZ)V
    .registers 4

    .line 873
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/hint/HintManagerService$MyUidObserver;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 6

    .line 930
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance p4, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/hint/HintManagerService$MyUidObserver;II)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
