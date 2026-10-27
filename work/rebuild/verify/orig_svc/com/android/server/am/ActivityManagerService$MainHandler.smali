.class public final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public static synthetic $r8$lambda$-BaOH0nhWmB1j4fAdRCLVwJvRCA(Landroid/os/Message;Landroid/app/ActivityManagerInternal$BindServiceEventListener;)V
    .registers 3

    .line 1939
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-interface {p1, v0, p0}, Landroid/app/ActivityManagerInternal$BindServiceEventListener;->onBindingService(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bz9CTa7TXqawLiiOdBfpNP_dnbI(Landroid/os/Message;Landroid/app/ActivityManagerInternal$BroadcastEventListener;)V
    .registers 3

    .line 1935
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-interface {p1, v0, p0}, Landroid/app/ActivityManagerInternal$BroadcastEventListener;->onSendingBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lMLbVo7p5CWJ0AS7jbxgbvRZ3zs(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 1805
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1808
    :try_start_6
    invoke-interface {v0}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    .line 1810
    :catch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to update time zone for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 4

    .line 1770
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1771
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    .line 1776
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2d3

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2b8

    const/16 v1, 0x16

    if-eq v0, v1, :cond_27e

    const/16 v1, 0x21

    if-eq v0, v1, :cond_271

    const/16 v1, 0x29

    if-eq v0, v1, :cond_254

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_239

    const/16 v1, 0x45

    if-eq v0, v1, :cond_21e

    const/16 v1, 0xc

    if-eq v0, v1, :cond_212

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1f2

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1e6

    const/16 v1, 0x43

    if-eq v0, v1, :cond_1cf

    packed-switch v0, :pswitch_data_2ec

    packed-switch v0, :pswitch_data_2f6

    packed-switch v0, :pswitch_data_300

    packed-switch v0, :pswitch_data_30a

    packed-switch v0, :pswitch_data_320

    goto/16 :goto_189

    .line 1966
    :pswitch_3f
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mhandleFollowUpOomAdjusterUpdate(Lcom/android/server/am/ActivityManagerService;)V

    return-void

    .line 1963
    :pswitch_45
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onFgsCrashTimeout(Lcom/android/server/am/ServiceRecord;)V

    return-void

    .line 1960
    :pswitch_51
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onFgsTimeout(Lcom/android/server/am/ServiceRecord;)V

    return-void

    .line 1957
    :pswitch_5d
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mhandleBindApplicationTimeoutHard(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    return-void

    .line 1954
    :pswitch_67
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mhandleBindApplicationTimeoutSoft(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;I)V

    return-void

    .line 1951
    :pswitch_73
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->updateCachedAppsSnapshot(J)V

    return-void

    .line 1948
    :pswitch_85
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onShortFgsAnrTimeout(Lcom/android/server/am/ServiceRecord;)V

    return-void

    .line 1945
    :pswitch_91
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onShortFgsProcstateTimeout(Lcom/android/server/am/ServiceRecord;)V

    return-void

    .line 1942
    :pswitch_9d
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onShortFgsTimeout(Lcom/android/server/am/ServiceRecord;)V

    return-void

    .line 1938
    :pswitch_a9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBindServiceEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda2;-><init>(Landroid/os/Message;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1934
    :pswitch_b6
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBroadcastEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;-><init>(Landroid/os/Message;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1929
    :pswitch_c3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1930
    :try_start_c9
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 1931
    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_c9 .. :try_end_d1} :catchall_d5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_d5
    move-exception v0

    move-object p0, v0

    :try_start_d7
    monitor-exit v1
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 1926
    :pswitch_dc
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mhandleBinderHeavyHitterAutoSamplerTimeOut(Lcom/android/server/am/ActivityManagerService;)V

    return-void

    .line 1852
    :pswitch_e2
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1853
    :try_start_e8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AppZygote;

    .line 1854
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    .line 1855
    monitor-exit v1
    :try_end_f4
    .catchall {:try_start_e8 .. :try_end_f4} :catchall_f8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_f8
    move-exception v0

    move-object p0, v0

    :try_start_fa
    monitor-exit v1
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 1918
    :pswitch_ff
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    return-void

    .line 1832
    :pswitch_105
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 1833
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1834
    :try_start_10f
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ContentProviderHelper;->processContentProviderPublishTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1835
    monitor-exit v1
    :try_end_117
    .catchall {:try_start_10f .. :try_end_117} :catchall_11b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_11b
    move-exception v0

    move-object p0, v0

    :try_start_11d
    monitor-exit v1
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 1907
    :pswitch_122
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/IUiAutomationConnection;

    .line 1909
    :try_start_126
    invoke-interface {p1}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_129
    .catch Landroid/os/RemoteException; {:try_start_126 .. :try_end_129} :catch_12a

    goto :goto_131

    .line 1911
    :catch_12a
    const-string p1, "ActivityManager"

    const-string v0, "Error shutting down UiAutomationConnection"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :goto_131
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0, v2}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fputmUserIsMonkey(Lcom/android/server/am/ActivityManagerService;Z)V

    goto :goto_189

    .line 1904
    :pswitch_137
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppProfiler;->handleAbortDumpHeap(Ljava/lang/String;)V

    return-void

    .line 1901
    :pswitch_143
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->handlePostDumpHeapNotification()V

    return-void

    .line 1882
    :pswitch_14b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1883
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    .line 1885
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 1886
    :try_start_159
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3
    :try_end_15e
    .catchall {:try_start_159 .. :try_end_15e} :catchall_18a

    .line 1887
    :goto_15e
    :try_start_15e
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_184

    .line 1888
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 1889
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    .line 1890
    iget v4, v4, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I
    :try_end_176
    .catchall {:try_start_15e .. :try_end_176} :catchall_17e

    if-ne v4, v0, :cond_181

    if-eqz v5, :cond_181

    .line 1892
    :try_start_17a
    invoke-interface {v5, p1}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_17d
    .catch Landroid/os/RemoteException; {:try_start_17a .. :try_end_17d} :catch_181
    .catchall {:try_start_17a .. :try_end_17d} :catchall_17e

    goto :goto_181

    :catchall_17e
    move-exception v0

    move-object p0, v0

    goto :goto_18d

    :catch_181
    :cond_181
    :goto_181
    add-int/lit8 v2, v2, 0x1

    goto :goto_15e

    .line 1897
    :cond_184
    :try_start_184
    monitor-exit v3
    :try_end_185
    .catchall {:try_start_184 .. :try_end_185} :catchall_17e

    .line 1898
    :try_start_185
    monitor-exit v1
    :try_end_186
    .catchall {:try_start_185 .. :try_end_186} :catchall_18a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    :goto_189
    return-void

    :catchall_18a
    move-exception v0

    move-object p0, v0

    goto :goto_18f

    .line 1897
    :goto_18d
    :try_start_18d
    monitor-exit v3
    :try_end_18e
    .catchall {:try_start_18d .. :try_end_18e} :catchall_17e

    :try_start_18e
    throw p0

    .line 1898
    :goto_18f
    monitor-exit v1
    :try_end_190
    .catchall {:try_start_18e .. :try_end_190} :catchall_18a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 1823
    :pswitch_194
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->setAllHttpProxy()V

    return-void

    .line 1818
    :pswitch_19c
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p1

    .line 1819
    :try_start_1a4
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->clearAllDnsCacheLOSP()V

    .line 1820
    monitor-exit p1
    :try_end_1ac
    .catchall {:try_start_1a4 .. :try_end_1ac} :catchall_1b0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_1b0
    move-exception v0

    move-object p0, v0

    :try_start_1b2
    monitor-exit p1
    :try_end_1b3
    .catchall {:try_start_1b2 .. :try_end_1b3} :catchall_1b0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 1858
    :pswitch_1b7
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mcheckExcessivePowerUsage(Lcom/android/server/am/ActivityManagerService;)V

    const/16 p1, 0x1b

    .line 1859
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1860
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1861
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1789
    :cond_1cf
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1790
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/TimeoutRecord;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActiveServices;->serviceForegroundTimeoutANR(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V

    .line 1792
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    .line 1786
    :cond_1e6
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V

    return-void

    .line 1803
    :cond_1f2
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 1804
    :try_start_1fa
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance p1, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 1815
    monitor-exit v1
    :try_end_207
    .catchall {:try_start_1fa .. :try_end_207} :catchall_20b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_20b
    move-exception v0

    move-object p0, v0

    :try_start_20d
    monitor-exit v1
    :try_end_20e
    .catchall {:try_start_20d .. :try_end_20e} :catchall_20b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 1783
    :cond_212
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    return-void

    .line 1795
    :cond_21e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1796
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 1800
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    .line 1921
    :cond_239
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 1922
    :try_start_241
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->handleAllTrustStorageUpdateLOSP()V

    .line 1923
    monitor-exit v1
    :try_end_249
    .catchall {:try_start_241 .. :try_end_249} :catchall_24d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_24d
    move-exception v0

    move-object p0, v0

    :try_start_24f
    monitor-exit v1
    :try_end_250
    .catchall {:try_start_24f .. :try_end_250} :catchall_24d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 1876
    :cond_254
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 1877
    :try_start_25c
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->updateAllTimePrefsLOSP(I)V

    .line 1878
    monitor-exit v1
    :try_end_266
    .catchall {:try_start_25c .. :try_end_266} :catchall_26a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_26a
    move-exception v0

    move-object p0, v0

    :try_start_26c
    monitor-exit v1
    :try_end_26d
    .catchall {:try_start_26c .. :try_end_26d} :catchall_26a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 1864
    :cond_271
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 1865
    new-instance v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 1870
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 1838
    :cond_27e
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1839
    :try_start_284
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1840
    iget v11, p1, Landroid/os/Message;->arg2:I

    .line 1841
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1842
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1843
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 1844
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1845
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1846
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;I)Z

    .line 1848
    monitor-exit v1
    :try_end_2ad
    .catchall {:try_start_284 .. :try_end_2ad} :catchall_2b1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2b1
    move-exception v0

    move-object p0, v0

    :try_start_2b3
    monitor-exit v1
    :try_end_2b4
    .catchall {:try_start_2b3 .. :try_end_2b4} :catchall_2b1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 1826
    :cond_2b8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 1827
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1828
    :try_start_2c2
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActivityManagerService;->handleProcessStartOrKillTimeoutLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1829
    monitor-exit v1
    :try_end_2c8
    .catchall {:try_start_2c2 .. :try_end_2c8} :catchall_2cc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2cc
    move-exception v0

    move-object p0, v0

    :try_start_2ce
    monitor-exit v1
    :try_end_2cf
    .catchall {:try_start_2ce .. :try_end_2cf} :catchall_2cc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 1778
    :cond_2d3
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 1779
    :try_start_2d9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->performAppGcsIfAppropriateLocked()V

    .line 1780
    monitor-exit p1
    :try_end_2e1
    .catchall {:try_start_2d9 .. :try_end_2e1} :catchall_2e5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2e5
    move-exception v0

    move-object p0, v0

    :try_start_2e7
    monitor-exit p1
    :try_end_2e8
    .catchall {:try_start_2e7 .. :try_end_2e8} :catchall_2e5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :pswitch_data_2ec
    .packed-switch 0x1b
        :pswitch_1b7
        :pswitch_19c
        :pswitch_194
    .end packed-switch

    :pswitch_data_2f6
    .packed-switch 0x31
        :pswitch_14b
        :pswitch_143
        :pswitch_137
    .end packed-switch

    :pswitch_data_300
    .packed-switch 0x38
        :pswitch_122
        :pswitch_105
        :pswitch_ff
    .end packed-switch

    :pswitch_data_30a
    .packed-switch 0x47
        :pswitch_e2
        :pswitch_dc
        :pswitch_c3
        :pswitch_b6
        :pswitch_a9
        :pswitch_9d
        :pswitch_91
        :pswitch_85
        :pswitch_73
    .end packed-switch

    :pswitch_data_320
    .packed-switch 0x52
        :pswitch_67
        :pswitch_5d
        :pswitch_51
        :pswitch_45
        :pswitch_3f
    .end packed-switch
.end method
