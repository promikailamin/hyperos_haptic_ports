.class public abstract Lcom/android/server/appfunctions/AppFunctionDumpHelper;
.super Ljava/lang/Object;
.source "AppFunctionDumpHelper.java"


# direct methods
.method public static synthetic $r8$lambda$kmwjXUTMyh3x6u9n0b_UrezCXyU(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 121
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static buildAppFunctionMetadataSearchSpec(Z)Landroid/app/appsearch/SearchSpec;
    .registers 5

    .line 166
    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    const-string v1, "android"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {v0, v2}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterPackageNames([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    const-string v2, "AppFunctionRuntimeMetadata"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {v0, v2}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    .line 171
    new-instance v2, Landroid/app/appsearch/JoinSpec$Builder;

    const-string v3, "appFunctionStaticMetadataQualifiedId"

    invoke-direct {v2, v3}, Landroid/app/appsearch/JoinSpec$Builder;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    .line 173
    invoke-virtual {v2, v3, v0}, Landroid/app/appsearch/JoinSpec$Builder;->setNestedSearch(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/JoinSpec$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/app/appsearch/JoinSpec$Builder;->build()Landroid/app/appsearch/JoinSpec;

    move-result-object v0

    .line 176
    new-instance v2, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v2}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v2, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterPackageNames([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v1

    const-string v2, "app_functions"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {v1, v2}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterNamespaces([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v1

    if-eqz p0, :cond_4a

    .line 182
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_50

    .line 183
    :cond_4a
    const-string p0, "AppFunctionStaticMetadata"

    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 179
    :goto_50
    invoke-virtual {v1, p0}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas(Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    .line 184
    invoke-virtual {p0, v0}, Landroid/app/appsearch/SearchSpec$Builder;->setJoinSpec(Landroid/app/appsearch/JoinSpec;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    .line 185
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object p0

    return-object p0
.end method

.method public static dumpAppFunctionMetadata(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/SearchResult;)V
    .registers 5

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppFunctionMetadata for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    const-string v2, "functionId"

    .line 194
    invoke-virtual {v1, v2}, Landroid/app/appsearch/GenericDocument;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 197
    const-string v0, "Static Metadata:"

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 199
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->writeGenericDocumentProperties(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/GenericDocument;)V

    .line 200
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 202
    const-string v0, "Runtime Metadata:"

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 204
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getJoinedResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 206
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getJoinedResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/SearchResult;

    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object p1

    .line 205
    invoke-static {p0, p1}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->writeGenericDocumentProperties(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/GenericDocument;)V

    goto :goto_5c

    .line 208
    :cond_57
    const-string p1, "No runtime metadata found."

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 210
    :goto_5c
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 212
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public static dumpAppFunctionsState(Landroid/content/Context;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 62
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-nez v0, :cond_10

    .line 64
    const-string p0, "Couldn\'t retrieve UserManager."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 68
    :cond_10
    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 70
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object p1

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppFunction state for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 76
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 78
    invoke-static {p2}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->isVerboseMode([Ljava/lang/String;)Z

    move-result v2

    .line 75
    invoke-static {v0, v1, v2}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->dumpAppFunctionsStateForUser(Landroid/content/Context;Landroid/util/IndentingPrintWriter;Z)V

    .line 79
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_1d

    :cond_61
    return-void
.end method

.method public static dumpAppFunctionsStateForUser(Landroid/content/Context;Landroid/util/IndentingPrintWriter;Z)V
    .registers 4

    .line 134
    :try_start_0
    invoke-static {p0, p2}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->queryAppFunctionsStateForUser(Landroid/content/Context;Z)Ljava/util/Map;

    move-result-object p0

    .line 135
    invoke-static {p1, p0}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->dumpSearchResults(Landroid/util/IndentingPrintWriter;Ljava/util/Map;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to dump AppFunction state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static dumpSearchResults(Landroid/util/IndentingPrintWriter;Ljava/util/Map;)V
    .registers 6

    .line 143
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 144
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppFunctionDocument(s) for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/SearchResult;

    .line 149
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 150
    invoke-virtual {v1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Landroid/app/appsearch/GenericDocument;->getSchemaType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppFunctionStaticMetadata"

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 153
    invoke-static {p0, v1}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->dumpAppFunctionMetadata(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/SearchResult;)V

    goto :goto_3e

    .line 155
    :cond_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/appsearch/GenericDocument;->getSchemaType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 157
    invoke-virtual {v1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->writeGenericDocumentProperties(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/GenericDocument;)V

    .line 158
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_3e

    .line 161
    :cond_8b
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto/16 :goto_8

    :cond_90
    return-void
.end method

.method public static isVerboseMode([Ljava/lang/String;)Z
    .registers 6

    .line 84
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_1d

    aget-object v3, p0, v2

    .line 85
    const-string v4, "--verbose"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "-v"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_1b

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0

    :cond_1d
    return v1
.end method

.method public static queryAppFunctionsStateForUser(Landroid/content/Context;Z)Ljava/util/Map;
    .registers 8

    .line 97
    const-class v0, Landroid/app/appsearch/AppSearchManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/AppSearchManager;

    if-eqz p0, :cond_82

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 104
    new-instance v1, Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    new-instance v2, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)V

    .line 106
    :try_start_19
    const-string p0, ""

    .line 108
    invoke-static {p1}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->buildAppFunctionMetadataSearchSpec(Z)Landroid/app/appsearch/SearchSpec;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appfunctions/FutureSearchResults;
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_6c

    .line 112
    :cond_29
    :try_start_29
    invoke-interface {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->getNextPage()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/appsearch/SearchResult;

    .line 116
    invoke-virtual {v3}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v4

    const-string/jumbo v5, "packageName"

    .line 117
    invoke-virtual {v4, v5}, Landroid/app/appsearch/GenericDocument;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 120
    new-instance v5, Lcom/android/server/appfunctions/AppFunctionDumpHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/appfunctions/AppFunctionDumpHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 121
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 122
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :catchall_5d
    move-exception p1

    goto :goto_6e

    .line 124
    :cond_5f
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_63
    .catchall {:try_start_29 .. :try_end_63} :catchall_5d

    if-eqz p1, :cond_29

    .line 125
    :try_start_65
    invoke-interface {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_6c

    .line 126
    invoke-virtual {v1}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->close()V

    return-object v0

    :catchall_6c
    move-exception p0

    goto :goto_79

    :goto_6e
    if-eqz p0, :cond_78

    .line 106
    :try_start_70
    invoke-interface {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_78

    :catchall_74
    move-exception p0

    :try_start_75
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_78
    :goto_78
    throw p1
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_6c

    .line 104
    :goto_79
    :try_start_79
    invoke-virtual {v1}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->close()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7d

    goto :goto_81

    :catchall_7d
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_81
    throw p0

    .line 99
    :cond_82
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t retrieve AppSearchManager."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeGenericDocumentProperties(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/GenericDocument;)V
    .registers 10

    .line 217
    invoke-virtual {p1}, Landroid/app/appsearch/GenericDocument;->getPropertyNames()Ljava/util/Set;

    move-result-object v0

    .line 218
    const-string/jumbo v1, "{"

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 220
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 221
    invoke-virtual {p1, v1}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\": ["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 224
    instance-of v1, v2, [Landroid/app/appsearch/GenericDocument;

    const-string v3, ", "

    const/4 v5, 0x0

    if-eqz v1, :cond_59

    .line 225
    check-cast v2, [Landroid/app/appsearch/GenericDocument;

    .line 226
    :goto_43
    array-length v1, v2

    if-ge v5, v1, :cond_9e

    .line 227
    aget-object v1, v2, v5

    .line 228
    invoke-static {p0, v1}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->writeGenericDocumentProperties(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/GenericDocument;)V

    .line 229
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    if-eq v5, v1, :cond_53

    .line 230
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 232
    :cond_53
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 235
    :cond_59
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_5d
    if-ge v5, v1, :cond_9e

    .line 237
    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 238
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_7d

    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_94

    .line 240
    :cond_7d
    instance-of v7, v6, [B

    if-eqz v7, :cond_8b

    .line 241
    check-cast v6, [B

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_94

    :cond_8b
    if-eqz v6, :cond_94

    .line 243
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_94
    :goto_94
    add-int/lit8 v6, v1, -0x1

    if-eq v5, v6, :cond_9b

    .line 246
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_9b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    .line 250
    :cond_9e
    const-string v1, "]"

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 252
    :cond_a5
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 253
    const-string/jumbo p1, "}"

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
