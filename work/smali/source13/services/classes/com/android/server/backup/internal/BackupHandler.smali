.class public Lcom/android/server/backup/internal/BackupHandler;
.super Landroid/os/Handler;
.source "BackupHandler.java"


# static fields
.field public static final MSG_BACKUP_OPERATION_TIMEOUT:I = 0x11

.field public static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field public static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field public static final MSG_OP_COMPLETE:I = 0x15

.field public static final MSG_REQUEST_BACKUP:I = 0xf

.field public static final MSG_RESTORE_OPERATION_TIMEOUT:I = 0x12

.field public static final MSG_RESTORE_SESSION_TIMEOUT:I = 0x8

.field public static final MSG_RETRY_CLEAR:I = 0xc

.field public static final MSG_RUN_ADB_BACKUP:I = 0x2

.field public static final MSG_RUN_ADB_RESTORE:I = 0xa

.field public static final MSG_RUN_BACKUP:I = 0x1

.field public static final MSG_RUN_CLEAR:I = 0x4

.field public static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field public static final MSG_RUN_RESTORE:I = 0x3

.field public static final MSG_SCHEDULE_BACKUP_PACKAGE:I = 0x10

.field public static final MSG_STOP:I = 0x16


# instance fields
.field private final backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private final mBackupThread:Landroid/os/HandlerThread;

.field volatile mIsStopping:Z

