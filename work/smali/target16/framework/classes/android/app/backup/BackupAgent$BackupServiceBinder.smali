.class Landroid/app/backup/BackupAgent$BackupServiceBinder;
.super Landroid/app/IBackupAgent$Stub;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupServiceBinder"
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "BackupServiceBinder"


# instance fields
.field final synthetic blacklist this$0:Landroid/app/backup/BackupAgent;


# direct methods
.method private constructor blacklist <init>(Landroid/app/backup/BackupAgent;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1232
    iput-object p1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-direct {p0}, Landroid/app/IBackupAgent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/backup/BackupAgent;Landroid/app/backup/BackupAgent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/backup/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/backup/BackupAgent;)V

    return-void
.end method

.method private static blacklist clearUnconsumedDataFromPipe(Landroid/os/ParcelFileDescriptor;J)V
    .registers 4

    .line 1543
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_20

    .line 1544
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result p0

    if-lez p0, :cond_12

    .line 1545
    invoke-virtual {v0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 1547
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_20

    .line 1549
    goto :goto_28

    .line 1543
    :catchall_16
    move-exception p0

    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception p1

    :try_start_1c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    throw p0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_20

    .line 1547
    :catch_20
    move-exception p0

    .line 1548
    const-string p1, "BackupServiceBinder"

    const-string p2, "Failed to clear unconsumed data from pipe."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1550
    :goto_28
    return-void
.end method

.method private blacklist doRestoreInternal(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "J",
            "Landroid/os/ParcelFileDescriptor;",
            "I",
            "Landroid/app/backup/IBackupManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1325
    move-object/from16 v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v0, p7

    const-string v4, ") threw"

    const-string/jumbo v5, "onRestore ("

    const-string v6, "BackupServiceBinder"

    iget-object v7, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v7}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1327
    new-instance v9, Landroid/app/backup/BackupDataInput;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v9, v7}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 1330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1332
    const-wide/16 v7, 0x0

    move-wide v10, v7

    :try_start_24
    iget-object v8, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_26} :catch_9a
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_26} :catch_73
    .catchall {:try_start_24 .. :try_end_26} :catchall_6d

    .line 1336
    if-eqz v0, :cond_36

    .line 1337
    :try_start_28
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_9a
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_2d} :catch_73
    .catchall {:try_start_28 .. :try_end_2d} :catchall_2f

    move-object v13, v7

    goto :goto_3b

    .line 1347
    :catchall_2f
    move-exception v0

    move-object v4, v0

    move-wide/from16 v16, v14

    move-wide v14, v10

    goto/16 :goto_c8

    .line 1338
    :cond_36
    :try_start_36
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3a} :catch_9a
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_3a} :catch_73
    .catchall {:try_start_36 .. :try_end_3a} :catchall_6d

    move-object v13, v7

    .line 1332
    :goto_3b
    move-object/from16 v12, p4

    move-wide/from16 v16, v14

    move-wide v14, v10

    move-wide/from16 v10, p2

    :try_start_42
    invoke-virtual/range {v8 .. v13}, Landroid/app/backup/BackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;JLandroid/os/ParcelFileDescriptor;Ljava/util/Set;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_6b
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_45} :catch_69
    .catchall {:try_start_42 .. :try_end_45} :catchall_c6

    .line 1347
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    .line 1349
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1351
    :try_start_4d
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v14, v15}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_56} :catch_57

    .line 1354
    goto :goto_58

    .line 1352
    :catch_57
    move-exception v0

    .line 1356
    :goto_58
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_68

    .line 1357
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1358
    invoke-static/range {p4 .. p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1361
    :cond_68
    return-void

    .line 1342
    :catch_69
    move-exception v0

    goto :goto_77

    .line 1339
    :catch_6b
    move-exception v0

    goto :goto_9e

    .line 1347
    :catchall_6d
    move-exception v0

    move-wide/from16 v16, v14

    move-wide v14, v10

    :goto_71
    move-object v4, v0

    goto :goto_c8

    .line 1342
    :catch_73
    move-exception v0

    move-wide/from16 v16, v14

    move-wide v14, v10

    .line 1343
    :goto_77
    :try_start_77
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1344
    throw v0

    .line 1339
    :catch_9a
    move-exception v0

    move-wide/from16 v16, v14

    move-wide v14, v10

    .line 1340
    :goto_9e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1341
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_c6
    .catchall {:try_start_77 .. :try_end_c6} :catchall_c6

    .line 1347
    :catchall_c6
    move-exception v0

    goto :goto_71

    :goto_c8
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    .line 1349
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1351
    :try_start_d0
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v14, v15}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_d9
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_d9} :catch_da

    .line 1354
    goto :goto_db

    .line 1352
    :catch_da
    move-exception v0

    .line 1356
    :goto_db
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_eb

    .line 1357
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1358
    invoke-static/range {p4 .. p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1360
    :cond_eb
    throw v4
.end method


# virtual methods
.method public blacklist clearBackupRestoreEventLogger()V
    .registers 7

    .line 1626
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1628
    :try_start_4
    iget-object v2, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v2}, Landroid/app/backup/BackupAgent;->clearBackupRestoreEventLogger()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 1638
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1639
    nop

    .line 1640
    return-void

    .line 1638
    :catchall_e
    move-exception v2

    goto :goto_3a

    .line 1629
    :catch_10
    move-exception v2

    .line 1630
    :try_start_11
    const-string v3, "BackupServiceBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearBackupRestoreEventLogger ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    .line 1633
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") threw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1630
    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1636
    throw v2
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_e

    .line 1638
    :goto_3a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1639
    throw v2
