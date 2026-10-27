.class public Landroid/view/ForceDarkViewTagUtils;
.super Ljava/lang/Object;
.source "ForceDarkViewTagUtils.java"


# static fields
.field public static final blacklist FORCE_DARK_VIEW_TAG_CONFIG:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist calculateFrequency(Ljava/util/Map;Landroid/view/View;)I
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/View;",
            ")I"
        }
    .end annotation

    .line 167
    .local p0, "frequencyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_46

    if-nez p0, :cond_6

    goto :goto_46

    .line 171
    :cond_6
    const/4 v1, 0x0

    .line 172
    .local v1, "sum":I
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_45

    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "viewName":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    add-int/lit8 v1, v1, 0x1

    .line 176
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 177
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    if-ge v3, v0, :cond_45

    .line 178
    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/view/ForceDarkViewTagUtils;->calculateFrequency(Ljava/util/Map;Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 181
    .end local v0    # "childCount":I
    .end local v2    # "viewName":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_45
    return v1

    .line 168
    .end local v1    # "sum":I
    :cond_46
    :goto_46
    return v0
.end method

.method private static blacklist canBeAnchorView(Landroid/view/View;Ljava/util/ArrayList;I)Z
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 185
    .local p1, "rareViewName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 186
    return v0

    .line 189
    :cond_4
    const/4 v1, 0x1

    if-nez p2, :cond_8

    .line 190
    return v1

    .line 194
    :cond_8
    invoke-static {p0}, Landroid/view/ForceDarkViewTagUtils;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ForceDarkViewTagUtils;->isViewIdValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 195
    return v1

    .line 199
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "viewName":Ljava/lang/String;
    if-eqz p1, :cond_24

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 201
    return v1

    .line 204
    :cond_24
    return v0
.end method

.method public static blacklist generateViewConditions(Landroid/view/View;)Lorg/json/JSONArray;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 104
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/view/ForceDarkViewTagUtils;->generateViewConditions(Landroid/view/View;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist generateViewConditions(Landroid/view/View;Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .registers 10
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 115
    .local p1, "rareViewName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_4

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_4
    if-nez p1, :cond_10

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/ForceDarkViewTagUtils;->getRareViewName(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p1

    .line 121
    :cond_10
    const/4 v0, 0x0

    .line 122
    .local v0, "conditionNum":I
    const/4 v1, 0x0

    .line 123
    .local v1, "depth":I
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 124
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 125
    .local v3, "parent":Landroid/view/ViewParent;
    :goto_1b
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_6b

    const/4 v4, 0x3

    if-ge v0, v4, :cond_6b

    .line 126
    move-object v4, v3

    check-cast v4, Landroid/view/View;

    .line 127
    .local v4, "parentView":Landroid/view/View;
    invoke-static {v4, p1, v1}, Landroid/view/ForceDarkViewTagUtils;->canBeAnchorView(Landroid/view/View;Ljava/util/ArrayList;I)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 129
    :try_start_2b
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "viewName"

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v6, "parent"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    const-string v6, "index"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    invoke-static {v4}, Landroid/view/ForceDarkViewTagUtils;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "id":Ljava/lang/String;
    if-eqz v6, :cond_59

    invoke-static {v6}, Landroid/view/ForceDarkViewTagUtils;->isViewIdValid(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 135
    const-string v7, "id"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :cond_59
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_5c} :catch_5e

    .line 140
    nop

    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "id":Ljava/lang/String;
    goto :goto_62

    .line 138
    :catch_5e
    move-exception v5

    .line 139
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 141
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_62
    add-int/lit8 v0, v0, 0x1

    .line 143
    :cond_64
    add-int/lit8 v1, v1, 0x1

    .line 144
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 145
    .end local v4    # "parentView":Landroid/view/View;
    goto :goto_1b

    .line 147
    :cond_6b
    return-object v2
.end method

.method public static blacklist generateViewConfig(Landroid/view/View;Ljava/util/ArrayList;ZZ)Lorg/json/JSONObject;
    .registers 10
    .param p0, "view"    # Landroid/view/View;
    .param p2, "hasCondition"    # Z
    .param p3, "hasChildren"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 63
    .local p1, "rareViewName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_8

    .line 64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0

    .line 67
    :cond_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v0, "object":Lorg/json/JSONObject;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "viewName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewForceDarkStateStub;->isForceDarkAllowed()Z

    move-result v1

    const-string v2, "forceDark"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewForceDarkStateStub;->getForceDarkUsageHint()I

    move-result v1

    const-string v2, "usage"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    iget-object v1, p0, Landroid/view/View;->mBackgroundRenderNode:Landroid/graphics/RenderNode;

    if-eqz v1, :cond_3f

    .line 72
    iget-object v1, p0, Landroid/view/View;->mBackgroundRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->getForceDarkUsageHint()I

    move-result v1

    goto :goto_40

    :cond_3f
    const/4 v1, -0x1

    .line 71
    :goto_40
    const-string v2, "backgroundUsage"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    invoke-static {p0}, Landroid/view/ForceDarkViewTagUtils;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_56

    invoke-static {v1}, Landroid/view/ForceDarkViewTagUtils;->isViewIdValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 75
    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    :cond_56
    if-nez p1, :cond_5c

    .line 79
    invoke-static {p0}, Landroid/view/ForceDarkViewTagUtils;->getRareViewName(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p1

    .line 81
    :cond_5c
    if-eqz p2, :cond_67

    .line 82
    invoke-static {p0, p1}, Landroid/view/ForceDarkViewTagUtils;->generateViewConditions(Landroid/view/View;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "conditions"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    :cond_67
    if-eqz p3, :cond_92

    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_92

    .line 86
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 87
    .local v2, "jsonArray":Lorg/json/JSONArray;
    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 88
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7a
    if-ge v4, v3, :cond_8d

    .line 89
    move-object v5, p0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, p1, p2, p3}, Landroid/view/ForceDarkViewTagUtils;->generateViewConfig(Landroid/view/View;Ljava/util/ArrayList;ZZ)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    .line 92
    .end local v4    # "i":I
    :cond_8d
    const-string v4, "children"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "childCount":I
    :cond_92
    return-object v0
.end method

.method public static blacklist generateViewTreeConfig(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v1}, Landroid/view/ForceDarkViewTagUtils;->generateViewConfig(Landroid/view/View;Ljava/util/ArrayList;ZZ)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getForceDarkViewConfig(Landroid/view/View;)Landroid/config/ForceDarkViewConfig;
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v0

    .line 30
    .local v0, "forceDarkState":Landroid/view/ViewForceDarkStateStub;
    instance-of v1, v0, Landroid/view/ViewForceDarkStateImpl;

    if-eqz v1, :cond_18

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/view/ViewForceDarkStateImpl;

    const/4 v2, 0x1

    .line 32
    invoke-virtual {v1, v2}, Landroid/view/ViewForceDarkStateImpl;->getForceDarkTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 33
    .local v1, "viewConfig":Ljava/lang/Object;
    instance-of v2, v1, Landroid/config/ForceDarkViewConfig;

    if-eqz v2, :cond_18

    .line 34
    move-object v2, v1

    check-cast v2, Landroid/config/ForceDarkViewConfig;

    return-object v2

    .line 37
    .end local v1    # "viewConfig":Ljava/lang/Object;
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getRareViewName(Landroid/view/View;)Ljava/util/ArrayList;
    .registers 10
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v0, "frequencyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {v0, p0}, Landroid/view/ForceDarkViewTagUtils;->calculateFrequency(Ljava/util/Map;Landroid/view/View;)I

    move-result v1

    .line 155
    .local v1, "sumNum":I
    int-to-double v2, v1

    const-wide v4, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v2, v4

    .line 156
    .local v2, "rareWall":D
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v4, "rareViewName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 158
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    cmpg-double v7, v7, v2

    if-gez v7, :cond_41

    .line 159
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_41
    goto :goto_1d

    .line 163
    :cond_42
    return-object v4
.end method

.method public static blacklist getViewId(Landroid/view/View;)Ljava/lang/String;
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, "idName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mID:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 235
    goto :goto_e

    .line 234
    :catch_d
    move-exception v1

    .line 236
    :goto_e
    return-object v0
.end method

.method private static blacklist isViewIdValid(Ljava/lang/String;)Z
    .registers 5
    .param p0, "id"    # Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 209
    return v0

    .line 212
    :cond_4
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_f

    .line 213
    return v2

    .line 217
    :cond_f
    :try_start_f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    .line 219
    return v0

    .line 220
    :catch_13
    move-exception v1

    .line 223
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_1c

    .line 224
    return v2

    .line 227
    :cond_1c
    return v0
.end method

.method public static blacklist setForceDarkViewConfig(Landroid/view/View;Landroid/config/ForceDarkViewConfig;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "forceDarkViewConfig"    # Landroid/config/ForceDarkViewConfig;

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getForceDarkState()Landroid/view/ViewForceDarkStateStub;

    move-result-object v0

    .line 22
    .local v0, "forceDarkState":Landroid/view/ViewForceDarkStateStub;
    instance-of v1, v0, Landroid/view/ViewForceDarkStateImpl;

    if-eqz v1, :cond_f

    .line 23
    move-object v1, v0

    check-cast v1, Landroid/view/ViewForceDarkStateImpl;

    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v2, p1}, Landroid/view/ViewForceDarkStateImpl;->setForceDarkKeyedTag(ILjava/lang/Object;)V

    .line 26
    :cond_f
    return-void
.end method
