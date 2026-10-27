.class public Lcom/android/server/companion/SystemDataTransferRequestDataStore;
.super Ljava/lang/Object;
.source "SystemDataTransferRequestDataStore.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "companion_device_system_data_transfer_requests.xml"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final XML_ATTR_ASSOCIATION_ID:Ljava/lang/String; = "association_id"

.field private static final XML_ATTR_IS_PERMISSION_SYNC_ALL_PACKAGES:Ljava/lang/String; = "is_permission_sync_all_packages"

.field private static final XML_ATTR_PERMISSION_SYNC_PACKAGES:Ljava/lang/String; = "permission_sync_packages"

.field private static final XML_TAG_LIST:Ljava/lang/String; = "list"

.field private static final XML_TAG_REQUEST:Ljava/lang/String; = "request"

.field private static final XML_TAG_REQUESTS:Ljava/lang/String; = "requests"


# instance fields
.field private final mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    const-class v0, Lcom/android/server/companion/SystemDataTransferRequestDataStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private getStorageFileForUser(I)Landroid/util/AtomicFile;
    .registers 5
    .param p1, "userId"    # I

    .line 223
    iget-object v0, p0, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/SystemDataTransferRequestDataStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/companion/SystemDataTransferRequestDataStore$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    return-object v0
.end method

.method static synthetic lambda$getStorageFileForUser$1(ILjava/lang/Integer;)Landroid/util/AtomicFile;
    .registers 3
    .param p0, "userId"    # I
    .param p1, "u"    # Ljava/lang/Integer;

    .line 224
    const-string v0, "companion_device_system_data_transfer_requests.xml"

    invoke-static {p0, v0}, Lcom/android/server/companion/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    return-object v0
.end method

