.class public Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;
.super Ljava/lang/Object;
.source "FutureAppSearchSessionImpl.java"

# interfaces
.implements Lcom/android/server/appfunctions/FutureAppSearchSession;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public static synthetic $r8$lambda$46izMU8cOzNEYsR-hxiAqbZ1lAk(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Landroid/app/appsearch/AppSearchSession;)Landroid/app/appsearch/SearchResults;
    .registers 3

    .line 179
    invoke-virtual {p2, p0, p1}, Landroid/app/appsearch/AppSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5NJeJVUalJgBDGtPr2LjGbGPBQA(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/SetSchemaRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->lambda$setSchema$2(Landroid/app/appsearch/SetSchemaRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7cwcP4zTo1Nxbtot1zK1Wld2EAI(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/RemoveByDocumentIdRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->lambda$remove$6(Landroid/app/appsearch/RemoveByDocumentIdRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GlOi76RcRm2Kcymq1kQ8mGT3uNk(Landroid/app/appsearch/AppSearchSession;Ljava/lang/Throwable;)V
    .registers 2

    if-eqz p0, :cond_5

    .line 189
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSession;->close()V

    :cond_5
    return-void
.end method

.method public static synthetic $r8$lambda$JTDa6745wo4ym2zJzc_Mw9ETX1M(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/SearchResults;)Lcom/android/server/appfunctions/FutureSearchResults;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->lambda$search$9(Landroid/app/appsearch/SearchResults;)Lcom/android/server/appfunctions/FutureSearchResults;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QCdHjwJs_qWHKkvT1iaFVXRrhl8(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/SetSchemaResponse;
    .registers 2

    .line 90
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 91
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/SetSchemaResponse;

    return-object p0

    .line 93
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    .line 94
    invoke-static {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic $r8$lambda$czNKsIZULcDdbQo_ehJdrGONL4E(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/GetByDocumentIdRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->lambda$getByDocumentId$7(Landroid/app/appsearch/GetByDocumentIdRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nKcAnFWLpA8FXrG-rG2LL_1zo-E(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchSession;
    .registers 2

    .line 66
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 67
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/AppSearchSession;

    return-object p0

    .line 69
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic $r8$lambda$wkS14ELjO4CVVC29amwYKzXNsyc(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/PutDocumentsRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->lambda$put$5(Landroid/app/appsearch/PutDocumentsRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-class v0, Lcom/android/server/appfunctions/FutureAppSearchSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V
    .registers 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iput-object p2, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 58
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;

    .line 60
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;

    invoke-direct {p0, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 59
    invoke-virtual {p1, p3, p2, p0}, Landroid/app/appsearch/AppSearchManager;->createSearchSession(Landroid/app/appsearch/AppSearchManager$SearchContext;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 185
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    new-instance v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda2;-><init>()V

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public getByDocumentId(Landroid/app/appsearch/GetByDocumentIdRequest;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4

    .line 160
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/GetByDocumentIdRequest;)V

    .line 163
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final getSessionAsync()Lcom/android/internal/infra/AndroidFuture;
    .registers 2

    .line 64
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;

    new-instance v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$getByDocumentId$7(Landroid/app/appsearch/GetByDocumentIdRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .registers 5

    .line 166
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 167
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;

    invoke-direct {v1, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p2, p1, p0, v1}, Landroid/app/appsearch/AppSearchSession;->getByDocumentId(Landroid/app/appsearch/GetByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    return-object v0
.end method

.method public final synthetic lambda$put$5(Landroid/app/appsearch/PutDocumentsRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .registers 5

    .line 128
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 131
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;

    invoke-direct {v1, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p2, p1, p0, v1}, Landroid/app/appsearch/AppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    return-object v0
.end method

.method public final synthetic lambda$remove$6(Landroid/app/appsearch/RemoveByDocumentIdRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .registers 5

    .line 148
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 149
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;

    invoke-direct {v1, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p2, p1, p0, v1}, Landroid/app/appsearch/AppSearchSession;->remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    return-object v0
.end method

.method public final synthetic lambda$search$9(Landroid/app/appsearch/SearchResults;)Lcom/android/server/appfunctions/FutureSearchResults;
    .registers 3

    .line 180
    new-instance v0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;

    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p1, p0}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;-><init>(Landroid/app/appsearch/SearchResults;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final synthetic lambda$setSchema$2(Landroid/app/appsearch/SetSchemaRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;
    .registers 5

    .line 82
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 83
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 87
    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 83
    invoke-virtual {p2, p1, p0, p0, v1}, Landroid/app/appsearch/AppSearchSession;->setSchema(Landroid/app/appsearch/SetSchemaRequest;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 88
    new-instance p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda8;

    invoke-direct {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public put(Landroid/app/appsearch/PutDocumentsRequest;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4

    .line 123
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/PutDocumentsRequest;)V

    .line 126
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4

    .line 142
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/RemoveByDocumentIdRequest;)V

    .line 145
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Lcom/android/internal/infra/AndroidFuture;
    .registers 5

    .line 178
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)V

    .line 179
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance p2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;)V

    .line 180
    invoke-virtual {p1, p2}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public setSchema(Landroid/app/appsearch/SetSchemaRequest;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4

    .line 76
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/SetSchemaRequest;)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method