.end method

.method public blacklist doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1246
    const-string v0, ") threw"

    const-string/jumbo v1, "onBackup ("

    const-string v2, "BackupServiceBinder"

    new-instance v3, Landroid/app/backup/BackupDataOutput;

    .line 1247
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4, p4, p5, p7}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;JI)V

    .line 1249
    nop

    .line 1252
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p4

    .line 1254
    :try_start_15
    iget-object p7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {p7, p1, v3, p3}, Landroid/app/backup/BackupAgent;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_64
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_1a} :catch_40
    .catchall {:try_start_15 .. :try_end_1a} :catchall_3e

    .line 1255
    nop

    .line 1266
    iget-object p7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {p7}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1268
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1270
    const-wide/16 p4, 0x0

    :try_start_25
    invoke-interface {p6, p4, p5}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    .line 1273
    goto :goto_2a

    .line 1271
    :catch_29
    move-exception p4

    .line 1276
    :goto_2a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p5

    if-eq p4, p5, :cond_3d

    .line 1277
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1278
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1279
    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1282
    :cond_3d
    return-void

    .line 1266
    :catchall_3e
    move-exception p7

    goto :goto_8d

    .line 1259
    :catch_40
    move-exception p7

    .line 1260
    :try_start_41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1261
    throw p7

    .line 1256
    :catch_64
    move-exception p7

    .line 1257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1258
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_8d
    .catchall {:try_start_41 .. :try_end_8d} :catchall_3e

    .line 1266
    :goto_8d
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1268
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1270
    const-wide/16 p4, -0x1

    :try_start_97
    invoke-interface {p6, p4, p5}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9a} :catch_9b

    .line 1273
    goto :goto_9c

    .line 1271
    :catch_9b
    move-exception p4

    .line 1276
    :goto_9c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p5

    if-eq p4, p5, :cond_af

    .line 1277
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1278
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1279
    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1281
    :cond_af
    throw p7
.end method

