.class Lcom/android/server/wm/AnrController;
.super Ljava/lang/Object;
.source "AnrController.java"


# static fields
.field private static final PRE_DUMP_MIN_INTERVAL_MS:J

.field private static final PRE_DUMP_MONITOR_TIMEOUT_MS:J


# instance fields
.field private volatile mLastPreDumpTimeMs:J

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mUnresponsiveAppByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetPRE_DUMP_MONITOR_TIMEOUT_MS()J
    .registers 2

    sget-wide v0, Lcom/android/server/wm/AnrController;->PRE_DUMP_MONITOR_TIMEOUT_MS:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/AnrController;->PRE_DUMP_MIN_INTERVAL_MS:J

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/AnrController;->PRE_DUMP_MONITOR_TIMEOUT_MS:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AnrController;->mUnresponsiveAppByDisplay:Landroid/util/SparseArray;

    .line 61
    iput-object p1, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 62
    return-void
.end method

.method private dumpAnrStateLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    .registers 5
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "reason"    # Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->saveANRState(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method private isWindowAboveSystem(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    const/16 v2, 0x7f6

    invoke-interface {v0, v2, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    .line 315
    .local v0, "systemAlertLayer":I
    iget v1, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v1, v0, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private notifyWindowResponsive(I)V
    .registers 3
    .param p1, "pid"    # I

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->inputDispatchingResumed(I)V

    .line 213
    return-void
.end method

.method private notifyWindowResponsive(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "inputToken"    # Landroid/os/IBinder;

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 198
    iget-object v1, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromToken(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    move-result-object v1

    .line 199
    .local v1, "target":Lcom/android/server/wm/InputTarget;
    if-nez v1, :cond_16

    .line 200
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 202
    :cond_16
    :try_start_16
    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->getPid()I

    move-result v2

    move v1, v2

    .line 203
    .local v1, "pid":I
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->inputDispatchingResumed(I)V

    .line 205
    const/4 v0, 0x1

    return v0

    .line 203
    .end local v1    # "pid":I
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private notifyWindowUnresponsive(ILjava/lang/String;)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANR in input window owned by pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p2}, Lcom/android/server/wm/AnrController;->dumpAnrStateLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    .line 169
    return-void
.end method

.method private notifyWindowUnresponsive(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 11
    .param p1, "inputToken"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Lcom/android/server/wm/AnrController;->preDumpIfLockTooSlow()V

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 137
    iget-object v1, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromToken(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    move-result-object v1

    .line 138
    .local v1, "target":Lcom/android/server/wm/InputTarget;
    if-nez v1, :cond_19

    .line 139
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_65

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 141
    :cond_19
    :try_start_19
    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 142
    .local v2, "windowState":Lcom/android/server/wm/WindowState;
    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->getPid()I

    move-result v3

    .line 145
    .local v3, "pid":I
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    if-ne v4, p1, :cond_28

    .line 146
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    .line 147
    .local v4, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_29
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ANR in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Reason:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0, v2}, Lcom/android/server/wm/AnrController;->isWindowAboveSystem(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    .line 149
    .local v5, "aboveSystem":Z
    invoke-direct {p0, v4, v2, p2}, Lcom/android/server/wm/AnrController;->dumpAnrStateLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 150
    .end local v1    # "target":Lcom/android/server/wm/InputTarget;
    .end local v2    # "windowState":Lcom/android/server/wm/WindowState;
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_19 .. :try_end_53} :catchall_65

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 151
    if-eqz v4, :cond_5c

    .line 152
    invoke-virtual {v4, p2, v3}, Lcom/android/server/wm/ActivityRecord;->inputDispatchingTimedOut(Ljava/lang/String;I)Z

    goto :goto_63

    .line 154
    :cond_5c
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, v3, v5, p2}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    .line 156
    :goto_63
    const/4 v0, 0x1

    return v0

    .line 150
    .end local v3    # "pid":I
    .end local v4    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "aboveSystem":Z
    :catchall_65
    move-exception v1

    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private preDumpIfLockTooSlow()V
    .registers 20

    .line 241
    move-object/from16 v9, p0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_7

    .line 242
    return-void

    .line 244
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 245
    .local v10, "now":J
    iget-wide v0, v9, Lcom/android/server/wm/AnrController;->mLastPreDumpTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    iget-wide v0, v9, Lcom/android/server/wm/AnrController;->mLastPreDumpTimeMs:J

    sub-long v0, v10, v0

    sget-wide v2, Lcom/android/server/wm/AnrController;->PRE_DUMP_MIN_INTERVAL_MS:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1e

    .line 246
    return-void

    .line 249
    :cond_1e
    const/4 v12, 0x1

    new-array v0, v12, [Z

    const/4 v13, 0x0

    aput-boolean v12, v0, v13

    move-object v14, v0

    .line 250
    .local v14, "shouldDumpSf":[Z
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v15, v0

    .line 251
    .local v15, "monitors":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    iget-object v0, v9, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const-string v8, "WindowManager"

    invoke-virtual {v15, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, v9, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda1;-><init>(Landroid/app/ActivityManagerInternal;)V

    const-string v0, "ActivityManager"

    invoke-virtual {v15, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v7, v0

    .line 255
    .local v7, "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_57
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_89

    .line 256
    invoke-virtual {v15, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    .line 257
    .local v16, "name":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ljava/lang/Runnable;

    .line 260
    .local v17, "monitor":Ljava/lang/Runnable;
    new-instance v18, Lcom/android/server/wm/AnrController$1;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    move-object v4, v7

    move-wide v5, v10

    move-object v13, v7

    .end local v7    # "latch":Ljava/util/concurrent/CountDownLatch;
    .local v13, "latch":Ljava/util/concurrent/CountDownLatch;
    move-object/from16 v7, v16

    move-object v12, v8

    move-object v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/AnrController$1;-><init>(Lcom/android/server/wm/AnrController;Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;[Z)V

    .line 274
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/AnrController$1;->start()V

    .line 255
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "monitor":Ljava/lang/Runnable;
    add-int/lit8 v0, v0, 0x1

    move-object v8, v12

    move-object v7, v13

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_57

    .end local v13    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v7    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_89
    move-object v13, v7

    move-object v12, v8

    .line 277
    .end local v0    # "i":I
    .end local v7    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v13    # "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_8b
    sget-wide v0, Lcom/android/server/wm/AnrController;->PRE_DUMP_MONITOR_TIMEOUT_MS:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_93
    .catch Ljava/lang/InterruptedException; {:try_start_8b .. :try_end_93} :catch_96

    if-eqz v0, :cond_97

    .line 278
    return-void

    .line 280
    :catch_96
    move-exception v0

    :cond_97
    nop

    .line 281
    iput-wide v10, v9, Lcom/android/server/wm/AnrController;->mLastPreDumpTimeMs:J

    .line 282
    const-string v0, "Pre-dump for unresponsive"

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    .local v0, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    aget-boolean v3, v14, v2

    if-eqz v3, :cond_bf

    .line 288
    const-string v3, "/system/bin/surfaceflinger"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_c0

    .line 289
    :cond_bf
    const/4 v3, 0x0

    :goto_c0
    move-object v12, v3

    .line 290
    .local v12, "pids":[I
    if-eqz v12, :cond_d9

    .line 291
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v3

    .line 292
    array-length v3, v12

    :goto_cb
    if-ge v2, v3, :cond_d9

    aget v4, v12, v2

    .line 293
    .local v4, "pid":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v4    # "pid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_cb

    .line 297
    :cond_d9
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/criticalevents/CriticalEventLog;->logLinesForSystemServerTraceFile()Ljava/lang/String;

    move-result-object v16

    .line 298
    .local v16, "criticalEvents":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "Pre-dump"

    move-object v2, v0

    move-object v5, v1

    move-object/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 301
    .local v2, "tracesFile":Ljava/io/File;
    if-eqz v2, :cond_113

    .line 302
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_pre"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 304
    :cond_113
    return-void
.end method


# virtual methods
.method notifyAppUnresponsive(Landroid/view/InputApplicationHandle;Ljava/lang/String;)V
    .registers 13
    .param p1, "applicationHandle"    # Landroid/view/InputApplicationHandle;
    .param p2, "reason"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/android/server/wm/AnrController;->preDumpIfLockTooSlow()V

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "requestIsValid":Z
    iget-object v1, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 70
    iget-object v2, p1, Landroid/view/InputApplicationHandle;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 71
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v2, :cond_39

    .line 72
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown app appToken:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Dropping notifyNoFocusedWindowAnr request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_f7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 78
    :cond_39
    :try_start_39
    iget-object v3, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 79
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    const/4 v4, 0x0

    if-nez v3, :cond_4a

    move-object v5, v4

    goto :goto_4e

    :cond_4a
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 80
    .local v5, "focusTarget":Lcom/android/server/wm/WindowState;
    :goto_4e
    if-eqz v5, :cond_73

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 81
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    if-ne v6, v7, :cond_73

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 84
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/server/wm/InputMonitor;->mInputFocusRequestTimeMillis:J

    sub-long/2addr v6, v8

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 85
    invoke-static {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getInputDispatchingTimeoutMillisLocked(Lcom/android/server/wm/ActivityRecord;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_71

    const/4 v6, 0x1

    goto :goto_72

    :cond_71
    const/4 v6, 0x0

    :goto_72
    move v0, v6

    .line 87
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_39 .. :try_end_74} :catchall_f7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 88
    if-eqz v5, :cond_ae

    if-eqz v0, :cond_ae

    .line 89
    iget-object v1, v5, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-direct {p0, v1, p2}, Lcom/android/server/wm/AnrController;->notifyWindowUnresponsive(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 90
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blamed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using pending focus request. Focused activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 96
    :cond_ae
    iget-object v1, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_b3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 97
    const-string v1, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ANR in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".  Reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0, v2, v4, p2}, Lcom/android/server/wm/AnrController;->dumpAnrStateLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/server/wm/AnrController;->mUnresponsiveAppByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    monitor-exit v3
    :try_end_e9
    .catchall {:try_start_b3 .. :try_end_e9} :catchall_f1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 102
    const/4 v1, -0x1

    invoke-virtual {v2, p2, v1}, Lcom/android/server/wm/ActivityRecord;->inputDispatchingTimedOut(Ljava/lang/String;I)Z

    .line 103
    return-void

    .line 100
    :catchall_f1
    move-exception v1

    :try_start_f2
    monitor-exit v3
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 87
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "focusTarget":Lcom/android/server/wm/WindowState;
    :catchall_f7
    move-exception v2

    :try_start_f8
    monitor-exit v1
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_f7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method notifyWindowResponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pid"    # Ljava/util/OptionalInt;

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/wm/AnrController;->notifyWindowResponsive(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    return-void

    .line 181
    :cond_7
    invoke-virtual {p2}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to notify that window token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was responsive."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 185
    :cond_2c
    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AnrController;->notifyWindowResponsive(I)V

    .line 186
    return-void
.end method

.method notifyWindowUnresponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;Ljava/lang/String;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pid"    # Ljava/util/OptionalInt;
    .param p3, "reason"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AnrController;->notifyWindowUnresponsive(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 116
    return-void

    .line 118
    :cond_7
    invoke-virtual {p2}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to notify that window token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was unresponsive."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 122
    :cond_2c
    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/wm/AnrController;->notifyWindowUnresponsive(ILjava/lang/String;)V

    .line 123
    return-void
.end method

.method onFocusChanged(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "newFocus"    # Lcom/android/server/wm/WindowState;

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 224
    iget-object v1, p0, Lcom/android/server/wm/AnrController;->mUnresponsiveAppByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 225
    .local v1, "unresponsiveApp":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_34

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v2, :cond_1b

    goto :goto_34

    .line 228
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ActivityManagerInternal;->inputDispatchingResumed(I)V

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mUnresponsiveAppByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 231
    return-void

    .line 226
    :cond_34
    :goto_34
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 228
    .end local v1    # "unresponsiveApp":Lcom/android/server/wm/ActivityRecord;
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
