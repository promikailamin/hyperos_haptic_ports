.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;
.super Ljava/lang/Object;
.source "DiscreteOpsXmlRegistry.java"


# instance fields
.field public mDeviceAttributedOps:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$KIUzMWym-uYkJZD6G7D31bKzWj8(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)J
    .registers 3

    .line 1142
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    return-wide v0
.end method

.method public static synthetic $r8$lambda$RBwqZ7tw9wvT2UiW_Baft6zOUaY(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;
    .registers 1

    .line 1063
    new-instance p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;-><init>()V

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/android/modules/utils/TypedXmlPullParser;J)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1099
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 1100
    :cond_8
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_84

    .line 1101
    const-string v3, "a"

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1102
    const-string v3, "at"

    const/4 v5, 0x0

    invoke-interface {v1, v5, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1104
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    .line 1105
    :cond_26
    :goto_26
    invoke-static {v1, v6}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1106
    const-string v7, "e"

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 1107
    const-string/jumbo v7, "nt"

    invoke-interface {v1, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    .line 1108
    const-string/jumbo v7, "nd"

    const-wide/16 v11, -0x1

    invoke-interface {v1, v5, v7, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v11

    .line 1110
    const-string/jumbo v7, "us"

    invoke-interface {v1, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 1111
    const-string v7, "f"

    invoke-interface {v1, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 1112
    const-string v7, "af"

    invoke-interface {v1, v5, v7, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    .line 1114
    const-string v7, "ci"

    const/4 v8, -0x1

    invoke-interface {v1, v5, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    .line 1116
    const-string v7, "di"

    invoke-interface {v1, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6c

    .line 1118
    const-string v7, "default:0"

    :cond_6c
    add-long v17, v9, v11

    cmp-long v8, v17, p2

    if-gez v8, :cond_73

    goto :goto_26

    .line 1124
    :cond_73
    invoke-virtual {v0, v7}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->getOrCreateDiscreteDeviceOp(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    move-result-object v7

    .line 1126
    invoke-static {v7, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->-$$Nest$mgetOrCreateDiscreteOpEventsList(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 1127
    new-instance v8, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-direct/range {v8 .. v16}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;-><init>(JJIIII)V

    .line 1129
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 1135
    :cond_84
    iget-object v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v2, v4

    :goto_8b
    if-ge v2, v1, :cond_b8

    .line 1137
    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    .line 1139
    iget-object v5, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v4

    :goto_9c
    if-ge v6, v5, :cond_b5

    .line 1141
    iget-object v7, v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1142
    new-instance v8, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v8}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9c

    :cond_b5
    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    :cond_b8
    return-void
.end method

.method public final getOrCreateDiscreteDeviceOp(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;
    .registers 3

    .line 1063
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    return-object p0
.end method

.method public merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;)V
    .registers 6

    .line 1022
    iget-object v0, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_23

    .line 1024
    iget-object v2, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1025
    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    .line 1026
    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->getOrCreateDiscreteDeviceOp(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_23
    return-void
.end method