.method private readRequest(Landroid/util/TypedXmlPullParser;)Landroid/companion/SystemDataTransferRequest;
    .registers 7
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 145
    const-string v0, "association_id"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, "associationId":I
    const-string/jumbo v1, "is_permission_sync_all_packages"

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    .line 148
    .local v1, "isPermissionSyncAllPackages":Z
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v2, "permissionSyncPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "list"

    invoke-static {p1, v3}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 151
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 152
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lcom/android/internal/util/XmlUtils;->readThisListXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 156
    :cond_31
    new-instance v3, Landroid/companion/SystemDataTransferRequest;

    invoke-direct {v3, v0, v1, v2}, Landroid/companion/SystemDataTransferRequest;-><init>(IZLjava/util/List;)V

    return-object v3

    .line 142
    .end local v0    # "associationId":I
    .end local v1    # "isPermissionSyncAllPackages":Z
    .end local v2    # "permissionSyncPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_37
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "XML doesn\'t have start tag: request"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readRequests(Landroid/util/TypedXmlPullParser;)Ljava/util/List;
    .registers 5
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Landroid/companion/SystemDataTransferRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    const-string/jumbo v0, "requests"

    invoke-static {p1, v0}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/companion/SystemDataTransferRequest;>;"
    :cond_e
    :goto_e
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 130
    invoke-static {p1, v0}, Lcom/android/server/companion/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 136
    return-object v1

    .line 131
    :cond_18
    const-string/jumbo v2, "request"

    invoke-static {p1, v2}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->readRequest(Landroid/util/TypedXmlPullParser;)Landroid/companion/SystemDataTransferRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 123
    .end local v1    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/companion/SystemDataTransferRequest;>;"
    :cond_29
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "The XML doesn\'t have start tag: requests"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeRequest(Landroid/util/TypedXmlSerializer;Landroid/companion/SystemDataTransferRequest;)V
    .registers 9
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p2, "request"    # Landroid/companion/SystemDataTransferRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    const-string/jumbo v1, "request"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    invoke-virtual {p2}, Landroid/companion/SystemDataTransferRequest;->getAssociationId()I

    move-result v2

    const-string v3, "association_id"

    invoke-static {p1, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 202
    nop

    .line 203
    invoke-virtual {p2}, Landroid/companion/SystemDataTransferRequest;->isPermissionSyncAllPackages()Z

    move-result v2

    .line 202
    const-string/jumbo v3, "is_permission_sync_all_packages"

    invoke-static {p1, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 205
    :try_start_1b
    invoke-virtual {p2}, Landroid/companion/SystemDataTransferRequest;->getPermissionSyncPackages()Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "permission_sync_packages"

    invoke-static {v2, v3, p1}, Lcom/android/internal/util/XmlUtils;->writeListXml(Ljava/util/List;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V
    :try_end_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_25} :catch_26

    .line 210
    goto :goto_47

    .line 207
    :catch_26
    move-exception v2

    .line 208
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v3, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing permission sync packages into XML. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 209
    invoke-virtual {p2}, Landroid/companion/SystemDataTransferRequest;->getPermissionSyncPackages()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_47
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    return-void
.end method

.method private writeRequests(Landroid/util/TypedXmlSerializer;Ljava/util/Collection;)V
    .registers 7
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/util/Collection<",
            "Landroid/companion/SystemDataTransferRequest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    .local p2, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/companion/SystemDataTransferRequest;>;"
    const/4 v0, 0x0

    const-string/jumbo v1, "requests"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/SystemDataTransferRequest;

    .line 191
    .local v3, "request":Landroid/companion/SystemDataTransferRequest;
    invoke-direct {p0, p1, v3}, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->writeRequest(Landroid/util/TypedXmlSerializer;Landroid/companion/SystemDataTransferRequest;)V

    .line 192
    .end local v3    # "request":Landroid/companion/SystemDataTransferRequest;
    goto :goto_b

    .line 194
    :cond_1b
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    return-void
.end method


# virtual methods
.method synthetic lambda$writeRequestsForUser$0$com-android-server-companion-SystemDataTransferRequestDataStore(Ljava/util/List;Ljava/io/FileOutputStream;)V
    .registers 6
    .param p1, "requests"    # Ljava/util/List;
    .param p2, "out"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    invoke-static {p2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 177
    .local v0, "serializer":Landroid/util/TypedXmlSerializer;
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 179
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 180
    invoke-direct {p0, v0, p1}, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->writeRequests(Landroid/util/TypedXmlSerializer;Ljava/util/Collection;)V

    .line 181
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 182
    return-void
.end method

.method readRequestsForUser(I)Ljava/util/List;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/companion/SystemDataTransferRequest;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 97
    .local v0, "file":Landroid/util/AtomicFile;
    sget-object v1, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading SystemDataTransferRequests for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 98
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    monitor-enter v0

    .line 103
    :try_start_2f
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_44

    .line 104
    const-string v2, "File does not exist -> Abort"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_77

    return-object v1

    .line 107
    :cond_44
    :try_start_44
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_48
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_48} :catch_69
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_48} :catch_69
    .catchall {:try_start_44 .. :try_end_48} :catchall_77

    .line 108
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_48
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    .line 109
    .local v2, "parser":Landroid/util/TypedXmlPullParser;
    const-string/jumbo v3, "requests"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0, v2}, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->readRequests(Landroid/util/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v3
    :try_end_56
    .catchall {:try_start_48 .. :try_end_56} :catchall_5d

    .line 112
    if-eqz v1, :cond_5b

    :try_start_58
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_5b} :catch_69
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_69
    .catchall {:try_start_58 .. :try_end_5b} :catchall_77

    :cond_5b
    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_77

    .line 111
    return-object v3

    .line 107
    .end local v2    # "parser":Landroid/util/TypedXmlPullParser;
    :catchall_5d
    move-exception v2

    if-eqz v1, :cond_68

    :try_start_60
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_68

    :catchall_64
    move-exception v3

    :try_start_65
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/companion/SystemDataTransferRequestDataStore;
    .end local p1    # "userId":I
    :cond_68
    :goto_68
    throw v2
    :try_end_69
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_65 .. :try_end_69} :catch_69
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_69} :catch_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_77

    .line 112
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "file":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/companion/SystemDataTransferRequestDataStore;
    .restart local p1    # "userId":I
    :catch_69
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6a
    sget-object v2, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while reading requests file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_77
    move-exception v1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_6a .. :try_end_79} :catchall_77

    throw v1
.end method

.method writeRequestsForUser(ILjava/util/List;)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/companion/SystemDataTransferRequest;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p2, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/companion/SystemDataTransferRequest;>;"
    invoke-direct {p0, p1}, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 169
    .local v0, "file":Landroid/util/AtomicFile;
    sget-object v1, Lcom/android/server/companion/SystemDataTransferRequestDataStore;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing SystemDataTransferRequests for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 170
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    monitor-enter v0

    .line 175
    :try_start_2f
    new-instance v1, Lcom/android/server/companion/SystemDataTransferRequestDataStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/companion/SystemDataTransferRequestDataStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/SystemDataTransferRequestDataStore;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/android/server/companion/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 183
    monitor-exit v0

    .line 184
    return-void

    .line 183
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_39

    throw v1
.end method
