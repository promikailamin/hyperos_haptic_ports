.class public Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;
.super Ljava/lang/Object;
.source "SystemDataTransferRequestStore.java"


# instance fields
.field public final mCachedPerUser:Landroid/util/SparseArray;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mLock:Ljava/lang/Object;

.field public final mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public static synthetic $r8$lambda$5taD8HtqQx_TdsBO1XvKJtRu3YM(Landroid/companion/datatransfer/SystemDataTransferRequest;Landroid/companion/datatransfer/SystemDataTransferRequest;)Z
    .registers 2

    .line 131
    invoke-virtual {p1}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getAssociationId()I

    move-result p1

    invoke-virtual {p0}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getAssociationId()I

    move-result p0

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$CRkESvFXCDHSZsMzCtczGUM7PMw(ILjava/lang/Integer;)Landroid/util/AtomicFile;
    .registers 2

    .line 365
    const-string p1, "companion_device_system_data_transfer_requests.xml"

    invoke-static {p0, p1}, Lcom/android/server/companion/utils/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dhcwOYHvES4JdjQCRjCFzRfdBsg(Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;ILjava/util/ArrayList;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->lambda$removeRequestsByAssociationId$3(ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iWecMWNrVgfRpSSC_C8Ths2ai1Y(Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;ILjava/util/ArrayList;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->lambda$writeRequest$1(ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j7eLeRTTVdy1vREABg8b4iWB1Nc(Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Ljava/util/List;Ljava/io/FileOutputStream;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->lambda$writeRequestsToStore$5(Ljava/util/List;Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ktAFHwYJAMDBKTL8f-wTA3vqkHk(Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;I)Ljava/util/ArrayList;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->lambda$readRequestsFromCache$4(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tG8_5sF4Tu-2lZgyk3TuZyKj63U(ILandroid/companion/datatransfer/SystemDataTransferRequest;)Z
    .registers 2

    .line 149
    invoke-virtual {p1}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getAssociationId()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    .line 104
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 12

    .line 313
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_3
    const-string v1, "System Data Transfer Requests (Cached): "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 315
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_18

    .line 316
    const-string p0, "<empty>\n"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_69

    :catchall_16
    move-exception p0

    goto :goto_6b

    .line 318
    :cond_18
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/4 v1, 0x0

    move v2, v1

    .line 319
    :goto_1f
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_69

    .line 320
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 321
    iget-object v4, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_3a
    if-ge v6, v5, :cond_66

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 322
    const-string v8, "  u"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    .line 323
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    const-string v9, " -> "

    .line 324
    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    .line 325
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v7

    const/16 v8, 0xa

    .line 326
    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_3a

    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 330
    :cond_69
    :goto_69
    monitor-exit v0

    return-void

    :goto_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_16

    throw p0
.end method

.method public getBackupPayload(I)[B
    .registers 2

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object p0

    .line 162
    monitor-enter p0

    .line 163
    :try_start_5
    invoke-static {p0}, Lcom/android/server/companion/utils/DataStoreUtils;->fileToByteArray(Landroid/util/AtomicFile;)[B

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    .line 164
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public final getStorageFileForUser(I)Landroid/util/AtomicFile;
    .registers 4

    .line 364
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {p0, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/AtomicFile;

    return-object p0
.end method

.method public final synthetic lambda$readRequestsFromCache$4(I)Ljava/util/ArrayList;
    .registers 2

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsFromStore(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$removeRequestsByAssociationId$3(ILjava/util/ArrayList;)V
    .registers 3

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequestsToStore(ILjava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$writeRequest$1(ILjava/util/ArrayList;)V
    .registers 3

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequestsToStore(ILjava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$writeRequestsToStore$5(Ljava/util/List;Ljava/io/FileOutputStream;)V
    .registers 5

    .line 297
    invoke-static {p2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p2

    .line 298
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 300
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 301
    invoke-virtual {p0, p2, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequestsToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/Collection;)V

    .line 302
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public final readRequestFromXml(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/companion/datatransfer/SystemDataTransferRequest;
    .registers 5

    .line 262
    const-string/jumbo p0, "request"

    invoke-static {p1, p0}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 266
    const-string p0, "association_id"

    invoke-static {p1, p0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result p0

    .line 267
    const-string v0, "data_type"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 268
    const-string/jumbo v1, "is_user_consented"

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    const/4 p0, 0x0

    return-object p0

    .line 272
    :cond_21
    new-instance v0, Landroid/companion/datatransfer/PermissionSyncRequest;

    invoke-direct {v0, p0}, Landroid/companion/datatransfer/PermissionSyncRequest;-><init>(I)V

    .line 273
    invoke-virtual {v0, p2}, Landroid/companion/datatransfer/PermissionSyncRequest;->setUserId(I)V

    .line 274
    invoke-virtual {v0, p1}, Landroid/companion/datatransfer/PermissionSyncRequest;->setUserConsented(Z)V

    return-object v0

    .line 263
    :cond_2d
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "XML doesn\'t have start tag: request"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readRequestsByAssociationId(II)Ljava/util/List;
    .registers 7

    .line 111
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsFromCache(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 113
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_27

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_12
    :goto_12
    if-ge v1, v0, :cond_26

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 117
    invoke-virtual {v2}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getAssociationId()I

    move-result v3

    if-ne v3, p2, :cond_12

    .line 118
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_26
    return-object p1

    :catchall_27
    move-exception p0

    .line 113
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final readRequestsFromCache(I)Ljava/util/ArrayList;
    .registers 8

    .line 185
    const-string v0, "CDM_SystemDataTransferRequestStore"

    iget-object v1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_39

    .line 187
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;I)V

    .line 188
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 190
    :try_start_17
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_21} :catch_2f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_17 .. :try_end_21} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_17 .. :try_end_21} :catch_23

    move-object v1, v2

    goto :goto_34

    .line 198
    :catch_23
    const-string v2, "Reading SystemDataTransferRequest from disk timed out."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 195
    :catch_29
    const-string v2, "Error occurred while reading SystemDataTransferRequest from disk."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 192
    :catch_2f
    const-string v2, "Thread reading SystemDataTransferRequest from disk is interrupted."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_34
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    :cond_39
    return-object v1
.end method

.method public readRequestsFromPayload([BI)Ljava/util/List;
    .registers 5

    .line 172
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_5} :catch_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_21

    .line 173
    :try_start_5
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p1

    .line 174
    const-string/jumbo v1, "requests"

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;I)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    .line 177
    :try_start_13
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_16} :catch_21
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_21

    return-object p0

    :catchall_17
    move-exception p0

    .line 172
    :try_start_18
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception p1

    :try_start_1d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    throw p0
    :try_end_21
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_21} :catch_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_21

    :catch_21
    move-exception p0

    .line 178
    const-string p1, "CDM_SystemDataTransferRequestStore"

    const-string p2, "Error while reading requests file"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final readRequestsFromStore(I)Ljava/util/ArrayList;
    .registers 6

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 214
    const-string v1, "CDM_SystemDataTransferRequestStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading SystemDataTransferRequests for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    monitor-enter v0

    .line 220
    :try_start_2b
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_45

    .line 221
    const-string p0, "CDM_SystemDataTransferRequestStore"

    const-string p1, "File does not exist -> Abort"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2b .. :try_end_42} :catchall_43

    return-object p0

    :catchall_43
    move-exception p0

    goto :goto_7b

    .line 224
    :cond_45
    :try_start_45
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_49
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_49} :catch_5d
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_5d
    .catchall {:try_start_45 .. :try_end_49} :catchall_43

    .line 225
    :try_start_49
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 226
    const-string/jumbo v3, "requests"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, v2, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;I)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_57
    .catchall {:try_start_49 .. :try_end_57} :catchall_61

    if-eqz v1, :cond_5f

    .line 229
    :try_start_59
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_59 .. :try_end_5c} :catch_5d
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d
    .catchall {:try_start_59 .. :try_end_5c} :catchall_43

    goto :goto_5f

    :catch_5d
    move-exception p0

    goto :goto_6d

    :cond_5f
    :goto_5f
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_43

    return-object p0

    :catchall_61
    move-exception p0

    if-eqz v1, :cond_6c

    .line 224
    :try_start_64
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_6c

    :catchall_68
    move-exception p1

    :try_start_69
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6c
    :goto_6c
    throw p0
    :try_end_6d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_69 .. :try_end_6d} :catch_5d
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6d} :catch_5d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_43

    .line 230
    :goto_6d
    :try_start_6d
    const-string p1, "CDM_SystemDataTransferRequestStore"

    const-string v1, "Error while reading requests file"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object p0

    .line 233
    :goto_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_6d .. :try_end_7c} :catchall_43

    throw p0
.end method

.method public final readRequestsFromXml(Lcom/android/modules/utils/TypedXmlPullParser;I)Ljava/util/ArrayList;
    .registers 6

    .line 240
    const-string/jumbo v0, "requests"

    invoke-static {p1, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    :cond_e
    :goto_e
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 248
    invoke-static {p1, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    return-object v1

    .line 251
    :cond_18
    const-string/jumbo v2, "request"

    invoke-static {p1, v2}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestFromXml(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/companion/datatransfer/SystemDataTransferRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 241
    :cond_29
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "The XML doesn\'t have start tag: requests"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeRequestsByAssociationId(II)V
    .registers 6

    .line 143
    const-string v0, "CDM_SystemDataTransferRequestStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing system data transfer requests for userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", associationId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_21
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsFromCache(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 149
    new-instance v2, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 150
    iget-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 151
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_3e

    .line 153
    iget-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;ILjava/util/ArrayList;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_3e
    move-exception p0

    .line 151
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V
    .registers 6

    .line 125
    const-string v0, "CDM_SystemDataTransferRequestStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to store."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_1e
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsFromCache(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 130
    new-instance v2, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda0;-><init>(Landroid/companion/datatransfer/SystemDataTransferRequest;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 132
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 134
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_3e

    .line 136
    iget-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;ILjava/util/ArrayList;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_3e
    move-exception p0

    .line 134
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public final writeRequestToXml(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/companion/datatransfer/SystemDataTransferRequest;)V
    .registers 6

    const/4 p0, 0x0

    .line 346
    const-string/jumbo v0, "request"

    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 348
    const-string v1, "association_id"

    invoke-virtual {p2}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getAssociationId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 349
    const-string v1, "data_type"

    invoke-virtual {p2}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getDataType()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 350
    const-string/jumbo v1, "is_user_consented"

    invoke-virtual {p2}, Landroid/companion/datatransfer/SystemDataTransferRequest;->isUserConsented()Z

    move-result p2

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 352
    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeRequestsToStore(ILjava/util/List;)V
    .registers 7

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 290
    const-string v1, "CDM_SystemDataTransferRequestStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing SystemDataTransferRequests for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to file="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    monitor-enter v0

    .line 296
    :try_start_2b
    new-instance p1, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Ljava/util/List;)V

    invoke-static {v0, p1}, Lcom/android/server/companion/utils/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 304
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final writeRequestsToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/Collection;)V
    .registers 6

    const/4 v0, 0x0

    .line 335
    const-string/jumbo v1, "requests"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 338
    invoke-virtual {p0, p1, v2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequestToXml(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/companion/datatransfer/SystemDataTransferRequest;)V

    goto :goto_b

    .line 341
    :cond_1b
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
