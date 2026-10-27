.class public final Lcom/android/server/am/ActivityManagerService$LocalService;
.super Landroid/app/ActivityManagerInternal;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/am/ActivityManagerLocal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 17116
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/app/ActivityManagerInternal;-><init>()V

    return-void
.end method

.method private isSplitConfigurationChange(I)Z
    .registers 3
    .param p1, "configDiff"    # I

    .line 17918
    and-int/lit16 v0, p1, 0x1004

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic lambda$hasRunningActivity$0(ILjava/lang/String;Lcom/android/server/am/ProcessRecord;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 17543
    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, p0, :cond_11

    .line 17544
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->hasRunningActivity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 17545
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 17547
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$hasRunningForegroundService$2(IILcom/android/server/am/ProcessRecord;)Ljava/lang/Boolean;
    .registers 5
    .param p0, "uid"    # I
    .param p1, "foregroundServicetype"    # I
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 18046
    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    const/4 v1, 0x0

    if-eq v0, p0, :cond_6

    .line 18047
    return-object v1

    .line 18050
    :cond_6
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->getForegroundServiceTypes()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_12

    .line 18051
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 18053
    :cond_12
    return-object v1
.end method

.method private shouldWaitForNetworkRulesUpdate(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 18231
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmUidNetworkBlockedReasons(Lcom/android/server/am/ActivityManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    .line 18235
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmUidNetworkBlockedReasons(Lcom/android/server/am/ActivityManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 18239
    .local v1, "uidBlockedReasons":I
    if-eqz v1, :cond_1d

    const/4 v3, 0x2

    .line 18240
    invoke-static {v1, v3}, Lcom/android/server/net/NetworkPolicyManagerInternal;->updateBlockedReasonsWithProcState(II)I

    move-result v3

    if-nez v3, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    nop

    :goto_1e
    monitor-exit v0

    .line 18239
    return v2

    .line 18242
    .end local v1    # "uidBlockedReasons":I
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method


# virtual methods
.method public addAppBackgroundRestrictionListener(Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    .line 18426
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppRestrictionController;->addAppBackgroundRestrictionListener(Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V

    .line 18427
    return-void
.end method

.method public addBindServiceEventListener(Landroid/app/ActivityManagerInternal$BindServiceEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/ActivityManagerInternal$BindServiceEventListener;

    .line 18446
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBindServiceEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 18447
    return-void
.end method

.method public addBroadcastEventListener(Landroid/app/ActivityManagerInternal$BroadcastEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/ActivityManagerInternal$BroadcastEventListener;

    .line 18440
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 18441
    return-void
.end method

.method public addForegroundServiceStateListener(Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;

    .line 18432
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18433
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mForegroundServiceStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18434
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18435
    return-void

    .line 18434
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public addPendingTopUid(IILandroid/app/IApplicationThread;)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "thread"    # Landroid/app/IApplicationThread;

    .line 18200
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmPendingStartActivityUids(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/PendingStartActivityUids;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/PendingStartActivityUids;->add(II)Z

    move-result v0

    .line 18208
    .local v0, "isNewPending":Z
    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    if-eqz v1, :cond_1b

    .line 18209
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1, p2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeProcess(I)V

    .line 18216
    :cond_1b
    if-eqz v0, :cond_4f

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmNetworkPolicyUidObserver(Lcom/android/server/am/ActivityManagerService;)Landroid/app/IUidObserver;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 18218
    :try_start_25
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getNextProcStateSeq()J

    move-result-wide v1

    .line 18219
    .local v1, "procStateSeq":J
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmNetworkPolicyUidObserver(Lcom/android/server/am/ActivityManagerService;)Landroid/app/IUidObserver;

    move-result-object v3

    const/4 v5, 0x2

    const/16 v8, 0xf

    move v4, p1

    move-wide v6, v1

    invoke-interface/range {v3 .. v8}, Landroid/app/IUidObserver;->onUidStateChanged(IIJI)V

    .line 18221
    if-eqz p3, :cond_46

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$LocalService;->shouldWaitForNetworkRulesUpdate(I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 18222
    invoke-interface {p3, v1, v2}, Landroid/app/IApplicationThread;->setNetworkBlockSeq(J)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_46} :catch_47

    .line 18226
    .end local v1    # "procStateSeq":J
    :cond_46
    goto :goto_4f

    .line 18224
    :catch_47
    move-exception v1

    .line 18225
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ActivityManager"

    const-string v3, "Error calling setNetworkBlockSeq"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18228
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4f
    :goto_4f
    return-void
.end method

.method public applyForegroundServiceNotification(Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    .registers 14
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 18069
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18070
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActiveServices;->applyForegroundServiceNotificationLocked(Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    move-result-object v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 18072
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public bindSdkSandboxService(Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 27
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "clientAppUid"    # I
    .param p4, "clientAppPackage"    # Ljava/lang/String;
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17156
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v13, p4

    if-eqz v14, :cond_ba

    .line 17159
    if-eqz v15, :cond_b2

    .line 17162
    if-eqz v13, :cond_aa

    .line 17165
    if-eqz p5, :cond_a1

    .line 17168
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 17171
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 17174
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    move/from16 v12, p3

    invoke-virtual {v1, v12, v13}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_86

    .line 17178
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v11

    .line 17180
    .local v11, "handler":Landroid/os/Handler;
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move/from16 v10, p6

    invoke-virtual {v1, v15, v11, v10}, Landroid/content/Context;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    move-result-object v16

    .line 17181
    .local v16, "sd":Landroid/app/IServiceConnection;
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 17182
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 17183
    invoke-virtual {v2}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 17184
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 17186
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 17182
    move-object/from16 v4, p1

    move-object/from16 v6, v16

    move/from16 v7, p6

    move-object/from16 v8, p5

    move/from16 v10, p3

    move-object/from16 v19, v11

    .end local v11    # "handler":Landroid/os/Handler;
    .local v19, "handler":Landroid/os/Handler;
    move-object/from16 v11, p4

    move-object/from16 v12, v17

    move/from16 v13, v18

    invoke-static/range {v1 .. v13}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mbindServiceInstance(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_84

    const/4 v1, 0x1

    goto :goto_85

    :cond_84
    const/4 v1, 0x0

    :goto_85
    return v1

    .line 17175
    .end local v16    # "sd":Landroid/app/IServiceConnection;
    .end local v19    # "handler":Landroid/os/Handler;
    :cond_86
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "uid does not belong to provided package"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17172
    :cond_8f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "uid is not within application range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17169
    :cond_98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "service must specify explicit component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17166
    :cond_a1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "processName is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17163
    :cond_aa
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "clientAppPackage is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17160
    :cond_b2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connection is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17157
    :cond_ba
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "intent is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public broadcastCloseSystemDialogs(Ljava/lang/String;)V
    .registers 29
    .param p1, "reason"    # Ljava/lang/String;

    .line 17923
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17924
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17925
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x50000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17927
    if-eqz v2, :cond_1e

    .line 17928
    const-string/jumbo v4, "reason"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17931
    :cond_1e
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x3e8

    .line 17933
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v25

    const/16 v26, -0x1

    .line 17931
    move-object v9, v0

    invoke-virtual/range {v5 .. v26}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 17934
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_4d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17935
    return-void

    .line 17934
    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public broadcastGlobalConfigurationChanged(IZ)V
    .registers 36
    .param p1, "changes"    # I
    .param p2, "initLocale"    # Z

    .line 17868
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17869
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17870
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x70200000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17874
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    sget v21, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v22, 0x3e8

    .line 17876
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    const/16 v25, -0x1

    .line 17874
    move-object v8, v0

    invoke-virtual/range {v4 .. v25}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 17877
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_9b

    .line 17878
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 17879
    const v3, 0x1200800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17882
    if-nez p2, :cond_56

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v3, :cond_5b

    .line 17883
    :cond_56
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17885
    :cond_5b
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v27

    .line 17886
    .local v27, "bOptions":Landroid/app/BroadcastOptions;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v28

    const/16 v30, 0x0

    const/16 v31, 0xce

    const-string v32, ""

    invoke-virtual/range {v27 .. v32}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 17889
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    .line 17890
    invoke-virtual/range {v27 .. v27}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget v22, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v23, 0x3e8

    .line 17891
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v25

    const/16 v26, -0x1

    .line 17889
    move-object v9, v0

    invoke-virtual/range {v5 .. v26}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 17897
    .end local v27    # "bOptions":Landroid/app/BroadcastOptions;
    :cond_9b
    if-nez p2, :cond_de

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityManagerService$LocalService;->isSplitConfigurationChange(I)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 17898
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SPLIT_CONFIGURATION_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 17899
    const/high16 v3, 0x21000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17903
    const-string v3, "android.permission.INSTALL_PACKAGES"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v15

    .line 17905
    .local v15, "permissions":[Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget v22, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v23, 0x3e8

    .line 17907
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v25

    const/16 v26, -0x1

    .line 17905
    move-object v9, v0

    invoke-virtual/range {v5 .. v26}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 17910
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v15    # "permissions":[Ljava/lang/String;
    :cond_de
    monitor-exit v2
    :try_end_df
    .catchall {:try_start_5 .. :try_end_df} :catchall_e3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17911
    return-void

    .line 17910
    :catchall_e3
    move-exception v0

    :try_start_e4
    monitor-exit v2
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILandroid/os/Bundle;)I
    .registers 38
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p3, "requiredPermissions"    # [Ljava/lang/String;
    .param p4, "serialized"    # Z
    .param p5, "userId"    # I
    .param p6, "appIdAllowList"    # [I
    .param p7, "bOptions"    # Landroid/os/Bundle;

    .line 17725
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17726
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_55

    move-object/from16 v3, p1

    :try_start_c
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_53

    .line 17728
    .end local p1    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    .line 17729
    .local v20, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    .line 17730
    .local v21, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_5e

    move-wide/from16 v28, v3

    .line 17732
    .local v28, "origId":J
    :try_start_1e
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v19, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v9, p2

    move-object/from16 v13, p3

    move-object/from16 v17, p7

    move/from16 v18, p4

    move/from16 v22, v21

    move/from16 v23, v20

    move/from16 v24, p5

    move-object/from16 v27, p6

    invoke-virtual/range {v3 .. v27}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIIIZLandroid/os/IBinder;[I)I

    move-result v0
    :try_end_45
    .catchall {:try_start_1e .. :try_end_45} :catchall_4d

    .line 17742
    :try_start_45
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_5e

    .line 17732
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 17742
    :catchall_4d
    move-exception v0

    :try_start_4e
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17743
    nop

    .end local v7    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p2    # "resultTo":Landroid/content/IIntentReceiver;
    .end local p3    # "requiredPermissions":[Ljava/lang/String;
    .end local p4    # "serialized":Z
    .end local p5    # "userId":I
    .end local p6    # "appIdAllowList":[I
    .end local p7    # "bOptions":Landroid/os/Bundle;
    throw v0

    .line 17744
    .end local v20    # "callingPid":I
    .end local v21    # "callingUid":I
    .end local v28    # "origId":J
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local p3    # "requiredPermissions":[Ljava/lang/String;
    .restart local p4    # "serialized":Z
    .restart local p5    # "userId":I
    .restart local p6    # "appIdAllowList":[I
    .restart local p7    # "bOptions":Landroid/os/Bundle;
    :catchall_53
    move-exception v0

    goto :goto_58

    :catchall_55
    move-exception v0

    move-object/from16 v3, p1

    :goto_58
    move-object v7, v3

    .end local p1    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    :goto_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_4e .. :try_end_5a} :catchall_5e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_5e
    move-exception v0

    goto :goto_59
.end method

.method public broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZLandroid/os/IBinder;[I)I
    .registers 43
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "realCallingUid"    # I
    .param p5, "realCallingPid"    # I
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "resolvedType"    # Ljava/lang/String;
    .param p8, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p9, "resultCode"    # I
    .param p10, "resultData"    # Ljava/lang/String;
    .param p11, "resultExtras"    # Landroid/os/Bundle;
    .param p12, "requiredPermission"    # Ljava/lang/String;
    .param p13, "bOptions"    # Landroid/os/Bundle;
    .param p14, "serialized"    # Z
    .param p15, "sticky"    # Z
    .param p16, "userId"    # I
    .param p17, "allowBackgroundActivityStarts"    # Z
    .param p18, "backgroundActivityStartsToken"    # Landroid/os/IBinder;
    .param p19, "broadcastAllowList"    # [I

    .line 17711
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17712
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v22, p19

    invoke-virtual/range {v3 .. v22}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZLandroid/os/IBinder;[I)I

    move-result v0

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_39

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 17717
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public canAllowWhileInUsePermissionInFgs(IILjava/lang/String;)Z
    .registers 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 18350
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18351
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->canAllowWhileInUsePermissionInFgsLocked(IILjava/lang/String;)Z

    move-result v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 18352
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public canStartForegroundService(IILjava/lang/String;)Z
    .registers 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 18319
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18320
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->canStartForegroundServiceLocked(IILjava/lang/String;)Z

    move-result v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 18321
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public canStartMoreUsers()Z
    .registers 2

    .line 17440
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->canStartMoreUsers()Z

    move-result v0

    return v0
.end method

.method public changeProjectionState(Z)V
    .registers 5
    .param p1, "isScreenOn"    # Z

    .line 18122
    const/4 v0, 0x0

    if-nez p1, :cond_3c

    .line 18123
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fputmIsScreenOffState(Lcom/android/server/am/ActivityManagerService;Z)V

    .line 18128
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3b

    .line 18129
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityRecord;->setCastMode(Z)V

    .line 18130
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->setCurrentCastModeState(Lcom/android/server/wm/ActivityRecord;I)V

    .line 18136
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCastPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exitCastMode"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/am/ActivityManagerService$LocalService;->forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 18137
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    .line 18139
    :cond_3b
    return-void

    .line 18125
    :cond_3c
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fputmIsScreenOffState(Lcom/android/server/am/ActivityManagerService;Z)V

    .line 18126
    return-void
.end method

.method public checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 17131
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checkContentProviderUriPermission(Landroid/net/Uri;III)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I
    .param p4, "modeFlags"    # I

    .line 17137
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderUriPermission(Landroid/net/Uri;III)I

    move-result v0

    return v0
.end method

.method public cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "baseIntent"    # Landroid/content/Intent;

    .line 17789
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17790
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V

    .line 17791
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17792
    return-void

    .line 17791
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public clearPendingBackup(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 18030
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mclearPendingBackup(Lcom/android/server/am/ActivityManagerService;I)V

    .line 18031
    return-void
.end method

.method public clearPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "target"    # Landroid/content/IIntentSender;
    .param p2, "allowlistToken"    # Landroid/os/IBinder;

    .line 17272
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_1d

    .line 17273
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPendingIntentAllowBgActivityStarts(): not a PendingIntentRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17275
    return-void

    .line 17277
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17278
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v1, p2}, Lcom/android/server/am/PendingIntentRecord;->clearAllowBgActivityStarts(Landroid/os/IBinder;)V

    .line 17279
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17280
    return-void

    .line 17279
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public deletePendingTopUid(IJ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "nowElapsed"    # J

    .line 18247
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmPendingStartActivityUids(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/PendingStartActivityUids;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/PendingStartActivityUids;->delete(IJ)V

    .line 18248
    return-void
.end method

.method public disconnectActivityFromServices(Ljava/lang/Object;)V
    .registers 6
    .param p1, "connectionHolder"    # Ljava/lang/Object;

    .line 17777
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 17779
    .local v0, "holder":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17780
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_28

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 17781
    new-instance v3, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ActivityManagerService$LocalService;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->forEachConnection(Ljava/util/function/Consumer;)V

    .line 17784
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_22

    :try_start_1a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 17785
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_28

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17786
    return-void

    .line 17784
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local v0    # "holder":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1    # "connectionHolder":Ljava/lang/Object;
    throw v3

    .line 17785
    .restart local v0    # "holder":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1    # "connectionHolder":Ljava/lang/Object;
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .line 17488
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 17489
    return-void
.end method

.method public ensureBootCompleted()V
    .registers 2

    .line 17801
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 17802
    return-void
.end method

.method public ensureNotSpecialUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 17631
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    .line 17632
    return-void
.end method

.method public finishBooting()V
    .registers 2

    .line 17691
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 17692
    return-void
.end method

.method public finishUserSwitch(Ljava/lang/Object;)V
    .registers 4
    .param p1, "uss"    # Ljava/lang/Object;

    .line 17646
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object v1, p1

    check-cast v1, Lcom/android/server/am/UserState;

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->finishUserSwitch(Lcom/android/server/am/UserState;)V

    .line 17647
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 18115
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 18116
    return-void
.end method

.method public getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    .registers 4
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .line 17796
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActivityPresentationInfo(Landroid/os/IBinder;)Landroid/content/pm/ActivityPresentationInfo;
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 17663
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    .line 17664
    .local v0, "ac":Landroid/app/ActivityClient;
    new-instance v1, Landroid/content/pm/ActivityPresentationInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/app/ActivityClient;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v2

    .line 17665
    invoke-virtual {v0, p1}, Landroid/app/ActivityClient;->getDisplayId(Landroid/os/IBinder;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 17666
    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getActivityName(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/ActivityPresentationInfo;-><init>(IILandroid/content/ComponentName;)V

    .line 17664
    return-object v1
.end method

.method public getAppProfileStatsForDebugging(JI)Landroid/util/Pair;
    .registers 5
    .param p1, "time"    # J
    .param p3, "lines"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17126
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/AppProfiler;->getAppProfileStatsForDebugging(JI)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getBootTimeTempAllowListDuration()J
    .registers 3

    .line 18304
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    return-wide v0
.end method

.method public getCurrentProfileIds()[I
    .registers 2

    .line 17621
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 2

    .line 17626
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUserId()I
    .registers 2

    .line 17493
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getInstrumentationSourceUid(I)I
    .registers 6
    .param p1, "uid"    # I

    .line 18144
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 18145
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_36

    .line 18146
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActiveInstrumentation;

    .line 18147
    .local v2, "activeInst":Lcom/android/server/am/ActiveInstrumentation;
    iget-boolean v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    if-nez v3, :cond_33

    iget-object v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_33

    iget-object v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, p1, :cond_33

    .line 18149
    iget v3, v2, Lcom/android/server/am/ActiveInstrumentation;->mSourceUid:I

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_3c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return v3

    .line 18145
    .end local v2    # "activeInst":Lcom/android/server/am/ActiveInstrumentation;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 18152
    .end local v1    # "i":I
    :cond_36
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_3c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 18153
    const/4 v0, -0x1

    return v0

    .line 18152
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method public getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
    .registers 3
    .param p1, "sender"    # Landroid/content/IIntentSender;

    .line 18257
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getIsolatedProcesses(I)Ljava/util/List;
    .registers 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 18383
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18384
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessList;->getIsolatedProcessesLocked(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 18385
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getMaxRunningUsers()I
    .registers 2

    .line 17455
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getMaxRunningUsers()I

    move-result v0

    return v0
.end method

.method public getMemoryStateForProcesses()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ProcessMemoryState;",
            ">;"
        }
    .end annotation

    .line 17467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17468
    .local v0, "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 17469
    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v3

    .local v3, "size":I
    :goto_13
    if-ge v2, v3, :cond_3e

    .line 17470
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 17471
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    new-instance v11, Landroid/app/ProcessMemoryState;

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 17472
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v9

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 17473
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Landroid/app/ProcessMemoryState;-><init>(IILjava/lang/String;IZ)V

    .line 17471
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17469
    nop

    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 17475
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_3e
    monitor-exit v1

    .line 17476
    return-object v0

    .line 17475
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_40

    throw v2
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .registers 5
    .param p1, "pid"    # I

    .line 17340
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 17341
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 17343
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_19

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_19

    .line 17344
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 17347
    :cond_19
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 17348
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getPendingIntentActivityAsApp(ILandroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 15
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "ownerPkg"    # Ljava/lang/String;
    .param p6, "ownerUid"    # I

    .line 18264
    const/4 v0, 0x1

    new-array v3, v0, [Landroid/content/Intent;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    move-object v1, p0

    move v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService$LocalService;->getPendingIntentActivityAsApp(I[Landroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getPendingIntentActivityAsApp(I[Landroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 28
    .param p1, "requestCode"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "ownerPkg"    # Ljava/lang/String;
    .param p6, "ownerUid"    # I

    .line 18273
    move-object/from16 v0, p0

    move-object/from16 v14, p2

    const/high16 v1, 0x4000000

    and-int v1, p3, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    move v15, v1

    .line 18274
    .local v15, "flagImmutableSet":Z
    const/high16 v1, 0x2000000

    and-int v1, p3, v1

    if-eqz v1, :cond_17

    move v2, v3

    :cond_17
    move v13, v2

    .line 18275
    .local v13, "flagMutableSet":Z
    if-eq v15, v13, :cond_6c

    .line 18280
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 18281
    .local v12, "context":Landroid/content/Context;
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 18282
    .local v11, "resolver":Landroid/content/ContentResolver;
    array-length v10, v14

    .line 18283
    .local v10, "len":I
    new-array v9, v10, [Ljava/lang/String;

    .line 18284
    .local v9, "resolvedTypes":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    if-ge v1, v10, :cond_39

    .line 18285
    aget-object v2, v14, v1

    .line 18286
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v11}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v1

    .line 18287
    invoke-virtual {v2, v12}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 18288
    invoke-virtual {v2, v12}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 18284
    .end local v2    # "intent":Landroid/content/Intent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 18290
    .end local v1    # "i":I
    :cond_39
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x2

    .line 18293
    invoke-virtual {v12}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 18296
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 18291
    move-object/from16 v3, p5

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v17, v9

    .end local v9    # "resolvedTypes":[Ljava/lang/String;
    .local v17, "resolvedTypes":[Ljava/lang/String;
    move/from16 v18, v10

    .end local v10    # "len":I
    .local v18, "len":I
    move/from16 v10, p3

    move-object/from16 v19, v11

    .end local v11    # "resolver":Landroid/content/ContentResolver;
    .local v19, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v11, p4

    move-object/from16 v20, v12

    .end local v12    # "context":Landroid/content/Context;
    .local v20, "context":Landroid/content/Context;
    move/from16 v12, v16

    move/from16 v16, v13

    .end local v13    # "flagMutableSet":Z
    .local v16, "flagMutableSet":Z
    move/from16 v13, p6

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderWithFeatureAsApp(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;II)Landroid/content/IIntentSender;

    move-result-object v1

    .line 18297
    .local v1, "target":Landroid/content/IIntentSender;
    if-eqz v1, :cond_6a

    new-instance v2, Landroid/app/PendingIntent;

    invoke-direct {v2, v1}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    goto :goto_6b

    :cond_6a
    const/4 v2, 0x0

    :goto_6b
    return-object v2

    .line 18276
    .end local v1    # "target":Landroid/content/IIntentSender;
    .end local v16    # "flagMutableSet":Z
    .end local v17    # "resolvedTypes":[Ljava/lang/String;
    .end local v18    # "len":I
    .end local v19    # "resolver":Landroid/content/ContentResolver;
    .end local v20    # "context":Landroid/content/Context;
    .restart local v13    # "flagMutableSet":Z
    :cond_6c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must set exactly one of FLAG_IMMUTABLE or FLAG_MUTABLE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPendingIntentFlags(Landroid/content/IIntentSender;)I
    .registers 3
    .param p1, "target"    # Landroid/content/IIntentSender;

    .line 17248
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/PendingIntentController;->getPendingIntentFlags(Landroid/content/IIntentSender;)I

    move-result v0

    return v0
.end method

.method public getPendingIntentStats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/PendingIntentStats;",
            ">;"
        }
    .end annotation

    .line 17121
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentController;->dumpPendingIntentStatsForStatsd()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProcessesWithPendingBindMounts(I)Ljava/util/Map;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17325
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessList;->getProcessesWithPendingBindMounts(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPushMessagingOverQuotaBehavior()I
    .registers 3

    .line 18357
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18358
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 18359
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getRestrictionLevel(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 18410
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(I)I

    move-result v0

    return v0
.end method

.method public getRestrictionLevel(Ljava/lang/String;I)I
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 18415
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getServiceStartForegroundTimeout()I
    .registers 2

    .line 18364
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    return v0
.end method

.method public getStartedUserIds()[I
    .registers 2

    .line 17253
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getStartedUserArray()[I

    move-result-object v0

    return-object v0
.end method

.method public getStorageMountMode(II)I
    .registers 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 18009
    const/16 v0, 0x7d0

    if-eq p2, v0, :cond_21

    if-nez p2, :cond_7

    goto :goto_21

    .line 18012
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 18013
    :try_start_c
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 18014
    .local v1, "pr":Lcom/android/server/am/ProcessRecord;
    if-nez v1, :cond_18

    const/4 v2, 0x0

    goto :goto_1c

    :cond_18
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getMountMode()I

    move-result v2

    :goto_1c
    monitor-exit v0

    return v2

    .line 18015
    .end local v1    # "pr":Lcom/android/server/am/ProcessRecord;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_1e

    throw v1

    .line 18010
    :cond_21
    :goto_21
    const/4 v0, 0x1

    return v0
.end method

.method public getTaskIdForActivity(Landroid/os/IBinder;Z)I
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyRoot"    # Z

    .line 17658
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    return v0
.end method

.method public getUidCapability(I)I
    .registers 7
    .param p1, "uid"    # I

    .line 18369
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18370
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 18371
    .local v1, "uidRecord":Lcom/android/server/am/UidRecord;
    if-eqz v1, :cond_19

    .line 18374
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v2

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_39

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 18372
    :cond_19
    :try_start_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid record for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1    # "uid":I
    throw v2

    .line 18375
    .end local v1    # "uidRecord":Lcom/android/server/am/UidRecord;
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1    # "uid":I
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_19 .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getUidProcessState(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 17320
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result v0

    return v0
.end method

.method public handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .registers 18
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "allowAll"    # Z
    .param p5, "allowMode"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "callerPackage"    # Ljava/lang/String;

    .line 17482
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public hasForegroundServiceNotification(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .line 18061
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18062
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->hasForegroundServiceNotificationLocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 18063
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public hasRunningActivity(ILjava/lang/String;)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 17539
    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 17541
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 17542
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v3, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, p2}, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1d

    move v0, v4

    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return v0

    .line 17549
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method public hasRunningForegroundService(II)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "foregroundServicetype"    # I

    .line 18044
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18045
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v2, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2}, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;-><init>(II)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 18055
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public hasStartedUserState(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 17641
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v0

    return v0
.end method

.method public inputDispatchingResumed(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 17849
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 17850
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 17851
    .local v1, "proc":Lcom/android/server/am/ProcessRecord;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_18

    .line 17852
    if-eqz v1, :cond_17

    .line 17853
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrors;->handleDismissAnrDialogs(Lcom/android/server/am/ProcessRecord;)V

    .line 17855
    :cond_17
    return-void

    .line 17851
    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public inputDispatchingTimedOut(IZLjava/lang/String;)J
    .registers 6
    .param p1, "pid"    # I
    .param p2, "aboveSystem"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 17833
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public inputDispatchingTimedOut(Ljava/lang/Object;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)Z
    .registers 16
    .param p1, "proc"    # Ljava/lang/Object;
    .param p2, "activityShortComponentName"    # Ljava/lang/String;
    .param p3, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "parentShortComponentName"    # Ljava/lang/String;
    .param p5, "parentProc"    # Ljava/lang/Object;
    .param p6, "aboveSystem"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 17840
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    move-object v5, p5

    check-cast v5, Lcom/android/server/wm/WindowProcessController;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isActivityStartsLoggingEnabled()Z
    .registers 2

    .line 17813
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagActivityStartsLoggingEnabled:Z

    return v0
.end method

.method public isAppBad(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 18025
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$misAppBad(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isAppForeground(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 18020
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$misAppForeground(Lcom/android/server/am/ActivityManagerService;I)Z

    move-result v0

    return v0
.end method

.method public isAppStartModeDisabled(ILjava/lang/String;)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 17616
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAssociatedCompanionApp(II)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 18191
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmCompanionAppUidsMap(Lcom/android/server/am/ActivityManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 18192
    .local v0, "allUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_14

    .line 18193
    const/4 v1, 0x0

    return v1

    .line 18195
    :cond_14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isBackgroundActivityStartsEnabled()Z
    .registers 2

    .line 17817
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    return v0
.end method

.method public isBgAutoRestrictedBucketFeatureFlagEnabled()Z
    .registers 2

    .line 18420
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController;->isBgAutoRestrictedBucketFeatureFlagEnabled()Z

    move-result v0

    return v0
.end method

.method public isBooted()Z
    .registers 2

    .line 17686
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    return v0
.end method

.method public isBooting()Z
    .registers 2

    .line 17676
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    return v0
.end method

.method public isCurrentProfile(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 17636
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->isCurrentProfile(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceOwner(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 18163
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmDeviceOwnerUid(Lcom/android/server/am/ActivityManagerService;)I

    move-result v0

    .line 18164
    .local v0, "cachedUid":I
    if-ltz p1, :cond_c

    if-ne v0, p1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public isPendingTopUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 18252
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmPendingStartActivityUids(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/PendingStartActivityUids;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/PendingStartActivityUids;->isPendingTopUid(I)Z

    move-result v0

    return v0
.end method

.method public isProfileOwner(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 18177
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18178
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmProfileOwnerUids(Lcom/android/server/am/ActivityManagerService;)Landroid/util/ArraySet;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmProfileOwnerUids(Lcom/android/server/am/ActivityManagerService;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 18179
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isRuntimeRestarted()Z
    .registers 2

    .line 17435
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v0

    return v0
.end method

.method public isSystemReady()Z
    .registers 2

    .line 17331
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    return v0
.end method

.method public isTempAllowlistedForFgsWhileInUse(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 18344
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmFgsWhileInUseTempAllowList(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/FgsTempAllowList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/FgsTempAllowList;->isAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isUidActive(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 17460
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 17461
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->isUidActiveLOSP(I)Z

    move-result v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return v1

    .line 17462
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method public isUserRunning(II)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .line 17499
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v0

    return v0
.end method

.method public killAllBackgroundProcessesExcept(II)V
    .registers 5
    .param p1, "minTargetSdk"    # I
    .param p2, "maxProcState"    # I

    .line 17939
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17940
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->killAllBackgroundProcessesExcept(II)V

    .line 17942
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17943
    return-void

    .line 17942
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public killForegroundAppsForUser(I)V
    .registers 14
    .param p1, "userId"    # I

    .line 17205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17206
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 17207
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 17208
    .local v2, "numOfProcs":I
    const/4 v3, 0x0

    .local v3, "ip":I
    :goto_1e
    if-ge v3, v2, :cond_61

    .line 17209
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 17210
    invoke-virtual {v4}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 17211
    .local v4, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 17212
    .local v5, "NA":I
    const/4 v6, 0x0

    .local v6, "ia":I
    :goto_37
    if-ge v6, v5, :cond_5e

    .line 17213
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 17214
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_46

    .line 17216
    goto :goto_5b

    .line 17218
    :cond_46
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v8

    if-nez v8, :cond_58

    iget v8, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v8, p1, :cond_5b

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 17219
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 17220
    :cond_58
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17212
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_5b
    :goto_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 17208
    .end local v4    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v5    # "NA":I
    .end local v6    # "ia":I
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 17224
    .end local v2    # "numOfProcs":I
    .end local v3    # "ip":I
    :cond_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_a .. :try_end_62} :catchall_9a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 17226
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 17227
    .local v1, "numOfProcs":I
    if-lez v1, :cond_99

    .line 17228
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_6e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17229
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_72
    if-ge v3, v1, :cond_8e

    .line 17230
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xd

    const/16 v10, 0x9

    const-string/jumbo v11, "kill all fg"

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    .line 17229
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 17235
    .end local v3    # "i":I
    :cond_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_6e .. :try_end_8f} :catchall_93

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_99

    :catchall_93
    move-exception v3

    :try_start_94
    monitor-exit v2
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 17237
    :cond_99
    :goto_99
    return-void

    .line 17224
    .end local v1    # "numOfProcs":I
    :catchall_9a
    move-exception v2

    :try_start_9b
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v2
.end method

.method public killProcess(Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 17528
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17529
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 17530
    .local v1, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_1b

    .line 17531
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xd

    move-object v3, v1

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 17534
    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17535
    return-void

    .line 17534
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public killProcessesForRemovedTask(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 17508
    .local p1, "procsToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17509
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 17510
    nop

    .line 17511
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    .line 17512
    .local v2, "wpc":Lcom/android/server/wm/WindowProcessController;
    iget-object v3, v2, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 17513
    .local v3, "pr":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v4

    if-nez v4, :cond_34

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 17514
    invoke-virtual {v4}, Lcom/android/server/am/ProcessReceiverRecord;->numberOfCurReceivers()I

    move-result v4

    if-nez v4, :cond_34

    .line 17515
    const-string/jumbo v4, "remove task"

    const/16 v5, 0xa

    const/16 v6, 0x16

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_3a

    .line 17520
    :cond_34
    const-string/jumbo v4, "remove task"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->setWaitingToKill(Ljava/lang/String;)V

    .line 17509
    .end local v2    # "wpc":Lcom/android/server/wm/WindowProcessController;
    .end local v3    # "pr":Lcom/android/server/am/ProcessRecord;
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 17523
    .end local v1    # "i":I
    :cond_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_42

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17524
    return-void

    .line 17523
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$disconnectActivityFromServices$1$com-android-server-am-ActivityManagerService$LocalService(Lcom/android/server/wm/ActivityServiceConnectionsHolder;Ljava/lang/Object;)V
    .registers 7
    .param p1, "holder"    # Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .param p2, "cr"    # Ljava/lang/Object;

    .line 17781
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object v1, p2

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)V

    return-void
.end method

.method public monitor()V
    .registers 2

    .line 17828
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->monitor()V

    .line 17829
    return-void
.end method

.method public noteAlarmFinish(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V
    .registers 7
    .param p1, "ps"    # Landroid/app/PendingIntent;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "sourceUid"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .line 17596
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->noteAlarmFinish(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 17598
    return-void
.end method

.method public noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V
    .registers 7
    .param p1, "ps"    # Landroid/app/PendingIntent;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "sourceUid"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .line 17603
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->noteAlarmStart(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 17605
    return-void
.end method

.method public noteWakeupAlarm(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "ps"    # Landroid/app/PendingIntent;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "sourceUid"    # I
    .param p4, "sourcePkg"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;

    .line 17610
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->noteWakeupAlarm(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    .line 17612
    return-void
.end method

.method public notifyNetworkPolicyRulesUpdated(IJ)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "procStateSeq"    # J

    .line 17385
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v0, :cond_26

    .line 17386
    const-string v0, "ActivityManager_Network"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got update from NPMS for uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17390
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_2b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 17391
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 17392
    .local v1, "record":Lcom/android/server/am/UidRecord;
    if-nez v1, :cond_63

    .line 17393
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v2, :cond_5e

    .line 17394
    const-string v2, "ActivityManager_Network"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No active uidRecord for uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " procStateSeq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17397
    :cond_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_2b .. :try_end_5f} :catchall_e5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 17399
    :cond_63
    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_e5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 17400
    iget-object v2, v1, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 17401
    :try_start_6a
    iget-wide v3, v1, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    cmp-long v0, v3, p2

    if-ltz v0, :cond_99

    .line 17402
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v0, :cond_97

    .line 17403
    const-string v0, "ActivityManager_Network"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "procStateSeq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has already been handled for uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17406
    :cond_97
    monitor-exit v2

    return-void

    .line 17408
    :cond_99
    iput-wide p2, v1, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    .line 17409
    iget-wide v3, v1, Lcom/android/server/am/UidRecord;->procStateSeqWaitingForNetwork:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_e0

    iget-wide v3, v1, Lcom/android/server/am/UidRecord;->procStateSeqWaitingForNetwork:J

    cmp-long v0, p2, v3

    if-ltz v0, :cond_e0

    .line 17411
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v0, :cond_db

    .line 17412
    const-string v0, "ActivityManager_Network"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying all blocking threads for uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", procStateSeq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", procStateSeqWaitingForNetwork: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/server/am/UidRecord;->procStateSeqWaitingForNetwork:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17417
    :cond_db
    iget-object v0, v1, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 17419
    :cond_e0
    monitor-exit v2

    .line 17420
    return-void

    .line 17419
    :catchall_e2
    move-exception v0

    monitor-exit v2
    :try_end_e4
    .catchall {:try_start_6a .. :try_end_e4} :catchall_e2

    throw v0

    .line 17399
    .end local v1    # "record":Lcom/android/server/am/UidRecord;
    :catchall_e5
    move-exception v1

    :try_start_e6
    monitor-exit v0
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method public notifyResolutionChanged()V
    .registers 2

    .line 18332
    monitor-enter p0

    .line 18333
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 18334
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerServiceStub;->killProcessDueToResolutionChanged()V

    .line 18336
    invoke-static {}, Lcom/android/server/app/GameManagerServiceStub;->getInstance()Lcom/android/server/app/GameManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/app/GameManagerServiceStub;->downscaleForSwitchResolution()V

    .line 18338
    :cond_1f
    monitor-exit p0

    .line 18339
    return-void

    .line 18338
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onForegroundServiceNotificationUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V
    .registers 14
    .param p1, "shown"    # Z
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "id"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 18078
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18079
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActiveServices;->onForegroundServiceNotificationUpdateLocked(ZLandroid/app/Notification;ILjava/lang/String;I)V

    .line 18081
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18082
    return-void

    .line 18081
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onUidBlockedReasonsChanged(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "blockedReasons"    # I

    .line 17424
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmUidNetworkBlockedReasons(Lcom/android/server/am/ActivityManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    .line 17425
    if-nez p2, :cond_13

    .line 17426
    :try_start_9
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmUidNetworkBlockedReasons(Lcom/android/server/am/ActivityManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_1c

    .line 17428
    :cond_13
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmUidNetworkBlockedReasons(Lcom/android/server/am/ActivityManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 17430
    :goto_1c
    monitor-exit v0

    .line 17431
    return-void

    .line 17430
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public onUserRemoved(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 17192
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    .line 17194
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BatteryStatsService;->onUserRemoved(I)V

    .line 17195
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->onUserRemoved(I)V

    .line 17196
    return-void
.end method

.method public onWakefulnessChanged(I)V
    .registers 3
    .param p1, "wakefulness"    # I

    .line 17142
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->onWakefulnessChanged(I)V

    .line 17143
    return-void
.end method

.method public prepareForPossibleShutdown()V
    .registers 2

    .line 18039
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->prepareForPossibleShutdown()V

    .line 18040
    return-void
.end method

.method public registerAnrController(Landroid/app/AnrController;)V
    .registers 3
    .param p1, "controller"    # Landroid/app/AnrController;

    .line 18309
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->registerAnrController(Landroid/app/AnrController;)V

    .line 18310
    return-void
.end method

.method public registerNetworkPolicyUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    .registers 12
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "which"    # I
    .param p3, "cutpoint"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 18457
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fputmNetworkPolicyUidObserver(Lcom/android/server/am/ActivityManagerService;Landroid/app/IUidObserver;)V

    .line 18458
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    .line 18459
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 18458
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UidObserverController;->register(Landroid/app/IUidObserver;IILjava/lang/String;I)V

    .line 18460
    return-void
.end method

.method public registerProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 3
    .param p1, "processObserver"    # Landroid/app/IProcessObserver;

    .line 18099
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 18100
    return-void
.end method

.method public reportCurKeyguardUsageEvent(Z)V
    .registers 4
    .param p1, "keyguardShowing"    # Z

    .line 17821
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_7

    .line 17822
    const/16 v1, 0x11

    goto :goto_9

    .line 17823
    :cond_7
    const/16 v1, 0x12

    .line 17821
    :goto_9
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEvent(I)V

    .line 17824
    return-void
.end method

.method public rescheduleAnrDialog(Ljava/lang/Object;)V
    .registers 6
    .param p1, "data"    # Ljava/lang/Object;

    .line 17859
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 17860
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 17861
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/AppNotRespondingDialog$Data;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17863
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    sget v2, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 17864
    return-void
.end method

.method public restart()V
    .registers 2

    .line 18451
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->restart()V

    .line 18452
    return-void
.end method

.method public scheduleAppGcs()V
    .registers 3

    .line 17651
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 17652
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 17653
    monitor-exit v0

    .line 17654
    return-void

    .line 17653
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public sendForegroundProfileChanged(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 17585
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->sendForegroundProfileChanged(I)V

    .line 17586
    return-void
.end method

.method public sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 19
    .param p1, "target"    # Landroid/content/IIntentSender;
    .param p2, "allowlistToken"    # Landroid/os/IBinder;
    .param p3, "code"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p7, "requiredPermission"    # Ljava/lang/String;
    .param p8, "options"    # Landroid/os/Bundle;

    .line 18393
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ActivityManagerService;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v1

    return v1
.end method

.method public setBooted(Z)V
    .registers 3
    .param p1, "booted"    # Z

    .line 17681
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 17682
    return-void
.end method

.method public setBooting(Z)V
    .registers 3
    .param p1, "booting"    # Z

    .line 17671
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 17672
    return-void
.end method

.method public setCastPid(ILjava/lang/String;I)V
    .registers 5
    .param p1, "enter"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .line 18110
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$msetCastPid(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;I)V

    .line 18111
    return-void
.end method

.method public setCompanionAppUids(ILjava/util/Set;)V
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 18184
    .local p2, "companionAppUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18185
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmCompanionAppUidsMap(Lcom/android/server/am/ActivityManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18186
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18187
    return-void

    .line 18186
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDebugFlagsForStartingActivity(Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;Ljava/lang/Object;)V
    .registers 10
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "startFlags"    # I
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "wmLock"    # Ljava/lang/Object;

    .line 17980
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17986
    monitor-enter p4
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_48

    .line 17987
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_17

    .line 17988
    :try_start_b
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    goto :goto_17

    .line 18003
    :catchall_15
    move-exception v1

    goto :goto_46

    .line 17991
    :cond_17
    :goto_17
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_24

    .line 17992
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setNativeDebuggingAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 17995
    :cond_24
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_31

    .line 17996
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setTrackAllocationApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 17999
    :cond_31
    if-eqz p3, :cond_3d

    .line 18000
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 18002
    :cond_3d
    invoke-virtual {p4}, Ljava/lang/Object;->notify()V

    .line 18003
    monitor-exit p4
    :try_end_41
    .catchall {:try_start_b .. :try_end_41} :catchall_15

    .line 18004
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_48

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18005
    return-void

    .line 18003
    :goto_46
    :try_start_46
    monitor-exit p4
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_15

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p2    # "startFlags":I
    .end local p3    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p4    # "wmLock":Ljava/lang/Object;
    :try_start_47
    throw v1

    .line 18004
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local p2    # "startFlags":I
    .restart local p3    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p4    # "wmLock":Ljava/lang/Object;
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDeviceIdleAllowlist([I[I)V
    .registers 6
    .param p1, "allAppids"    # [I
    .param p2, "exceptIdleAppids"    # [I

    .line 17284
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17285
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2c

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 17286
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, v2, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleAllowlist:[I

    .line 17287
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, v2, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleExceptIdleAllowlist:[I

    .line 17288
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/AppRestrictionController;->setDeviceIdleAllowlist([I[I)V

    .line 17289
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_26

    :try_start_1e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 17290
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17291
    return-void

    .line 17289
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1    # "allAppids":[I
    .end local p2    # "exceptIdleAppids":[I
    throw v2

    .line 17290
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1    # "allAppids":[I
    .restart local p2    # "exceptIdleAppids":[I
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDeviceOwnerUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 18158
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fputmDeviceOwnerUid(Lcom/android/server/am/ActivityManagerService;I)V

    .line 18159
    return-void
.end method

.method public setHasOverlayUi(IZ)V
    .registers 9
    .param p1, "pid"    # I
    .param p2, "hasOverlayUi"    # Z

    .line 17360
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17362
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_58

    .line 17363
    :try_start_b
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 17364
    .local v2, "pr":Lcom/android/server/am/ProcessRecord;
    if-nez v2, :cond_34

    .line 17365
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHasOverlayUi called on unknown pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17366
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_55

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_58

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 17368
    :cond_34
    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_55

    .line 17369
    :try_start_35
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v1

    if-ne v1, p2, :cond_42

    .line 17370
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_58

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 17372
    :cond_42
    :try_start_42
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1, p2}, Lcom/android/server/am/ProcessStateRecord;->setHasOverlayUi(Z)V

    .line 17374
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "updateOomAdj_uiVisibility"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    .line 17375
    nop

    .end local v2    # "pr":Lcom/android/server/am/ProcessRecord;
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_42 .. :try_end_51} :catchall_58

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17376
    return-void

    .line 17368
    :catchall_55
    move-exception v2

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1    # "pid":I
    .end local p2    # "hasOverlayUi":Z
    :try_start_57
    throw v2

    .line 17375
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1    # "pid":I
    .restart local p2    # "hasOverlayUi":Z
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_58

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;I)V
    .registers 7
    .param p1, "target"    # Landroid/content/IIntentSender;
    .param p2, "allowlistToken"    # Landroid/os/IBinder;
    .param p3, "flags"    # I

    .line 17259
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_1e

    .line 17260
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPendingIntentAllowBgActivityStarts(): not a PendingIntentRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17262
    return-void

    .line 17264
    :cond_1e
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_21
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17265
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/PendingIntentRecord;->setAllowBgActivityStarts(Landroid/os/IBinder;I)V

    .line 17266
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17267
    return-void

    .line 17266
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPendingIntentAllowlistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;JIILjava/lang/String;)V
    .registers 18
    .param p1, "target"    # Landroid/content/IIntentSender;
    .param p2, "allowlistToken"    # Landroid/os/IBinder;
    .param p3, "duration"    # J
    .param p5, "type"    # I
    .param p6, "reasonCode"    # I
    .param p7, "reason"    # Ljava/lang/String;

    .line 17242
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/PendingIntentController;->setPendingIntentAllowlistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;JIILjava/lang/String;)V

    .line 17244
    return-void
.end method

.method public setProfileOwnerUid(Landroid/util/ArraySet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 18170
    .local p1, "profileOwnerUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18171
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fputmProfileOwnerUids(Lcom/android/server/am/ActivityManagerService;Landroid/util/ArraySet;)V

    .line 18172
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18173
    return-void

    .line 18172
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setStopUserOnSwitch(I)V
    .registers 3
    .param p1, "value"    # I

    .line 18405
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->setStopUserOnSwitch(I)V

    .line 18406
    return-void
.end method

.method public setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
    .registers 3
    .param p1, "switchingFromSystemUserMessage"    # Ljava/lang/String;

    .line 17445
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->setSwitchingFromSystemUserMessage(Ljava/lang/String;)V

    .line 17446
    return-void
.end method

.method public setSwitchingToSystemUserMessage(Ljava/lang/String;)V
    .registers 3
    .param p1, "switchingToSystemUserMessage"    # Ljava/lang/String;

    .line 17450
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->setSwitchingToSystemUserMessage(Ljava/lang/String;)V

    .line 17451
    return-void
.end method

.method public setVoiceInteractionManagerProvider(Landroid/app/ActivityManagerInternal$VoiceInteractionManagerProvider;)V
    .registers 3
    .param p1, "provider"    # Landroid/app/ActivityManagerInternal$VoiceInteractionManagerProvider;

    .line 18400
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$msetVoiceInteractionManagerProvider(Lcom/android/server/am/ActivityManagerService;Landroid/app/ActivityManagerInternal$VoiceInteractionManagerProvider;)V

    .line 18401
    return-void
.end method

.method public shouldConfirmCredentials(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 17590
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    move-result v0

    return v0
.end method

.method public startActivityAsUserEmpty(Landroid/os/Bundle;)I
    .registers 3
    .param p1, "options"    # Landroid/os/Bundle;

    .line 17200
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUserEmpty(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z
    .registers 14
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "abiOverride"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "crashHandler"    # Ljava/lang/Runnable;

    .line 17148
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;)V
    .registers 15
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "knownToBeDead"    # Z
    .param p4, "isTop"    # Z
    .param p5, "hostingType"    # Ljava/lang/String;
    .param p6, "hostingName"    # Landroid/content/ComponentName;

    .line 17949
    const-string/jumbo v7, "others"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService$LocalService;->startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 17950
    return-void
.end method

.method public startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 25
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "knownToBeDead"    # Z
    .param p4, "isTop"    # Z
    .param p5, "hostingType"    # Ljava/lang/String;
    .param p6, "hostingName"    # Landroid/content/ComponentName;
    .param p7, "callerPackage"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 17957
    const-wide/16 v2, 0x40

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 17958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startProcess:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_5d

    move-object/from16 v14, p1

    :try_start_18
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_26

    .line 17957
    :cond_24
    move-object/from16 v14, p1

    .line 17961
    :goto_26
    iget-object v15, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_5b

    :try_start_29
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17965
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    new-instance v9, Lcom/android/server/am/HostingRecord;

    move/from16 v13, p4

    move-object/from16 v12, p5

    move-object/from16 v11, p6

    invoke-direct {v9, v12, v11, v13}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Z)V

    const/4 v10, 0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move v11, v0

    move/from16 v12, v16

    move-object/from16 v13, p7

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 17971
    monitor-exit v15
    :try_end_4d
    .catchall {:try_start_29 .. :try_end_4d} :catchall_55

    :try_start_4d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_5b

    .line 17973
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 17974
    nop

    .line 17975
    return-void

    .line 17971
    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v15
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    :try_start_57
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1    # "processName":Ljava/lang/String;
    .end local p2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local p3    # "knownToBeDead":Z
    .end local p4    # "isTop":Z
    .end local p5    # "hostingType":Ljava/lang/String;
    .end local p6    # "hostingName":Landroid/content/ComponentName;
    .end local p7    # "callerPackage":Ljava/lang/String;
    throw v0
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_5b

    .line 17973
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1    # "processName":Ljava/lang/String;
    .restart local p2    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local p3    # "knownToBeDead":Z
    .restart local p4    # "isTop":Z
    .restart local p5    # "hostingType":Ljava/lang/String;
    .restart local p6    # "hostingName":Landroid/content/ComponentName;
    .restart local p7    # "callerPackage":Ljava/lang/String;
    :catchall_5b
    move-exception v0

    goto :goto_60

    :catchall_5d
    move-exception v0

    move-object/from16 v14, p1

    :goto_60
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 17974
    throw v0
.end method

.method public startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZLandroid/os/IBinder;)Landroid/content/ComponentName;
    .registers 28
    .param p1, "uid"    # I
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "fgRequired"    # Z
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callingFeatureId"    # Ljava/lang/String;
    .param p7, "userId"    # I
    .param p8, "allowBackgroundActivityStarts"    # Z
    .param p9, "backgroundActivityStartsToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 17754
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17755
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_71

    if-eqz v0, :cond_3c

    :try_start_c
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startServiceInPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_36

    move-object/from16 v15, p2

    :try_start_1c
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_34

    move-object/from16 v14, p3

    :try_start_28
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 17768
    :catchall_34
    move-exception v0

    goto :goto_39

    :catchall_36
    move-exception v0

    move-object/from16 v15, p2

    :goto_39
    move-object/from16 v14, p3

    goto :goto_72

    .line 17755
    :cond_3c
    move-object/from16 v15, p2

    move-object/from16 v14, p3

    .line 17757
    :goto_40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_71

    move-wide/from16 v16, v3

    .line 17760
    .local v16, "origId":J
    :try_start_46
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/4 v5, 0x0

    const/4 v8, -0x1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, p1

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v15, p9

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/am/ActiveServices;->startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;IZLandroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_62
    .catchall {:try_start_46 .. :try_end_62} :catchall_6b

    .line 17765
    .local v0, "res":Landroid/content/ComponentName;
    :try_start_62
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17766
    nop

    .line 17767
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_71

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 17765
    .end local v0    # "res":Landroid/content/ComponentName;
    :catchall_6b
    move-exception v0

    :try_start_6c
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17766
    nop

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1    # "uid":I
    .end local p2    # "service":Landroid/content/Intent;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "fgRequired":Z
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p7    # "userId":I
    .end local p8    # "allowBackgroundActivityStarts":Z
    .end local p9    # "backgroundActivityStartsToken":Landroid/os/IBinder;
    throw v0

    .line 17768
    .end local v16    # "origId":J
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1    # "uid":I
    .restart local p2    # "service":Landroid/content/Intent;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "fgRequired":Z
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p7    # "userId":I
    .restart local p8    # "allowBackgroundActivityStarts":Z
    .restart local p9    # "backgroundActivityStartsToken":Landroid/os/IBinder;
    :catchall_71
    move-exception v0

    :goto_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_71

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public stopAppForUser(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 18086
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->stopAppForUserInternal(Ljava/lang/String;I)V

    .line 18087
    return-void
.end method

.method public stopForegroundServicesForChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .line 18092
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18093
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->stopForegroundServicesForChannelLocked(Ljava/lang/String;ILjava/lang/String;)V

    .line 18094
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18095
    return-void

    .line 18094
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public tempAllowWhileInUsePermissionInFgs(IJ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "durationMs"    # J

    .line 18326
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmFgsWhileInUseTempAllowList(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/FgsTempAllowList;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/am/FgsTempAllowList;->add(IJLjava/lang/Object;)V

    .line 18327
    return-void
.end method

.method public tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V
    .registers 21
    .param p1, "callerPid"    # I
    .param p2, "callerUid"    # I
    .param p3, "targetUid"    # I
    .param p4, "duration"    # J
    .param p6, "type"    # I
    .param p7, "reasonCode"    # I
    .param p8, "reason"    # Ljava/lang/String;

    .line 17697
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17698
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move v4, p1

    move v5, p2

    move v6, p3

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ActivityManagerService;->tempAllowlistForPendingIntentLocked(IIIJIILjava/lang/String;)V

    .line 17700
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17701
    return-void

    .line 17700
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public trimApplications()V
    .registers 4

    .line 17504
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x1

    const-string/jumbo v2, "updateOomAdj_activityChange"

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mtrimApplications(Lcom/android/server/am/ActivityManagerService;ZLjava/lang/String;)V

    .line 17505
    return-void
.end method

.method public unregisterAnrController(Landroid/app/AnrController;)V
    .registers 3
    .param p1, "controller"    # Landroid/app/AnrController;

    .line 18314
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->unregisterAnrController(Landroid/app/AnrController;)V

    .line 18315
    return-void
.end method

.method public unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 3
    .param p1, "processObserver"    # Landroid/app/IProcessObserver;

    .line 18104
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 18105
    return-void
.end method

.method public updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 12
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "event"    # I
    .param p4, "appToken"    # Landroid/os/IBinder;
    .param p5, "taskRoot"    # Landroid/content/ComponentName;

    .line 17573
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 17575
    return-void
.end method

.method public updateBatteryStats(Landroid/content/ComponentName;IIZ)V
    .registers 6
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "resumed"    # Z

    .line 17567
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->updateBatteryStats(Landroid/content/ComponentName;IIZ)V

    .line 17568
    return-void
.end method

.method public updateCpuStats()V
    .registers 2

    .line 17561
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 17562
    return-void
.end method

.method public updateDeviceIdleTempAllowlist([IIZJIILjava/lang/String;I)V
    .registers 24
    .param p1, "appids"    # [I
    .param p2, "changingUid"    # I
    .param p3, "adding"    # Z
    .param p4, "durationMs"    # J
    .param p6, "type"    # I
    .param p7, "reasonCode"    # I
    .param p8, "reason"    # Ljava/lang/String;
    .param p9, "callingUid"    # I

    .line 17297
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17298
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v6
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_5a

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 17299
    if-eqz v2, :cond_1a

    .line 17300
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempAllowlist:[I

    .line 17302
    :cond_1a
    if-eqz v4, :cond_39

    .line 17303
    if-nez p6, :cond_36

    .line 17306
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    new-instance v13, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    move-object v7, v13

    move-wide/from16 v8, p4

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;-><init>(JILjava/lang/String;I)V
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_50

    move-wide/from16 v7, p4

    :try_start_32
    invoke-virtual {v0, v3, v7, v8, v13}, Lcom/android/server/am/FgsTempAllowList;->add(IJLjava/lang/Object;)V

    goto :goto_42

    .line 17303
    :cond_36
    move-wide/from16 v7, p4

    goto :goto_42

    .line 17311
    :cond_39
    move-wide/from16 v7, p4

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    invoke-virtual {v0, v3}, Lcom/android/server/am/FgsTempAllowList;->removeUid(I)V

    .line 17313
    :goto_42
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->setAppIdTempAllowlistStateLSP(IZ)V

    .line 17314
    monitor-exit v6
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_58

    :try_start_48
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 17315
    monitor-exit v5
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_62

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17316
    return-void

    .line 17314
    :catchall_50
    move-exception v0

    move-wide/from16 v7, p4

    :goto_53
    :try_start_53
    monitor-exit v6
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_58

    :try_start_54
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1    # "appids":[I
    .end local p2    # "changingUid":I
    .end local p3    # "adding":Z
    .end local p4    # "durationMs":J
    .end local p6    # "type":I
    .end local p7    # "reasonCode":I
    .end local p8    # "reason":Ljava/lang/String;
    .end local p9    # "callingUid":I
    throw v0

    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1    # "appids":[I
    .restart local p2    # "changingUid":I
    .restart local p3    # "adding":Z
    .restart local p4    # "durationMs":J
    .restart local p6    # "type":I
    .restart local p7    # "reasonCode":I
    .restart local p8    # "reason":Ljava/lang/String;
    .restart local p9    # "callingUid":I
    :catchall_58
    move-exception v0

    goto :goto_53

    .line 17315
    :catchall_5a
    move-exception v0

    move-wide/from16 v7, p4

    :goto_5d
    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_62

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_62
    move-exception v0

    goto :goto_5d
.end method

.method public updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "cpuTimeDiff"    # J

    .line 17580
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V

    .line 17581
    return-void
.end method

.method public updateOomAdj()V
    .registers 4

    .line 17554
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17555
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_meh"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 17556
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17557
    return-void

    .line 17556
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updateOomLevelsForDisplay(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 17805
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17806
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_17

    .line 17807
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessList;->applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V

    .line 17809
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17810
    return-void

    .line 17809
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
