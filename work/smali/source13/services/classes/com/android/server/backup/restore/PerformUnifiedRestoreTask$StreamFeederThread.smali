.class Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "PerformUnifiedRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFeederThread"
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

.field mEnginePipes:[Landroid/os/ParcelFileDescriptor;

.field mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

.field private final mEphemeralOpToken:I

.field mTransportPipes:[Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 914
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 902
    const-string v0, "StreamFeederThread"

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->TAG:Ljava/lang/String;

    .line 915
    invoke-static {p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    .line 916
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 917
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 918
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    .line 919
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 1

    .line 1071
    return-void
.end method

.method public handleCancel(Z)V
    .registers 8
    .param p1, "cancelAll"    # Z

    .line 1079
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmOperationStorage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/OperationStorage;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    invoke-interface {v0, v1}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    .line 1081
    const-string v0, "StreamFeederThread"

    const-string v1, "Full-data restore target timed out; shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmMonitor(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/16 v3, 0x2d

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v3, v2, v4, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmMonitor(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/backup/IBackupManagerMonitor;)V

    .line 1087
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->handleTimeout()V

    .line 1089
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1090
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v5, v0, v1

    .line 1091
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1092
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v5, v0, v1

    .line 1093
    return-void
.end method

.method public operationComplete(J)V
    .registers 3
    .param p1, "result"    # J

    .line 1074
    return-void
.end method

.method public run()V
    .registers 23

    .line 923
    move-object/from16 v12, p0

    const-string v13, "Transport threw from abortFullRestore: "

    const-string v14, "StreamFeederThread"

    sget-object v15, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 924
    .local v15, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    const/16 v16, 0x0

    .line 926
    .local v16, "status":I
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0xb1c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 929
    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v2

    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmOperationStorage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/OperationStorage;

    move-result-object v3

    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmMonitor(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget v9, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmBackupEligibilityRules(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/backup/restore/FullRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    iput-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 932
    new-instance v1, Lcom/android/server/backup/restore/FullRestoreEngineThread;

    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/android/server/backup/restore/FullRestoreEngineThread;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V

    iput-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    .line 934
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    .line 935
    .local v2, "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v4, v0, v3

    .line 936
    .local v4, "tReadEnd":Landroid/os/ParcelFileDescriptor;
    aget-object v5, v0, v1

    .line 938
    .local v5, "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    const v6, 0x8000

    .line 939
    .local v6, "bufferSize":I
    new-array v7, v6, [B

    .line 940
    .local v7, "buffer":[B
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v8, v0

    .line 941
    .local v8, "engineOut":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v9, v0

    .line 944
    .local v9, "transportIn":Ljava/io/FileInputStream;
    new-instance v0, Ljava/lang/Thread;

    iget-object v10, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    const-string/jumbo v11, "unified-restore-engine"

    invoke-direct {v0, v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 946
    const-string v10, "PerformUnifiedRestoreTask$StreamFeederThread.run()"

    .line 948
    .local v10, "callerLogString":Ljava/lang/String;
    :try_start_83
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmTransportConnection(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 950
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :goto_8d
    if-nez v16, :cond_176

    .line 952
    invoke-virtual {v0, v5}, Lcom/android/server/backup/transport/BackupTransportClient;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v17

    move/from16 v18, v17

    .line 953
    .local v18, "result":I
    move/from16 v1, v18

    .end local v18    # "result":I
    .local v1, "result":I
    if-lez v1, :cond_10f

    .line 956
    sget-boolean v18, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_9b} :catch_2f7
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_9b} :catch_234
    .catchall {:try_start_83 .. :try_end_9b} :catchall_22e

    if-eqz v18, :cond_b3

    .line 957
    :try_start_9d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  <- transport provided chunk size "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_b3
    if-le v1, v6, :cond_ca

    .line 960
    move v6, v1

    .line 961
    new-array v3, v6, [B
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_b8} :catch_c5
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_b8} :catch_c0
    .catchall {:try_start_9d .. :try_end_b8} :catchall_ba

    move-object v7, v3

    .end local v7    # "buffer":[B
    .local v3, "buffer":[B
    goto :goto_ca

    .line 1011
    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v1    # "result":I
    .end local v3    # "buffer":[B
    .restart local v7    # "buffer":[B
    :catchall_ba
    move-exception v0

    move-object v1, v0

    move-object/from16 v20, v2

    goto/16 :goto_3ab

    .line 1000
    :catch_c0
    move-exception v0

    move-object/from16 v20, v2

    goto/16 :goto_237

    .line 992
    :catch_c5
    move-exception v0

    move-object/from16 v20, v2

    goto/16 :goto_2fa

    .line 963
    .restart local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v1    # "result":I
    :cond_ca
    :goto_ca
    move v3, v1

    .line 964
    .local v3, "toCopy":I
    :goto_cb
    if-lez v3, :cond_10a

    .line 965
    const/4 v11, 0x0

    :try_start_ce
    invoke-virtual {v9, v7, v11, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v19

    move/from16 v20, v19

    .line 966
    .local v20, "n":I
    move-object/from16 v21, v0

    move/from16 v0, v20

    .end local v20    # "n":I
    .local v0, "n":I
    .local v21, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v8, v7, v11, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 967
    sub-int/2addr v3, v0

    .line 968
    sget-boolean v11, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v11, :cond_103

    .line 969
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_e5} :catch_2f7
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_e5} :catch_234
    .catchall {:try_start_ce .. :try_end_e5} :catchall_22e

    move-object/from16 v20, v2

    .end local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .local v20, "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :try_start_e7
    const-string v2, "  -> wrote "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " to engine, left="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_105

    .line 968
    .end local v20    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :cond_103
    move-object/from16 v20, v2

    .line 971
    .end local v0    # "n":I
    .end local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :goto_105
    move-object/from16 v2, v20

    move-object/from16 v0, v21

    goto :goto_cb

    .line 964
    .end local v20    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v21    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :cond_10a
    move-object/from16 v21, v0

    move-object/from16 v20, v2

    .line 972
    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "toCopy":I
    .restart local v20    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v21    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    goto :goto_16f

    .end local v20    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v21    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :cond_10f
    move-object/from16 v21, v0

    move-object/from16 v20, v2

    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v21    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    const/4 v0, -0x1

    if-ne v1, v0, :cond_13c

    .line 974
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_138

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got clean full-restore EOF for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_138
    const/4 v0, 0x0

    .line 979
    .end local v16    # "status":I
    .local v0, "status":I
    move/from16 v16, v0

    goto :goto_17a

    .line 983
    .end local v0    # "status":I
    .restart local v16    # "status":I
    :cond_13c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " streaming restore for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    const/16 v2, 0xb0f

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 986
    move v0, v1

    move/from16 v16, v0

    .line 988
    .end local v1    # "result":I
    :goto_16f
    move-object/from16 v2, v20

    move-object/from16 v0, v21

    const/4 v3, 0x0

    goto/16 :goto_8d

    .line 950
    .end local v20    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v21    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :cond_176
    move-object/from16 v21, v0

    move-object/from16 v20, v2

    .line 989
    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v21    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :goto_17a
    sget-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v0, :cond_183

    .line 990
    const-string v0, "Done copying to engine, falling through"

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_183} :catch_22b
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_183} :catch_229
    .catchall {:try_start_e7 .. :try_end_183} :catchall_3a9

    .line 1011
    .end local v21    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :cond_183
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1012
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1013
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1016
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()I

    .line 1019
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1023
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v1

    if-eqz v1, :cond_1b2

    const/4 v1, 0x1

    goto :goto_1b3

    :cond_1b2
    const/4 v1, 0x0

    :goto_1b3
    invoke-static {v0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmDidLaunch(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)V

    .line 1027
    if-nez v16, :cond_1d1

    .line 1029
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1033
    .end local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmAgent(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)V

    .line 1036
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmWidgetData(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)V

    goto :goto_21e

    .line 1041
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_1d1
    :try_start_1d1
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmTransportConnection(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v0

    .line 1042
    invoke-virtual {v0, v10}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 1043
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->abortFullRestore()I
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_1d1 .. :try_end_1de} :catch_1e1

    .line 1049
    move/from16 v0, v16

    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    goto :goto_1fe

    .line 1044
    :catch_1e1
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/16 v16, -0x3e8

    move/from16 v0, v16

    .line 1053
    .end local v16    # "status":I
    .local v0, "status":I
    :goto_1fe
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    .line 1057
    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_219

    .line 1058
    sget-object v1, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    move/from16 v16, v0

    move-object v0, v1

    .end local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v1, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto :goto_21e

    .line 1060
    .end local v1    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_219
    sget-object v1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    move/from16 v16, v0

    move-object v0, v1

    .line 1063
    .end local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v16    # "status":I
    :goto_21e
    iget-object v1, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1064
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    .line 1065
    goto/16 :goto_3a8

    .line 1000
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :catch_229
    move-exception v0

    goto :goto_237

    .line 992
    :catch_22b
    move-exception v0

    goto/16 :goto_2fa

    .line 1011
    .end local v20    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :catchall_22e
    move-exception v0

    move-object/from16 v20, v2

    move-object v1, v0

    .end local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_3ab

    .line 1000
    .end local v20    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :catch_234
    move-exception v0

    move-object/from16 v20, v2

    .line 1004
    .end local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :goto_237
    :try_start_237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transport failed during restore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/16 v1, 0xb0f

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_259
    .catchall {:try_start_237 .. :try_end_259} :catchall_3a9

    .line 1006
    const/16 v1, -0x3e8

    .line 1011
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "status":I
    .local v1, "status":I
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1012
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1013
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1016
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()I

    .line 1019
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1023
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_28a

    const/4 v2, 0x1

    goto :goto_28b

    :cond_28a
    const/4 v2, 0x0

    :goto_28b
    invoke-static {v0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmDidLaunch(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)V

    .line 1027
    if-nez v1, :cond_2ac

    .line 1029
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1033
    .end local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v3, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmAgent(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)V

    .line 1036
    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v3, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmWidgetData(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)V

    :goto_2a8
    move/from16 v16, v1

    goto/16 :goto_21e

    .line 1041
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_2ac
    :try_start_2ac
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmTransportConnection(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v0

    .line 1042
    invoke-virtual {v0, v10}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 1043
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->abortFullRestore()I
    :try_end_2b9
    .catch Ljava/lang/Exception; {:try_start_2ac .. :try_end_2b9} :catch_2bb

    .line 1049
    nop

    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    goto :goto_2d6

    .line 1044
    :catch_2bb
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/16 v1, -0x3e8

    .line 1053
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2d6
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    .line 1057
    const/16 v2, -0x3e8

    if-ne v1, v2, :cond_2f1

    .line 1058
    :goto_2eb
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    move/from16 v16, v1

    .end local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto/16 :goto_21e

    .line 1060
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_2f1
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    move/from16 v16, v1

    .end local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto/16 :goto_21e

    .line 992
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .end local v1    # "status":I
    .end local v20    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v16    # "status":I
    :catch_2f7
    move-exception v0

    move-object/from16 v20, v2

    .line 996
    .end local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .local v0, "e":Ljava/io/IOException;
    .restart local v20    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :goto_2fa
    :try_start_2fa
    const-string v1, "Unable to route data for restore"

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const/16 v1, 0xb10

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v2, v11

    const-string v3, "I/O error on pipes"

    const/4 v11, 0x1

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_317
    .catchall {:try_start_2fa .. :try_end_317} :catchall_3a9

    .line 999
    const/16 v1, -0x3eb

    .line 1011
    .end local v0    # "e":Ljava/io/IOException;
    .end local v16    # "status":I
    .restart local v1    # "status":I
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v11

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1012
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1013
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v11

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1016
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()I

    .line 1019
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1023
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_347

    const/4 v2, 0x1

    goto :goto_348

    :cond_347
    const/4 v2, 0x0

    :goto_348
    invoke-static {v0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmDidLaunch(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)V

    .line 1027
    if-nez v1, :cond_367

    .line 1029
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1033
    .end local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v3, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmAgent(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)V

    .line 1036
    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v3, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmWidgetData(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)V

    goto/16 :goto_2a8

    .line 1041
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_367
    :try_start_367
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmTransportConnection(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v0

    .line 1042
    invoke-virtual {v0, v10}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 1043
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->abortFullRestore()I
    :try_end_374
    .catch Ljava/lang/Exception; {:try_start_367 .. :try_end_374} :catch_376

    .line 1049
    nop

    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    goto :goto_391

    .line 1044
    :catch_376
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/16 v1, -0x3e8

    .line 1053
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_391
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    .line 1057
    const/16 v2, -0x3e8

    if-ne v1, v2, :cond_2f1

    .line 1058
    goto/16 :goto_2eb

    .line 1066
    .end local v1    # "status":I
    .end local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v16    # "status":I
    :goto_3a8
    return-void

    .line 1011
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :catchall_3a9
    move-exception v0

    move-object v1, v0

    :goto_3ab
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1012
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1013
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1016
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()I

    .line 1019
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1023
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v3, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    if-eqz v3, :cond_3d9

    goto :goto_3da

    :cond_3d9
    const/4 v2, 0x0

    :goto_3da
    invoke-static {v0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmDidLaunch(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)V

    .line 1027
    if-eqz v16, :cond_429

    .line 1041
    :try_start_3df
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmTransportConnection(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v0

    .line 1042
    invoke-virtual {v0, v10}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 1043
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->abortFullRestore()I
    :try_end_3ec
    .catch Ljava/lang/Exception; {:try_start_3df .. :try_end_3ec} :catch_3ef

    .line 1049
    move/from16 v2, v16

    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    goto :goto_40a

    .line 1044
    :catch_3ef
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/16 v2, -0x3e8

    .line 1053
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "status":I
    .local v2, "status":I
    :goto_40a
    iget-object v0, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    iget-object v3, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    .line 1057
    const/16 v3, -0x3e8

    if-ne v2, v3, :cond_424

    .line 1058
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    move/from16 v16, v2

    .end local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto :goto_441

    .line 1060
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_424
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    move/from16 v16, v2

    .end local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto :goto_441

    .line 1029
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .end local v2    # "status":I
    .restart local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v16    # "status":I
    :cond_429
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1033
    .end local v15    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v3, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmAgent(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)V

    .line 1036
    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v3, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmWidgetData(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)V

    .line 1063
    :goto_441
    iget-object v2, v12, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1064
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    .line 1065
    throw v1
.end method
