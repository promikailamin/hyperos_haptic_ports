.class public Lcom/android/server/pdb/PersistentDataBlockService$InternalService;
.super Ljava/lang/Object;
.source "PersistentDataBlockService.java"

# interfaces
.implements Lcom/android/server/pdb/PersistentDataBlockManagerInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pdb/PersistentDataBlockService;


# direct methods
.method public static bridge synthetic -$$Nest$mwriteDataBuffer(Lcom/android/server/pdb/PersistentDataBlockService$InternalService;JLjava/nio/ByteBuffer;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeDataBuffer(JLjava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .registers 2

    .line 1260
    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pdb/PersistentDataBlockService;Lcom/android/server/pdb/PersistentDataBlockService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    return-void
.end method


# virtual methods
.method public clearTestHarnessModeData()V
    .registers 4

    .line 1287
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->getTestHarnessModeData()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x270c

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 1288
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeDataBuffer(JLjava/nio/ByteBuffer;)Z

    return-void
.end method

.method public deactivateFactoryResetProtectionWithoutSecret()Z
    .registers 4

    .line 1298
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1299
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fputmFrpActive(Lcom/android/server/pdb/PersistentDataBlockService;Z)V

    .line 1300
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmFrpActive(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result v1

    invoke-static {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$msetOldSettingForBackworkCompatibility(Lcom/android/server/pdb/PersistentDataBlockService;Z)V

    .line 1301
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public forceOemUnlockEnabled(Z)V
    .registers 4

    .line 1372
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1373
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mdoSetOemUnlockEnabledLocked(Lcom/android/server/pdb/PersistentDataBlockService;Z)V

    .line 1374
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    .line 1375
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getAllowedUid()I
    .registers 1

    .line 1293
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmAllowedUid(Lcom/android/server/pdb/PersistentDataBlockService;)I

    move-result p0

    return p0
.end method

.method public getFrpCredentialHandle()[B
    .registers 4

    .line 1268
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    move-result-wide v0

    const/16 v2, 0x3e4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->readInternal(JI)[B

    move-result-object p0

    return-object p0
.end method

.method public getTestHarnessModeData()[B
    .registers 4

    .line 1278
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v0

    const/16 v2, 0x270c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->readInternal(JI)[B

    move-result-object p0

    if-nez p0, :cond_11

    const/4 p0, 0x0

    .line 1280
    new-array p0, p0, [B

    :cond_11
    return-object p0
.end method

.method public final readInternal(JI)[B
    .registers 8

    .line 1340
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceChecksumValidity(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1346
    :try_start_8
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmDataBlockFile(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_1d} :catch_54

    .line 1353
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_46
    .catchall {:try_start_1d .. :try_end_24} :catchall_44

    .line 1354
    :try_start_24
    invoke-virtual {v0, p1, p2}, Ljava/io/DataInputStream;->skip(J)J

    .line 1355
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    if-lez p1, :cond_3c

    if-le p1, p3, :cond_30

    goto :goto_3c

    .line 1359
    :cond_30
    new-array p1, p1, [B

    .line 1360
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1361
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_3a

    .line 1366
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p1

    :catchall_3a
    move-exception p1

    goto :goto_42

    .line 1357
    :cond_3c
    :goto_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3a

    .line 1366
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 p0, 0x0

    return-object p0

    .line 1362
    :goto_42
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3a

    :try_start_43
    throw p1
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_44} :catch_46
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception p0

    goto :goto_50

    :catch_46
    move-exception p0

    .line 1364
    :try_start_47
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "persistent partition not readable"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_44

    .line 1366
    :goto_50
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1367
    throw p0

    .line 1349
    :catch_54
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "persistent partition not available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1341
    :cond_5d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid checksum"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFrpCredentialHandle([B)V
    .registers 5

    .line 1263
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    move-result-wide v0

    const/16 v2, 0x3e4

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeInternal([BJI)V

    return-void
.end method

.method public setTestHarnessModeData([B)V
    .registers 5

    .line 1273
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v0

    const/16 v2, 0x270c

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeInternal([BJI)V

    return-void
.end method

.method public final writeDataBuffer(JLjava/nio/ByteBuffer;)Z
    .registers 7

    .line 1322
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1323
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmIsWritable(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 1324
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    return v2

    :catchall_12
    move-exception p0

    goto :goto_49

    .line 1326
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mgetBlockOutputChannel(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1a} :catch_2f
    .catchall {:try_start_14 .. :try_end_1a} :catchall_12

    .line 1327
    :try_start_1a
    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1328
    invoke-virtual {v1, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    .line 1329
    invoke-virtual {v1, p1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_31

    .line 1330
    :try_start_24
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_2f
    .catchall {:try_start_24 .. :try_end_27} :catchall_12

    .line 1335
    :try_start_27
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_12

    return p0

    :catch_2f
    move-exception p0

    goto :goto_3d

    :catchall_31
    move-exception p0

    if-eqz v1, :cond_3c

    .line 1326
    :try_start_34
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception p1

    :try_start_39
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    throw p0
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3d} :catch_2f
    .catchall {:try_start_39 .. :try_end_3d} :catchall_12

    .line 1331
    :goto_3d
    :try_start_3d
    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "unable to access persistent partition"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1332
    monitor-exit v0

    return v2

    .line 1336
    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_12

    throw p0
.end method

.method public final writeInternal([BJI)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 1306
    array-length v2, p1

    if-lez v2, :cond_8

    goto :goto_a

    :cond_8
    move v2, v1

    goto :goto_b

    :cond_a
    :goto_a
    move v2, v0

    :goto_b
    const-string v3, "data must be null or non-empty"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p1, :cond_17

    .line 1307
    array-length v2, p1

    if-gt v2, p4, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    .line 1309
    :cond_17
    :goto_17
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1307
    const-string v3, "data must not be longer than %d"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x4

    .line 1311
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    if-nez p1, :cond_2d

    goto :goto_2e

    .line 1312
    :cond_2d
    array-length v1, p1

    :goto_2e
    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_36

    .line 1314
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1316
    :cond_36
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1318
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeDataBuffer(JLjava/nio/ByteBuffer;)Z

    return-void
.end method
