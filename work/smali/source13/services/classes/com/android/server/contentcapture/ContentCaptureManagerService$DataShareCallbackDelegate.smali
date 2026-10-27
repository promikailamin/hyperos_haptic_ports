.class Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;
.super Landroid/service/contentcapture/IDataShareCallback$Stub;
.source "ContentCaptureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/contentcapture/ContentCaptureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataShareCallbackDelegate"
.end annotation


# instance fields
.field private final mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

.field private final mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

.field private final mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method constructor <init>(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .registers 6
    .param p1, "dataShareRequest"    # Landroid/view/contentcapture/DataShareRequest;
    .param p2, "clientAdapter"    # Landroid/view/contentcapture/IDataShareWriteAdapter;
    .param p3, "parentService"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 1038
    invoke-direct {p0}, Landroid/service/contentcapture/IDataShareCallback$Stub;-><init>()V

    .line 1034
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1039
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1040
    iput-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 1041
    iput-object p3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 1042
    return-void
.end method

.method private bestEffortCloseFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 1275
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1278
    goto :goto_e

    .line 1276
    :catch_4
    move-exception v0

    .line 1277
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to close a file descriptor"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1279
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e
    return-void
.end method

.method private varargs bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "fds"    # [Landroid/os/ParcelFileDescriptor;

    .line 1282
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    .line 1283
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 1282
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1285
    :cond_c
    return-void
.end method

.method private createPipe()Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1251
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_42

    .line 1255
    .local v1, "fileDescriptors":[Landroid/os/ParcelFileDescriptor;
    nop

    .line 1257
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_14

    .line 1258
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to create a content capture data-sharing pipe, unexpected number of file descriptors"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return-object v0

    .line 1263
    :cond_14
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-eqz v3, :cond_38

    const/4 v3, 0x1

    aget-object v4, v1, v3

    .line 1264
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    if-nez v4, :cond_2f

    goto :goto_38

    .line 1270
    :cond_2f
    aget-object v0, v1, v2

    aget-object v2, v1, v3

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 1265
    :cond_38
    :goto_38
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to create a content capture data-sharing pipe, didn\'t receive a pair of valid file descriptors."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    return-object v0

    .line 1252
    .end local v1    # "fileDescriptors":[Landroid/os/ParcelFileDescriptor;
    :catch_42
    move-exception v1

    .line 1253
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to create a content capture data-sharing pipe"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1254
    return-object v0
.end method

.method private enforceDataSharingTtl(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .registers 13
    .param p1, "sourceIn"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "sinkIn"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "sourceOut"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "sinkOut"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "serviceAdapter"    # Landroid/service/contentcapture/IDataShareReadAdapter;

    .line 1211
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1212
    :try_start_7
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1213
    invoke-virtual {v2}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1218
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2e

    .line 1219
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-nez v1, :cond_2e

    move v1, v3

    goto :goto_2f

    :cond_2e
    move v1, v2

    .line 1221
    .local v1, "finishedSuccessfully":Z
    :goto_2f
    if-eqz v1, :cond_6a

    .line 1222
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_43

    .line 1223
    const/16 v4, 0x9

    invoke-direct {p0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1224
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1226
    :cond_43
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content capture data sharing session terminated successfully for package \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1228
    invoke-virtual {v6}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1226
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 1231
    :cond_6a
    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1232
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reached the timeout of Content Capture data sharing session for package \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1234
    invoke-virtual {v6}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', terminating the pipe."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1232
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :goto_95
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/os/ParcelFileDescriptor;

    aput-object p1, v4, v2

    aput-object p2, v4, v3

    const/4 v2, 0x2

    aput-object p3, v4, v2

    const/4 v2, 0x3

    aput-object p4, v4, v2

    invoke-direct {p0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V

    .line 1241
    if-nez v1, :cond_ac

    .line 1242
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {v3, p5, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 1245
    .end local v1    # "finishedSuccessfully":Z
    :cond_ac
    monitor-exit v0

    .line 1246
    return-void

    .line 1245
    :catchall_ae
    move-exception v1

    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_7 .. :try_end_b0} :catchall_ae

    throw v1
.end method

.method private logServiceEvent(I)V
    .registers 4
    .param p1, "eventType"    # I

    .line 1304
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1305
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/contentcapture/ContentCaptureManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 1306
    .local v1, "serviceName":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILjava/lang/String;)V

    .line 1307
    return-void
.end method

.method private static sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V
    .registers 6
    .param p0, "clientAdapter"    # Landroid/view/contentcapture/IDataShareWriteAdapter;
    .param p1, "serviceAdapter"    # Landroid/service/contentcapture/IDataShareReadAdapter;
    .param p2, "errorCode"    # I

    .line 1292
    :try_start_0
    invoke-interface {p0, p2}, Landroid/view/contentcapture/IDataShareWriteAdapter;->error(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1295
    goto :goto_e

    .line 1293
    :catch_4
    move-exception v0

    .line 1294
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to call error() the client operation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1297
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    :try_start_e
    invoke-interface {p1, p2}, Landroid/service/contentcapture/IDataShareReadAdapter;->error(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    .line 1300
    goto :goto_1c

    .line 1298
    :catch_12
    move-exception v0

    .line 1299
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to call error() the service operation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1301
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method private setUpSharingPipeline(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Z
    .registers 9
    .param p1, "clientAdapter"    # Landroid/view/contentcapture/IDataShareWriteAdapter;
    .param p2, "serviceAdapter"    # Landroid/service/contentcapture/IDataShareReadAdapter;
    .param p3, "sourceIn"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "sinkOut"    # Landroid/os/ParcelFileDescriptor;

    .line 1185
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, p3}, Landroid/view/contentcapture/IDataShareWriteAdapter;->write(Landroid/os/ParcelFileDescriptor;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_1b

    .line 1191
    nop

    .line 1194
    :try_start_5
    invoke-interface {p2, p4}, Landroid/service/contentcapture/IDataShareReadAdapter;->start(Landroid/os/ParcelFileDescriptor;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_b

    .line 1200
    nop

    .line 1202
    const/4 v0, 0x1

    return v0

    .line 1195
    :catch_b
    move-exception v1

    .line 1196
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to call start() the service operation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1197
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1199
    return v0

    .line 1186
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1b
    move-exception v1

    .line 1187
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to call write() the client operation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1188
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1190
    return v0
.end method


# virtual methods
.method public accept(Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .registers 18
    .param p1, "serviceAdapter"    # Landroid/service/contentcapture/IDataShareReadAdapter;

    .line 1046
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Data share request accepted by Content Capture service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/4 v0, 0x7

    invoke-direct {v8, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1049
    invoke-direct/range {p0 .. p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->createPipe()Landroid/util/Pair;

    move-result-object v10

    .line 1050
    .local v10, "clientPipe":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;>;"
    const/4 v0, 0x1

    if-nez v10, :cond_23

    .line 1051
    const/16 v1, 0xc

    invoke-direct {v8, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1053
    iget-object v1, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {v1, v9, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 1055
    return-void

    .line 1058
    :cond_23
    iget-object v1, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Landroid/os/ParcelFileDescriptor;

    .line 1059
    .local v11, "sourceIn":Landroid/os/ParcelFileDescriptor;
    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Landroid/os/ParcelFileDescriptor;

    .line 1061
    .local v12, "sinkIn":Landroid/os/ParcelFileDescriptor;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->createPipe()Landroid/util/Pair;

    move-result-object v13

    .line 1062
    .local v13, "servicePipe":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;>;"
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v13, :cond_49

    .line 1063
    const/16 v3, 0xd

    invoke-direct {v8, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1065
    new-array v2, v2, [Landroid/os/ParcelFileDescriptor;

    aput-object v11, v2, v1

    aput-object v12, v2, v0

    invoke-direct {v8, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V

    .line 1067
    iget-object v1, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {v1, v9, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 1069
    return-void

    .line 1072
    :cond_49
    iget-object v3, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v14, v3

    check-cast v14, Landroid/os/ParcelFileDescriptor;

    .line 1073
    .local v14, "sourceOut":Landroid/os/ParcelFileDescriptor;
    iget-object v3, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v15, v3

    check-cast v15, Landroid/os/ParcelFileDescriptor;

    .line 1075
    .local v15, "sinkOut":Landroid/os/ParcelFileDescriptor;
    iget-object v3, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2400(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1076
    :try_start_5a
    iget-object v4, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v4

    iget-object v5, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    invoke-virtual {v5}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1077
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_5a .. :try_end_6a} :catchall_d4

    .line 1079
    iget-object v3, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-direct {v8, v3, v9, v11, v15}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->setUpSharingPipeline(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Z

    move-result v3

    if-nez v3, :cond_a1

    .line 1080
    iget-object v3, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {v3, v9, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 1082
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/os/ParcelFileDescriptor;

    aput-object v11, v3, v1

    aput-object v12, v3, v0

    aput-object v14, v3, v2

    const/4 v0, 0x3

    aput-object v15, v3, v0

    invoke-direct {v8, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V

    .line 1083
    iget-object v0, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2500(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1084
    :try_start_8d
    iget-object v0, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1085
    invoke-virtual {v1}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1086
    monitor-exit v3

    .line 1087
    return-void

    .line 1086
    :catchall_9e
    move-exception v0

    monitor-exit v3
    :try_end_a0
    .catchall {:try_start_8d .. :try_end_a0} :catchall_9e

    throw v0

    .line 1094
    :cond_a1
    new-array v2, v2, [Landroid/os/ParcelFileDescriptor;

    aput-object v11, v2, v1

    aput-object v15, v2, v0

    invoke-direct {v8, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V

    .line 1096
    iget-object v0, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmDataShareExecutor(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, v8, v12, v14, v9}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1152
    iget-object v0, v8, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v15

    move-object v8, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1160
    return-void

    .line 1077
    :catchall_d4
    move-exception v0

    :try_start_d5
    monitor-exit v3
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    throw v0
.end method

.method synthetic lambda$accept$0$com-android-server-contentcapture-ContentCaptureManagerService$DataShareCallbackDelegate(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .registers 13
    .param p1, "sinkIn"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "sourceOut"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "serviceAdapter"    # Landroid/service/contentcapture/IDataShareReadAdapter;

    .line 1097
    const/4 v0, 0x0

    .line 1098
    .local v0, "receivedData":Z
    const/16 v1, 0x9

    const/16 v2, 0xb

    const/4 v3, 0x1

    :try_start_6
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_94
    .catchall {:try_start_6 .. :try_end_b} :catchall_92

    .line 1100
    .local v4, "fis":Ljava/io/InputStream;
    :try_start_b
    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v5, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_88

    .line 1103
    .local v5, "fos":Ljava/io/OutputStream;
    const/16 v6, 0x400

    :try_start_12
    new-array v6, v6, [B

    .line 1105
    .local v6, "byteBuffer":[B
    :goto_14
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_7e

    .line 1107
    .local v7, "readBytes":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_78

    .line 1108
    nop

    .line 1115
    .end local v6    # "byteBuffer":[B
    .end local v7    # "readBytes":I
    :try_start_1c
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_88

    .end local v5    # "fos":Ljava/io/OutputStream;
    :try_start_1f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_94
    .catchall {:try_start_1f .. :try_end_22} :catchall_92

    .line 1123
    .end local v4    # "fis":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1124
    :try_start_29
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1125
    invoke-virtual {v6}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1126
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_75

    .line 1127
    if-eqz v0, :cond_6b

    .line 1128
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 1129
    invoke-direct {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1130
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1133
    :cond_4b
    :try_start_4b
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-interface {v1}, Landroid/view/contentcapture/IDataShareWriteAdapter;->finish()V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_50} :catch_51

    .line 1136
    goto :goto_5b

    .line 1134
    :catch_51
    move-exception v1

    .line 1135
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to call finish() the client operation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1138
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5b
    :try_start_5b
    invoke-interface {p3}, Landroid/service/contentcapture/IDataShareReadAdapter;->finish()V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_5e} :catch_60

    .line 1141
    :goto_5e
    goto/16 :goto_e6

    .line 1139
    :catch_60
    move-exception v1

    .line 1140
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to call finish() the service operation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_5e

    .line 1144
    :cond_6b
    invoke-direct {p0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1146
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {v1, p3, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 1149
    goto/16 :goto_e6

    .line 1126
    :catchall_75
    move-exception v1

    :try_start_76
    monitor-exit v4
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v1

    .line 1111
    .restart local v4    # "fis":Ljava/io/InputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    .restart local v6    # "byteBuffer":[B
    .restart local v7    # "readBytes":I
    :cond_78
    const/4 v8, 0x0

    :try_start_79
    invoke-virtual {v5, v6, v8, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7e

    .line 1113
    const/4 v0, 0x1

    .line 1114
    .end local v7    # "readBytes":I
    goto :goto_14

    .line 1098
    .end local v6    # "byteBuffer":[B
    :catchall_7e
    move-exception v6

    :try_start_7f
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_83

    goto :goto_87

    :catchall_83
    move-exception v7

    :try_start_84
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "receivedData":Z
    .end local v4    # "fis":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;
    .end local p1    # "sinkIn":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "sourceOut":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "serviceAdapter":Landroid/service/contentcapture/IDataShareReadAdapter;
    :goto_87
    throw v6
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_88

    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v0    # "receivedData":Z
    .restart local v4    # "fis":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;
    .restart local p1    # "sinkIn":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "sourceOut":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "serviceAdapter":Landroid/service/contentcapture/IDataShareReadAdapter;
    :catchall_88
    move-exception v5

    :try_start_89
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    goto :goto_91

    :catchall_8d
    move-exception v6

    :try_start_8e
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "receivedData":Z
    .end local p0    # "this":Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;
    .end local p1    # "sinkIn":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "sourceOut":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "serviceAdapter":Landroid/service/contentcapture/IDataShareReadAdapter;
    :goto_91
    throw v5
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_92} :catch_94
    .catchall {:try_start_8e .. :try_end_92} :catchall_92

    .line 1123
    .end local v4    # "fis":Ljava/io/InputStream;
    .restart local v0    # "receivedData":Z
    .restart local p0    # "this":Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;
    .restart local p1    # "sinkIn":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "sourceOut":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "serviceAdapter":Landroid/service/contentcapture/IDataShareReadAdapter;
    :catchall_92
    move-exception v4

    goto :goto_ea

    .line 1115
    :catch_94
    move-exception v4

    .line 1116
    .local v4, "e":Ljava/io/IOException;
    :try_start_95
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failed to pipe client and service streams"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1117
    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1120
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {v5, p3, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V
    :try_end_a8
    .catchall {:try_start_95 .. :try_end_a8} :catchall_92

    .line 1123
    .end local v4    # "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1124
    :try_start_af
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1125
    invoke-virtual {v6}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1126
    monitor-exit v4
    :try_end_bf
    .catchall {:try_start_af .. :try_end_bf} :catchall_e7

    .line 1127
    if-eqz v0, :cond_6b

    .line 1128
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_d1

    .line 1129
    invoke-direct {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1130
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1133
    :cond_d1
    :try_start_d1
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-interface {v1}, Landroid/view/contentcapture/IDataShareWriteAdapter;->finish()V
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_d6} :catch_d7

    .line 1136
    goto :goto_e1

    .line 1134
    :catch_d7
    move-exception v1

    .line 1135
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to call finish() the client operation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1138
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_e1
    :try_start_e1
    invoke-interface {p3}, Landroid/service/contentcapture/IDataShareReadAdapter;->finish()V
    :try_end_e4
    .catch Landroid/os/RemoteException; {:try_start_e1 .. :try_end_e4} :catch_60

    goto/16 :goto_5e

    .line 1150
    :goto_e6
    return-void

    .line 1126
    :catchall_e7
    move-exception v1

    :try_start_e8
    monitor-exit v4
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw v1

    .line 1123
    :goto_ea
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1124
    :try_start_f1
    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v6}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1125
    invoke-virtual {v7}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1126
    monitor-exit v5
    :try_end_101
    .catchall {:try_start_f1 .. :try_end_101} :catchall_13b

    .line 1127
    if-eqz v0, :cond_132

    .line 1128
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_113

    .line 1129
    invoke-direct {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1130
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1133
    :cond_113
    :try_start_113
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-interface {v1}, Landroid/view/contentcapture/IDataShareWriteAdapter;->finish()V
    :try_end_118
    .catch Landroid/os/RemoteException; {:try_start_113 .. :try_end_118} :catch_119

    .line 1136
    goto :goto_123

    .line 1134
    :catch_119
    move-exception v1

    .line 1135
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to call finish() the client operation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1138
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_123
    :try_start_123
    invoke-interface {p3}, Landroid/service/contentcapture/IDataShareReadAdapter;->finish()V
    :try_end_126
    .catch Landroid/os/RemoteException; {:try_start_123 .. :try_end_126} :catch_127

    .line 1141
    :goto_126
    goto :goto_13a

    .line 1139
    :catch_127
    move-exception v1

    .line 1140
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to call finish() the service operation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_126

    .line 1144
    :cond_132
    invoke-direct {p0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1146
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {v1, p3, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 1149
    :goto_13a
    throw v4

    .line 1126
    :catchall_13b
    move-exception v1

    :try_start_13c
    monitor-exit v5
    :try_end_13d
    .catchall {:try_start_13c .. :try_end_13d} :catchall_13b

    throw v1
.end method

.method synthetic lambda$accept$1$com-android-server-contentcapture-ContentCaptureManagerService$DataShareCallbackDelegate(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .registers 6
    .param p1, "sourceIn"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "sinkIn"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "sourceOut"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "sinkOut"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "serviceAdapter"    # Landroid/service/contentcapture/IDataShareReadAdapter;

    .line 1153
    invoke-direct/range {p0 .. p5}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->enforceDataSharingTtl(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V

    return-void
.end method

.method public reject()V
    .registers 5

    .line 1164
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Data share request rejected by Content Capture service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1168
    :try_start_e
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-interface {v0}, Landroid/view/contentcapture/IDataShareWriteAdapter;->rejected()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    .line 1176
    goto :goto_2f

    .line 1169
    :catch_14
    move-exception v0

    .line 1170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to call rejected() the client operation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1172
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/contentcapture/IDataShareWriteAdapter;->error(I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_25

    .line 1175
    goto :goto_2f

    .line 1173
    :catch_25
    move-exception v1

    .line 1174
    .local v1, "e2":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to call error() the client operation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1177
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "e2":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method
