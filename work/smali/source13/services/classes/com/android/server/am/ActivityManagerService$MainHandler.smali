.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1741
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1742
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1743
    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1776
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    .line 1777
    .local v0, "thread":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_27

    .line 1779
    :try_start_6
    invoke-interface {v0}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1783
    goto :goto_27

    .line 1780
    :catch_a
    move-exception v1

    .line 1781
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update time zone for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_27
    :goto_27
    return-void
.end method

.method static synthetic lambda$handleMessage$1(Landroid/os/Message;Landroid/app/ActivityManagerInternal$BroadcastEventListener;)V
    .registers 4
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "l"    # Landroid/app/ActivityManagerInternal$BroadcastEventListener;

    .line 1909
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-interface {p1, v0, v1}, Landroid/app/ActivityManagerInternal$BroadcastEventListener;->onSendingBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$handleMessage$2(Landroid/os/Message;Landroid/app/ActivityManagerInternal$BindServiceEventListener;)V
    .registers 4
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "l"    # Landroid/app/ActivityManagerInternal$BindServiceEventListener;

    .line 1913
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-interface {p1, v0, v1}, Landroid/app/ActivityManagerInternal$BindServiceEventListener;->onBindingService(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 1747
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_268

    goto/16 :goto_266

    .line 1912
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBindServiceEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda2;-><init>(Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_266

    .line 1908
    :sswitch_16
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;-><init>(Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 1910
    goto/16 :goto_266

    .line 1903
    :sswitch_24
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_27
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1904
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 1905
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_37

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1906
    goto/16 :goto_266

    .line 1905
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1900
    :sswitch_3d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mhandleBinderHeavyHitterAutoSamplerTimeOut(Lcom/android/server/am/ActivityManagerService;)V

    .line 1901
    goto/16 :goto_266

    .line 1821
    :sswitch_44
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_47
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1822
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AppZygote;

    .line 1823
    .local v2, "appZygote":Landroid/os/AppZygote;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    .line 1824
    .end local v2    # "appZygote":Landroid/os/AppZygote;
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_5b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1825
    goto/16 :goto_266

    .line 1824
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1766
    :sswitch_61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1767
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActiveServices;->serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 1771
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1772
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    goto/16 :goto_266

    .line 1760
    :sswitch_7d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1761
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActiveServices;->serviceForegroundTimeoutANR(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1763
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1764
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    goto/16 :goto_266

    .line 1757
    :sswitch_95
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 1758
    goto/16 :goto_266

    .line 1895
    :sswitch_a2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_a7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1896
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->handleAllTrustStorageUpdateLOSP()V

    .line 1897
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_a7 .. :try_end_b2} :catchall_b7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1898
    goto/16 :goto_266

    .line 1897
    :catchall_b7
    move-exception v1

    :try_start_b8
    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1

    .line 1892
    :sswitch_bd
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    .line 1893
    goto/16 :goto_266

    .line 1803
    :sswitch_c4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1804
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_cb
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1805
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ContentProviderHelper;->processContentProviderPublishTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1806
    monitor-exit v2
    :try_end_d6
    .catchall {:try_start_cb .. :try_end_d6} :catchall_db

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1807
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_266

    .line 1806
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_db
    move-exception v1

    :try_start_dc
    monitor-exit v2
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1881
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_e1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/IUiAutomationConnection;

    .line 1883
    .local v0, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_e5
    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_e5 .. :try_end_e8} :catch_e9

    .line 1886
    goto :goto_f1

    .line 1884
    :catch_e9
    move-exception v2

    .line 1885
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ActivityManager"

    const-string v4, "Error shutting down UiAutomationConnection"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_f1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v2, v1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fputmUserIsMonkey(Lcom/android/server/am/ActivityManagerService;Z)V

    .line 1890
    .end local v0    # "connection":Landroid/app/IUiAutomationConnection;
    goto/16 :goto_266

    .line 1878
    :sswitch_f8
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler;->handleAbortDumpHeap(Ljava/lang/String;)V

    .line 1879
    goto/16 :goto_266

    .line 1875
    :sswitch_105
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->handlePostDumpHeapNotification()V

    .line 1876
    goto/16 :goto_266

    .line 1856
    :sswitch_10e
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1857
    .local v0, "uid":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    .line 1859
    .local v1, "firstPacket":[B
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2

    :try_start_119
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1860
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3
    :try_end_121
    .catchall {:try_start_119 .. :try_end_121} :catchall_150

    .line 1861
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_122
    :try_start_122
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_146

    .line 1862
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    .line 1863
    .local v5, "p":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1864
    .local v6, "thread":Landroid/app/IApplicationThread;
    iget v7, v5, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_13a
    .catchall {:try_start_122 .. :try_end_13a} :catchall_14d

    if-ne v7, v0, :cond_143

    if-eqz v6, :cond_143

    .line 1866
    :try_start_13e
    invoke-interface {v6, v1}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_141
    .catch Landroid/os/RemoteException; {:try_start_13e .. :try_end_141} :catch_142
    .catchall {:try_start_13e .. :try_end_141} :catchall_14d

    .line 1868
    goto :goto_143

    .line 1867
    :catch_142
    move-exception v7

    .line 1861
    .end local v5    # "p":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "thread":Landroid/app/IApplicationThread;
    :cond_143
    :goto_143
    add-int/lit8 v4, v4, 0x1

    goto :goto_122

    .line 1871
    .end local v4    # "i":I
    :cond_146
    :try_start_146
    monitor-exit v3
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_14d

    .line 1872
    :try_start_147
    monitor-exit v2
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_150

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1873
    .end local v0    # "uid":I
    .end local v1    # "firstPacket":[B
    goto/16 :goto_266

    .line 1871
    .restart local v0    # "uid":I
    .restart local v1    # "firstPacket":[B
    :catchall_14d
    move-exception v4

    :try_start_14e
    monitor-exit v3
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_14d

    .end local v0    # "uid":I
    .end local v1    # "firstPacket":[B
    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$MainHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_14f
    throw v4

    .line 1872
    .restart local v0    # "uid":I
    .restart local v1    # "firstPacket":[B
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$MainHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_150
    move-exception v3

    monitor-exit v2
    :try_end_152
    .catchall {:try_start_14f .. :try_end_152} :catchall_150

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v3

    .line 1850
    .end local v0    # "uid":I
    .end local v1    # "firstPacket":[B
    :sswitch_156
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_15b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1851
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessList;->updateAllTimePrefsLOSP(I)V

    .line 1852
    monitor-exit v0
    :try_end_168
    .catchall {:try_start_15b .. :try_end_168} :catchall_16d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1853
    goto/16 :goto_266

    .line 1852
    :catchall_16d
    move-exception v1

    :try_start_16e
    monitor-exit v0
    :try_end_16f
    .catchall {:try_start_16e .. :try_end_16f} :catchall_16d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1

    .line 1838
    :sswitch_173
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 1839
    .local v0, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v1, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 1844
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1845
    goto/16 :goto_266

    .line 1794
    .end local v0    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v1    # "thread":Ljava/lang/Thread;
    :sswitch_181
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->setAllHttpProxy()V

    .line 1795
    goto/16 :goto_266

    .line 1789
    :sswitch_18a
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_18f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1790
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->clearAllDnsCacheLOSP()V

    .line 1791
    monitor-exit v0
    :try_end_19a
    .catchall {:try_start_18f .. :try_end_19a} :catchall_19f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1792
    goto/16 :goto_266

    .line 1791
    :catchall_19f
    move-exception v1

    :try_start_1a0
    monitor-exit v0
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_19f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1

    .line 1828
    :sswitch_1a5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$sfgetSCREEN_OFF_NEW_CPU_CHECK_ENABLE()Z

    move-result v0

    if-eqz v0, :cond_1bd

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmIsScreenOffState(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 1829
    invoke-static {}, Lcom/android/server/am/SystemPressureControllerStub;->getInstance()Lcom/android/server/am/SystemPressureControllerStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/SystemPressureControllerStub;->isCtsModeEnable()Z

    move-result v0

    if-eqz v0, :cond_1c2

    .line 1830
    :cond_1bd
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mcheckExcessivePowerUsage(Lcom/android/server/am/ActivityManagerService;)V

    .line 1833
    :cond_1c2
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 1834
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1835
    .local v0, "nmsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1836
    .end local v0    # "nmsg":Landroid/os/Message;
    goto/16 :goto_266

    .line 1809
    :sswitch_1d6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_1d9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1810
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 1811
    .local v3, "appId":I
    iget v9, p1, Landroid/os/Message;->arg2:I

    .line 1812
    .local v9, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    move-object v11, v1

    .line 1813
    .local v11, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "pkg"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1814
    .local v2, "pkg":Ljava/lang/String;
    const-string/jumbo v1, "reason"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1815
    .local v10, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 1817
    nop

    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "appId":I
    .end local v9    # "userId":I
    .end local v10    # "reason":Ljava/lang/String;
    .end local v11    # "bundle":Landroid/os/Bundle;
    monitor-exit v0
    :try_end_1ff
    .catchall {:try_start_1d9 .. :try_end_1ff} :catchall_203

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1818
    goto :goto_266

    .line 1817
    :catchall_203
    move-exception v1

    :try_start_204
    monitor-exit v0
    :try_end_205
    .catchall {:try_start_204 .. :try_end_205} :catchall_203

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1797
    :sswitch_209
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1798
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_210
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1799
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/ActivityManagerService;->handleProcessStartOrKillTimeoutLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1800
    monitor-exit v2
    :try_end_219
    .catchall {:try_start_210 .. :try_end_219} :catchall_21d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1801
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_266

    .line 1800
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_21d
    move-exception v1

    :try_start_21e
    monitor-exit v2
    :try_end_21f
    .catchall {:try_start_21e .. :try_end_21f} :catchall_21d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1774
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_223
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_228
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1775
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v3, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 1786
    monitor-exit v0
    :try_end_238
    .catchall {:try_start_228 .. :try_end_238} :catchall_23c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1787
    goto :goto_266

    .line 1786
    :catchall_23c
    move-exception v1

    :try_start_23d
    monitor-exit v0
    :try_end_23e
    .catchall {:try_start_23d .. :try_end_23e} :catchall_23c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1

    .line 1754
    :sswitch_242
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    .line 1755
    goto :goto_266

    .line 1749
    :sswitch_24e
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_251
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1750
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler;->performAppGcsIfAppropriateLocked()V

    .line 1751
    monitor-exit v0
    :try_end_25c
    .catchall {:try_start_251 .. :try_end_25c} :catchall_260

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1752
    goto :goto_266

    .line 1751
    :catchall_260
    move-exception v1

    :try_start_261
    monitor-exit v0
    :try_end_262
    .catchall {:try_start_261 .. :try_end_262} :catchall_260

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1916
    :goto_266
    return-void

    nop

    :sswitch_data_268
    .sparse-switch
        0x5 -> :sswitch_24e
        0xc -> :sswitch_242
        0xd -> :sswitch_223
        0x14 -> :sswitch_209
        0x16 -> :sswitch_1d6
        0x1b -> :sswitch_1a5
        0x1c -> :sswitch_18a
        0x1d -> :sswitch_181
        0x21 -> :sswitch_173
        0x29 -> :sswitch_156
        0x31 -> :sswitch_10e
        0x32 -> :sswitch_105
        0x33 -> :sswitch_f8
        0x38 -> :sswitch_e1
        0x39 -> :sswitch_c4
        0x3a -> :sswitch_bd
        0x3f -> :sswitch_a2
        0x42 -> :sswitch_95
        0x43 -> :sswitch_7d
        0x45 -> :sswitch_61
        0x47 -> :sswitch_44
        0x48 -> :sswitch_3d
        0x49 -> :sswitch_24
        0x4a -> :sswitch_16
        0x4b -> :sswitch_8
    .end sparse-switch
.end method
