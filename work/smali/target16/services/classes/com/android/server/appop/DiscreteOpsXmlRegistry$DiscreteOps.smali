.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
.super Ljava/lang/Object;
.source "DiscreteOpsXmlRegistry.java"


# instance fields
.field public mChainIdOffset:I

.field public mLargestChainId:I

.field public mUids:Landroid/util/ArrayMap;


# direct methods
.method public static bridge synthetic -$$Nest$mreadFromFile(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Ljava/io/File;J)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->readFromFile(Ljava/io/File;J)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 566
    iput p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mChainIdOffset:I

    .line 567
    iput p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    return-void
.end method


# virtual methods
.method public final getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;
    .registers 4

    .line 683
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    if-nez v0, :cond_1c

    .line 685
    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    invoke-direct {v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;-><init>()V

    .line 686
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-object v0
.end method

.method public isEmpty()Z
    .registers 1

    .line 571
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V
    .registers 6

    .line 575
    iget v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    iget v1, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    .line 576
    iget-object v0, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_31

    .line 578
    iget-object v2, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 579
    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    .line 580
    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_31
    return-void
.end method

.method public final readFromFile(Ljava/io/File;J)V
    .registers 11

    .line 694
    const-string v0, " "

    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_9c

    .line 699
    :try_start_7
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 700
    const-string v3, "h"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 704
    const-string/jumbo v3, "v"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_48

    .line 708
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 709
    :cond_1f
    :goto_1f
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 710
    const-string/jumbo v5, "u"

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 711
    const-string/jumbo v5, "ui"

    const/4 v6, -0x1

    invoke-interface {v2, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 712
    invoke-virtual {p0, v5}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    move-result-object v5

    invoke-virtual {v5, v2, p2, p3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->deserialize(Lcom/android/modules/utils/TypedXmlPullParser;J)V
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_42

    goto :goto_1f

    :catchall_42
    move-exception p0

    goto :goto_5f

    .line 720
    :cond_44
    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_9c

    return-void

    .line 706
    :cond_48
    :try_start_48
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dropping unsupported discrete history "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5f
    .catchall {:try_start_48 .. :try_end_5f} :catchall_42

    .line 716
    :goto_5f
    :try_start_5f
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read file "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 716
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_5f .. :try_end_93} :catchall_97

    .line 720
    :try_start_93
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_9c

    goto :goto_9c

    :catchall_97
    move-exception p0

    :try_start_98
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9b

    .line 723
    :catch_9b
    throw p0

    :catch_9c
    :goto_9c
    return-void
.end method
