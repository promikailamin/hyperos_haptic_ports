.class public Lcom/android/server/pm/PackageProperty;
.super Ljava/lang/Object;
.source "PackageProperty.java"


# instance fields
.field private mActivityProperties:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mApplicationProperties:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mProviderProperties:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mReceiverProperties:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mServiceProperties:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/pm/pkg/component/ParsedComponent;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation

    .line 138
    .local p0, "components":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "propertyCollection":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    move-object v0, p1

    .line 140
    .local v0, "returnCollection":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 141
    .local v1, "componentsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_20

    .line 142
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedComponent;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getProperties()Ljava/util/Map;

    move-result-object v3

    .line 143
    .local v3, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_19

    .line 144
    goto :goto_1d

    .line 146
    :cond_19
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageProperty;->addProperties(Ljava/util/Map;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 141
    .end local v3    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 148
    .end local v2    # "i":I
    :cond_20
    return-object v0
.end method

.method private static addProperties(Ljava/util/Map;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation

    .line 155
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .local p1, "propertyCollection":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 156
    return-object p1

    .line 159
    :cond_7
    if-nez p1, :cond_11

    new-instance v0, Landroid/util/ArrayMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    goto :goto_12

    :cond_11
    move-object v0, p1

    .line 160
    .local v0, "returnCollection":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    :goto_12
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 161
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageManager$Property;>;"
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManager$Property;

    .line 163
    .local v2, "property":Landroid/content/pm/PackageManager$Property;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->getName()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "propertyName":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 166
    .local v5, "propertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;"
    if-nez v5, :cond_3f

    .line 167
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    move-object v5, v6

    .line 168
    invoke-virtual {v0, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_3f
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 171
    .local v6, "packageProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;"
    if-nez v6, :cond_54

    .line 172
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v7

    .line 173
    invoke-virtual {v5, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_54
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v2    # "property":Landroid/content/pm/PackageManager$Property;
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "propertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;"
    .end local v6    # "packageProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;"
    goto :goto_1a

    .line 177
    :cond_58
    return-object v0
.end method

.method private getApplicationProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;
    .registers 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 278
    .local v0, "packagePropertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;"
    :goto_d
    if-nez v0, :cond_10

    .line 279
    return-object v1

    .line 281
    :cond_10
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 282
    .local v2, "propertyList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$Property;>;"
    if-nez v2, :cond_19

    .line 283
    return-object v1

    .line 285
    :cond_19
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager$Property;

    return-object v1
.end method

.method private getComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;
    .registers 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "property":Landroid/content/pm/PackageManager$Property;
    if-nez v0, :cond_b

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    if-eqz v1, :cond_b

    .line 261
    invoke-static {p1, p2, p3, v1}, Lcom/android/server/pm/PackageProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    .line 263
    :cond_b
    if-nez v0, :cond_15

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    if-eqz v1, :cond_15

    .line 264
    invoke-static {p1, p2, p3, v1}, Lcom/android/server/pm/PackageProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    .line 266
    :cond_15
    if-nez v0, :cond_1f

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1f

    .line 267
    invoke-static {p1, p2, p3, v1}, Lcom/android/server/pm/PackageProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    .line 269
    :cond_1f
    if-nez v0, :cond_29

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    if-eqz v1, :cond_29

    .line 270
    invoke-static {p1, p2, p3, v1}, Lcom/android/server/pm/PackageProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    .line 272
    :cond_29
    return-object v0
.end method

.method private static getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/content/pm/PackageManager$Property;
    .registers 10
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;)",
            "Landroid/content/pm/PackageManager$Property;"
        }
    .end annotation

    .line 239
    .local p3, "propertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    nop

    .line 240
    invoke-virtual {p3, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 241
    .local v0, "packagePropertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 242
    return-object v1

    .line 244
    :cond_b
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 245
    .local v2, "propertyList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$Property;>;"
    if-nez v2, :cond_14

    .line 246
    return-object v1

    .line 248
    :cond_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1a
    if-ltz v3, :cond_30

    .line 249
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManager$Property;

    .line 250
    .local v4, "property":Landroid/content/pm/PackageManager$Property;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$Property;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 251
    return-object v4

    .line 248
    .end local v4    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_2d
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 254
    .end local v3    # "i":I
    :cond_30
    return-object v1
.end method

.method private static removeComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/pm/pkg/component/ParsedComponent;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation

    .line 185
    .local p0, "components":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "propertyCollection":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    move-object v0, p1

    .line 187
    .local v0, "returnCollection":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 188
    .local v1, "componentsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-eqz v0, :cond_22

    if-ge v2, v1, :cond_22

    .line 189
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedComponent;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getProperties()Ljava/util/Map;

    move-result-object v3

    .line 190
    .local v3, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_1b

    .line 191
    goto :goto_1f

    .line 193
    :cond_1b
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageProperty;->removeProperties(Ljava/util/Map;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 188
    .end local v3    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 195
    .end local v2    # "i":I
    :cond_22
    return-object v0
.end method

.method private static removeProperties(Ljava/util/Map;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;>;>;"
        }
    .end annotation

    .line 202
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .local p1, "propertyCollection":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 203
    return-object v0

    .line 205
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 206
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageManager$Property;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManager$Property;

    .line 208
    .local v2, "property":Landroid/content/pm/PackageManager$Property;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->getName()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "propertyName":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "packageName":Ljava/lang/String;
    nop

    .line 211
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 212
    .local v5, "propertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;"
    if-nez v5, :cond_2a

    .line 214
    goto :goto_c

    .line 216
    :cond_2a
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 217
    .local v6, "packageProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;"
    if-nez v6, :cond_33

    .line 219
    goto :goto_c

    .line 221
    :cond_33
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3f

    .line 225
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_3f
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-nez v7, :cond_48

    .line 228
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .end local v2    # "property":Landroid/content/pm/PackageManager$Property;
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "propertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;"
    .end local v6    # "packageProperties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;"
    :cond_48
    goto :goto_c

    .line 231
    :cond_49
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_50

    .line 232
    return-object v0

    .line 234
    :cond_50
    return-object p1
.end method


# virtual methods
.method addAllProperties(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 117
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->addProperties(Ljava/util/Map;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    .line 118
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->addComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    .line 119
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->addComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    .line 120
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->addComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    .line 121
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->addComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    .line 122
    return-void
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;
    .registers 5
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .line 65
    if-nez p3, :cond_7

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageProperty;->getApplicationProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    return-object v0

    .line 68
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageProperty;->getComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    return-object v0
.end method

.method public queryProperty(Ljava/lang/String;ILjava/util/function/Predicate;)Ljava/util/List;
    .registers 13
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "componentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 80
    .local p3, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    const/4 v0, 0x5

    if-ne p2, v0, :cond_6

    .line 81
    iget-object v0, p0, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    .local v0, "propertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    goto :goto_1f

    .line 82
    .end local v0    # "propertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 83
    iget-object v0, p0, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    .restart local v0    # "propertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    goto :goto_1f

    .line 84
    .end local v0    # "propertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    :cond_c
    const/4 v0, 0x4

    if-ne p2, v0, :cond_12

    .line 85
    iget-object v0, p0, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    .restart local v0    # "propertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    goto :goto_1f

    .line 86
    .end local v0    # "propertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    :cond_12
    const/4 v0, 0x2

    if-ne p2, v0, :cond_18

    .line 87
    iget-object v0, p0, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    .restart local v0    # "propertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    goto :goto_1f

    .line 88
    .end local v0    # "propertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    :cond_18
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1e

    .line 89
    iget-object v0, p0, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    .restart local v0    # "propertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    goto :goto_1f

    .line 91
    .end local v0    # "propertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    :cond_1e
    const/4 v0, 0x0

    .line 93
    .restart local v0    # "propertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;>;"
    :goto_1f
    const/4 v1, 0x0

    if-nez v0, :cond_23

    .line 94
    return-object v1

    .line 96
    :cond_23
    nop

    .line 97
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 98
    .local v2, "packagePropertyMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/pm/PackageManager$Property;>;>;"
    if-nez v2, :cond_2d

    .line 99
    return-object v1

    .line 101
    :cond_2d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 102
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 103
    .local v3, "callingUserId":I
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 104
    .local v4, "mapSize":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$Property;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3f
    if-ge v6, v4, :cond_5a

    .line 106
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 107
    .local v7, "packageName":Ljava/lang/String;
    invoke-interface {p3, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 108
    goto :goto_57

    .line 110
    :cond_4e
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v5, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    .end local v7    # "packageName":Ljava/lang/String;
    :goto_57
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    .line 112
    .end local v6    # "i":I
    :cond_5a
    return-object v5
.end method

.method removeAllProperties(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 126
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->removeProperties(Ljava/util/Map;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    .line 127
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->removeComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    .line 128
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->removeComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    .line 129
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->removeComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    .line 130
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->removeComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    .line 131
    return-void
.end method
