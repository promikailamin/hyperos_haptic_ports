.class Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;
.super Ljava/lang/Object;
.source "PackageConfigPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PackageConfigPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteProcessItem"
.end annotation


# instance fields
.field final mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

.field final synthetic this$0:Lcom/android/server/wm/PackageConfigPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/PackageConfigPersister;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .registers 3
    .param p2, "record"    # Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 415
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->this$0:Lcom/android/server/wm/PackageConfigPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p2, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 417
    return-void
.end method

.method private saveToXml()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 457
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v1

    .line 459
    .local v1, "xmlSerializer":Landroid/util/TypedXmlSerializer;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 463
    const-string v2, "config"

    invoke-interface {v1, v3, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 464
    iget-object v4, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget-object v4, v4, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    const-string/jumbo v5, "package_name"

    invoke-interface {v1, v3, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 465
    iget-object v4, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget-object v4, v4, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    if-eqz v4, :cond_35

    .line 466
    iget-object v4, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget-object v4, v4, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "night_mode"

    invoke-interface {v1, v3, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 468
    :cond_35
    iget-object v4, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget-object v4, v4, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    if-eqz v4, :cond_48

    .line 469
    iget-object v4, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget-object v4, v4, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    .line 470
    invoke-virtual {v4}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v4

    .line 469
    const-string v5, "locale_list"

    invoke-interface {v1, v3, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 472
    :cond_48
    invoke-interface {v1, v3, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 473
    invoke-interface {v1}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 474
    invoke-interface {v1}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 476
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public process()V
    .registers 9

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "data":[B
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->this$0:Lcom/android/server/wm/PackageConfigPersister;

    invoke-static {v1}, Lcom/android/server/wm/PackageConfigPersister;->-$$Nest$fgetmLock(Lcom/android/server/wm/PackageConfigPersister;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 425
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->saveToXml()[B

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_11
    .catchall {:try_start_8 .. :try_end_c} :catchall_e

    move-object v0, v2

    .line 427
    goto :goto_12

    .line 429
    :catchall_e
    move-exception v2

    goto/16 :goto_b8

    .line 426
    :catch_11
    move-exception v2

    .line 428
    :goto_12
    :try_start_12
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->this$0:Lcom/android/server/wm/PackageConfigPersister;

    invoke-static {v2}, Lcom/android/server/wm/PackageConfigPersister;->-$$Nest$fgetmPendingWrite(Lcom/android/server/wm/PackageConfigPersister;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/PackageConfigPersister;->-$$Nest$mremoveRecord(Lcom/android/server/wm/PackageConfigPersister;Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    .line 429
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_e

    .line 430
    if-eqz v0, :cond_b7

    .line 432
    const/4 v1, 0x0

    .line 433
    .local v1, "file":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 435
    .local v2, "atomicFile":Landroid/util/AtomicFile;
    :try_start_22
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget v3, v3, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-static {v3}, Lcom/android/server/wm/PackageConfigPersister;->-$$Nest$smgetUserConfigsDir(I)Ljava/io/File;

    move-result-object v3

    .line 436
    .local v3, "userConfigsDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_5f

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_5f

    .line 437
    invoke-static {}, Lcom/android/server/wm/PackageConfigPersister;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure creating tasks directory for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget v6, v6, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 441
    :cond_5f
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget-object v7, v7, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_config.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 443
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v1, v4

    .line 444
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 445
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_8c} :catch_8d

    .line 451
    .end local v3    # "userConfigsDir":Ljava/io/File;
    goto :goto_b7

    .line 446
    :catch_8d
    move-exception v3

    .line 447
    .local v3, "e":Ljava/io/IOException;
    if-eqz v1, :cond_93

    .line 448
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 450
    :cond_93
    invoke-static {}, Lcom/android/server/wm/PackageConfigPersister;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for persisting. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .end local v1    # "file":Ljava/io/FileOutputStream;
    .end local v2    # "atomicFile":Landroid/util/AtomicFile;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_b7
    :goto_b7
    return-void

    .line 429
    :goto_b8
    :try_start_b8
    monitor-exit v1
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_e

    throw v2
.end method