.method public greylist-max-o doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    .registers 23

    .line 1374
    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, ") threw"

    const-string v5, "Unable to finalize backup stream!"

    const-string/jumbo v6, "onFullBackup ("

    const-string v7, "BackupServiceBinder"

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1377
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1379
    const/4 v12, 0x4

    :try_start_19
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    new-instance v13, Landroid/app/backup/FullBackupDataOutput;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_90
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1d} :catch_6a
    .catchall {:try_start_19 .. :try_end_1d} :catchall_65

    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move/from16 v15, p6

    :try_start_23
    invoke-direct {v13, v14, v10, v11, v15}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;JI)V

    invoke-virtual {v0, v13}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_29} :catch_63
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_29} :catch_61
    .catchall {:try_start_23 .. :try_end_29} :catchall_5f

    .line 1395
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1400
    :try_start_2e
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1401
    new-array v4, v12, [B

    .line 1402
    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3c} :catch_3d

    .line 1405
    goto :goto_41

    .line 1403
    :catch_3d
    move-exception v0

    .line 1404
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :goto_41
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1409
    :try_start_44
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    const-wide/16 v4, 0x0

    invoke-interface {v3, v0, v2, v4, v5}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4f} :catch_50

    .line 1412
    goto :goto_51

    .line 1410
    :catch_50
    move-exception v0

    .line 1414
    :goto_51
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_5e

    .line 1415
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1418
    :cond_5e
    return-void

    .line 1395
    :catchall_5f
    move-exception v0

    goto :goto_68

    .line 1387
    :catch_61
    move-exception v0

    goto :goto_6d

    .line 1381
    :catch_63
    move-exception v0

    goto :goto_93

    .line 1395
    :catchall_65
    move-exception v0

    move-object/from16 v14, p1

    :goto_68
    move-object v4, v0

    goto :goto_bb

    .line 1387
    :catch_6a
    move-exception v0

    move-object/from16 v14, p1

    .line 1388
    :goto_6d
    :try_start_6d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    .line 1390
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1388
    invoke-static {v7, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1392
    throw v0

    .line 1381
    :catch_90
    move-exception v0

    move-object/from16 v14, p1

    .line 1382
    :goto_93
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    .line 1384
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1382
    invoke-static {v7, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1386
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_bb
    .catchall {:try_start_6d .. :try_end_bb} :catchall_5f

    .line 1395
    :goto_bb
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1400
    :try_start_c0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1401
    new-array v6, v12, [B

    .line 1402
    invoke-virtual {v0, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_ce} :catch_cf

    .line 1405
    goto :goto_d3

    .line 1403
    :catch_cf
    move-exception v0

    .line 1404
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :goto_d3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1409
    :try_start_d6
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    const-wide/16 v5, 0x0

    invoke-interface {v3, v0, v2, v5, v6}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_e1} :catch_e2

    .line 1412
    goto :goto_e3

    .line 1410
    :catch_e2
    move-exception v0

    .line 1414
    :goto_e3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_f0

    .line 1415
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1417
    :cond_f0
    throw v4
.end method

.method public greylist-max-o doMeasureFullBackup(JILandroid/app/backup/IBackupManager;I)V
    .registers 23

    .line 1422
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v0, p5

    const-string v6, ") threw"

    const-string/jumbo v7, "onFullBackup[M] ("

    const-string v8, "BackupServiceBinder"

    .line 1423
    new-instance v9, Landroid/app/backup/FullBackupDataOutput;

    invoke-direct {v9, v2, v3, v0}, Landroid/app/backup/FullBackupDataOutput;-><init>(JI)V

    .line 1426
    iget-object v10, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v10}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1429
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1431
    const-wide/16 v13, -0x1

    :try_start_21
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/backup/Flags;->enableCrossPlatformTransfer()Z

    move-result v15
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_8a
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_25} :catch_64
    .catchall {:try_start_21 .. :try_end_25} :catchall_5f

    if-eqz v15, :cond_39

    .line 1432
    const-wide/16 v15, 0x0

    :try_start_29
    iget-object v12, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    .line 1433
    invoke-virtual {v12, v2, v3, v0}, Landroid/app/backup/BackupAgent;->onEstimateFullBackupBytes(JI)J

    move-result-wide v13

    .line 1434
    cmp-long v0, v13, v15

    if-gez v0, :cond_40

    .line 1435
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0, v9}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V

    goto :goto_40

    .line 1438
    :cond_39
    const-wide/16 v15, 0x0

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0, v9}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_40} :catch_5d
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_40} :catch_5b
    .catchall {:try_start_29 .. :try_end_40} :catchall_59

    .line 1453
    :cond_40
    :goto_40
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1455
    :try_start_43
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    .line 1456
    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    .line 1458
    cmp-long v1, v13, v15

    if-ltz v1, :cond_4e

    .line 1459
    goto :goto_52

    .line 1460
    :cond_4e
    invoke-virtual {v9}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    move-result-wide v13

    .line 1455
    :goto_52
    invoke-interface {v5, v0, v4, v13, v14}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_55} :catch_56

    .line 1463
    goto :goto_58

    .line 1461
    :catch_56
    move-exception v0

    .line 1464
    nop

    .line 1465
    :goto_58
    return-void

    .line 1453
    :catchall_59
    move-exception v0

    goto :goto_62

    .line 1446
    :catch_5b
    move-exception v0

    goto :goto_67

    .line 1440
    :catch_5d
    move-exception v0

    goto :goto_8d

    .line 1453
    :catchall_5f
    move-exception v0

    const-wide/16 v15, 0x0

    :goto_62
    move-object v2, v0

    goto :goto_b5

    .line 1446
    :catch_64
    move-exception v0

    const-wide/16 v15, 0x0

    .line 1447
    :goto_67
    :try_start_67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    .line 1449
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1447
    invoke-static {v8, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1451
    throw v0

    .line 1440
    :catch_8a
    move-exception v0

    const-wide/16 v15, 0x0

    .line 1441
    :goto_8d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    .line 1443
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1441
    invoke-static {v8, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1445
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_b5
    .catchall {:try_start_67 .. :try_end_b5} :catchall_59

    .line 1453
    :goto_b5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1455
    :try_start_b8
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    .line 1456
    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    .line 1458
    cmp-long v1, v13, v15

    if-ltz v1, :cond_c3

    .line 1459
    goto :goto_c7

    .line 1460
    :cond_c3
    invoke-virtual {v9}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    move-result-wide v13

    .line 1455
    :goto_c7
    invoke-interface {v5, v0, v4, v13, v14}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_ca} :catch_cb

    .line 1463
    goto :goto_cc

    .line 1461
    :catch_cb
    move-exception v0

    .line 1464
    :goto_cc
    throw v2
.end method

.method public blacklist doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V
    .registers 9

    .line 1584
    nop

    .line 1587
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1589
    :try_start_5
    iget-object v2, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/app/backup/BackupAgent;->onQuotaExceeded(JJ)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_1e
    .catchall {:try_start_5 .. :try_end_a} :catchall_1c

    .line 1590
    nop

    .line 1598
    iget-object p1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {p1}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1599
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1602
    const-wide/16 p1, 0x0

    :try_start_15
    invoke-interface {p5, p1, p2}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    .line 1605
    goto :goto_1b

    .line 1603
    :catch_19
    move-exception p1

    .line 1606
    nop

    .line 1607
    :goto_1b
    return-void

    .line 1598
    :catchall_1c
    move-exception p1

    goto :goto_49

    .line 1591
    :catch_1e
    move-exception p1

    .line 1592
    :try_start_1f
    const-string p2, "BackupServiceBinder"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "onQuotaExceeded("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    .line 1594
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ") threw"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1592
    invoke-static {p2, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1596
    throw p1
    :try_end_49
    .catchall {:try_start_1f .. :try_end_49} :catchall_1c

    .line 1598
    :goto_49
    iget-object p2, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {p2}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1599
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1602
    const-wide/16 p2, -0x1

    :try_start_53
    invoke-interface {p5, p2, p3}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_56} :catch_57

    .line 1605
    goto :goto_58

    .line 1603
    :catch_57
    move-exception p2

    .line 1606
    :goto_58
    throw p1
.end method

.method public greylist-max-o doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1292
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->doRestoreInternal(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V

    .line 1299
    return-void
.end method

.method public blacklist doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;JILjava/lang/String;)V
    .registers 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1482
    move-object/from16 v1, p0

    move/from16 v2, p11

    move-object/from16 v3, p12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1484
    const-wide/16 v6, 0x0

    :try_start_c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/backup/Flags;->enableCrossPlatformTransfer()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1485
    iget-object v8, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    move-wide/from16 v19, p13

    move/from16 v21, p15

    move-object/from16 v22, p16

    invoke-virtual/range {v8 .. v22}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJJILjava/lang/String;)V

    goto :goto_45

    .line 1497
    :cond_2c
    iget-object v9, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    const-string v23, ""

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v10, p1

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-wide/from16 v16, p7

    move-wide/from16 v18, p9

    invoke-virtual/range {v9 .. v23}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJJILjava/lang/String;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_45} :catch_77
    .catchall {:try_start_c .. :try_end_45} :catchall_74

    .line 1517
    :goto_45
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1519
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    .line 1525
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/backup/Flags;->enableClearPipeAfterRestoreFile()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1526
    invoke-static/range {p1 .. p3}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->clearUnconsumedDataFromPipe(Landroid/os/ParcelFileDescriptor;J)V

    .line 1529
    :cond_58
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1531
    :try_start_5b
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v6, v7}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_64} :catch_65

    .line 1534
    goto :goto_66

    .line 1532
    :catch_65
    move-exception v0

    .line 1536
    :goto_66
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_73

    .line 1537
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1540
    :cond_73
    return-void

    .line 1517
    :catchall_74
    move-exception v0

    move-object v8, v0

    goto :goto_a7

    .line 1509
    :catch_77
    move-exception v0

    .line 1510
    :try_start_78
    const-string v8, "BackupServiceBinder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onRestoreFile ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    .line 1512
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") threw"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1510
    invoke-static {v8, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1514
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_a7
    .catchall {:try_start_78 .. :try_end_a7} :catchall_74

    .line 1517
    :goto_a7
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1519
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    .line 1525
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/backup/Flags;->enableClearPipeAfterRestoreFile()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 1526
    invoke-static/range {p1 .. p3}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->clearUnconsumedDataFromPipe(Landroid/os/ParcelFileDescriptor;J)V

    .line 1529
    :cond_ba
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1531
    :try_start_bd
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v6, v7}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_bd .. :try_end_c6} :catch_c7

    .line 1534
    goto :goto_c8

    .line 1532
    :catch_c7
    move-exception v0

    .line 1536
    :goto_c8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_d5

    .line 1537
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1539
    :cond_d5
    throw v8
