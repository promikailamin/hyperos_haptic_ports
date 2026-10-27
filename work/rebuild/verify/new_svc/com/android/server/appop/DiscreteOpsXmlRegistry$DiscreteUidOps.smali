.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;
.super Ljava/lang/Object;
.source "DiscreteOpsXmlRegistry.java"


# instance fields
.field public mPackages:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/android/modules/utils/TypedXmlPullParser;J)V
    .registers 7

    .line 892
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 893
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 894
    const-string/jumbo v1, "p"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 895
    const-string/jumbo v2, "pn"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 896
    invoke-virtual {p0, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->deserialize(Lcom/android/modules/utils/TypedXmlPullParser;J)V

    goto :goto_4

    :cond_27
    return-void
.end method

.method public final getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;
    .registers 3

    .line 852
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    if-nez v0, :cond_14

    .line 854
    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    invoke-direct {v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;-><init>()V

    .line 855
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method public merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;)V
    .registers 6

    .line 802
    iget-object v0, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_23

    .line 804
    iget-object v2, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 805
    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    .line 806
    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_23
    return-void
.end method
