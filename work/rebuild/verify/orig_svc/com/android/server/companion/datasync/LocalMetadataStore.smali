.class public Lcom/android/server/companion/datasync/LocalMetadataStore;
.super Ljava/lang/Object;
.source "LocalMetadataStore.java"


# instance fields
.field public final mCachedPerUser:Landroid/util/SparseArray;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mLock:Ljava/lang/Object;

.field public final mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public static synthetic $r8$lambda$4K2aVIpsDN7XWnbo1k42tjjxfjc(ILjava/lang/Integer;)Landroid/util/AtomicFile;
    .registers 2

    .line 197
    const-string p1, "cdm_local_metadata.xml"

    invoke-static {p0, p1}, Lcom/android/server/companion/utils/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Yus9e1VDq_4hk1CmW9FUN0sQSKg(Lcom/android/server/companion/datasync/LocalMetadataStore;ILandroid/os/PersistableBundle;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datasync/LocalMetadataStore;->lambda$setMetadataForUser$0(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a0nTJXWanmYa_q4MfJOqfh_KDXA(Landroid/os/PersistableBundle;Ljava/io/FileOutputStream;)V
    .registers 4

    .line 130
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p1

    .line 131
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 132
    const-string v0, "bundle"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 134
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public static synthetic $r8$lambda$rdo3U340m_KnKJaH3Hu415GosGk(Lcom/android/server/companion/datasync/LocalMetadataStore;I)Landroid/os/PersistableBundle;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datasync/LocalMetadataStore;->lambda$readMetadataFromCache$1(I)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datasync/LocalMetadataStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datasync/LocalMetadataStore;->mLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datasync/LocalMetadataStore;->mCachedPerUser:Landroid/util/SparseArray;

    .line 73
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/datasync/LocalMetadataStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public getBackupPayload(I)[B
    .registers 5

    .line 165
    const-string v0, "CDM_LocalMetadataStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting backup payload for user=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datasync/LocalMetadataStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object p0

    .line 167
    monitor-enter p0

    .line 168
    :try_start_20
    invoke-static {p0}, Lcom/android/server/companion/utils/DataStoreUtils;->fileToByteArray(Landroid/util/AtomicFile;)[B

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_26
    move-exception p1

    .line 169
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public getMetadataForUser(I)Landroid/os/PersistableBundle;
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/android/server/companion/datasync/LocalMetadataStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datasync/LocalMetadataStore;->readMetadataFromCache(I)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 96
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final getStorageFileForUser(I)Landroid/util/AtomicFile;
    .registers 4

    .line 196
    iget-object p0, p0, Lcom/android/server/companion/datasync/LocalMetadataStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/datasync/LocalMetadataStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/companion/datasync/LocalMetadataStore$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/AtomicFile;

    return-object p0
.end method

.method public final synthetic lambda$readMetadataFromCache$1(I)Landroid/os/PersistableBundle;
    .registers 2

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datasync/LocalMetadataStore;->readMetadataFromStore(I)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$setMetadataForUser$0(ILandroid/os/PersistableBundle;)V
    .registers 3

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datasync/LocalMetadataStore;->writeMetadataToStore(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public final readMetadataFromCache(I)Landroid/os/PersistableBundle;
    .registers 8

    .line 102
    const-string v0, "CDM_LocalMetadataStore"

    iget-object v1, p0, Lcom/android/server/companion/datasync/LocalMetadataStore;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    if-nez v1, :cond_46

    .line 104
    iget-object v2, p0, Lcom/android/server/companion/datasync/LocalMetadataStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/android/server/companion/datasync/LocalMetadataStore$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lcom/android/server/companion/datasync/LocalMetadataStore$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/datasync/LocalMetadataStore;I)V

    .line 105
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 107
    :try_start_17
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_21} :catch_27
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_17 .. :try_end_21} :catch_25
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_17 .. :try_end_21} :catch_23

    move-object v1, v2

    goto :goto_3a

    :catch_23
    move-exception v2

    goto :goto_29

    :catch_25
    move-exception v2

    goto :goto_2f

    :catch_27
    move-exception v2

    goto :goto_35

    .line 113
    :goto_29
    const-string v3, "Reading metadata from disk timed out."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    .line 111
    :goto_2f
    const-string v3, "Error occurred while reading metadata from disk."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    .line 109
    :goto_35
    const-string v3, "Thread reading metadata from disk is interrupted."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3a
    if-nez v1, :cond_41

    .line 116
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 118
    :cond_41
    iget-object p0, p0, Lcom/android/server/companion/datasync/LocalMetadataStore;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_46
    return-object v1
.end method

.method public final readMetadataFromInputStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;
    .registers 2

    .line 186
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p0

    .line 187
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 188
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object p0
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    .line 190
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public readMetadataFromPayload([B)Landroid/os/PersistableBundle;
    .registers 3

    .line 174
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_17

    .line 175
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/android/server/companion/datasync/LocalMetadataStore;->readMetadataFromInputStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 176
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_17

    return-object p0

    :catchall_d
    move-exception p0

    .line 174
    :try_start_e
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception p1

    :try_start_13
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw p0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_17

    :catch_17
    move-exception p0

    .line 177
    const-string p1, "CDM_LocalMetadataStore"

    const-string v0, "Error while reading metadata from payload."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    return-object p0
.end method

.method public final readMetadataFromStore(I)Landroid/os/PersistableBundle;
    .registers 6

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datasync/LocalMetadataStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 143
    const-string v1, "CDM_LocalMetadataStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading metadata for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from file="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    monitor-enter v0

    .line 147
    :try_start_2b
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_45

    .line 148
    const-string p0, "CDM_LocalMetadataStore"

    const-string p1, "File does not exist -> Abort"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2b .. :try_end_42} :catchall_43

    return-object p0

    :catchall_43
    move-exception p0

    goto :goto_71

    .line 151
    :cond_45
    :try_start_45
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_53
    .catchall {:try_start_45 .. :try_end_49} :catchall_43

    .line 152
    :try_start_49
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datasync/LocalMetadataStore;->readMetadataFromInputStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object p0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_57

    if-eqz p1, :cond_55

    .line 153
    :try_start_4f
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53
    .catchall {:try_start_4f .. :try_end_52} :catchall_43

    goto :goto_55

    :catch_53
    move-exception p0

    goto :goto_63

    :cond_55
    :goto_55
    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_43

    return-object p0

    :catchall_57
    move-exception p0

    if-eqz p1, :cond_62

    .line 151
    :try_start_5a
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception p1

    :try_start_5f
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_62
    :goto_62
    throw p0
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_63} :catch_53
    .catchall {:try_start_5f .. :try_end_63} :catchall_43

    .line 154
    :goto_63
    :try_start_63
    const-string p1, "CDM_LocalMetadataStore"

    const-string v1, "Error while reading metadata file"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    monitor-exit v0

    return-object p0

    .line 157
    :goto_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_63 .. :try_end_72} :catchall_43

    throw p0
