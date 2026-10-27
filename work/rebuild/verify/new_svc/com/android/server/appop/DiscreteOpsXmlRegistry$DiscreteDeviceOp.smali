.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;
.super Ljava/lang/Object;
.source "DiscreteOpsXmlRegistry.java"


# instance fields
.field public mAttributedOps:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$82ZxdHWtqc58qAvslomzoHk9Yz8(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 1240
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetOrCreateDiscreteOpEventsList(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 1151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;
    .registers 3

    .line 1239
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;)V
    .registers 8

    .line 1160
    iget-object v0, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_29

    .line 1162
    iget-object v2, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1163
    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1164
    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1165
    iget-object v5, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-static {v4, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->-$$Nest$smstableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_29
    return-void
.end method
