.class final Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;
.super Ljava/lang/Object;
.source "DiscreteRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DiscretePackageOps"
.end annotation


# instance fields
.field mPackageOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/appop/DiscreteRegistry;


# direct methods
.method static bridge synthetic -$$Nest$mapplyToHistory(Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Landroid/util/ArrayMap;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Landroid/util/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdump(Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfilter(Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;JJI[Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/util/ArrayMap;)V
    .registers 12

    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->filter(JJI[Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/util/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->offsetHistory(J)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/appop/DiscreteRegistry;)V
    .registers 2

    .line 950
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 952
    return-void
.end method

.method private applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Landroid/util/ArrayMap;)V
    .registers 14
    .param p1, "result"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "I",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;)V"
        }
    .end annotation

    .line 1016
    .local p4, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1017
    .local v0, "nPackageOps":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_28

    .line 1018
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 1019
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1018
    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->-$$Nest$mapplyToHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V

    .line 1017
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1021
    .end local v1    # "i":I
    :cond_28
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "nDiscreteOps"    # I

    .line 1035
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1036
    .local v0, "nOps":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_48

    .line 1037
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1038
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1040
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

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

    invoke-static/range {v3 .. v8}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->-$$Nest$mdump(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    .line 1036
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1042
    .end local v1    # "i":I
    :cond_48
    return-void
.end method

.method private filter(JJI[Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/util/ArrayMap;)V
    .registers 28
    .param p1, "beginTimeMillis"    # J
    .param p3, "endTimeMillis"    # J
    .param p5, "filter"    # I
    .param p6, "opNamesFilter"    # [Ljava/lang/String;
    .param p7, "attributionTagFilter"    # Ljava/lang/String;
    .param p8, "flagsFilter"    # I
    .param p9, "currentUid"    # I
    .param p10, "currentPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;)V"
        }
    .end annotation

    .line 980
    .local p11, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 981
    .local v1, "nOps":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_6d

    .line 982
    iget-object v3, v0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 983
    .local v3, "opId":I
    and-int/lit8 v4, p5, 0x8

    if-eqz v4, :cond_2e

    .line 984
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v4

    .line 983
    move-object/from16 v15, p6

    invoke-static {v15, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 985
    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 986
    goto :goto_6a

    .line 983
    :cond_2e
    move-object/from16 v15, p6

    .line 988
    :cond_30
    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 990
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 988
    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move/from16 v9, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v15, p11

    invoke-static/range {v4 .. v15}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->-$$Nest$mfilter(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V

    .line 991
    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 992
    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 981
    .end local v3    # "opId":I
    :cond_6a
    :goto_6a
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 995
    .end local v2    # "i":I
    :cond_6d
    return-void
.end method

.method private getOrCreateDiscreteOp(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;
    .registers 5
    .param p1, "op"    # I

    .line 1005
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 1006
    .local v0, "result":Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;
    if-nez v0, :cond_1f

    .line 1007
    new-instance v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    invoke-direct {v1, v2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;-><init>(Lcom/android/server/appop/DiscreteRegistry;)V

    move-object v0, v1

    .line 1008
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    :cond_1f
    return-object v0
.end method

.method private offsetHistory(J)V
    .registers 6
    .param p1, "offset"    # J

    .line 998
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 999
    .local v0, "nOps":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 1000
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->-$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;J)V

    .line 999
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1002
    .end local v1    # "i":I
    :cond_17
    return-void
.end method


# virtual methods
.method addDiscreteAccess(ILjava/lang/String;IIJJII)V
    .registers 21
    .param p1, "op"    # I
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "uidState"    # I
    .param p5, "accessTime"    # J
    .param p7, "accessDuration"    # J
    .param p9, "attributionFlags"    # I
    .param p10, "attributionChainId"    # I

    .line 962
    invoke-direct {p0, p1}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->getOrCreateDiscreteOp(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    move-result-object v0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->addDiscreteAccess(Ljava/lang/String;IIJJII)V

    .line 964
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

    .line 1045
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1046
    .local v0, "depth":I
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1047
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "o"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1048
    const/4 v1, 0x0

    const-string/jumbo v2, "op"

    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1049
    .local v1, "op":I
    invoke-direct {p0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->getOrCreateDiscreteOp(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->deserialize(Landroid/util/TypedXmlPullParser;J)V

    .line 1050
    .end local v1    # "op":I
    goto :goto_4

    .line 1052
    :cond_27
    return-void
.end method

.method isEmpty()Z
    .registers 2

    .line 955
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method merge(Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;)V
    .registers 7
    .param p1, "other"    # Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 967
    iget-object v0, p1, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 968
    .local v0, "nOps":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_27

    .line 969
    iget-object v2, p1, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 970
    .local v2, "opId":I
    iget-object v3, p1, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 971
    .local v3, "op":Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;
    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->getOrCreateDiscreteOp(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;)V

    .line 968
    .end local v2    # "opId":I
    .end local v3    # "op":Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 973
    .end local v1    # "i":I
    :cond_27
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

    .line 1024
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1025
    .local v0, "nOps":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_33

    .line 1026
    const/4 v2, 0x0

    const-string/jumbo v3, "o"

    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1027
    iget-object v4, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "op"

    invoke-interface {p1, v2, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1028
    iget-object v4, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    invoke-virtual {v4, p1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->serialize(Landroid/util/TypedXmlSerializer;)V

    .line 1029
    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1025
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1031
    .end local v1    # "i":I
    :cond_33
    return-void
.end method
