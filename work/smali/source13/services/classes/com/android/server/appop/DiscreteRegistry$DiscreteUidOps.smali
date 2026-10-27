.class final Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;
.super Ljava/lang/Object;
.source "DiscreteRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DiscreteUidOps"
.end annotation


# instance fields
.field mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/appop/DiscreteRegistry;


# direct methods
.method static bridge synthetic -$$Nest$mapplyToHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;Landroid/app/AppOpsManager$HistoricalOps;ILandroid/util/ArrayMap;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILandroid/util/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPackage(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->clearPackage(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdump(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfilter(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;JJILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;IILandroid/util/ArrayMap;)V
    .registers 12

    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->filter(JJILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;IILandroid/util/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->offsetHistory(J)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/appop/DiscreteRegistry;)V
    .registers 2

    .line 839
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 841
    return-void
.end method

.method private applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILandroid/util/ArrayMap;)V
    .registers 8
    .param p1, "result"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;)V"
        }
    .end annotation

    .line 907
    .local p3, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 908
    .local v0, "nPackages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 909
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, p1, p2, v3, p3}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->-$$Nest$mapplyToHistory(Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Landroid/util/ArrayMap;)V

    .line 908
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 912
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method

.method private clearPackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 885
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "nDiscreteOps"    # I

    .line 926
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 927
    .local v0, "nPackages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_45

    .line 928
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 929
    const-string v2, "Package: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 930
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 932
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

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

    invoke-static/range {v3 .. v8}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->-$$Nest$mdump(Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    .line 927
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 934
    .end local v1    # "i":I
    :cond_45
    return-void
.end method

.method private filter(JJILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;IILandroid/util/ArrayMap;)V
    .registers 28
    .param p1, "beginTimeMillis"    # J
    .param p3, "endTimeMillis"    # J
    .param p5, "filter"    # I
    .param p6, "packageNameFilter"    # Ljava/lang/String;
    .param p7, "opNamesFilter"    # [Ljava/lang/String;
    .param p8, "attributionTagFilter"    # Ljava/lang/String;
    .param p9, "flagsFilter"    # I
    .param p10, "currentUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;)V"
        }
    .end annotation

    .line 861
    .local p11, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    and-int/lit8 v2, p5, 0x2

    if-eqz v2, :cond_16

    .line 862
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 863
    .local v2, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    invoke-direct {v0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    iput-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 866
    .end local v2    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    :cond_16
    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 867
    .local v14, "nPackages":I
    add-int/lit8 v2, v14, -0x1

    move v15, v2

    .local v15, "i":I
    :goto_1f
    if-ltz v15, :cond_5b

    .line 868
    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    iget-object v3, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 869
    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    .line 868
    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-static/range {v2 .. v13}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->-$$Nest$mfilter(Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;JJI[Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/util/ArrayMap;)V

    .line 871
    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 872
    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 867
    :cond_58
    add-int/lit8 v15, v15, -0x1

    goto :goto_1f

    .line 875
    .end local v15    # "i":I
    :cond_5b
    return-void
.end method

.method private getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 897
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 898
    .local v0, "result":Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;
    if-nez v0, :cond_17

    .line 899
    new-instance v1, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    invoke-direct {v1, v2}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;)V

    move-object v0, v1

    .line 900
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    :cond_17
    return-object v0
.end method

.method private offsetHistory(J)V
    .registers 6
    .param p1, "offset"    # J

    .line 878
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 879
    .local v0, "nPackages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 880
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->-$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;J)V

    .line 879
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 882
    .end local v1    # "i":I
    :cond_17
    return-void
.end method


# virtual methods
.method addDiscreteAccess(ILjava/lang/String;Ljava/lang/String;IIJJII)V
    .registers 25
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "uidState"    # I
    .param p6, "accessTime"    # J
    .param p8, "accessDuration"    # J
    .param p10, "attributionFlags"    # I
    .param p11, "attributionChainId"    # I

    .line 892
    move-object v0, p0

    move-object v1, p2

    invoke-direct {p0, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    move-result-object v2

    move v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->addDiscreteAccess(ILjava/lang/String;IIJJII)V

    .line 894
    return-void
.end method

.method deserialize(Landroid/util/TypedXmlPullParser;J)V
    .registers 7
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "beginTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 937
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 938
    .local v0, "depth":I
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 939
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "p"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 940
    const/4 v1, 0x0

    const-string/jumbo v2, "pn"

    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 941
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->deserialize(Landroid/util/TypedXmlPullParser;J)V

    .line 942
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_4

    .line 944
    :cond_27
    return-void
.end method

.method isEmpty()Z
    .registers 2

    .line 844
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;)V
    .registers 7
    .param p1, "other"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 848
    iget-object v0, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 849
    .local v0, "nPackages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_23

    .line 850
    iget-object v2, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 851
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 852
    .local v3, "p":Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;
    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->merge(Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;)V

    .line 849
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "p":Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 854
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method serialize(Landroid/util/TypedXmlSerializer;)V
    .registers 8
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 916
    .local v0, "nPackages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2f

    .line 917
    const/4 v2, 0x0

    const-string/jumbo v3, "p"

    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 918
    iget-object v4, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "pn"

    invoke-interface {p1, v2, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 919
    iget-object v4, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    invoke-virtual {v4, p1}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->serialize(Landroid/util/TypedXmlSerializer;)V

    .line 920
    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 916
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 922
    .end local v1    # "i":I
    :cond_2f
    return-void
.end method
