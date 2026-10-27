.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;
.super Ljava/lang/Object;
.source "DiscreteOpsXmlRegistry.java"


# instance fields
.field public mPackageOps:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/android/modules/utils/TypedXmlPullParser;J)V
    .registers 7

    .line 1000
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1001
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1002
    const-string/jumbo v1, "o"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 1003
    const-string/jumbo v2, "op"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1004
    invoke-virtual {p0, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->getOrCreateDiscreteOp(I)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->deserialize(Lcom/android/modules/utils/TypedXmlPullParser;J)V

    goto :goto_4

    :cond_27
    return-void
.end method

.method public final getOrCreateDiscreteOp(I)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;
    .registers 4

    .line 960
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    if-nez v0, :cond_1c

    .line 962
    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    invoke-direct {v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;-><init>()V

    .line 963
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-object v0
.end method

.method public merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;)V
    .registers 6

    .line 922
    iget-object v0, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_27

    .line 924
    iget-object v2, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 925
    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    .line 926
    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->getOrCreateDiscreteOp(I)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_27
    return-void
.end method