.end method

.method public greylist-max-o doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    .registers 11

    .line 1554
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1556
    const-wide/16 v2, 0x0

    :try_start_6
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4}, Landroid/app/backup/BackupAgent;->onRestoreFinished()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_22
    .catchall {:try_start_6 .. :try_end_b} :catchall_20

    .line 1565
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1567
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1569
    :try_start_13
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {p2, v0, p1, v2, v3}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1d

    .line 1572
    goto :goto_1f

    .line 1570
    :catch_1d
    move-exception p1

    .line 1573
    nop

    .line 1574
    :goto_1f
    return-void

    .line 1565
    :catchall_20
    move-exception v4

    goto :goto_4d

    .line 1557
    :catch_22
    move-exception v4

    .line 1558
    :try_start_23
    const-string v5, "BackupServiceBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onRestoreFinished ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    .line 1560
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") threw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1558
    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1562
    throw v4
    :try_end_4d
    .catchall {:try_start_23 .. :try_end_4d} :catchall_20

    .line 1565
    :goto_4d
    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v5}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1567
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1569
    :try_start_55
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {p2, v0, p1, v2, v3}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5e} :catch_5f

    .line 1572
    goto :goto_60

    .line 1570
    :catch_5f
    move-exception p1

    .line 1573
    :goto_60
    throw v4
