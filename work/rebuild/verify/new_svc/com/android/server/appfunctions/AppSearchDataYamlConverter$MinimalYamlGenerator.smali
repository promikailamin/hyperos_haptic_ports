.class public abstract Lcom/android/server/appfunctions/AppSearchDataYamlConverter$MinimalYamlGenerator;
.super Ljava/lang/Object;
.source "AppSearchDataYamlConverter.java"


# direct methods
.method public static dump(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 175
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/appfunctions/AppSearchDataYamlConverter$MinimalYamlGenerator;->dumpObject(Ljava/lang/Object;Ljava/lang/StringBuilder;IZ)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dumpList(Ljava/util/List;Ljava/lang/StringBuilder;I)V
    .registers 8

    .line 226
    const-string v0, "  "

    invoke-virtual {v0, p2}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    move v2, v1

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_1d

    .line 230
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_1d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "- "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {v3}, Lcom/android/server/appfunctions/AppSearchDataYamlConverter$MinimalYamlGenerator;->isComplex(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_32

    add-int/lit8 v2, p2, 0x1

    .line 235
    invoke-static {v3, p1, v2, v4}, Lcom/android/server/appfunctions/AppSearchDataYamlConverter$MinimalYamlGenerator;->dumpObject(Ljava/lang/Object;Ljava/lang/StringBuilder;IZ)V

    goto :goto_35

    .line 237
    :cond_32
    invoke-static {v3, p1, v4, v4}, Lcom/android/server/appfunctions/AppSearchDataYamlConverter$MinimalYamlGenerator;->dumpObject(Ljava/lang/Object;Ljava/lang/StringBuilder;IZ)V

    :goto_35
    move v2, v4

    goto :goto_c

    :cond_37
    return-void
.end method

.method public static dumpMap(Ljava/util/Map;Ljava/lang/StringBuilder;IZ)V
    .registers 10

    .line 198
    const-string v0, "  "

    invoke-virtual {v0, p2}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    move v2, v1

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 201
    const-string v4, "\n"

    if-eqz v2, :cond_26

    if-eqz p3, :cond_2c

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 206
    :cond_26
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_2c
    :goto_2c
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/appfunctions/AppSearchDataYamlConverter$MinimalYamlGenerator;->formatPrimitive(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 213
    invoke-static {v2}, Lcom/android/server/appfunctions/AppSearchDataYamlConverter$MinimalYamlGenerator;->isComplex(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_50

    .line 214
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p2, 0x1

    .line 215
    invoke-static {v2, p1, v3, v1}, Lcom/android/server/appfunctions/AppSearchDataYamlConverter$MinimalYamlGenerator;->dumpObject(Ljava/lang/Object;Ljava/lang/StringBuilder;IZ)V

    goto :goto_58

    .line 217
    :cond_50
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-static {v2, p1, v5, v1}, Lcom/android/server/appfunctions/AppSearchDataYamlConverter$MinimalYamlGenerator;->dumpObject(Ljava/lang/Object;Ljava/lang/StringBuilder;IZ)V

    :goto_58
    move v2, v5

    goto :goto_10

    :cond_5a
    return-void
.end method

.method public static dumpObject(Ljava/lang/Object;Ljava/lang/StringBuilder;IZ)V
    .registers 5

    .line 184
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 185
    check-cast p0, Ljava/util/Map;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/appfunctions/AppSearchDataYamlConverter$MinimalYamlGenerator;->dumpMap(Ljava/util/Map;Ljava/lang/StringBuilder;IZ)V

    return-void

    .line 186
    :cond_a
    instance-of p3, p0, Ljava/util/List;

    if-eqz p3, :cond_14

    .line 187
    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1, p2}, Lcom/android/server/appfunctions/AppSearchDataYamlConverter$MinimalYamlGenerator;->dumpList(Ljava/util/List;Ljava/lang/StringBuilder;I)V

    return-void

    .line 189
    :cond_14
    invoke-static {p0}, Lcom/android/server/appfunctions/AppSearchDataYamlConverter$MinimalYamlGenerator;->formatPrimitive(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static formatPrimitive(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_6

    .line 249
    const-string/jumbo p0, "null"

    return-object p0

    .line 252
    :cond_6
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3e

    .line 253
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 255
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 256
    :cond_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 260
    :cond_3e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isComplex(Ljava/lang/Object;)Z
    .registers 2

    .line 244
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_b

    instance-of p0, p0, Ljava/util/List;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method
