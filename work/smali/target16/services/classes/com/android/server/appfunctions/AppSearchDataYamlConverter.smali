.class public abstract Lcom/android/server/appfunctions/AppSearchDataYamlConverter;
.super Ljava/lang/Object;
.source "AppSearchDataYamlConverter.java"


# direct methods
.method public static convertGenericDocumentToYaml(Landroid/app/appsearch/GenericDocument;ZZZ)Ljava/lang/String;
    .registers 4

    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/appfunctions/AppSearchDataYamlConverter;->genericDocumentToMap(Landroid/app/appsearch/GenericDocument;ZZZ)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/appfunctions/AppSearchDataYamlConverter$MinimalYamlGenerator;->dump(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static genericDocumentToMap(Landroid/app/appsearch/GenericDocument;ZZZ)Ljava/util/Map;
    .registers 15

    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p3, :cond_3f

    .line 72
    const-string v1, "id"

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v1, "namespace"

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v1, "schemaType"

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getSchemaType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getCreationTimestampMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "creationTimestampMillis"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getScore()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "score"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_3f
    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getPropertyNames()Ljava/util/Set;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_47
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    invoke-virtual {p0, v2}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez p2, :cond_5c

    if-nez v3, :cond_5c

    goto :goto_47

    :cond_5c
    if-nez v3, :cond_63

    const/4 v3, 0x0

    .line 89
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 95
    :cond_63
    instance-of v4, v3, [Landroid/app/appsearch/GenericDocument;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_9b

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 97
    check-cast v3, [Landroid/app/appsearch/GenericDocument;

    array-length v7, v3

    move v8, v6

    :goto_72
    if-ge v8, v7, :cond_80

    aget-object v9, v3, v8

    .line 99
    invoke-static {v9, p1, p2, p3}, Lcom/android/server/appfunctions/AppSearchDataYamlConverter;->genericDocumentToMap(Landroid/app/appsearch/GenericDocument;ZZZ)Ljava/util/Map;

    move-result-object v9

    .line 98
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_72

    :cond_80
    if-nez p1, :cond_89

    .line 106
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_89

    goto :goto_47

    .line 110
    :cond_89
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_97

    .line 111
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 113
    :cond_97
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 115
    :cond_9b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 116
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    .line 118
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v6

    :goto_af
    if-ge v8, v4, :cond_c4

    .line 120
    invoke-static {v3, v8}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    if-nez p1, :cond_be

    .line 122
    invoke-static {v9}, Lcom/android/server/appfunctions/AppSearchDataYamlConverter;->isEmptyValue(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_be

    goto :goto_c1

    .line 126
    :cond_be
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c1
    add-int/lit8 v8, v8, 0x1

    goto :goto_af

    :cond_c4
    if-nez p1, :cond_ce

    .line 129
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_ce

    goto/16 :goto_47

    .line 133
    :cond_ce
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_dd

    .line 134
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_47

    .line 136
    :cond_dd
    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_47

    :cond_e2
    return-object v0
.end method

.method public static isEmptyValue(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 155
    :cond_4
    instance-of v1, p0, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    return v2

    .line 159
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_24

    return v2

    :cond_24
    return v0
.end method
