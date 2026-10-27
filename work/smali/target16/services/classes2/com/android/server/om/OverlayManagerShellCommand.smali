.class public final Lcom/android/server/om/OverlayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "OverlayManagerShellCommand.java"


# static fields
.field public static final TYPE_MAP:Ljava/util/Map;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInterface:Landroid/content/om/IOverlayManager;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v0, 0x1c

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x3

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, -0x1

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 69
    const-string v1, "color"

    const-string/jumbo v3, "string"

    const-string v5, "drawable"

    invoke-static/range {v1 .. v6}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/om/OverlayManagerShellCommand;->TYPE_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    return-void
.end method


# virtual methods
.method public final addOverlayValue(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    .line 408
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    .line 409
    sget-object v0, Lcom/android/server/om/OverlayManagerShellCommand;->TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x2

    const-string v4, "0x"

    if-eqz v1, :cond_20

    .line 410
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_33

    .line 412
    :cond_20
    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 413
    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v2}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result p3

    goto :goto_33

    .line 415
    :cond_2f
    invoke-static {p3}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result p3

    :goto_33
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3a

    .line 419
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    :cond_3a
    if-gez p3, :cond_53

    .line 421
    const-string/jumbo p3, "r"

    invoke-virtual {p0, p4, p3}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 422
    const-string p3, ".9.png"

    invoke-virtual {p4, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4f

    .line 423
    invoke-virtual {p1, p2, p0, p5}, Landroid/content/om/FabricatedOverlay;->setNinePatchResourceValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_69

    .line 425
    :cond_4f
    invoke-virtual {p1, p2, p0, p5}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_69

    .line 429
    :cond_53
    invoke-virtual {p4, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_62

    .line 430
    invoke-virtual {p4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_66

    .line 432
    :cond_62
    invoke-static {p4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result p0

    .line 434
    :goto_66
    invoke-virtual {p1, p2, p3, p0, p5}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    :goto_69
    const/4 p0, 0x0

    return p0
.end method

.method public final addOverlayValuesFromXml(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16

    .line 341
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 342
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p3

    const/4 v2, 0x1

    if-nez p3, :cond_16

    .line 344
    const-string p0, "Error: File does not exist"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 347
    :cond_16
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p3

    if-nez p3, :cond_22

    .line 348
    const-string p0, "Error: File is unreadable"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 351
    :cond_22
    :try_start_22
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_81
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_27} :catch_7d

    .line 352
    :try_start_27
    invoke-static {p3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 354
    :goto_2b
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_35

    if-eq v3, v2, :cond_35

    goto :goto_2b

    .line 358
    :cond_35
    const-string/jumbo v3, "overlay"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_3c
    :goto_3c
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v6, 0x0

    if-eq v3, v2, :cond_11f

    if-ne v3, v4, :cond_3c

    .line 361
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 362
    const-string v7, "item"

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6e

    .line 363
    const-string v6, "Error: Unexpected tag: %s at line %d"

    .line 364
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v3, v7}, [Ljava/lang/Object;

    move-result-object v3

    .line 363
    invoke-static {v6, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v7, p1

    move-object p1, p0

    goto/16 :goto_11b

    :catchall_6a
    move-exception v0

    move-object p0, v0

    goto/16 :goto_123

    .line 365
    :cond_6e
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->isEmptyElementTag()Z

    move-result v3

    if-nez v3, :cond_85

    .line 366
    const-string p0, "Error: item tag must be empty"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_27 .. :try_end_79} :catchall_6a

    .line 395
    :goto_79
    :try_start_79
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_81
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_7c} :catch_7d

    return v2

    :catch_7d
    move-exception v0

    move-object p0, v0

    goto/16 :goto_12d

    :catch_81
    move-exception v0

    move-object p0, v0

    goto/16 :goto_131

    .line 369
    :cond_85
    :try_start_85
    const-string/jumbo v3, "target"

    invoke-interface {v1, v5, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_ab

    .line 371
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error: target name missing at line "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 371
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_79

    :cond_ab
    const/16 v7, 0x2f

    .line 375
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_cc

    .line 377
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error: target malformed, missing \'/\' at line "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 377
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_79

    .line 381
    :cond_cc
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 382
    const-string/jumbo v6, "value"

    invoke-interface {v1, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 383
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f6

    .line 384
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error: value missing at line "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_79

    .line 387
    :cond_f6
    const-string v6, "config"

    invoke-interface {v1, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 388
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/om/OverlayManagerShellCommand;->addOverlayValue(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_116
    .catchall {:try_start_85 .. :try_end_116} :catchall_6a

    move-object p1, v6

    if-eqz p0, :cond_11b

    goto/16 :goto_79

    :cond_11b
    :goto_11b
    move-object p0, p1

    move-object p1, v7

    goto/16 :goto_3c

    .line 395
    :cond_11f
    :try_start_11f
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_81
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11f .. :try_end_122} :catch_7d

    return v6

    .line 351
    :goto_123
    :try_start_123
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_127

    goto :goto_12c

    :catchall_127
    move-exception v0

    move-object p1, v0

    :try_start_129
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12c
    throw p0
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12d} :catch_81
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_129 .. :try_end_12d} :catch_7d

    .line 399
    :goto_12d
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return v2

    .line 396
    :goto_131
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v2
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-nez p1, :cond_7

    .line 82
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 84
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 86
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_b8

    goto :goto_84

    :sswitch_13
    const-string v1, "fabricate"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 100
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runFabricate()I

    move-result p0

    return p0

    :catch_20
    move-exception p0

    goto :goto_89

    :catch_22
    move-exception p0

    goto/16 :goto_9e

    .line 86
    :sswitch_25
    const-string v1, "disable"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result p0

    return p0

    .line 86
    :sswitch_33
    const-string/jumbo v1, "partition-order"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 102
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runPartitionOrder()I

    move-result p0

    return p0

    .line 86
    :sswitch_41
    const-string v1, "list"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 88
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runList()I

    move-result p0

    return p0

    .line 86
    :sswitch_4e
    const-string v1, "enable-exclusive"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 94
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableExclusive()I

    move-result p0

    return p0

    .line 86
    :sswitch_5b
    const-string v1, "lookup"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 98
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runLookup()I

    move-result p0

    return p0

    .line 86
    :sswitch_68
    const-string v1, "enable"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    const/4 p1, 0x1

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result p0

    return p0

    .line 86
    :sswitch_76
    const-string/jumbo v1, "set-priority"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 96
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runSetPriority()I

    move-result p0

    return p0

    .line 104
    :cond_84
    :goto_84
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_88
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_88} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_88} :catch_20

    return p0

    .line 109
    :goto_89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b6

    .line 107
    :goto_9e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_b6
    const/4 p0, -0x1

    return p0

    :sswitch_data_b8
    .sparse-switch
        -0x5120f151 -> :sswitch_76
        -0x4d6ada7d -> :sswitch_68
        -0x41645686 -> :sswitch_5b
        -0x2f5d012c -> :sswitch_4e
        0x32b09e -> :sswitch_41
        0x43b156ab -> :sswitch_33
        0x639e22e8 -> :sswitch_25
        0x78377fcd -> :sswitch_13
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 2

    .line 116
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 117
    const-string v0, "Overlay manager (overlay) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const-string v0, "  dump [--verbose] [--user USER_ID] [[FIELD] PACKAGE[:NAME]]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    const-string v0, "    Print debugging information about the overlay manager."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    const-string v0, "    With optional parameters PACKAGE and NAME, limit output to the specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    const-string v0, "    overlay or target. With optional parameter FIELD, limit output to"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    const-string v0, "    the corresponding SettingsItem field. Field names are all lower case"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    const-string v0, "    and omit the m prefix, i.e. \'userid\' for SettingsItem.mUserId."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    const-string v0, "  list [--user USER_ID] [PACKAGE[:NAME]]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    const-string v0, "    Print information about target and overlay packages."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    const-string v0, "    Overlay packages are printed in priority order. With optional"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    const-string v0, "    parameters PACKAGE and NAME, limit output to the specified overlay or"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    const-string v0, "    target."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    const-string v0, "  enable [--user USER_ID] PACKAGE[:NAME]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    const-string v0, "    Enable overlay within or owned by PACKAGE with optional unique NAME."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    const-string v0, "  disable [--user USER_ID] PACKAGE[:NAME]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    const-string v0, "    Disable overlay within or owned by PACKAGE with optional unique NAME."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    const-string v0, "  enable-exclusive [--user USER_ID] [--category] PACKAGE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    const-string v0, "    Enable overlay within or owned by PACKAGE and disable all other overlays"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    const-string v0, "    for its target package. If the --category option is given, only disables"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    const-string v0, "    other overlays in the same category."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    const-string v0, "  set-priority [--user USER_ID] PACKAGE PARENT|lowest|highest"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    const-string v0, "    Change the priority of the overlay to be just higher than"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    const-string v0, "    the priority of PARENT If PARENT is the special keyword"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    const-string v0, "    \'lowest\', change priority of PACKAGE to the lowest priority."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    const-string v0, "    If PARENT is the special keyword \'highest\', change priority of"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    const-string v0, "    PACKAGE to the highest priority."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    const-string v0, "  lookup [--user USER_ID] [--verbose] PACKAGE-TO-LOAD PACKAGE:TYPE/NAME"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    const-string v0, "    Load a package and print the value of a given resource"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    const-string v0, "    applying the current configuration and enabled overlays."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    const-string v0, "    For a more fine-grained alternative, use \'idmap2 lookup\'."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    const-string v0, "  fabricate [--target-name OVERLAYABLE] --target PACKAGE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    const-string v0, "            --name NAME [--file FILE] "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    const-string v0, "            PACKAGE:TYPE/NAME ENCODED-TYPE-ID|TYPE-NAME ENCODED-VALUE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    const-string v0, "    Create an overlay from a single resource. Caller must be root. Example:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    const-string v0, "      fabricate --target android --name LighterGray \\"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    const-string v0, "                android:color/lighter_gray 0x1c 0xffeeeeee"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    const-string v0, "  partition-order"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    const-string v0, "    Print the partition order from overlay config and how this order"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    const-string v0, "    got established, by default or by /product/overlay/partition_order.xml"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V
    .registers 4

    .line 220
    iget p0, p2, Landroid/content/om/OverlayInfo;->state:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const/4 v0, 0x6

    if-eq p0, v0, :cond_e

    .line 229
    const-string p0, "---"

    goto :goto_13

    .line 224
    :cond_e
    const-string p0, "[x]"

    goto :goto_13

    .line 227
    :cond_11
    const-string p0, "[ ]"

    .line 232
    :goto_13
    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%s %s"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runEnableDisable(Z)I
    .registers 5

    .line 236
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x2

    .line 240
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 241
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 246
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error: Unknown option: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 243
    :cond_2c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    .line 251
    :cond_35
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/om/OverlayIdentifier;->fromString(Ljava/lang/String;)Landroid/content/om/OverlayIdentifier;

    move-result-object v0

    .line 252
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    new-instance v2, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v2}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 253
    invoke-virtual {v2, v0, p1, v1}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object p1

    .line 252
    invoke-interface {p0, p1}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runEnableExclusive()I
    .registers 7

    .line 440
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    .line 445
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_40

    .line 446
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    const-string v5, "--category"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    const-string v1, "--user"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 454
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 448
    :cond_35
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_6

    :cond_3e
    move v2, v4

    goto :goto_6

    .line 458
    :cond_40
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_4e

    .line 460
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {p0, v0, v1}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result p0

    :goto_4c
    xor-int/2addr p0, v4

    return p0

    .line 462
    :cond_4e
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {p0, v0, v4, v1}, Landroid/content/om/IOverlayManager;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result p0

    goto :goto_4c
.end method

.method public final runFabricate()I
    .registers 12

    .line 267
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 268
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    .line 269
    const-string p0, "Error: must be root to fabricate overlays through the shell"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_11
    const/4 v1, 0x0

    .line 278
    const-string v3, ""

    move-object v8, v1

    move-object v4, v3

    move-object v5, v4

    .line 279
    :goto_17
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    if-eqz v6, :cond_92

    .line 280
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v10, -0x1

    sparse-switch v7, :sswitch_data_fe

    :goto_29
    move v9, v10

    goto :goto_60

    :sswitch_2b
    const-string v7, "--target"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    goto :goto_29

    :cond_34
    const/4 v9, 0x4

    goto :goto_60

    :sswitch_36
    const-string v7, "--name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3f

    goto :goto_29

    :cond_3f
    const/4 v9, 0x3

    goto :goto_60

    :sswitch_41
    const-string v7, "--file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4a

    goto :goto_29

    :cond_4a
    const/4 v9, 0x2

    goto :goto_60

    :sswitch_4c
    const-string v7, "--config"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_55

    goto :goto_29

    :cond_55
    move v9, v2

    goto :goto_60

    :sswitch_57
    const-string v7, "--target-name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_60

    goto :goto_29

    :cond_60
    :goto_60
    packed-switch v9, :pswitch_data_114

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 282
    :pswitch_78
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    goto :goto_17

    .line 288
    :pswitch_7d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    goto :goto_17

    .line 291
    :pswitch_82
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    .line 294
    :pswitch_87
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    goto :goto_17

    .line 285
    :pswitch_8d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    goto :goto_17

    .line 302
    :cond_92
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 303
    const-string p0, "Error: Missing required arg \'--name\'"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 307
    :cond_9e
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 308
    const-string p0, "Error: Missing required arg \'--target\'"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_aa
    if-eqz v1, :cond_b8

    .line 311
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v6

    if-lez v6, :cond_b8

    .line 312
    const-string p0, "Error: When passing --file don\'t pass resource name, type, and value as well"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_b8
    move-object v0, v4

    .line 317
    new-instance v4, Landroid/content/om/FabricatedOverlay;

    invoke-direct {v4, v3, v0}, Landroid/content/om/FabricatedOverlay;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v4, v5}, Landroid/content/om/FabricatedOverlay;->setTargetOverlayable(Ljava/lang/String;)V

    .line 319
    const-string v3, "com.android.shell"

    invoke-virtual {v4, v3}, Landroid/content/om/FabricatedOverlay;->setOwningPackage(Ljava/lang/String;)V

    if-eqz v1, :cond_d1

    .line 321
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/om/OverlayManagerShellCommand;->addOverlayValuesFromXml(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_cf

    return v0

    :cond_cf
    move-object v3, p0

    goto :goto_eb

    .line 326
    :cond_d1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 327
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 328
    const-string v0, " "

    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekRemainingArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    .line 329
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/om/OverlayManagerShellCommand;->addOverlayValue(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_eb

    return v2

    .line 334
    :cond_eb
    :goto_eb
    iget-object p0, v3, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    new-instance v0, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v0}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 335
    invoke-virtual {v0, v4}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object v0

    .line 334
    invoke-interface {p0, v0}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    return v9

    :sswitch_data_fe
    .sparse-switch
        -0x37c14c59 -> :sswitch_57
        0x3e4cd0e2 -> :sswitch_4c
        0x4f742b1c -> :sswitch_41
        0x4f77b02b -> :sswitch_36
        0x5a8bbf31 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_87
        :pswitch_82
        :pswitch_7d
        :pswitch_78
    .end packed-switch
.end method

.method public final runList()I
    .registers 9

    .line 161
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, -0x2

    .line 166
    :goto_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 167
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 169
    :cond_30
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto :goto_9

    .line 177
    :cond_39
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_6f

    .line 179
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v4, v1, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 183
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 184
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v4, v1, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 186
    invoke-virtual {p0, v0, v1}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    :cond_57
    return v3

    .line 191
    :cond_58
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    move v2, v3

    :goto_60
    if-ge v2, v1, :cond_6e

    .line 196
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    invoke-virtual {p0, v0, v5}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    :cond_6e
    return v3

    .line 203
    :cond_6f
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v1, v2}, Landroid/content/om/IOverlayManager;->getAllOverlays(I)Ljava/util/Map;

    move-result-object v1

    .line 204
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 205
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 208
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v6, v3

    :goto_97
    if-ge v6, v5, :cond_a5

    .line 210
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/om/OverlayInfo;

    invoke-virtual {p0, v0, v7}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_97

    .line 212
    :cond_a5
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_7d

    :cond_a9
    return v3
.end method

.method public final runLookup()I
    .registers 12

    .line 495
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 496
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    move v4, v3

    .line 501
    :goto_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_45

    .line 502
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    const-string v7, "--user"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    const-string v4, "--verbose"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 510
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :cond_3a
    move v4, v6

    goto :goto_b

    .line 504
    :cond_3c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto :goto_b

    .line 515
    :cond_45
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 517
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 518
    const-string v8, "(.*?):(.*?)/(.*?)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 519
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 520
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_63

    .line 521
    const-string p0, "Error: bad resource name, doesn\'t match package:type/name"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    .line 525
    :cond_63
    const-string/jumbo v9, "runLookup"

    invoke-static {v2, v9}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser(ILjava/lang/String;)I

    move-result v2

    .line 528
    :try_start_6a
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mContext:Landroid/content/Context;

    .line 529
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {p0, v9, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 530
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 531
    invoke-virtual {p0, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_7c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6a .. :try_end_7c} :catch_12b

    .line 537
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 539
    :try_start_80
    invoke-virtual {v2, v6}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_a0

    .line 543
    :try_start_83
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 544
    invoke-virtual {p0, v7, v5, v3}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 545
    invoke-virtual {v5}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v9

    .line 546
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getLastResourceResolution()Ljava/lang/String;

    move-result-object v10

    .line 548
    invoke-virtual {p0, v7, v5, v6}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 549
    invoke-virtual {v5}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v4, :cond_a3

    .line 552
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a3

    :catchall_a0
    move-exception p0

    goto/16 :goto_127

    .line 555
    :cond_a3
    :goto_a3
    invoke-interface {v9, v5}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ad

    .line 556
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_c4

    .line 558
    :cond_ad
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " -> "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_83 .. :try_end_c4} :catch_c8
    .catchall {:try_start_83 .. :try_end_c4} :catchall_a0

    .line 592
    :goto_c4
    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    return v3

    .line 568
    :catch_c8
    :try_start_c8
    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x2

    .line 569
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    .line 570
    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 571
    invoke-virtual {p0, v8, v9, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_109

    .line 575
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    if-eqz v4, :cond_e9

    .line 577
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getLastResourceResolution()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    :cond_e9
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move v5, v3

    .line 580
    :goto_ef
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_102

    .line 581
    invoke-virtual {p0, v5, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 582
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_ef

    .line 584
    :cond_102
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_105
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c8 .. :try_end_105} :catch_10f
    .catchall {:try_start_c8 .. :try_end_105} :catchall_a0

    .line 592
    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    return v3

    .line 573
    :cond_109
    :try_start_109
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw p0
    :try_end_10f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_109 .. :try_end_10f} :catch_10f
    .catchall {:try_start_109 .. :try_end_10f} :catchall_a0

    .line 588
    :catch_10f
    :try_start_10f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: failed to get the resource "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_123
    .catchall {:try_start_10f .. :try_end_123} :catchall_a0

    .line 592
    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    return v6

    :goto_127
    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    .line 593
    throw p0

    .line 534
    :catch_12b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v5, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 533
    const-string v0, "Error: failed to get resources for package %s for user %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6
.end method

.method public final runPartitionOrder()I
    .registers 4

    .line 259
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Partition order (low to high priority): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v2}, Landroid/content/om/IOverlayManager;->getPartitionOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Established by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {p0}, Landroid/content/om/IOverlayManager;->isDefaultPartitionOrder()Z

    move-result p0

    if-eqz p0, :cond_33

    const-string p0, "default"

    goto :goto_35

    .line 262
    :cond_33
    const-string p0, "/product/overlay/partition_order.xml"

    :goto_35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 261
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetPriority()I
    .registers 6

    .line 467
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x2

    .line 471
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    .line 472
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 477
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 474
    :cond_2c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    .line 482
    :cond_35
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 485
    const-string v4, "highest"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 486
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {p0, v0, v1}, Landroid/content/om/IOverlayManager;->setHighestPriority(Ljava/lang/String;I)Z

    move-result p0

    :goto_4b
    xor-int/2addr p0, v3

    return p0

    .line 487
    :cond_4d
    const-string v4, "lowest"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 488
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {p0, v0, v1}, Landroid/content/om/IOverlayManager;->setLowestPriority(Ljava/lang/String;I)Z

    move-result p0

    goto :goto_4b

    .line 490
    :cond_5c
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {p0, v0, v2, v1}, Landroid/content/om/IOverlayManager;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    goto :goto_4b
.end method
