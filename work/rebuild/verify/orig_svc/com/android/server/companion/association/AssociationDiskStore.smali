.class public final Lcom/android/server/companion/association/AssociationDiskStore;
.super Ljava/lang/Object;
.source "AssociationDiskStore.java"


# instance fields
.field public final mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public static synthetic $r8$lambda$0QKtIp2TLTUbzaZrI1CW9x255a4(ILjava/lang/Integer;)Landroid/util/AtomicFile;
    .registers 2

    .line 417
    const-string p1, "companion_device_manager.xml"

    invoke-static {p0, p1}, Lcom/android/server/companion/utils/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TnrFtwENJfNpOrWI1q61kXcsqzI(Lcom/android/server/companion/association/Associations;Ljava/io/FileOutputStream;)V
    .registers 6

    .line 395
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p1

    .line 396
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 397
    const-string v0, "UTF-8"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    .line 398
    const-string/jumbo v2, "state"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 399
    const-string/jumbo v3, "persistence-version"

    invoke-static {p1, v3, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 401
    invoke-static {p1, p0}, Lcom/android/server/companion/association/AssociationDiskStore;->writeAssociations(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/companion/association/Associations;)V

    .line 402
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public static synthetic $r8$lambda$pfoZln9Xdz-m2W4C7yoN47XzFzE(Ljava/lang/String;Landroid/companion/AssociationInfo;Ljava/io/FileOutputStream;)V
    .registers 5

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v0, 0x20

    .line 339
    invoke-virtual {p2, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 340
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 341
    invoke-virtual {p2, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 342
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/association/AssociationDiskStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static byteArrayToIcon([B)Landroid/graphics/drawable/Icon;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 742
    :cond_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 743
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createFromStream(Ljava/io/InputStream;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public static deserializePackagesToNotify(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 757
    :cond_4
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 758
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getBaseLegacyStorageFileForUser(I)Ljava/io/File;
    .registers 3

    .line 445
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "companion_device_manager_associations.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static iconToByteArray(Landroid/graphics/drawable/Icon;)[B
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 732
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 733
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Icon;->writeToStream(Ljava/io/OutputStream;)V

    .line 734
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static readAssociationV0(Lcom/android/modules/utils/TypedXmlPullParser;II)Landroid/companion/AssociationInfo;
    .registers 10

    .line 479
    const-string v0, "association"

    invoke-static {p0, v0}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 481
    const-string/jumbo v0, "package"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    const-string v1, "device"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    const-string/jumbo v2, "profile"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 484
    const-string/jumbo v3, "notify_device_nearby"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 485
    const-string/jumbo v4, "time_approved"

    const-wide/16 v5, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 487
    new-instance p0, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {p0, p2, p1, v0}, Landroid/companion/AssociationInfo$Builder;-><init>(IILjava/lang/String;)V

    .line 488
    invoke-static {v1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/companion/AssociationInfo$Builder;->setDeviceMacAddress(Landroid/net/MacAddress;)Landroid/companion/AssociationInfo$Builder;

    move-result-object p0

    .line 489
    invoke-virtual {p0, v2}, Landroid/companion/AssociationInfo$Builder;->setDeviceProfile(Ljava/lang/String;)Landroid/companion/AssociationInfo$Builder;

    move-result-object p0

    .line 490
    invoke-virtual {p0, v3}, Landroid/companion/AssociationInfo$Builder;->setNotifyOnDeviceNearby(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object p0

    .line 491
    invoke-virtual {p0, v4, v5}, Landroid/companion/AssociationInfo$Builder;->setTimeApproved(J)Landroid/companion/AssociationInfo$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 492
    invoke-virtual {p0, p1}, Landroid/companion/AssociationInfo$Builder;->setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;

    move-result-object p0

    .line 493
    invoke-virtual {p0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static readAssociationV1(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/companion/AssociationInfo;
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 531
    const-string v2, "association"

    invoke-static {v0, v2}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 533
    const-string v3, "id"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 534
    const-string/jumbo v4, "profile"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 535
    const-string/jumbo v5, "package"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 536
    const-string/jumbo v6, "mac_address"

    .line 537
    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 536
    invoke-static {v6}, Lcom/android/server/companion/association/AssociationDiskStore;->stringToMacAddress(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v6

    .line 538
    const-string v7, "display_name"

    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 539
    const-string/jumbo v8, "self_managed"

    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    .line 540
    const-string/jumbo v9, "notify_device_nearby"

    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    .line 541
    const-string/jumbo v10, "revoked"

    const/4 v11, 0x0

    invoke-static {v0, v10, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    .line 542
    const-string/jumbo v12, "pending"

    invoke-static {v0, v12, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v12

    .line 543
    const-string/jumbo v13, "time_approved"

    const-wide/16 v14, 0x0

    invoke-static {v0, v13, v14, v15}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    .line 544
    const-string/jumbo v15, "last_time_connected"

    move/from16 v17, v12

    const-wide v11, 0x7fffffffffffffffL

    invoke-static {v0, v15, v11, v12}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    .line 546
    const-string/jumbo v15, "system_data_sync_flags"

    move-wide/from16 v18, v11

    const/4 v11, 0x0

    invoke-static {v0, v15, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 548
    const-string/jumbo v15, "transport_flags"

    invoke-static {v0, v15, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 550
    const-string v11, "device_icon"

    .line 551
    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v11

    .line 550
    invoke-static {v11}, Lcom/android/server/companion/association/AssociationDiskStore;->byteArrayToIcon([B)Landroid/graphics/drawable/Icon;

    move-result-object v11

    .line 556
    new-instance v15, Landroid/os/PersistableBundle;

    invoke-direct {v15}, Landroid/os/PersistableBundle;-><init>()V

    const/16 v16, 0x0

    move-object/from16 v20, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v20

    .line 558
    :goto_89
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 559
    invoke-static {v0, v2}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_dc

    .line 575
    new-instance v0, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v0, v3, v1, v5}, Landroid/companion/AssociationInfo$Builder;-><init>(IILjava/lang/String;)V

    .line 576
    invoke-virtual {v0, v6}, Landroid/companion/AssociationInfo$Builder;->setDeviceMacAddress(Landroid/net/MacAddress;)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    .line 577
    invoke-virtual {v0, v7}, Landroid/companion/AssociationInfo$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    .line 578
    invoke-virtual {v0, v4}, Landroid/companion/AssociationInfo$Builder;->setDeviceProfile(Ljava/lang/String;)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    .line 579
    invoke-virtual {v0, v8}, Landroid/companion/AssociationInfo$Builder;->setSelfManaged(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    .line 580
    invoke-virtual {v0, v9}, Landroid/companion/AssociationInfo$Builder;->setNotifyOnDeviceNearby(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    .line 581
    invoke-virtual {v0, v10}, Landroid/companion/AssociationInfo$Builder;->setRevoked(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    move/from16 v1, v17

    .line 582
    invoke-virtual {v0, v1}, Landroid/companion/AssociationInfo$Builder;->setPending(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    .line 583
    invoke-virtual {v0, v13, v14}, Landroid/companion/AssociationInfo$Builder;->setTimeApproved(J)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    move-wide/from16 v1, v18

    .line 584
    invoke-virtual {v0, v1, v2}, Landroid/companion/AssociationInfo$Builder;->setLastTimeConnected(J)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    .line 585
    invoke-virtual {v0, v12}, Landroid/companion/AssociationInfo$Builder;->setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    .line 586
    invoke-virtual {v0, v11}, Landroid/companion/AssociationInfo$Builder;->setDeviceIcon(Landroid/graphics/drawable/Icon;)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    .line 587
    invoke-virtual {v0, v15}, Landroid/companion/AssociationInfo$Builder;->setDeviceId(Landroid/companion/DeviceId;)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    move-object/from16 v1, v20

    .line 588
    invoke-virtual {v0, v1}, Landroid/companion/AssociationInfo$Builder;->setPackagesToNotify(Ljava/util/List;)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    move-object/from16 v1, v16

    .line 589
    invoke-virtual {v0, v1}, Landroid/companion/AssociationInfo$Builder;->setMetadata(Landroid/os/PersistableBundle;)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v0

    return-object v0

    :cond_dc
    move-object/from16 v21, v20

    move-object/from16 v20, v16

    move-object/from16 v16, v21

    move/from16 v21, v3

    .line 562
    const-string v3, "device_id"

    invoke-static {v0, v3}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 563
    invoke-static {v0}, Lcom/android/server/companion/association/AssociationDiskStore;->readDeviceId(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/companion/DeviceId;

    move-result-object v15

    move-object/from16 v3, v20

    :goto_f2
    move-object/from16 v20, v16

    move-object/from16 v16, v3

    :goto_f6
    move/from16 v3, v21

    goto :goto_89

    .line 564
    :cond_f9
    const-string/jumbo v3, "packages_to_notify"

    invoke-static {v0, v3}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 565
    invoke-static {v0}, Lcom/android/server/companion/association/AssociationDiskStore;->readPackagesToNotify(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v16, v20

    move-object/from16 v20, v3

    goto :goto_f6

    .line 566
    :cond_10b
    const-string/jumbo v3, "metadata"

    invoke-static {v0, v3}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_119

    .line 567
    invoke-static {v0}, Lcom/android/server/companion/association/AssociationDiskStore;->readMetadata(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    goto :goto_f2

    .line 569
    :cond_119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected tag "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " inside <"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> for user "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CDM_AssociationDiskStore"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v0, v20

    move-object/from16 v20, v16

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    goto :goto_f6
.end method

.method public static readAssociationsFromFile(ILandroid/util/AtomicFile;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;
    .registers 3

    .line 349
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4} :catch_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_1a

    .line 350
    :try_start_4
    invoke-static {p0, p1, p2}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsFromInputStream(ILjava/io/InputStream;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_e

    if-eqz p1, :cond_d

    .line 351
    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_d} :catch_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_1a

    :cond_d
    return-object p0

    :catchall_e
    move-exception p0

    if-eqz p1, :cond_19

    .line 349
    :try_start_11
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception p1

    :try_start_16
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19
    :goto_19
    throw p0
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_1a} :catch_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception p0

    .line 352
    const-string p1, "CDM_AssociationDiskStore"

    const-string p2, "Error while reading associations file"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    new-instance p0, Lcom/android/server/companion/association/Associations;

    invoke-direct {p0}, Lcom/android/server/companion/association/Associations;-><init>()V

    return-object p0
.end method

.method public static readAssociationsFromInputStream(ILjava/io/InputStream;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;
    .registers 6

    .line 361
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p1

    .line 362
    invoke-static {p1, p2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 364
    const-string/jumbo v0, "persistence-version"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 365
    new-instance v1, Lcom/android/server/companion/association/Associations;

    invoke-direct {v1}, Lcom/android/server/companion/association/Associations;-><init>()V

    if-eqz v0, :cond_5f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1a

    return-object v1

    .line 373
    :cond_1a
    :goto_1a
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 374
    invoke-static {p1, p2}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    return-object v1

    .line 377
    :cond_24
    const-string v0, "associations"

    invoke-static {p1, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 378
    invoke-static {p1, p0}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsV1(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/server/companion/association/Associations;

    move-result-object v1

    goto :goto_1a

    .line 380
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected tag "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " inside <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CDM_AssociationDiskStore"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1a

    .line 369
    :cond_5f
    invoke-static {p1, p0}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsV0(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/server/companion/association/Associations;

    move-result-object p0

    return-object p0
.end method

.method public static readAssociationsFromPayload([BI)Lcom/android/server/companion/association/Associations;
    .registers 3

    .line 436
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_5} :catch_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_1a

    .line 437
    :try_start_5
    const-string/jumbo p0, "state"

    invoke-static {p1, v0, p0}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsFromInputStream(ILjava/io/InputStream;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 438
    :try_start_c
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_f} :catch_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_1a

    return-object p0

    :catchall_10
    move-exception p0

    .line 436
    :try_start_11
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception p1

    :try_start_16
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw p0
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_1a} :catch_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception p0

    .line 439
    const-string p1, "CDM_AssociationDiskStore"

    const-string v0, "Error while reading associations file"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    new-instance p0, Lcom/android/server/companion/association/Associations;

    invoke-direct {p0}, Lcom/android/server/companion/association/Associations;-><init>()V

    return-object p0
.end method

.method public static readAssociationsV0(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/server/companion/association/Associations;
    .registers 6

    .line 451
    const-string v0, "associations"

    invoke-static {p0, v0}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 459
    invoke-static {p1}, Lcom/android/server/companion/utils/AssociationUtils;->getFirstAssociationIdForUser(I)I

    move-result v1

    .line 460
    new-instance v2, Lcom/android/server/companion/association/Associations;

    invoke-direct {v2}, Lcom/android/server/companion/association/Associations;-><init>()V

    const/4 v3, 0x0

    .line 461
    invoke-virtual {v2, v3}, Lcom/android/server/companion/association/Associations;->setVersion(I)V

    .line 464
    :goto_12
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 465
    invoke-static {p0, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    add-int/lit8 v1, v1, -0x1

    .line 471
    invoke-virtual {v2, v1}, Lcom/android/server/companion/association/Associations;->setMaxId(I)V

    return-object v2

    .line 466
    :cond_21
    const-string v3, "association"

    invoke-static {p0, v3}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_12

    :cond_2a
    add-int/lit8 v3, v1, 0x1

    .line 468
    invoke-static {p0, p1, v1}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationV0(Lcom/android/modules/utils/TypedXmlPullParser;II)Landroid/companion/AssociationInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/companion/association/Associations;->addAssociation(Landroid/companion/AssociationInfo;)V

    move v1, v3

    goto :goto_12
.end method

.method public static readAssociationsV1(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/server/companion/association/Associations;
    .registers 7

    .line 499
    const-string v0, "associations"

    invoke-static {p0, v0}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 503
    const-string/jumbo v1, "max-id"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 504
    new-instance v2, Lcom/android/server/companion/association/Associations;

    invoke-direct {v2}, Lcom/android/server/companion/association/Associations;-><init>()V

    const/4 v3, 0x1

    .line 505
    invoke-virtual {v2, v3}, Lcom/android/server/companion/association/Associations;->setVersion(I)V

    .line 508
    :goto_16
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 509
    invoke-static {p0, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 523
    invoke-virtual {v2, v1}, Lcom/android/server/companion/association/Associations;->setMaxId(I)V

    return-object v2

    .line 512
    :cond_23
    const-string v3, "association"

    invoke-static {p0, v3}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 513
    invoke-static {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationV1(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/companion/AssociationInfo;

    move-result-object v3

    .line 514
    invoke-virtual {v2, v3}, Lcom/android/server/companion/association/Associations;->addAssociation(Landroid/companion/AssociationInfo;)V

    .line 515
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_16

    .line 517
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " inside <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDM_AssociationDiskStore"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_16
.end method

.method public static readDeviceId(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/companion/DeviceId;
    .registers 4

    .line 605
    const-string v0, "custom_device_id"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    const-string/jumbo v1, "mac_address_device_id"

    .line 608
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-static {v1}, Lcom/android/server/companion/association/AssociationDiskStore;->stringToMacAddress(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v1

    .line 609
    const-string/jumbo v2, "key_device_id"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_1e

    .line 611
    invoke-static {}, Lcom/android/server/companion/utils/Utils;->generateRandom128BitKey()[B

    move-result-object v2

    .line 615
    :cond_1e
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 617
    new-instance p0, Landroid/companion/DeviceId;

    invoke-direct {p0, v0, v1, v2}, Landroid/companion/DeviceId;-><init>(Ljava/lang/String;Landroid/net/MacAddress;[B)V

    return-object p0
.end method

.method public static readMetadata(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;
    .registers 3

    .line 623
    :try_start_0
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object p0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 625
    const-string v0, "CDM_AssociationDiskStore"

    const-string v1, "Error while reading metadata of association"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 627
    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    return-object p0
.end method

.method public static readPackagesToNotify(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .registers 2

    .line 595
    const-string/jumbo v0, "package_to_notify"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 600
    invoke-static {v0}, Lcom/android/server/companion/association/AssociationDiskStore;->deserializePackagesToNotify(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 4

    .line 717
    invoke-static {p0, p1}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 718
    :cond_7
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Should be at the start of \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" tag"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static serializePackagesToNotify(Ljava/util/List;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    .line 748
    const-string p0, ""

    return-object p0

    .line 750
    :cond_5
    const-string/jumbo v0, "|"

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringToMacAddress(Ljava/lang/String;)Landroid/net/MacAddress;
    .registers 1

    if-eqz p0, :cond_7

    .line 723
    invoke-static {p0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static writeAssociation(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V
    .registers 7

    const/4 v0, 0x0

    .line 643
    const-string v1, "association"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 645
    const-string v2, "id"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 646
    const-string/jumbo v2, "profile"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 647
    const-string/jumbo v2, "package"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 648
    const-string/jumbo v2, "mac_address"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 649
    const-string v2, "display_name"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 650
    const-string/jumbo v2, "self_managed"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 651
    const-string/jumbo v2, "notify_device_nearby"

    .line 652
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v3

    .line 651
    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 653
    const-string/jumbo v2, "revoked"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isRevoked()Z

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 654
    const-string/jumbo v2, "pending"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isPending()Z

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 655
    const-string/jumbo v2, "time_approved"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    move-result-wide v3

    invoke-static {p0, v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 656
    const-string/jumbo v2, "last_time_connected"

    .line 657
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getLastTimeConnectedMs()J

    move-result-wide v3

    .line 656
    invoke-static {p0, v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 658
    const-string/jumbo v2, "system_data_sync_flags"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 659
    const-string/jumbo v2, "transport_flags"

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getTransportFlags()I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 661
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/companion/association/AssociationDiskStore;->iconToByteArray(Landroid/graphics/drawable/Icon;)[B

    move-result-object v2

    .line 660
    const-string v3, "device_icon"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 663
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v2

    if-eqz v2, :cond_9d

    .line 664
    invoke-static {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->writeDeviceId(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V

    .line 666
    :cond_9d
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackagesToNotify()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackagesToNotify()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b0

    .line 667
    invoke-static {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->writePackagesToNotify(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V

    .line 669
    :cond_b0
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getMetadata()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_bd

    .line 670
    invoke-static {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->writeMetadata(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V

    .line 672
    :cond_bd
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeAssociations(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/companion/association/Associations;)V
    .registers 6

    const/4 v0, 0x0

    .line 633
    const-string v1, "associations"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 634
    const-string/jumbo v2, "max-id"

    invoke-virtual {p1}, Lcom/android/server/companion/association/Associations;->getMaxId()I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 635
    invoke-virtual {p1}, Lcom/android/server/companion/association/Associations;->getAssociations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 636
    invoke-static {p0, v2}, Lcom/android/server/companion/association/AssociationDiskStore;->writeAssociation(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V

    goto :goto_19

    .line 638
    :cond_29
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeDeviceId(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V
    .registers 6

    const/4 v0, 0x0

    .line 685
    const-string v1, "device_id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 689
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v2

    invoke-virtual {v2}, Landroid/companion/DeviceId;->getCustomId()Ljava/lang/String;

    move-result-object v2

    .line 686
    const-string v3, "custom_device_id"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 694
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v2

    invoke-virtual {v2}, Landroid/companion/DeviceId;->getMacAddressAsString()Ljava/lang/String;

    move-result-object v2

    .line 691
    const-string/jumbo v3, "mac_address_device_id"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 699
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object p1

    invoke-virtual {p1}, Landroid/companion/DeviceId;->getKey()[B

    move-result-object p1

    .line 696
    const-string/jumbo v2, "key_device_id"

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 701
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeMetadata(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V
    .registers 7

    const/4 v0, 0x0

    .line 706
    const-string/jumbo v1, "metadata"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 708
    :try_start_8
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getMetadata()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_2b

    :catch_10
    move-exception v2

    .line 710
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while writing metadata of association "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "CDM_AssociationDiskStore"

    invoke-static {v3, p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 712
    :goto_2b
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writePackagesToNotify(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V
    .registers 5

    const/4 v0, 0x0

    .line 677
    const-string/jumbo v1, "packages_to_notify"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 678
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackagesToNotify()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/companion/association/AssociationDiskStore;->serializePackagesToNotify(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 679
    const-string/jumbo v2, "package_to_notify"

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 680
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public getBackupPayload(I)[B
    .registers 5

    .line 424
    const-string v0, "CDM_AssociationDiskStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching stored state data for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from disk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object p0

    .line 427
    monitor-enter p0

    .line 428
    :try_start_20
    invoke-static {p0}, Lcom/android/server/companion/utils/DataStoreUtils;->fileToByteArray(Landroid/util/AtomicFile;)[B

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_26
    move-exception p1

    .line 429
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public final getStorageFileForUser(I)Landroid/util/AtomicFile;
    .registers 4

    .line 416
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationDiskStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/AtomicFile;

    return-object p0
.end method

.method public final readAssociationsByUser(I)Lcom/android/server/companion/association/Associations;
    .registers 6

    .line 242
    const-string v0, "CDM_AssociationDiskStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading associations for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from disk."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 248
    monitor-enter v0

    .line 252
    :try_start_20
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_45

    .line 253
    invoke-static {p1}, Lcom/android/server/companion/association/AssociationDiskStore;->getBaseLegacyStorageFileForUser(I)Ljava/io/File;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 255
    new-instance p0, Lcom/android/server/companion/association/Associations;

    invoke-direct {p0}, Lcom/android/server/companion/association/Associations;-><init>()V

    monitor-exit v0

    return-object p0

    :catchall_3b
    move-exception p0

    goto :goto_61

    .line 258
    :cond_3d
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 259
    const-string v3, "associations"

    goto :goto_4a

    .line 262
    :cond_45
    const-string/jumbo v3, "state"

    const/4 v1, 0x0

    move-object v2, v0

    .line 265
    :goto_4a
    invoke-static {p1, v2, v3}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsFromFile(ILandroid/util/AtomicFile;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;

    move-result-object p1

    if-nez v1, :cond_57

    .line 267
    invoke-virtual {p1}, Lcom/android/server/companion/association/Associations;->getVersion()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_5f

    .line 270
    :cond_57
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->writeAssociationsToFile(Landroid/util/AtomicFile;Lcom/android/server/companion/association/Associations;)V

    if-eqz v1, :cond_5f

    .line 274
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 277
    :cond_5f
    monitor-exit v0

    return-object p1

    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_20 .. :try_end_62} :catchall_3b

    throw p0
.end method

.method public readAssociationsByUsers(Ljava/util/List;)Ljava/util/Map;
    .registers 5

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 227
    invoke-virtual {p0, v2}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsByUser(I)Lcom/android/server/companion/association/Associations;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_21
    return-object v0
.end method

.method public readLastRemovedAssociation(I)Ljava/lang/String;
    .registers 9

    .line 300
    const-string p0, " for user="

    const-string v0, "CDM_AssociationDiskStore"

    const-string/jumbo v1, "last_removed_association.txt"

    invoke-static {p1, v1}, Lcom/android/server/companion/utils/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 304
    :try_start_11
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_15} :catch_54
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_39

    .line 305
    :goto_15
    :try_start_15
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_23

    int-to-char v5, v5

    .line 306
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_15

    :catchall_21
    move-exception v2

    goto :goto_2e

    .line 308
    :cond_23
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_21

    .line 310
    :try_start_2a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2d} :catch_54
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_39

    return-object v2

    :goto_2e
    if-eqz v4, :cond_38

    .line 304
    :try_start_30
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v4

    :try_start_35
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_38
    :goto_38
    throw v2
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_39} :catch_54
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_39} :catch_39

    .line 314
    :catch_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t read file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 311
    :catch_54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t exist."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public writeAssociationsForUser(ILcom/android/server/companion/association/Associations;)V
    .registers 6

    .line 286
    const-string v0, "CDM_AssociationDiskStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing associations for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to disk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object p1

    .line 291
    monitor-enter p1

    .line 292
    :try_start_20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationDiskStore;->writeAssociationsToFile(Landroid/util/AtomicFile;Lcom/android/server/companion/association/Associations;)V

    .line 293
    monitor-exit p1

    return-void

    :catchall_25
    move-exception p0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final writeAssociationsToFile(Landroid/util/AtomicFile;Lcom/android/server/companion/association/Associations;)V
    .registers 3

    .line 394
    new-instance p0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/association/Associations;)V

    invoke-static {p1, p0}, Lcom/android/server/companion/utils/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method public writeLastRemovedAssociation(Landroid/companion/AssociationInfo;Ljava/lang/String;)V
    .registers 4

    .line 323
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Writing last removed association="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to disk..."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CDM_AssociationDiskStore"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance p0, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {p0, p1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0, v0}, Landroid/companion/AssociationInfo$Builder;->setDeviceMacAddress(Landroid/net/MacAddress;)Landroid/companion/AssociationInfo$Builder;

    move-result-object p0

    .line 330
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_34

    .line 331
    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/companion/AssociationInfo$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroid/companion/AssociationInfo$Builder;

    .line 333
    :cond_34
    invoke-virtual {p0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p0

    .line 336
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    const-string/jumbo v0, "last_removed_association.txt"

    .line 335
    invoke-static {p1, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p1

    .line 337
    new-instance v0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p0}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/companion/AssociationInfo;)V

    invoke-static {p1, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method
