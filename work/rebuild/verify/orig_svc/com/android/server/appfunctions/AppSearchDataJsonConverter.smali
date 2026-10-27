.class public abstract Lcom/android/server/appfunctions/AppSearchDataJsonConverter;
.super Ljava/lang/Object;
.source "AppSearchDataJsonConverter.java"


# direct methods
.method public static convertGenericDocumentToJson(Landroid/app/appsearch/GenericDocument;)Lorg/json/JSONObject;
    .registers 9

    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 132
    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getPropertyNames()Ljava/util/Set;

    move-result-object v1

    .line 134
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 135
    invoke-virtual {p0, v2}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_25

    .line 137
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    .line 143
    :cond_25
    instance-of v4, v3, [Landroid/app/appsearch/GenericDocument;

    const/4 v5, 0x0

    if-eqz v4, :cond_44

    .line 144
    check-cast v3, [Landroid/app/appsearch/GenericDocument;

    .line 145
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 146
    array-length v6, v3

    :goto_32
    if-ge v5, v6, :cond_40

    aget-object v7, v3, v5

    .line 147
    invoke-static {v7}, Lcom/android/server/appfunctions/AppSearchDataJsonConverter;->convertGenericDocumentToJson(Landroid/app/appsearch/GenericDocument;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 149
    :cond_40
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    .line 150
    :cond_44
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 151
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 152
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    :goto_57
    if-ge v5, v6, :cond_63

    .line 154
    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    .line 155
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 157
    :cond_63
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_67
    return-object v0
.end method

.method public static convertJsonToGenericDocument(Ljava/lang/String;)Landroid/app/appsearch/GenericDocument;
    .registers 10

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    const-string p0, "id"

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 53
    const-string/jumbo v2, "namespace"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    const-string/jumbo v3, "schemaType"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    new-instance v3, Landroid/app/appsearch/GenericDocument$Builder;

    invoke-direct {v3, v2, p0, v1}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 59
    :cond_24
    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_156

    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 63
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_42

    .line 64
    check-cast v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    goto :goto_24

    .line 65
    :cond_42
    instance-of v4, v2, Ljava/lang/Integer;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_147

    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_4e

    goto/16 :goto_147

    .line 67
    :cond_4e
    instance-of v4, v2, Ljava/lang/Double;

    if-nez v4, :cond_138

    instance-of v4, v2, Ljava/lang/Float;

    if-eqz v4, :cond_58

    goto/16 :goto_138

    .line 69
    :cond_58
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_6a

    .line 70
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-array v4, v5, [Z

    aput-boolean v2, v4, v6

    invoke-virtual {v3, v1, v4}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyBoolean(Ljava/lang/String;[Z)Landroid/app/appsearch/GenericDocument$Builder;

    goto :goto_24

    .line 71
    :cond_6a
    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_7e

    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/appfunctions/AppSearchDataJsonConverter;->convertJsonToGenericDocument(Ljava/lang/String;)Landroid/app/appsearch/GenericDocument;

    move-result-object v2

    .line 73
    new-array v4, v5, [Landroid/app/appsearch/GenericDocument;

    aput-object v2, v4, v6

    invoke-virtual {v3, v1, v4}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;

    goto :goto_24

    .line 74
    :cond_7e
    instance-of v4, v2, Lorg/json/JSONArray;

    if-eqz v4, :cond_24

    .line 75
    check-cast v2, Lorg/json/JSONArray;

    .line 76
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_8b

    goto :goto_24

    .line 80
    :cond_8b
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 81
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_ae

    .line 82
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 83
    :goto_99
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v6, v5, :cond_a9

    const/4 v5, 0x0

    .line 84
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_99

    .line 86
    :cond_a9
    invoke-virtual {v3, v1, v4}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    goto/16 :goto_24

    .line 87
    :cond_ae
    instance-of v5, v4, Ljava/lang/Integer;

    if-nez v5, :cond_11e

    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_b7

    goto :goto_11e

    .line 93
    :cond_b7
    instance-of v5, v4, Ljava/lang/Double;

    if-nez v5, :cond_104

    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_c0

    goto :goto_104

    .line 99
    :cond_c0
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_de

    .line 100
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Z

    .line 101
    :goto_ca
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v6, v5, :cond_d9

    .line 102
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v5

    aput-boolean v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_ca

    .line 104
    :cond_d9
    invoke-virtual {v3, v1, v4}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyBoolean(Ljava/lang/String;[Z)Landroid/app/appsearch/GenericDocument$Builder;

    goto/16 :goto_24

    .line 105
    :cond_de
    instance-of v4, v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_24

    .line 106
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Landroid/app/appsearch/GenericDocument;

    .line 107
    :goto_e8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v6, v5, :cond_ff

    .line 109
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/appfunctions/AppSearchDataJsonConverter;->convertJsonToGenericDocument(Ljava/lang/String;)Landroid/app/appsearch/GenericDocument;

    move-result-object v5

    aput-object v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_e8

    .line 111
    :cond_ff
    invoke-virtual {v3, v1, v4}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;

    goto/16 :goto_24

    .line 94
    :cond_104
    :goto_104
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [D

    .line 95
    :goto_10a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v6, v5, :cond_119

    .line 96
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v7

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_10a

    .line 98
    :cond_119
    invoke-virtual {v3, v1, v4}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDouble(Ljava/lang/String;[D)Landroid/app/appsearch/GenericDocument$Builder;

    goto/16 :goto_24

    .line 88
    :cond_11e
    :goto_11e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [J

    .line 89
    :goto_124
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v6, v5, :cond_133

    .line 90
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v7

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_124

    .line 92
    :cond_133
    invoke-virtual {v3, v1, v4}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyLong(Ljava/lang/String;[J)Landroid/app/appsearch/GenericDocument$Builder;

    goto/16 :goto_24

    .line 68
    :cond_138
    :goto_138
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    new-array v2, v5, [D

    aput-wide v7, v2, v6

    invoke-virtual {v3, v1, v2}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDouble(Ljava/lang/String;[D)Landroid/app/appsearch/GenericDocument$Builder;

    goto/16 :goto_24

    .line 66
    :cond_147
    :goto_147
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    new-array v2, v5, [J

    aput-wide v7, v2, v6

    invoke-virtual {v3, v1, v2}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyLong(Ljava/lang/String;[J)Landroid/app/appsearch/GenericDocument$Builder;

    goto/16 :goto_24

    .line 115
    :cond_156
    invoke-virtual {v3}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    move-result-object p0

    return-object p0
.end method

.method public static searchResultToJsonObject(Landroid/app/appsearch/SearchResult;)Lorg/json/JSONObject;
    .registers 4

    .line 176
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 177
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Landroid/app/appsearch/GenericDocument;->getSchemaType()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-static {v1}, Lcom/android/server/appfunctions/AppSearchDataJsonConverter;->convertGenericDocumentToJson(Landroid/app/appsearch/GenericDocument;)Lorg/json/JSONObject;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResult;->getJoinedResults()Ljava/util/List;

    move-result-object p0

    .line 183
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/SearchResult;

    .line 185
    invoke-virtual {v1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/appsearch/GenericDocument;->getSchemaType()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {v1}, Lcom/android/server/appfunctions/AppSearchDataJsonConverter;->searchResultToJsonObject(Landroid/app/appsearch/SearchResult;)Lorg/json/JSONObject;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1c

    :cond_38
    return-object v0
.end method