.field private final mOperationStorage:Lcom/android/server/backup/OperationStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/os/HandlerThread;)V
    .registers 6
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "operationStorage"    # Lcom/android/server/backup/OperationStorage;
    .param p3, "backupThread"    # Landroid/os/HandlerThread;

    .line 99
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    .line 100
    iput-object p3, p0, Lcom/android/server/backup/internal/BackupHandler;->mBackupThread:Landroid/os/HandlerThread;

    .line 101
    iput-object p1, p0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 102
    iput-object p2, p0, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 103
    nop

    .line 104
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 103
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 106
    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 3
    .param p0, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .param p1, "transportConnection"    # Lcom/android/server/backup/transport/TransportConnection;
    .param p2, "caller"    # Ljava/lang/String;

    .line 217
    nop

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 217
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 121
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/internal/BackupHandler;->dispatchMessageInternal(Landroid/os/Message;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 128
    goto :goto_9

    .line 122
    :catch_4
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    if-eqz v1, :cond_a

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    return-void

    .line 126
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_a
    throw v0
.end method

.method dispatchMessageInternal(Landroid/os/Message;)V
    .registers 2
    .param p1, "message"    # Landroid/os/Message;

    .line 133
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 134
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 25
    .param p1, "msg"    # Landroid/os/Message;

    .line 137
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v3, 0x16

    if-ne v0, v3, :cond_1f

    .line 138
    const-string v0, "BackupManagerService"

    const-string v3, "Stopping backup handler"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->quit()V

    .line 140
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mBackupThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 143
    :cond_1f
    iget-boolean v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    if-eqz v0, :cond_24

    .line 145
    return-void

    .line 148
    :cond_24
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v3

    .line 149
    .local v3, "transportManager":Lcom/android/server/backup/TransportManager;
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_50e

    :pswitch_31
    goto/16 :goto_50c

    .line 273
    :pswitch_33
    :try_start_33
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 275
    .local v0, "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/backup/BackupRestoreTask;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/android/server/backup/BackupRestoreTask;->operationComplete(J)V
    :try_end_46
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_46} :catch_48

    .line 278
    .end local v0    # "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    goto/16 :goto_50c

    .line 276
    :catch_48
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid completion in flight, obj="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v0    # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_50c

    .line 260
    :pswitch_65
    :try_start_65
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupRestoreTask;

    .line 261
    .local v0, "task":Lcom/android/server/backup/BackupRestoreTask;
    sget-boolean v4, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v4, :cond_8b

    .line 262
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got next step for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", executing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_8b
    invoke-interface {v0}, Lcom/android/server/backup/BackupRestoreTask;->execute()V
    :try_end_8e
    .catch Ljava/lang/ClassCastException; {:try_start_65 .. :try_end_8e} :catch_90

    .line 267
    .end local v0    # "task":Lcom/android/server/backup/BackupRestoreTask;
    goto/16 :goto_50c

    .line 265
    :catch_90
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid backup/restore task in flight, obj="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v0    # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_50c

    .line 408
    :pswitch_ad
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timeout message received for token="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(IZ)V

    .line 410
    goto/16 :goto_50c

    .line 484
    :pswitch_d4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 485
    .local v0, "pkgName":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v4, :cond_f4

    .line 486
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_SCHEDULE_BACKUP_PACKAGE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_f4
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 489
    goto/16 :goto_50c

    .line 459
    .end local v0    # "pkgName":Ljava/lang/String;
    :pswitch_fb
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/BackupParams;

    .line 460
    .local v0, "params":Lcom/android/server/backup/params/BackupParams;
    sget-boolean v5, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v5, :cond_11d

    .line 461
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_REQUEST_BACKUP observer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/backup/params/BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_11d
    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 464
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 466
    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget-object v7, v0, Lcom/android/server/backup/params/BackupParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    iget-object v8, v0, Lcom/android/server/backup/params/BackupParams;->dirName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/backup/params/BackupParams;->kvPackages:Ljava/util/ArrayList;

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/android/server/backup/params/BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    iget-object v12, v0, Lcom/android/server/backup/params/BackupParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v13, v0, Lcom/android/server/backup/params/BackupParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iget-object v14, v0, Lcom/android/server/backup/params/BackupParams;->fullPackages:Ljava/util/ArrayList;

    iget-boolean v4, v0, Lcom/android/server/backup/params/BackupParams;->nonIncrementalBackup:Z

    iget-object v15, v0, Lcom/android/server/backup/params/BackupParams;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-object/from16 v17, v15

    const/4 v15, 0x1

    move/from16 v16, v4

    invoke-static/range {v5 .. v17}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

    .line 480
    goto/16 :goto_50c

    .line 362
    .end local v0    # "params":Lcom/android/server/backup/params/BackupParams;
    :pswitch_14c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/ClearRetryParams;

    .line 363
    .local v0, "params":Lcom/android/server/backup/params/ClearRetryParams;
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v0, Lcom/android/server/backup/params/ClearRetryParams;->transportName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/backup/params/ClearRetryParams;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    goto/16 :goto_50c

    .line 339
    .end local v0    # "params":Lcom/android/server/backup/params/ClearRetryParams;
    :pswitch_15b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbRestoreParams;

    .line 340
    .local v0, "params":Lcom/android/server/backup/params/AdbRestoreParams;
    new-instance v12, Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget-object v7, v0, Lcom/android/server/backup/params/AdbRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v8, v0, Lcom/android/server/backup/params/AdbRestoreParams;->curPassword:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/backup/params/AdbRestoreParams;->encryptPassword:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/backup/params/AdbRestoreParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iget-object v11, v0, Lcom/android/server/backup/params/AdbRestoreParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 344
    .local v4, "task":Lcom/android/server/backup/restore/PerformAdbRestoreTask;
    new-instance v5, Ljava/lang/Thread;

    const-string v6, "adb-restore"

    invoke-direct {v5, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 345
    goto/16 :goto_50c

    .line 431
    .end local v0    # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .end local v4    # "task":Lcom/android/server/backup/restore/PerformAdbRestoreTask;
    :pswitch_17f
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 432
    :try_start_186
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v0

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/params/AdbParams;

    move-object v5, v0

    .line 434
    .local v5, "params":Lcom/android/server/backup/params/AdbParams;
    if-eqz v5, :cond_1ba

    .line 435
    const-string v0, "BackupManagerService"

    const-string v6, "Full backup/restore timed out waiting for user confirmation"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    .line 441
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v0

    iget v6, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->delete(I)V

    .line 444
    iget-object v0, v5, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_1b0
    .catchall {:try_start_186 .. :try_end_1b0} :catchall_1d7

    if-eqz v0, :cond_1d4

    .line 446
    :try_start_1b2
    iget-object v0, v5, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_1b7
    .catch Landroid/os/RemoteException; {:try_start_1b2 .. :try_end_1b7} :catch_1b8
    .catchall {:try_start_1b2 .. :try_end_1b7} :catchall_1d7

    goto :goto_1b9

    .line 447
    :catch_1b8
    move-exception v0

    .line 449
    :goto_1b9
    goto :goto_1d4

    .line 452
    :cond_1ba
    :try_start_1ba
    const-string v0, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t find params for token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v5    # "params":Lcom/android/server/backup/params/AdbParams;
    :cond_1d4
    :goto_1d4
    monitor-exit v4

    .line 455
    goto/16 :goto_50c

    .line 454
    :catchall_1d7
    move-exception v0

    monitor-exit v4
    :try_end_1d9
    .catchall {:try_start_1ba .. :try_end_1d9} :catchall_1d7

    throw v0

    .line 414
    :pswitch_1da
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    monitor-enter v4

    .line 415
    :try_start_1dd
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v0

    if-eqz v0, :cond_20c

    .line 420
    const-string v0, "BackupManagerService"

    const-string v5, "Restore session timed out; aborting"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/restore/ActiveRestoreSession;->markTimedOut()V

    .line 422
    new-instance v0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 424
    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    .line 422
    invoke-virtual {v1, v0}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 426
    :cond_20c
    monitor-exit v4

    .line 427
    goto/16 :goto_50c

    .line 426
    :catchall_20f
    move-exception v0

    monitor-exit v4
    :try_end_211
    .catchall {:try_start_1dd .. :try_end_211} :catchall_20f

    throw v0

    .line 369
    :pswitch_212
    const/4 v4, 0x0

    .line 370
    .local v4, "sets":[Landroid/app/backup/RestoreSet;
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/server/backup/params/RestoreGetSetsParams;

    .line 371
    .local v6, "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    const-string v7, "BH/MSG_RUN_GET_RESTORE_SETS"

    .line 373
    .local v7, "callerLogString":Ljava/lang/String;
    const/16 v8, 0x8

    :try_start_21c
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 374
    invoke-virtual {v0, v7}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    move-object v9, v0

    .line 375
    .local v9, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v9}, Lcom/android/server/backup/transport/BackupTransportClient;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v0

    move-object v4, v0

    .line 377
    iget-object v10, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    monitor-enter v10
    :try_end_22b
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_22b} :catch_282
    .catchall {:try_start_21c .. :try_end_22b} :catchall_27f

    .line 378
    :try_start_22b
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-virtual {v0, v4}, Lcom/android/server/backup/restore/ActiveRestoreSession;->setRestoreSets([Landroid/app/backup/RestoreSet;)V

    .line 379
    monitor-exit v10
    :try_end_231
    .catchall {:try_start_22b .. :try_end_231} :catchall_27c

    .line 380
    if-nez v4, :cond_23a

    .line 381
    const/16 v0, 0xb0f

    :try_start_235
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_23a
    .catch Ljava/lang/Exception; {:try_start_235 .. :try_end_23a} :catch_282
    .catchall {:try_start_235 .. :try_end_23a} :catchall_27f

    .line 386
    .end local v9    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :cond_23a
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_26a

    .line 388
    :try_start_23e
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v0, v4}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_243
    .catch Landroid/os/RemoteException; {:try_start_23e .. :try_end_243} :catch_262
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_243} :catch_244

    goto :goto_26a

    .line 391
    :catch_244
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :goto_24c
    const-string v10, "Restore observer threw: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26a

    .line 389
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_262
    move-exception v0

    .line 390
    .local v0, "re":Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v9, "Unable to report listing to observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_26a
    :goto_26a
    invoke-virtual {v1, v8}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 398
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 399
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreSessionTimeoutMillis()J

    move-result-wide v9

    .line 398
    invoke-virtual {v1, v8, v9, v10}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 401
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 402
    goto :goto_2bc

    .line 379
    .restart local v9    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :catchall_27c
    move-exception v0

    :try_start_27d
    monitor-exit v10
    :try_end_27e
    .catchall {:try_start_27d .. :try_end_27e} :catchall_27c

    .end local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    .end local v4    # "sets":[Landroid/app/backup/RestoreSet;
    .end local v6    # "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    .end local v7    # "callerLogString":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/backup/internal/BackupHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_27e
    throw v0
    :try_end_27f
    .catch Ljava/lang/Exception; {:try_start_27e .. :try_end_27f} :catch_282
    .catchall {:try_start_27e .. :try_end_27f} :catchall_27f

    .line 386
    .end local v9    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v4    # "sets":[Landroid/app/backup/RestoreSet;
    .restart local v6    # "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    .restart local v7    # "callerLogString":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/backup/internal/BackupHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_27f
    move-exception v0

    move-object v5, v0

    goto :goto_2be

    .line 383
    :catch_282
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    :try_start_283
    const-string v5, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error from transport getting set list: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29f
    .catchall {:try_start_283 .. :try_end_29f} :catchall_27f

    .line 386
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_26a

    .line 388
    :try_start_2a4
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v0, v4}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_2a9
    .catch Landroid/os/RemoteException; {:try_start_2a4 .. :try_end_2a9} :catch_2b3
    .catch Ljava/lang/Exception; {:try_start_2a4 .. :try_end_2a9} :catch_2aa

    goto :goto_26a

    .line 391
    :catch_2aa
    move-exception v0

    .line 392
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_24c

    .line 389
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2b3
    move-exception v0

    .line 390
    .local v0, "re":Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v9, "Unable to report listing to observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_26a

    .line 403
    :goto_2bc
    goto/16 :goto_50c

    .line 386
    :goto_2be
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_2ee

    .line 388
    :try_start_2c2
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v0, v4}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_2c7
    .catch Landroid/os/RemoteException; {:try_start_2c2 .. :try_end_2c7} :catch_2e6
    .catch Ljava/lang/Exception; {:try_start_2c2 .. :try_end_2c7} :catch_2c8

    goto :goto_2ee

    .line 391
    :catch_2c8
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Restore observer threw: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ee

    .line 389
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2e6
    move-exception v0

    .line 390
    .local v0, "re":Landroid/os/RemoteException;
    const-string v9, "BackupManagerService"

    const-string v10, "Unable to report listing to observer"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2ee
    :goto_2ee
    invoke-virtual {v1, v8}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 398
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 399
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreSessionTimeoutMillis()J

    move-result-wide v9

    .line 398
    invoke-virtual {v1, v8, v9, v10}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 401
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 402
    throw v5

    .line 349
    .end local v4    # "sets":[Landroid/app/backup/RestoreSet;
    .end local v6    # "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    .end local v7    # "callerLogString":Ljava/lang/String;
    :pswitch_300
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/ClearParams;

    .line 350
    .local v0, "params":Lcom/android/server/backup/params/ClearParams;
    new-instance v4, Lcom/android/server/backup/internal/PerformClearTask;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v0, Lcom/android/server/backup/params/ClearParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    iget-object v7, v0, Lcom/android/server/backup/params/ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v0, Lcom/android/server/backup/params/ClearParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/backup/internal/PerformClearTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    .line 356
    .local v4, "task":Ljava/lang/Runnable;
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 357
    goto/16 :goto_50c

    .line 298
    .end local v0    # "params":Lcom/android/server/backup/params/ClearParams;
    .end local v4    # "task":Ljava/lang/Runnable;
    :pswitch_316
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/server/backup/params/RestoreParams;

    .line 299
    .local v5, "params":Lcom/android/server/backup/params/RestoreParams;
    const-string v0, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_RUN_RESTORE observer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v9, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget-object v10, v5, Lcom/android/server/backup/params/RestoreParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    iget-object v11, v5, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iget-object v12, v5, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-wide v13, v5, Lcom/android/server/backup/params/RestoreParams;->token:J

    iget-object v15, v5, Lcom/android/server/backup/params/RestoreParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget v6, v5, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    iget-boolean v7, v5, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    iget-object v4, v5, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    move-object/from16 v22, v3

    .end local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    .local v22, "transportManager":Lcom/android/server/backup/TransportManager;
    iget-object v3, v5, Lcom/android/server/backup/params/RestoreParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iget-object v2, v5, Lcom/android/server/backup/params/RestoreParams;->backupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    move/from16 v17, v7

    move-object v7, v0

    move/from16 v16, v6

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move-object/from16 v20, v2

    invoke-direct/range {v7 .. v20}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    move-object v2, v0

    .line 316
    .local v2, "task":Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v3

    monitor-enter v3

    .line 317
    :try_start_367
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isRestoreInProgress()Z

    move-result v0

    if-eqz v0, :cond_380

    .line 319
    const-string v0, "BackupManagerService"

    const-string v4, "Restore in progress, queueing."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_396

    .line 326
    :cond_380
    const-string v0, "BackupManagerService"

    const-string v4, "Starting restore."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/server/backup/UserBackupManagerService;->setRestoreInProgress(Z)V

    .line 329
    const/16 v0, 0x14

    invoke-virtual {v1, v0, v2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 330
    .local v0, "restoreMsg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 332
    .end local v0    # "restoreMsg":Landroid/os/Message;
    :goto_396
    monitor-exit v3

    .line 333
    move-object/from16 v3, v22

    goto/16 :goto_50c

    .line 332
    :catchall_39b
    move-exception v0

    monitor-exit v3
    :try_end_39d
    .catchall {:try_start_367 .. :try_end_39d} :catchall_39b

    throw v0

    .line 285
    .end local v2    # "task":Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    .end local v5    # "params":Lcom/android/server/backup/params/RestoreParams;
    .end local v22    # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    :pswitch_39e
    move-object/from16 v22, v3

    .end local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v22    # "transportManager":Lcom/android/server/backup/TransportManager;
    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbBackupParams;

    .line 286
    .local v0, "params":Lcom/android/server/backup/params/AdbBackupParams;
    new-instance v21, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;

    move-object/from16 v3, v21

    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget-object v6, v0, Lcom/android/server/backup/params/AdbBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v7, v0, Lcom/android/server/backup/params/AdbBackupParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iget-boolean v8, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeApks:Z

    iget-boolean v9, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeObbs:Z

    iget-boolean v10, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeShared:Z

    iget-boolean v11, v0, Lcom/android/server/backup/params/AdbBackupParams;->doWidgets:Z

    iget-object v12, v0, Lcom/android/server/backup/params/AdbBackupParams;->curPassword:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/backup/params/AdbBackupParams;->encryptPassword:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/android/server/backup/params/AdbBackupParams;->allApps:Z

    iget-boolean v15, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeSystem:Z

    iget-boolean v2, v0, Lcom/android/server/backup/params/AdbBackupParams;->doCompress:Z

    move/from16 v16, v2

    iget-boolean v2, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeKeyValue:Z

    move/from16 v17, v2

    iget-object v2, v0, Lcom/android/server/backup/params/AdbBackupParams;->packages:[Ljava/lang/String;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/android/server/backup/params/AdbBackupParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/android/server/backup/params/AdbBackupParams;->backupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-object/from16 v20, v2

    invoke-direct/range {v3 .. v20}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    move-object/from16 v2, v21

    .line 293
    .local v2, "task":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    new-instance v3, Ljava/lang/Thread;

    const-string v4, "adb-backup"

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 294
    move-object/from16 v3, v22

    goto/16 :goto_50c

    .line 151
    .end local v0    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .end local v2    # "task":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    .end local v22    # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    :pswitch_3e9
    move-object/from16 v22, v3

    .end local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v22    # "transportManager":Lcom/android/server/backup/TransportManager;
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setLastBackupPass(J)V

    .line 153
    const-string v2, "BH/MSG_RUN_BACKUP"

    .line 154
    .local v2, "callerLogString":Ljava/lang/String;
    nop

    .line 155
    move-object/from16 v3, v22

    .end local v22    # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v4

    .line 157
    .local v4, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    const/4 v0, 0x0

    if-eqz v4, :cond_405

    .line 158
    invoke-virtual {v4, v2}, Lcom/android/server/backup/transport/TransportConnection;->connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v6

    goto :goto_406

    .line 159
    :cond_405
    move-object v6, v0

    :goto_406
    move-object/from16 v19, v6

    .line 160
    .local v19, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    if-nez v19, :cond_419

    .line 161
    if-eqz v4, :cond_410

    .line 162
    nop

    .line 163
    invoke-virtual {v3, v4, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 165
    :cond_410
    const-string v0, "BackupManagerService"

    const-string v5, "Backup requested but no transport available"

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    goto/16 :goto_50c

    .line 170
    :cond_419
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v6

    .line 171
    .local v15, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getJournal()Lcom/android/server/backup/DataChangedJournal;

    move-result-object v20

    .line 172
    .local v20, "oldJournal":Lcom/android/server/backup/DataChangedJournal;
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 174
    :try_start_42c
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->isBackupRunning()Z

    move-result v7
    :try_end_432
    .catchall {:try_start_42c .. :try_end_432} :catchall_505

    if-eqz v7, :cond_442

    .line 175
    :try_start_434
    const-string v0, "BackupManagerService"

    const-string v5, "Backup time but one already running"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    monitor-exit v6
    :try_end_43c
    .catchall {:try_start_434 .. :try_end_43c} :catchall_43d

    return-void

    .line 204
    :catchall_43d
    move-exception v0

    move-object/from16 v22, v15

    goto/16 :goto_508

    .line 180
    :cond_442
    :try_start_442
    const-string v7, "BackupManagerService"

    const-string v8, "Running a backup pass"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 186
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 191
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7
    :try_end_462
    .catchall {:try_start_442 .. :try_end_462} :catchall_505

    if-lez v7, :cond_49a

    .line 192
    :try_start_464
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_472
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_485

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/backup/keyvalue/BackupRequest;

    .line 193
    .local v8, "b":Lcom/android/server/backup/keyvalue/BackupRequest;
    iget-object v9, v8, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    nop

    .end local v8    # "b":Lcom/android/server/backup/keyvalue/BackupRequest;
    goto :goto_472

    .line 196
    :cond_485
    const-string v7, "BackupManagerService"

    const-string v8, "clearing pending backups"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 201
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7, v0}, Lcom/android/server/backup/UserBackupManagerService;->setJournal(Lcom/android/server/backup/DataChangedJournal;)V
    :try_end_49a
    .catchall {:try_start_464 .. :try_end_49a} :catchall_43d

    .line 204
    :cond_49a
    :try_start_49a
    monitor-exit v6
    :try_end_49b
    .catchall {:try_start_49a .. :try_end_49b} :catchall_505

    .line 211
    const/16 v21, 0x1

    .line 212
    .local v21, "staged":Z
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4db

    .line 215
    :try_start_4a3
    new-instance v14, Lcom/android/server/backup/internal/BackupHandler$$ExternalSyntheticLambda0;

    invoke-direct {v14, v3, v4}, Lcom/android/server/backup/internal/BackupHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;)V

    .line 220
    .local v14, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 224
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/transport/BackupTransportClient;->transportDirName()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 230
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 233
    invoke-virtual {v8, v5}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v18
    :try_end_4c0
    .catch Ljava/lang/Exception; {:try_start_4a3 .. :try_end_4c0} :catch_4ce

    .line 220
    move-object v8, v4

    move-object v10, v15

    move-object/from16 v11, v20

    move-object/from16 v22, v15

    .end local v15    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v15, v0

    :try_start_4c7
    invoke-static/range {v6 .. v18}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    :try_end_4ca
    .catch Ljava/lang/Exception; {:try_start_4c7 .. :try_end_4ca} :catch_4cc

    .line 241
    nop

    .end local v14    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    goto :goto_4e6

    .line 235
    :catch_4cc
    move-exception v0

    goto :goto_4d1

    .end local v22    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_4ce
    move-exception v0

    move-object/from16 v22, v15

    .line 238
    .end local v15    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v22    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4d1
    const-string v6, "BackupManagerService"

    const-string v7, "Transport became unavailable attempting backup or error initializing backup task"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    const/16 v21, 0x0

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_4e6

    .line 243
    .end local v22    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4db
    move-object/from16 v22, v15

    .end local v15    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "BackupManagerService"

    const-string v6, "Backup requested but nothing pending"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/16 v21, 0x0

    .line 247
    :goto_4e6
    if-nez v21, :cond_50c

    .line 248
    invoke-virtual {v3, v4, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 250
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 251
    :try_start_4f2
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 252
    monitor-exit v6
    :try_end_4f8
    .catchall {:try_start_4f2 .. :try_end_4f8} :catchall_502

    .line 253
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    goto :goto_50c

    .line 252
    :catchall_502
    move-exception v0

    :try_start_503
    monitor-exit v6
    :try_end_504
    .catchall {:try_start_503 .. :try_end_504} :catchall_502

    throw v0

    .line 204
    .end local v21    # "staged":Z
    .end local v22    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_505
    move-exception v0

    move-object/from16 v22, v15

    .end local v15    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_508
    :try_start_508
    monitor-exit v6
    :try_end_509
    .catchall {:try_start_508 .. :try_end_509} :catchall_50a

    throw v0

    :catchall_50a
    move-exception v0

    goto :goto_508

    .line 492
    .end local v2    # "callerLogString":Ljava/lang/String;
    .end local v4    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .end local v19    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v20    # "oldJournal":Lcom/android/server/backup/DataChangedJournal;
    .end local v22    # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_50c
    :goto_50c
    return-void

    nop

    :pswitch_data_50e
    .packed-switch 0x1
        :pswitch_3e9
        :pswitch_39e
        :pswitch_316
        :pswitch_300
        :pswitch_31
        :pswitch_212
        :pswitch_31
        :pswitch_1da
        :pswitch_17f
        :pswitch_15b
        :pswitch_31
        :pswitch_14c
        :pswitch_31
        :pswitch_31
        :pswitch_fb
        :pswitch_d4
        :pswitch_ad
        :pswitch_ad
        :pswitch_31
        :pswitch_65
        :pswitch_33
    .end packed-switch
.end method

.method public stop()V
    .registers 2

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    .line 115
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    return-void
.end method
