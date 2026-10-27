.class final Lcom/android/server/power/hint/HintManagerService$AppHintSession;
.super Landroid/os/IHintSession$Stub;
.source "HintManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mGraphicsPipeline:Z

.field public mHalSessionPtr:J

.field public mHasBeenGraphicsPipeline:Z

.field public mHasBeenPowerEfficient:Z

.field public mNewThreadIds:[I

.field public final mPid:I

.field public mPowerEfficient:Z

.field public mSessionId:Ljava/lang/Integer;

.field public mShouldForcePause:Z

.field public final mTag:I

.field public mTargetDurationNanos:J

.field public mThreadIds:[I

.field public final mToken:Landroid/os/IBinder;

.field public mTrackedBySF:Z

.field public final mUid:I

.field public mUpdateAllowedByProcState:Z

.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpause(Lcom/android/server/power/hint/HintManagerService$AppHintSession;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->pause()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetThreadsInternal(Lcom/android/server/power/hint/HintManagerService$AppHintSession;[IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->setThreadsInternal([IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;III[ILandroid/os/IBinder;JJLjava/lang/Integer;)V
    .registers 12

    .line 2130
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-direct {p0}, Landroid/os/IHintSession$Stub;-><init>()V

    .line 2131
    iput p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    .line 2132
    iput p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPid:I

    .line 2133
    iput p4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    .line 2134
    iput-object p6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    .line 2135
    iput-object p5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    .line 2136
    iput-wide p7, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 2137
    iput-wide p9, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    const/4 p3, 0x1

    .line 2138
    iput-boolean p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    const/4 p3, 0x0

    .line 2139
    iput-boolean p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPowerEfficient:Z

    .line 2140
    iput-boolean p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mGraphicsPipeline:Z

    .line 2141
    iput-boolean p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHasBeenPowerEfficient:Z

    .line 2142
    iput-boolean p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHasBeenGraphicsPipeline:Z

    .line 2143
    iput-boolean p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    .line 2144
    iput-object p11, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mSessionId:Ljava/lang/Integer;

    .line 2145
    iput-boolean p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTrackedBySF:Z

    .line 2146
    iget-object p4, p1, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    invoke-virtual {p4, p2}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->isUidForeground(I)Z

    move-result p2

    .line 2147
    invoke-virtual {p0, p2}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->updateHintAllowedByProcState(Z)Z

    .line 2149
    :try_start_2e
    invoke-interface {p6, p0, p3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception p2

    .line 2151
    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object p1

    iget-wide p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {p1, p3, p4}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCloseHintSession(J)V

    .line 2152
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Client already dead"

    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public associateToLayers([Landroid/os/IBinder;)V
    .registers 5

    .line 2306
    monitor-enter p0

    .line 2307
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionManager(Lcom/android/server/power/hint/HintManagerService;)Landroid/adpf/ISessionManager;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mSessionId:Ljava/lang/Integer;

    if-eqz v0, :cond_33

    if-eqz p1, :cond_33

    .line 2309
    array-length v0, p1

    if-lez v0, :cond_18

    const/4 v0, 0x1

    .line 2310
    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTrackedBySF:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_16

    goto :goto_18

    :catchall_16
    move-exception p1

    goto :goto_35

    .line 2313
    :cond_18
    :goto_18
    :try_start_18
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionManager(Lcom/android/server/power/hint/HintManagerService;)Landroid/adpf/ISessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mSessionId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-interface {v0, v1, v2, p1}, Landroid/adpf/ISessionManager;->associateSessionToLayers(II[Landroid/os/IBinder;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_29} :catch_2a
    .catchall {:try_start_18 .. :try_end_29} :catchall_16

    goto :goto_33

    :catch_2a
    move-exception p1

    .line 2315
    :try_start_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not communicate with SessionManager"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2319
    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    :goto_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_16

    throw p1
.end method

.method public binderDied()V
    .registers 1

    .line 2634
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->close()V

    return-void
.end method

.method public close()V
    .registers 9

    .line 2226
    monitor-enter p0

    .line 2227
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    goto/16 :goto_1ba

    .line 2228
    :cond_e
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v0, v4, v5}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCloseHintSession(J)V

    .line 2229
    iput-wide v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_b

    const/4 v0, 0x0

    .line 2231
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_21
    .catch Ljava/util/NoSuchElementException; {:try_start_1c .. :try_end_21} :catch_22
    .catchall {:try_start_1c .. :try_end_21} :catchall_b

    goto :goto_3a

    .line 2233
    :catch_22
    :try_start_22
    const-string v1, "HintManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Death link does not exist for session with UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    :goto_3a
    iget-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTrackedBySF:Z

    if-eqz v1, :cond_6c

    .line 2236
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionManager(Lcom/android/server/power/hint/HintManagerService;)Landroid/adpf/ISessionManager;

    move-result-object v1
    :try_end_44
    .catchall {:try_start_22 .. :try_end_44} :catchall_b

    if-eqz v1, :cond_65

    .line 2238
    :try_start_46
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionManager(Lcom/android/server/power/hint/HintManagerService;)Landroid/adpf/ISessionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mSessionId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/adpf/ISessionManager;->trackedSessionsDied([I)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_59} :catch_5c
    .catchall {:try_start_46 .. :try_end_59} :catchall_b

    .line 2243
    :try_start_59
    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTrackedBySF:Z

    goto :goto_6c

    :catch_5c
    move-exception v0

    .line 2240
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not communicate with SessionManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2245
    :cond_65
    const-string v1, "HintManagerService"

    const-string v2, "SessionManager is null but there are tracked sessions"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :cond_6c
    :goto_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_59 .. :try_end_6d} :catchall_b

    .line 2249
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2250
    :try_start_74
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_9f

    .line 2252
    const-string v0, "HintManagerService"

    const-string v2, "UID %d is not present in active session map"

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2253
    monitor-exit v1

    goto/16 :goto_1b3

    :catchall_9c
    move-exception p0

    goto/16 :goto_1b8

    .line 2255
    :cond_9f
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-nez v3, :cond_bd

    .line 2257
    const-string v0, "HintManagerService"

    const-string v2, "Token %s is not present in token map"

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    invoke-interface {p0}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2258
    monitor-exit v1

    goto/16 :goto_1b3

    .line 2260
    :cond_bd
    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2261
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_cb

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2262
    :cond_cb
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e0

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2263
    :cond_e0
    monitor-exit v1
    :try_end_e1
    .catchall {:try_start_74 .. :try_end_e1} :catchall_9c

    .line 2264
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionSnapshotMapLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2265
    :try_start_e8
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionSnapshotMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    .line 2266
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_11a

    .line 2268
    const-string v0, "HintManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session snapshot map is null for uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    monitor-exit v2

    goto/16 :goto_1b3

    :catchall_117
    move-exception p0

    goto/16 :goto_1b6

    .line 2271
    :cond_11a
    iget v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez v1, :cond_14c

    .line 2273
    const-string v0, "HintManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session snapshot is null for uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    monitor-exit v2

    goto :goto_1b3

    .line 2276
    :cond_14c
    invoke-virtual {v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->updateUponSessionClose()V

    .line 2277
    monitor-exit v2
    :try_end_150
    .catchall {:try_start_e8 .. :try_end_150} :catchall_117

    .line 2279
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTidsLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2280
    :try_start_157
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTidsInternal()[I

    move-result-object v2

    .line 2281
    array-length v3, v2

    :goto_15c
    if-ge v0, v3, :cond_1b2

    aget v4, v2, v0

    .line 2282
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v5}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTids(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1af

    .line 2283
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v5}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTids(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    iget-wide v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2284
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v5}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTids(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1af

    .line 2285
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v5}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTids(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1af

    :catchall_1ad
    move-exception p0

    goto :goto_1b4

    :cond_1af
    :goto_1af
    add-int/lit8 v0, v0, 0x1

    goto :goto_15c

    .line 2289
    :cond_1b2
    monitor-exit v1

    :goto_1b3
    return-void

    :goto_1b4
    monitor-exit v1
    :try_end_1b5
    .catchall {:try_start_157 .. :try_end_1b5} :catchall_1ad

    throw p0

    .line 2277
    :goto_1b6
    :try_start_1b6
    monitor-exit v2
    :try_end_1b7
    .catchall {:try_start_1b6 .. :try_end_1b7} :catchall_117

    throw p0

    .line 2263
    :goto_1b8
    :try_start_1b8
    monitor-exit v1
    :try_end_1b9
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_9c

    throw p0

    .line 2248
    :goto_1ba
    :try_start_1ba
    monitor-exit p0
    :try_end_1bb
    .catchall {:try_start_1ba .. :try_end_1bb} :catchall_b

    throw v0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 2619
    monitor-enter p0

    .line 2620
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TargetDurationNanos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AllowedByProcState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ForcePaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PowerEfficient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPowerEfficient:Z

    if-eqz v1, :cond_cb

    const-string/jumbo v1, "true"

    goto :goto_cd

    :catchall_c9
    move-exception p1

    goto :goto_fa

    :cond_cb
    const-string v1, "false"

    :goto_cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "GraphicsPipeline: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mGraphicsPipeline:Z

    if-eqz p2, :cond_ec

    const-string/jumbo p2, "true"

    goto :goto_ee

    :cond_ec
    const-string p2, "false"

    :goto_ee
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2629
    monitor-exit p0

    return-void

    :goto_fa
    monitor-exit p0
    :try_end_fb
    .catchall {:try_start_1 .. :try_end_fb} :catchall_c9

    throw p1
.end method

.method public getSessionId()Ljava/lang/Integer;
    .registers 1

    .line 2545
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mSessionId:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTag()I
    .registers 1

    .line 2541
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    return p0
.end method

.method public getTargetDurationNs()J
    .registers 3

    .line 2549
    monitor-enter p0

    .line 2550
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    .line 2551
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getThreadIds()[I
    .registers 3

    .line 2414
    monitor-enter p0

    .line 2415
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    .line 2416
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getTidsInternal()[I
    .registers 3

    .line 2421
    monitor-enter p0

    .line 2422
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    if-eqz v0, :cond_d

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_14

    :catchall_b
    move-exception v0

    goto :goto_16

    .line 2423
    :cond_d
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_14
    monitor-exit p0

    return-object v0

    .line 2424
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_b

    throw v0
.end method

.method public getUid()I
    .registers 1

    .line 2524
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    return p0
.end method

.method public isClosed()Z
    .registers 5

    .line 2428
    monitor-enter p0

    .line 2429
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    .line 2430
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public isForcePaused()Z
    .registers 2

    .line 2434
    monitor-enter p0

    .line 2435
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 2436
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public isHintAllowed()Z
    .registers 5

    .line 2171
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    if-eqz v0, :cond_12

    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isTrackedBySf()Z
    .registers 2

    .line 2528
    monitor-enter p0

    .line 2529
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTrackedBySF:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    .line 2530
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final pause()V
    .registers 5

    .line 2600
    monitor-enter p0

    .line 2601
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    goto :goto_1a

    .line 2602
    :cond_d
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halPauseHintSession(J)V

    .line 2603
    monitor-exit p0

    return-void

    :goto_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_b

    throw v0
.end method

.method public reportActualWorkDuration([J[J)V
    .registers 9

    .line 2203
    monitor-enter p0

    .line 2204
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2205
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    goto :goto_59

    .line 2207
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const-string/jumbo v3, "the count of hint durations shouldn\'t be 0."

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2209
    array-length v0, p1

    array-length v3, p2

    if-ne v0, v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v1

    :goto_1f
    const-string v0, "The length of durations and timestamps should be the same."

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2211
    :goto_24
    array-length v0, p1

    if-ge v1, v0, :cond_4c

    .line 2212
    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_32

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 2213
    :cond_32
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "durations[%d]=%d should be greater than 0"

    .line 2215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-wide v3, p1, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 2214
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2218
    :cond_4c
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halReportActualWorkDuration(J[J[J)V

    .line 2220
    monitor-exit p0

    return-void

    :goto_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_9

    throw p1
.end method

.method public reportActualWorkDuration2([Landroid/hardware/power/WorkDuration;)V
    .registers 5

    .line 2498
    monitor-enter p0

    .line 2499
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2500
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    goto :goto_30

    .line 2502
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    const-string/jumbo v2, "the count of work durations shouldn\'t be 0."

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2504
    :goto_18
    array-length v0, p1

    if-ge v1, v0, :cond_23

    .line 2505
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->validateWorkDuration(Landroid/hardware/power/WorkDuration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 2507
    :cond_23
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halReportActualWorkDuration(J[Landroid/hardware/power/WorkDuration;)V

    .line 2508
    monitor-exit p0

    return-void

    :goto_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_9

    throw p1
.end method

.method public final resume()V
    .registers 5

    .line 2607
    monitor-enter p0

    .line 2608
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    goto :goto_32

    .line 2609
    :cond_d
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halResumeHintSession(J)V

    .line 2610
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    if-eqz v0, :cond_30

    .line 2611
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halSetThreads(J[I)V

    .line 2612
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    const/4 v0, 0x0

    .line 2613
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    .line 2615
    :cond_30
    monitor-exit p0

    return-void

    :goto_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_b

    throw v0
.end method

.method public sendHint(I)V
    .registers 5

    .line 2294
    monitor-enter p0

    .line 2295
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2296
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    goto :goto_23

    :cond_b
    if-ltz p1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 2298
    :goto_10
    const-string/jumbo v1, "the hint ID value should be greater than zero."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2300
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halSendHint(JI)V

    .line 2301
    monitor-exit p0

    return-void

    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_9

    throw p1
.end method

.method public setMode(IZ)V
    .registers 7

    .line 2440
    monitor-enter p0

    .line 2441
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2442
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    goto/16 :goto_120

    :cond_c
    const/4 v0, 0x1

    if-ltz p1, :cond_11

    move v1, v0

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 2444
    :goto_12
    const-string/jumbo v2, "the mode Id value should be greater than zero."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p1, :cond_1d

    .line 2447
    iput-boolean p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPowerEfficient:Z

    goto :goto_21

    :cond_1d
    if-ne p1, v0, :cond_21

    .line 2449
    iput-boolean p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mGraphicsPipeline:Z

    .line 2451
    :cond_21
    :goto_21
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halSetMode(JIZ)V

    .line 2452
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_9

    if-eqz p2, :cond_11f

    if-nez p1, :cond_a7

    .line 2455
    iget-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHasBeenPowerEfficient:Z

    if-nez p1, :cond_11f

    .line 2456
    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHasBeenPowerEfficient:Z

    .line 2457
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionSnapshotMapLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2458
    :try_start_3e
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionSnapshotMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object p2

    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    .line 2459
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    if-nez p2, :cond_6e

    .line 2461
    const-string p2, "HintManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session snapshot map is null for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    monitor-exit p1

    return-void

    :catchall_6c
    move-exception p0

    goto :goto_a5

    .line 2464
    :cond_6e
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez p2, :cond_a0

    .line 2466
    const-string p2, "HintManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session snapshot is null for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    monitor-exit p1

    return-void

    .line 2470
    :cond_a0
    invoke-virtual {p2}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->logPowerEfficientSession()V

    .line 2471
    monitor-exit p1

    return-void

    :goto_a5
    monitor-exit p1
    :try_end_a6
    .catchall {:try_start_3e .. :try_end_a6} :catchall_6c

    throw p0

    :cond_a7
    if-ne p1, v0, :cond_11f

    .line 2474
    iget-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHasBeenGraphicsPipeline:Z

    if-nez p1, :cond_11f

    .line 2475
    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHasBeenGraphicsPipeline:Z

    .line 2476
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionSnapshotMapLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2477
    :try_start_b6
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionSnapshotMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object p2

    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    .line 2478
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    if-nez p2, :cond_e6

    .line 2480
    const-string p2, "HintManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session snapshot map is null for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    monitor-exit p1

    return-void

    :catchall_e4
    move-exception p0

    goto :goto_11d

    .line 2483
    :cond_e6
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez p2, :cond_118

    .line 2485
    const-string p2, "HintManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session snapshot is null for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    monitor-exit p1

    return-void

    .line 2489
    :cond_118
    invoke-virtual {p2}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->logGraphicsPipelineSession()V

    .line 2490
    monitor-exit p1

    return-void

    :goto_11d
    monitor-exit p1
    :try_end_11e
    .catchall {:try_start_b6 .. :try_end_11e} :catchall_e4

    throw p0

    :cond_11f
    return-void

    .line 2452
    :goto_120
    :try_start_120
    monitor-exit p0
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_9

    throw p1
.end method

.method public setThreads([I)V
    .registers 3

    const/4 v0, 0x1

    .line 2323
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->setThreadsInternal([IZ)V

    return-void
.end method

.method public final setThreadsInternal([IZ)V
    .registers 11

    .line 2327
    array-length v0, p1

    if-eqz v0, :cond_16d

    .line 2331
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2333
    monitor-enter p0

    .line 2334
    :try_start_8
    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    .line 2335
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    goto/16 :goto_16b

    .line 2337
    :cond_15
    iget-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    const/4 v2, 0x0

    if-nez v1, :cond_28

    .line 2338
    const-string p2, "HintManagerService"

    const-string/jumbo v0, "update hint not allowed, storing tids."

    invoke-static {p2, v0}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    .line 2340
    iput-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    .line 2341
    monitor-exit p0

    return-void

    :cond_28
    if-eqz p2, :cond_e0

    .line 2344
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result p2

    .line 2345
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 2346
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_12

    .line 2348
    :try_start_3b
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v5, v0, p2, p1, v1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mcheckTidValid(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/util/IntArray;)Ljava/lang/Integer;

    move-result-object p2
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_5f

    if-nez p2, :cond_cb

    .line 2358
    :try_start_43
    array-length p2, p1

    move v0, v2

    :goto_45
    if-ge v0, p2, :cond_7d

    aget v5, p1, v0

    .line 2359
    invoke-static {v5}, Landroid/os/Process;->getThreadScheduler(I)I

    move-result v6

    if-eqz v6, :cond_50

    goto :goto_5c

    .line 2366
    :cond_50
    invoke-static {v5}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    .line 2367
    invoke-static {v5, v7, v2}, Landroid/os/Process;->setThreadScheduler(III)V

    .line 2368
    invoke-static {v5, v6}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_5c} :catch_62
    .catchall {:try_start_43 .. :try_end_5c} :catchall_5f

    :goto_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :catchall_5f
    move-exception p1

    goto/16 :goto_dc

    :catch_62
    move-exception p2

    .line 2371
    :try_start_63
    const-string v0, "HintManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set SCHED_RESET_ON_FORK for tids "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2372
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2371
    invoke-static {v0, v5, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2375
    :cond_7d
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTidsLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_84
    .catchall {:try_start_63 .. :try_end_84} :catchall_5f

    .line 2376
    :try_start_84
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8a
    if-ltz v0, :cond_c4

    .line 2377
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v5}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTids(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2379
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v5}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNonIsolatedTids(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    iget-wide v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_8a

    :catchall_c2
    move-exception p1

    goto :goto_c9

    .line 2381
    :cond_c4
    monitor-exit p2
    :try_end_c5
    .catchall {:try_start_84 .. :try_end_c5} :catchall_c2

    .line 2383
    :try_start_c5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_12

    goto :goto_e0

    .line 2381
    :goto_c9
    :try_start_c9
    monitor-exit p2
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c2

    :try_start_ca
    throw p1

    .line 2351
    :cond_cb
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v1, v0, p1, p2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mformatTidCheckErrMsg(Lcom/android/server/power/hint/HintManagerService;I[ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    .line 2353
    const-string p2, "HintManagerService"

    invoke-static {p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_dc
    .catchall {:try_start_ca .. :try_end_dc} :catchall_5f

    .line 2383
    :goto_dc
    :try_start_dc
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2384
    throw p1

    .line 2386
    :cond_e0
    :goto_e0
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object p2

    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halSetThreads(J[I)V

    .line 2387
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    const/4 p2, 0x0

    .line 2388
    iput-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    .line 2391
    iget-boolean p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    if-eqz p2, :cond_f9

    .line 2392
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->resume()V

    .line 2393
    iput-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    .line 2395
    :cond_f9
    monitor-exit p0
    :try_end_fa
    .catchall {:try_start_dc .. :try_end_fa} :catchall_12

    .line 2396
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionSnapshotMapLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2397
    :try_start_101
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionSnapshotMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    .line 2398
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_131

    .line 2400
    const-string p1, "HintManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session snapshot map is null for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    monitor-exit p2

    goto :goto_168

    :catchall_12f
    move-exception p0

    goto :goto_169

    .line 2403
    :cond_131
    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez v0, :cond_163

    .line 2405
    const-string p1, "HintManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session snapshot is null for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    monitor-exit p2

    goto :goto_168

    .line 2409
    :cond_163
    array-length p0, p1

    invoke-virtual {v0, p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->updateThreadCount(I)V

    .line 2410
    monitor-exit p2

    :goto_168
    return-void

    :goto_169
    monitor-exit p2
    :try_end_16a
    .catchall {:try_start_101 .. :try_end_16a} :catchall_12f

    throw p0

    .line 2395
    :goto_16b
    :try_start_16b
    monitor-exit p0
    :try_end_16c
    .catchall {:try_start_16b .. :try_end_16c} :catchall_12

    throw p1

    .line 2328
    :cond_16d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Thread id list can\'t be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTrackedBySf(Z)V
    .registers 2

    .line 2534
    monitor-enter p0

    .line 2535
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTrackedBySF:Z

    .line 2536
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public updateHintAllowedByProcState(Z)Z
    .registers 3

    .line 2158
    monitor-enter p0

    if-eqz p1, :cond_11

    .line 2159
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    if-nez v0, :cond_11

    .line 2160
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->resume()V

    goto :goto_11

    :catchall_f
    move-exception p1

    goto :goto_1e

    :cond_11
    :goto_11
    if-nez p1, :cond_1a

    .line 2162
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    if-eqz v0, :cond_1a

    .line 2163
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->pause()V

    .line 2165
    :cond_1a
    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    .line 2166
    monitor-exit p0

    return p1

    .line 2167
    :goto_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_f

    throw p1
.end method

.method public updateTargetWorkDuration(J)V
    .registers 6

    .line 2176
    monitor-enter p0

    .line 2177
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2178
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    goto/16 :goto_9a

    :cond_c
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 2180
    :goto_15
    const-string v1, "Expected the target duration to be greater than or equal to 0."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2182
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halUpdateTargetWorkDuration(JJ)V

    .line 2183
    iput-wide p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    .line 2184
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_9

    .line 2185
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p1}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionSnapshotMapLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2186
    :try_start_2f
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {p2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmSessionSnapshotMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object p2

    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    .line 2187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    if-nez p2, :cond_5f

    .line 2189
    const-string p2, "HintManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session snapshot map is null for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    monitor-exit p1

    return-void

    :catchall_5d
    move-exception p0

    goto :goto_98

    .line 2192
    :cond_5f
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez p2, :cond_91

    .line 2194
    const-string p2, "HintManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session snapshot is null for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTag:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    monitor-exit p1

    return-void

    .line 2197
    :cond_91
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    invoke-virtual {p2, v0, v1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->updateTargetDurationNs(J)V

    .line 2198
    monitor-exit p1

    return-void

    :goto_98
    monitor-exit p1
    :try_end_99
    .catchall {:try_start_2f .. :try_end_99} :catchall_5d

    throw p0

    .line 2184
    :goto_9a
    :try_start_9a
    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9

    throw p1
.end method

.method public validateWorkDuration(Landroid/hardware/power/WorkDuration;)V
    .registers 8

    .line 2566
    iget-wide v0, p1, Landroid/hardware/power/WorkDuration;->durationNanos:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_76

    .line 2571
    iget-wide v0, p1, Landroid/hardware/power/WorkDuration;->workPeriodStartTimestampNanos:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_62

    .line 2577
    iget-wide v0, p1, Landroid/hardware/power/WorkDuration;->cpuDurationNanos:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_4e

    .line 2583
    iget-wide v4, p1, Landroid/hardware/power/WorkDuration;->gpuDurationNanos:J

    cmp-long p0, v4, v2

    if-ltz p0, :cond_3a

    add-long/2addr v4, v0

    cmp-long p0, v4, v2

    if-lez p0, :cond_20

    return-void

    .line 2591
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 2594
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p1, Landroid/hardware/power/WorkDuration;->gpuDurationNanos:J

    .line 2595
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 2592
    const-string v0, "The actual CPU duration (%d) and the actual GPU duration (%d) should not both be 0"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2584
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 2587
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 2585
    const-string v0, "Actual GPU duration (%d) should greater than or equal to 0"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2578
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 2581
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 2579
    const-string v0, "Actual CPU duration (%d) should be greater than or equal to 0"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2572
    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 2575
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 2573
    const-string v0, "Work period start timestamp (%d) should be greater than 0"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2567
    :cond_76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 2569
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 2568
    const-string v0, "Actual total duration (%d) should be greater than 0"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