.end method

.method public setMetadataForUser(ILandroid/os/PersistableBundle;)V
    .registers 6

    .line 80
    const-string v0, "CDM_LocalMetadataStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting metadata for user=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/server/companion/datasync/LocalMetadataStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_26
    iget-object v1, p0, Lcom/android/server/companion/datasync/LocalMetadataStore;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_37

    .line 86
    iget-object v0, p0, Lcom/android/server/companion/datasync/LocalMetadataStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/companion/datasync/LocalMetadataStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/companion/datasync/LocalMetadataStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/datasync/LocalMetadataStore;ILandroid/os/PersistableBundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_37
    move-exception p0

    .line 84
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final writeMetadataToStore(ILandroid/os/PersistableBundle;)V
    .registers 6

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datasync/LocalMetadataStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object p0

    .line 125
    const-string v0, "CDM_LocalMetadataStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing metadata for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to file="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    monitor-enter p0

    .line 129
    :try_start_2b
    new-instance p1, Lcom/android/server/companion/datasync/LocalMetadataStore$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2}, Lcom/android/server/companion/datasync/LocalMetadataStore$$ExternalSyntheticLambda3;-><init>(Landroid/os/PersistableBundle;)V

    invoke-static {p0, p1}, Lcom/android/server/companion/utils/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 137
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_35

    throw p1
.end method
