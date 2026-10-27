.class final Lcom/android/server/companion/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# static fields
.field private static final CURRENT_PERSISTENCE_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final FILE_NAME:Ljava/lang/String; = "companion_device_manager.xml"

.field private static final FILE_NAME_LEGACY:Ljava/lang/String; = "companion_device_manager_associations.xml"

.field private static final LEGACY_XML_ATTR_DEVICE:Ljava/lang/String; = "device"

.field private static final TAG:Ljava/lang/String; = "CompanionDevice_PersistentDataStore"

.field private static final XML_ATTR_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field private static final XML_ATTR_ID:Ljava/lang/String; = "id"

.field private static final XML_ATTR_LAST_TIME_CONNECTED:Ljava/lang/String; = "last_time_connected"

.field private static final XML_ATTR_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final XML_ATTR_NOTIFY_DEVICE_NEARBY:Ljava/lang/String; = "notify_device_nearby"

.field private static final XML_ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final XML_ATTR_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final XML_ATTR_PERSISTENCE_VERSION:Ljava/lang/String; = "persistence-version"

.field private static final XML_ATTR_PROFILE:Ljava/lang/String; = "profile"

.field private static final XML_ATTR_SELF_MANAGED:Ljava/lang/String; = "self_managed"

.field private static final XML_ATTR_TIME_APPROVED:Ljava/lang/String; = "time_approved"

.field private static final XML_TAG_ASSOCIATION:Ljava/lang/String; = "association"

.field private static final XML_TAG_ASSOCIATIONS:Ljava/lang/String; = "associations"

.field private static final XML_TAG_ID:Ljava/lang/String; = "id"

.field private static final XML_TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final XML_TAG_PREVIOUSLY_USED_IDS:Ljava/lang/String; = "previously-used-ids"

.field private static final XML_TAG_STATE:Ljava/lang/String; = "state"


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
.method constructor <init>()V
    .registers 2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/PersistentDataStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private static createAssociationInfoNoThrow(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;ZZJJ)Landroid/companion/AssociationInfo;
    .registers 27
    .param p0, "associationId"    # I
    .param p1, "userId"    # I
    .param p2, "appPackage"    # Ljava/lang/String;
    .param p3, "macAddress"    # Landroid/net/MacAddress;
    .param p4, "displayName"    # Ljava/lang/CharSequence;
    .param p5, "profile"    # Ljava/lang/String;
    .param p6, "selfManaged"    # Z
    .param p7, "notify"    # Z
    .param p8, "timeApproved"    # J
    .param p10, "lastTimeConnected"    # J

    .line 548
    const/4 v1, 0x0

    .line 550
    .local v1, "associationInfo":Landroid/companion/AssociationInfo;
    :try_start_1
    new-instance v0, Landroid/companion/AssociationInfo;

    move-object v2, v0

    move v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move-wide/from16 v13, p10

    invoke-direct/range {v2 .. v14}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;ZZJJ)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c

    move-object v1, v0

    .line 554
    goto :goto_1d

    .line 552
    :catch_1c
    move-exception v0

    .line 555
    :goto_1d
    return-object v1
.end method