.end method

.method public blacklist doRestoreWithExcludedKeys(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "J",
            "Landroid/os/ParcelFileDescriptor;",
            "I",
            "Landroid/app/backup/IBackupManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1310
    invoke-direct/range {p0 .. p7}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->doRestoreInternal(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V

    .line 1311
    return-void
.end method

.method public greylist-max-o fail(Ljava/lang/String;)V
    .registers 4

    .line 1578
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/backup/BackupAgent$FailRunnable;

    invoke-direct {v1, p1}, Landroid/app/backup/BackupAgent$FailRunnable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1579
    return-void
.end method

.method public blacklist getLoggerResults(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/util/List<",
            "Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1612
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$fgetmLogger(Landroid/app/backup/BackupAgent;)Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1613
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$fgetmLogger(Landroid/app/backup/BackupAgent;)Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/backup/BackupRestoreEventLogger;->getLoggingResults()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1615
    :cond_16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 1617
    :goto_1d
    return-void
.end method

.method public blacklist getOperationType(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1621
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$fgetmLogger(Landroid/app/backup/BackupAgent;)Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, -0x1

    goto :goto_14

    :cond_a
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$fgetmLogger(Landroid/app/backup/BackupAgent;)Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/backup/BackupRestoreEventLogger;->getOperationType()I

    move-result v0

    :goto_14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 1622
    return-void
.end method
