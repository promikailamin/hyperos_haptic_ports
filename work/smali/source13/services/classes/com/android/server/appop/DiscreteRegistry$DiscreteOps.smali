.class final Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
.super Ljava/lang/Object;
.source "DiscreteRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DiscreteOps"
.end annotation


# instance fields
.field mChainIdOffset:I

.field mLargestChainId:I

.field mUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/appop/DiscreteRegistry;


# direct methods
.method static bridge synthetic -$$Nest$mapplyToHistoricalOps(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Landroid/app/AppOpsManager$HistoricalOps;Landroid/util/ArrayMap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->applyToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;Landroid/util/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->clearHistory(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdump(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfilter(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V
    .registers 12

    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->filter(JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->offsetHistory(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadFromFile(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/File;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->readFromFile(Ljava/io/File;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteToStream(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/FileOutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->writeToStream(Ljava/io/FileOutputStream;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/appop/DiscreteRegistry;I)V
    .registers 3
    .param p2, "chainIdOffset"    # I

    .line 611
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 613
    iput p2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mChainIdOffset:I

    .line 614
    iput p2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 615
    return-void
.end method

.method private applyToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;Landroid/util/ArrayMap;)V
    .registers 7
    .param p1, "result"    # Landroid/app/AppOpsManager$HistoricalOps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;)V"
        }
    .end annotation

    .line 690
    .local p2, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 691
    .local v0, "nUids":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_23

    .line 692
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p1, v3, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->-$$Nest$mapplyToHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;Landroid/app/AppOpsManager$HistoricalOps;ILandroid/util/ArrayMap;)V

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 694
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method private clearHistory(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 680
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 681
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    invoke-static {v0, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->-$$Nest$mclearPackage(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 683
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    :cond_36
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "nDiscreteOps"    # I

    .line 717
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 718
    .local v0, "nUids":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_43

    .line 719
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 720
    const-string v2, "Uid: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 721
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 722
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 723
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->-$$Nest$mdump(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    .line 718
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 725
    .end local v1    # "i":I
    :cond_43
    return-void
.end method

.method private filter(JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V
    .registers 28
    .param p1, "beginTimeMillis"    # J
    .param p3, "endTimeMillis"    # J
    .param p5, "filter"    # I
    .param p6, "uidFilter"    # I
    .param p7, "packageNameFilter"    # Ljava/lang/String;
    .param p8, "opNamesFilter"    # [Ljava/lang/String;
    .param p9, "attributionTagFilter"    # Ljava/lang/String;
    .param p10, "flagsFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJII",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;)V"
        }
    .end annotation

    .line 656
    .local p11, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    move-object/from16 v0, p0

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_1b

    .line 657
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 658
    .local v1, "uids":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;>;"
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move/from16 v13, p6

    invoke-direct {v0, v13}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    iput-object v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    goto :goto_1d

    .line 656
    .end local v1    # "uids":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;>;"
    :cond_1b
    move/from16 v13, p6

    .line 661
    :goto_1d
    iget-object v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 662
    .local v14, "nUids":I
    add-int/lit8 v1, v14, -0x1

    move v15, v1

    .local v15, "i":I
    :goto_26
    if-ltz v15, :cond_65

    .line 663
    iget-object v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 664
    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 663
    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v12, p11

    invoke-static/range {v1 .. v12}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->-$$Nest$mfilter(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;JJILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;IILandroid/util/ArrayMap;)V

    .line 666
    iget-object v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 667
    iget-object v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 662
    :cond_62
    add-int/lit8 v15, v15, -0x1

    goto :goto_26

    .line 670
    .end local v15    # "i":I
    :cond_65
    return-void
.end method

.method private getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;
    .registers 5
    .param p1, "uid"    # I

    .line 728
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 729
    .local v0, "result":Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;
    if-nez v0, :cond_1f

    .line 730
    new-instance v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    invoke-direct {v1, v2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;)V

    move-object v0, v1

    .line 731
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    :cond_1f
    return-object v0
.end method

.method private offsetHistory(J)V
    .registers 6
    .param p1, "offset"    # J

    .line 673
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 674
    .local v0, "nUids":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 675
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->-$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;J)V

    .line 674
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 677
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method private readFromFile(Ljava/io/File;J)V
    .registers 12
    .param p1, "f"    # Ljava/io/File;
    .param p2, "beginTimeMillis"    # J

    .line 739
    const-string v0, " "

    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_aa

    .line 742
    .local v1, "stream":Ljava/io/FileInputStream;
    nop

    .line 744
    :try_start_8
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    .line 745
    .local v2, "parser":Landroid/util/TypedXmlPullParser;
    const-string/jumbo v3, "h"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 749
    const-string/jumbo v3, "v"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 750
    .local v3, "version":I
    const/4 v5, 0x1

    if-ne v3, v5, :cond_4a

    .line 753
    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    .line 754
    .local v5, "depth":I
    :cond_21
    :goto_21
    invoke-static {v2, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 755
    const-string/jumbo v6, "u"

    invoke-interface {v2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 756
    const-string/jumbo v6, "ui"

    const/4 v7, -0x1

    invoke-interface {v2, v4, v6, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 757
    .local v6, "uid":I
    invoke-direct {p0, v6}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    move-result-object v7

    invoke-virtual {v7, v2, p2, p3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->deserialize(Landroid/util/TypedXmlPullParser;J)V
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_63

    .line 758
    .end local v6    # "uid":I
    goto :goto_21

    .line 765
    .end local v2    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v3    # "version":I
    .end local v5    # "depth":I
    :cond_44
    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    .line 767
    :goto_47
    goto :goto_a2

    .line 766
    :catch_48
    move-exception v0

    .line 768
    goto :goto_a2

    .line 751
    .restart local v2    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v3    # "version":I
    :cond_4a
    :try_start_4a
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping unsupported discrete history "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    .end local p1    # "f":Ljava/io/File;
    .end local p2    # "beginTimeMillis":J
    throw v4
    :try_end_63
    .catchall {:try_start_4a .. :try_end_63} :catchall_63

    .line 760
    .end local v2    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v3    # "version":I
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    .restart local p1    # "f":Ljava/io/File;
    .restart local p2    # "beginTimeMillis":J
    :catchall_63
    move-exception v2

    .line 761
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_64
    invoke-static {}, Lcom/android/server/appop/DiscreteRegistry;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 762
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_64 .. :try_end_9e} :catchall_a3

    .line 765
    .end local v2    # "t":Ljava/lang/Throwable;
    :try_start_9e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_48

    goto :goto_47

    .line 769
    :goto_a2
    return-void

    .line 764
    :catchall_a3
    move-exception v0

    .line 765
    :try_start_a4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    .line 767
    goto :goto_a9

    .line 766
    :catch_a8
    move-exception v2

    .line 768
    :goto_a9
    throw v0

    .line 740
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :catch_aa
    move-exception v0

    .line 741
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private writeToStream(Ljava/io/FileOutputStream;)V
    .registers 10
    .param p1, "stream"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 697
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 699
    .local v0, "out":Landroid/util/TypedXmlSerializer;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 700
    const-string/jumbo v2, "h"

    invoke-interface {v0, v3, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 701
    const-string/jumbo v4, "v"

    invoke-interface {v0, v3, v4, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 702
    iget v1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    const-string/jumbo v4, "lc"

    invoke-interface {v0, v3, v4, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 704
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 705
    .local v1, "nUids":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    if-ge v4, v1, :cond_53

    .line 706
    const-string/jumbo v5, "u"

    invoke-interface {v0, v3, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 707
    iget-object v6, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v7, "ui"

    invoke-interface {v0, v3, v7, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 708
    iget-object v6, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    invoke-virtual {v6, v0}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->serialize(Landroid/util/TypedXmlSerializer;)V

    .line 709
    invoke-interface {v0, v3, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 705
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 711
    .end local v4    # "i":I
    :cond_53
    invoke-interface {v0, v3, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 712
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 713
    return-void
.end method


# virtual methods
.method addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJII)V
    .registers 29
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "uidState"    # I
    .param p7, "accessTime"    # J
    .param p9, "accessDuration"    # J
    .param p11, "attributionFlags"    # I
    .param p12, "attributionChainId"    # I

    .line 635
    move-object/from16 v0, p0

    move/from16 v1, p12

    move/from16 v2, p12

    .line 636
    .local v2, "offsetChainId":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1e

    .line 637
    iget v3, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mChainIdOffset:I

    add-int v2, v1, v3

    .line 638
    iget v3, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    if-le v2, v3, :cond_14

    .line 639
    iput v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    goto :goto_1e

    .line 640
    :cond_14
    if-gez v2, :cond_1e

    .line 642
    const/4 v2, 0x0

    .line 643
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 644
    mul-int/lit8 v3, v1, -0x1

    iput v3, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mChainIdOffset:I

    .line 647
    :cond_1e
    :goto_1e
    move/from16 v3, p2

    invoke-direct {v0, v3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    move-result-object v4

    move/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move v15, v2

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->addDiscreteAccess(ILjava/lang/String;Ljava/lang/String;IIJJII)V

    .line 649
    return-void
.end method

.method isEmpty()Z
    .registers 2

    .line 618
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V
    .registers 7
    .param p1, "other"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 622
    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    iget v1, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 623
    iget-object v0, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 624
    .local v0, "nUids":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_31

    .line 625
    iget-object v2, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 626
    .local v2, "uid":I
    iget-object v3, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 627
    .local v3, "uidOps":Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;
    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;)V

    .line 624
    .end local v2    # "uid":I
    .end local v3    # "uidOps":Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 629
    .end local v1    # "i":I
    :cond_31
    return-void
.end method