.method private static getBaseLegacyStorageFileForUser(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 378
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "companion_device_manager_associations.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getStorageFileForUser(I)Landroid/util/AtomicFile;
    .registers 5
    .param p1, "userId"    # I

    .line 373
    iget-object v0, p0, Lcom/android/server/companion/PersistentDataStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    return-object v0
.end method

.method static synthetic lambda$getStorageFileForUser$1(ILjava/lang/Integer;)Landroid/util/AtomicFile;
    .registers 3
    .param p0, "userId"    # I
    .param p1, "u"    # Ljava/lang/Integer;

    .line 374
    const-string v0, "companion_device_manager.xml"

    invoke-static {p0, v0}, Lcom/android/server/companion/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$persistStateToFileLocked$0(Ljava/util/Collection;Ljava/util/Map;Ljava/io/FileOutputStream;)V
    .registers 8
    .param p0, "associations"    # Ljava/util/Collection;
    .param p1, "previouslyUsedIdsPerPackage"    # Ljava/util/Map;
    .param p2, "out"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 348
    invoke-static {p2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 349
    .local v0, "serializer":Landroid/util/TypedXmlSerializer;
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 352
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 353
    const-string/jumbo v1, "state"

    invoke-interface {v0, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 354
    const-string/jumbo v4, "persistence-version"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 357
    invoke-static {v0, p0}, Lcom/android/server/companion/PersistentDataStore;->writeAssociations(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Collection;)V

    .line 358
    invoke-static {v0, p1}, Lcom/android/server/companion/PersistentDataStore;->writePreviouslyUsedIds(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Map;)V

    .line 360
    invoke-interface {v0, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 362
    return-void
.end method

.method static synthetic lambda$writePreviouslyUsedIdsForPackage$2(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Integer;)V
    .registers 6
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "id"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 527
    const/4 v0, 0x0

    const-string/jumbo v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 528
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 529
    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 527
    return-void
.end method

.method private persistStateToFileLocked(Landroid/util/AtomicFile;Ljava/util/Collection;Ljava/util/Map;)V
    .registers 5
    .param p1, "file"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/AtomicFile;",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 347
    .local p2, "associations":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/companion/AssociationInfo;>;"
    .local p3, "previouslyUsedIdsPerPackage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v0, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p3}, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda2;-><init>(Ljava/util/Collection;Ljava/util/Map;)V

    invoke-static {p1, v0}, Lcom/android/server/companion/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 363
    return-void
.end method

.method private static readAssociationV0(Landroid/util/TypedXmlPullParser;IILjava/util/Collection;)V
    .registers 26
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "userId"    # I
    .param p2, "associationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "II",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 405
    .local p3, "out":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/companion/AssociationInfo;>;"
    move-object/from16 v0, p0

    const-string v1, "association"

    invoke-static {v0, v1}, Lcom/android/server/companion/PersistentDataStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 407
    const-string/jumbo v1, "package"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "appPackage":Ljava/lang/String;
    const-string v2, "device"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 410
    .local v15, "deviceAddress":Ljava/lang/String;
    if-eqz v1, :cond_57

    if-nez v15, :cond_1b

    move-object/from16 v2, p3

    goto :goto_59

    .line 412
    :cond_1b
    const-string/jumbo v2, "profile"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 413
    .local v16, "profile":Ljava/lang/String;
    const-string/jumbo v2, "notify_device_nearby"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v17

    .line 414
    .local v17, "notify":Z
    const-wide/16 v2, 0x0

    const-string/jumbo v4, "time_approved"

    invoke-static {v0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    .line 416
    .local v18, "timeApproved":J
    new-instance v13, Landroid/companion/AssociationInfo;

    .line 417
    invoke-static {v15}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-wide v20, 0x7fffffffffffffffL

    move-object v2, v13

    move/from16 v3, p2

    move/from16 v4, p1

    move-object v5, v1

    move-object/from16 v8, v16

    move/from16 v10, v17

    move-wide/from16 v11, v18

    move-object v0, v13

    move-wide/from16 v13, v20

    invoke-direct/range {v2 .. v14}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;ZZJJ)V

    .line 416
    move-object/from16 v2, p3

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 419
    return-void

    .line 410
    .end local v16    # "profile":Ljava/lang/String;
    .end local v17    # "notify":Z
    .end local v18    # "timeApproved":J
    :cond_57
    move-object/from16 v2, p3

    :goto_59
    return-void
.end method

.method private static readAssociationV1(Landroid/util/TypedXmlPullParser;ILjava/util/Collection;)V
    .registers 27
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "I",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    .local p2, "out":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/companion/AssociationInfo;>;"
    move-object/from16 v0, p0

    const-string v1, "association"

    invoke-static {v0, v1}, Lcom/android/server/companion/PersistentDataStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 439
    const-string/jumbo v1, "id"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    .line 440
    .local v1, "associationId":I
    const-string/jumbo v2, "profile"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 441
    .local v14, "profile":Ljava/lang/String;
    const-string/jumbo v2, "package"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 442
    .local v15, "appPackage":Ljava/lang/String;
    nop

    .line 443
    const-string/jumbo v2, "mac_address"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-static {v2}, Lcom/android/server/companion/PersistentDataStore;->stringToMacAddress(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v16

    .line 444
    .local v16, "macAddress":Landroid/net/MacAddress;
    const-string v2, "display_name"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 445
    .local v17, "displayName":Ljava/lang/String;
    const-string/jumbo v2, "self_managed"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v18

    .line 446
    .local v18, "selfManaged":Z
    const-string/jumbo v2, "notify_device_nearby"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v19

    .line 447
    .local v19, "notify":Z
    const-string/jumbo v2, "time_approved"

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v20

    .line 448
    .local v20, "timeApproved":J
    const-string/jumbo v2, "last_time_connected"

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v22

    .line 451
    .local v22, "lastTimeConnected":J
    move v2, v1

    move/from16 v3, p1

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object v7, v14

    move/from16 v8, v18

    move/from16 v9, v19

    move-wide/from16 v10, v20

    move-wide/from16 v12, v22

    invoke-static/range {v2 .. v13}, Lcom/android/server/companion/PersistentDataStore;->createAssociationInfoNoThrow(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;ZZJJ)Landroid/companion/AssociationInfo;

    move-result-object v2

    .line 454
    .local v2, "associationInfo":Landroid/companion/AssociationInfo;
    if-eqz v2, :cond_6e

    .line 455
    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 454
    :cond_6e
    move-object/from16 v3, p2

    .line 457
    :goto_70
    return-void
.end method

.method private static readAssociationsV0(Landroid/util/TypedXmlPullParser;ILjava/util/Collection;)V
    .registers 6
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "I",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    .local p2, "out":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/companion/AssociationInfo;>;"
    const-string v0, "associations"

    invoke-static {p0, v0}, Lcom/android/server/companion/PersistentDataStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 392
    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getFirstAssociationIdForUser(I)I

    move-result v1

    .line 394
    .local v1, "associationId":I
    :goto_9
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 395
    invoke-static {p0, v0}, Lcom/android/server/companion/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 400
    return-void

    .line 396
    :cond_13
    const-string v2, "association"

    invoke-static {p0, v2}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_9

    .line 398
    :cond_1c
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "associationId":I
    .local v2, "associationId":I
    invoke-static {p0, p1, v1, p2}, Lcom/android/server/companion/PersistentDataStore;->readAssociationV0(Landroid/util/TypedXmlPullParser;IILjava/util/Collection;)V

    move v1, v2

    goto :goto_9
.end method

.method private static readAssociationsV1(Landroid/util/TypedXmlPullParser;ILjava/util/Collection;)V
    .registers 5
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "I",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    .local p2, "out":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/companion/AssociationInfo;>;"
    const-string v0, "associations"

    invoke-static {p0, v0}, Lcom/android/server/companion/PersistentDataStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 427
    :goto_5
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 428
    invoke-static {p0, v0}, Lcom/android/server/companion/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 433
    return-void

    .line 429
    :cond_f
    const-string v1, "association"

    invoke-static {p0, v1}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_5

    .line 431
    :cond_18
    invoke-static {p0, p1, p2}, Lcom/android/server/companion/PersistentDataStore;->readAssociationV1(Landroid/util/TypedXmlPullParser;ILjava/util/Collection;)V

    goto :goto_5
.end method

.method private static readPreviouslyUsedIdsV1(Landroid/util/TypedXmlPullParser;Ljava/util/Map;)V
    .registers 8
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    .local p1, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    const-string/jumbo v0, "previously-used-ids"

    invoke-static {p0, v0}, Lcom/android/server/companion/PersistentDataStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 464
    :goto_6
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 465
    invoke-static {p0, v0}, Lcom/android/server/companion/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 483
    return-void

    .line 466
    :cond_10
    const-string/jumbo v1, "package"

    invoke-static {p0, v1}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_6

    .line 468
    :cond_1a
    const-string/jumbo v2, "package_name"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 472
    .local v3, "usedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_26
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 473
    invoke-static {p0, v1}, Lcom/android/server/companion/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 481
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "usedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    goto :goto_6

    .line 474
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "usedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_33
    const-string/jumbo v4, "id"

    invoke-static {p0, v4}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    goto :goto_26

    .line 476
    :cond_3d
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextToken()I

    .line 477
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 478
    .local v4, "id":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 479
    .end local v4    # "id":I
    goto :goto_26
.end method

.method private readStateFromFileLocked(ILandroid/util/AtomicFile;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;)I
    .registers 10
    .param p1, "userId"    # I
    .param p2, "file"    # Landroid/util/AtomicFile;
    .param p3, "rootTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/AtomicFile;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)I"
        }
    .end annotation

    .line 313
    .local p4, "associationsOut":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/companion/AssociationInfo;>;"
    .local p5, "previouslyUsedIdsPerPackageOut":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4} :catch_51
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_51

    .line 314
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_4
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 316
    .local v1, "parser":Landroid/util/TypedXmlPullParser;
    invoke-static {v1, p3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 317
    const-string/jumbo v2, "persistence-version"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 318
    .local v2, "version":I
    packed-switch v2, :pswitch_data_5c

    goto :goto_3e

    .line 324
    :cond_17
    :goto_17
    :pswitch_17
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 325
    const-string v3, "associations"

    invoke-static {v1, v3}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 326
    invoke-static {v1, p1, p4}, Lcom/android/server/companion/PersistentDataStore;->readAssociationsV1(Landroid/util/TypedXmlPullParser;ILjava/util/Collection;)V

    goto :goto_17

    .line 327
    :cond_26
    const-string/jumbo v3, "previously-used-ids"

    invoke-static {v1, v3}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 328
    invoke-static {v1, p5}, Lcom/android/server/companion/PersistentDataStore;->readPreviouslyUsedIdsV1(Landroid/util/TypedXmlPullParser;Ljava/util/Map;)V

    goto :goto_17

    .line 329
    :cond_33
    invoke-static {v1, p3}, Lcom/android/server/companion/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 330
    goto :goto_3e

    .line 320
    :pswitch_3a
    invoke-static {v1, p1, p4}, Lcom/android/server/companion/PersistentDataStore;->readAssociationsV0(Landroid/util/TypedXmlPullParser;ILjava/util/Collection;)V
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_45

    .line 321
    nop

    .line 335
    :goto_3e
    nop

    .line 336
    if-eqz v0, :cond_44

    :try_start_41
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_44} :catch_51
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_51

    .line 335
    :cond_44
    return v2

    .line 313
    .end local v1    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v2    # "version":I
    :catchall_45
    move-exception v1

    if-eqz v0, :cond_50

    :try_start_48
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_50

    :catchall_4c
    move-exception v2

    :try_start_4d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/companion/PersistentDataStore;
    .end local p1    # "userId":I
    .end local p2    # "file":Landroid/util/AtomicFile;
    .end local p3    # "rootTag":Ljava/lang/String;
    .end local p4    # "associationsOut":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/companion/AssociationInfo;>;"
    .end local p5    # "previouslyUsedIdsPerPackageOut":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    :cond_50
    :goto_50
    throw v1
    :try_end_51
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4d .. :try_end_51} :catch_51
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_51} :catch_51

    .line 336
    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/companion/PersistentDataStore;
    .restart local p1    # "userId":I
    .restart local p2    # "file":Landroid/util/AtomicFile;
    .restart local p3    # "rootTag":Ljava/lang/String;
    .restart local p4    # "associationsOut":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/companion/AssociationInfo;>;"
    .restart local p5    # "previouslyUsedIdsPerPackageOut":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    :catch_51
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CompanionDevice_PersistentDataStore"

    const-string v2, "Error while reading associations file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    const/4 v1, -0x1

    return v1

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_17
    .end packed-switch
.end method

.method private static requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 535
    invoke-static {p0, p1}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 536
    :cond_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Should be at the start of \"associations\" tag"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static stringToMacAddress(Ljava/lang/String;)Landroid/net/MacAddress;
    .registers 2
    .param p0, "address"    # Ljava/lang/String;

    .line 541
    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method private static writeAssociation(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V
    .registers 8
    .param p0, "parent"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "a"    # Landroid/companion/AssociationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    const/4 v0, 0x0

    const-string v1, "association"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 498
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    const-string/jumbo v4, "id"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 499
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "profile"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 500
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "package"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 501
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mac_address"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 502
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "display_name"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 503
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v3

    const-string/jumbo v4, "self_managed"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 504
    nop

    .line 505
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v3

    .line 504
    const-string/jumbo v4, "notify_device_nearby"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 506
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    move-result-wide v3

    const-string/jumbo v5, "time_approved"

    invoke-static {v2, v5, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 507
    nop

    .line 508
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getLastTimeConnectedMs()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 507
    const-string/jumbo v5, "last_time_connected"

    invoke-static {v2, v5, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 510
    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 511
    return-void
.end method

.method private static writeAssociations(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Collection;)V
    .registers 7
    .param p0, "parent"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    .local p1, "associations":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/companion/AssociationInfo;>;"
    const/4 v0, 0x0

    const-string v1, "associations"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 488
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/AssociationInfo;

    .line 489
    .local v4, "association":Landroid/companion/AssociationInfo;
    invoke-static {v2, v4}, Lcom/android/server/companion/PersistentDataStore;->writeAssociation(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V

    .line 490
    .end local v4    # "association":Landroid/companion/AssociationInfo;
    goto :goto_b

    .line 491
    :cond_1b
    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    return-void
.end method

.method private static writePreviouslyUsedIds(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Map;)V
    .registers 9
    .param p0, "parent"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    .local p1, "previouslyUsedIdsPerPackage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    const/4 v0, 0x0

    const-string/jumbo v1, "previously-used-ids"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 516
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 517
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-static {v2, v5, v6}, Lcom/android/server/companion/PersistentDataStore;->writePreviouslyUsedIdsForPackage(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Set;)V

    .line 518
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    goto :goto_10

    .line 519
    :cond_2c
    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 520
    return-void
.end method

.method private static writePreviouslyUsedIdsForPackage(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Set;)V
    .registers 7
    .param p0, "parent"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    .local p2, "previouslyUsedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 526
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v3, "package_name"

    invoke-static {v2, v3, p1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 527
    new-instance v3, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda1;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-static {p2, v3}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 530
    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 531
    return-void
.end method


# virtual methods
.method persistStateForUser(ILjava/util/Collection;Ljava/util/Map;)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 298
    .local p2, "associations":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/companion/AssociationInfo;>;"
    .local p3, "previouslyUsedIdsPerPackage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    const-string v0, "CompanionDevice_PersistentDataStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing associations for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to disk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0, p1}, Lcom/android/server/companion/PersistentDataStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 305
    .local v0, "file":Landroid/util/AtomicFile;
    monitor-enter v0

    .line 306
    :try_start_23
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/companion/PersistentDataStore;->persistStateToFileLocked(Landroid/util/AtomicFile;Ljava/util/Collection;Ljava/util/Map;)V

    .line 307
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method readStateForUser(ILjava/util/Collection;Ljava/util/Map;)V
    .registers 14
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 234
    .local p2, "associationsOut":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/companion/AssociationInfo;>;"
    .local p3, "previouslyUsedIdsPerPackageOut":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    const-string v0, "CompanionDevice_PersistentDataStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading associations for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from disk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0, p1}, Lcom/android/server/companion/PersistentDataStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 240
    .local v0, "file":Landroid/util/AtomicFile;
    monitor-enter v0

    .line 241
    const/4 v1, 0x0

    .line 244
    .local v1, "legacyBaseFile":Ljava/io/File;
    :try_start_24
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_45

    .line 247
    invoke-static {p1}, Lcom/android/server/companion/PersistentDataStore;->getBaseLegacyStorageFileForUser(I)Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 251
    monitor-exit v0

    return-void

    .line 254
    :cond_3b
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 255
    .local v2, "readFrom":Landroid/util/AtomicFile;
    const-string v3, "associations"

    move-object v8, v2

    move-object v9, v3

    .local v3, "rootTag":Ljava/lang/String;
    goto :goto_4b

    .line 257
    .end local v2    # "readFrom":Landroid/util/AtomicFile;
    .end local v3    # "rootTag":Ljava/lang/String;
    :cond_45
    move-object v2, v0

    .line 258
    .restart local v2    # "readFrom":Landroid/util/AtomicFile;
    const-string/jumbo v3, "state"

    move-object v8, v2

    move-object v9, v3

    .line 262
    .end local v2    # "readFrom":Landroid/util/AtomicFile;
    .local v8, "readFrom":Landroid/util/AtomicFile;
    .local v9, "rootTag":Ljava/lang/String;
    :goto_4b
    move-object v2, p0

    move v3, p1

    move-object v4, v8

    move-object v5, v9

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/companion/PersistentDataStore;->readStateFromFileLocked(ILandroid/util/AtomicFile;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;)I

    move-result v2

    .line 271
    .local v2, "version":I
    if-nez v1, :cond_5a

    const/4 v3, 0x1

    if-ge v2, v3, :cond_62

    .line 277
    :cond_5a
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/companion/PersistentDataStore;->persistStateToFileLocked(Landroid/util/AtomicFile;Ljava/util/Collection;Ljava/util/Map;)V

    .line 279
    if-eqz v1, :cond_62

    .line 282
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 285
    .end local v1    # "legacyBaseFile":Ljava/io/File;
    .end local v2    # "version":I
    .end local v8    # "readFrom":Landroid/util/AtomicFile;
    .end local v9    # "rootTag":Ljava/lang/String;
    :cond_62
    monitor-exit v0

    .line 286
    return-void

    .line 285
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_24 .. :try_end_66} :catchall_64

    throw v1
.end method

.method readStateForUsers(Ljava/util/List;Ljava/util/Set;Landroid/util/SparseArray;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/companion/AssociationInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;>;)V"
        }
    .end annotation

    .line 192
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local p2, "allAssociationsOut":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/AssociationInfo;>;"
    .local p3, "previouslyUsedIdsPerUserOut":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 193
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 195
    .local v2, "userId":I
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 199
    .local v3, "previouslyUsedIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 200
    .local v4, "associationsForUser":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/AssociationInfo;>;"
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/companion/PersistentDataStore;->readStateForUser(ILjava/util/Collection;Ljava/util/Map;)V

    .line 204
    invoke-static {v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getFirstAssociationIdForUser(I)I

    move-result v5

    .line 205
    .local v5, "firstAllowedId":I
    invoke-static {v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getLastAssociationIdForUser(I)I

    move-result v6

    .line 206
    .local v6, "lastAllowedId":I
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/companion/AssociationInfo;

    .line 207
    .local v8, "association":Landroid/companion/AssociationInfo;
    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getId()I

    move-result v9

    .line 208
    .local v9, "id":I
    if-lt v9, v5, :cond_3f

    if-le v9, v6, :cond_7b

    .line 209
    :cond_3f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrong association ID assignment: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Association belongs to u"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " and thus its ID should be within ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] range."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "CompanionDevice_PersistentDataStore"

    invoke-static {v11, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v8    # "association":Landroid/companion/AssociationInfo;
    .end local v9    # "id":I
    :cond_7b
    goto :goto_2b

    .line 217
    :cond_7c
    invoke-interface {p2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 220
    invoke-virtual {p3, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 221
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "userId":I
    .end local v3    # "previouslyUsedIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .end local v4    # "associationsForUser":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/AssociationInfo;>;"
    .end local v5    # "firstAllowedId":I
    .end local v6    # "lastAllowedId":I
    goto :goto_4

    .line 222
    :cond_83
    return-void
.end method
