.class public Lcom/android/server/appfunctions/MetadataSyncAdapter;
.super Ljava/lang/Object;
.source "MetadataSyncAdapter.java"


# static fields
.field public static final DEFAULT_RESULT_COUNT_PER_PAGE:I

.field public static final TAG:Ljava/lang/String; = "MetadataSyncAdapter"


# instance fields
.field public final mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

.field public mCurrentSyncTask:Ljava/util/concurrent/Future;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic $r8$lambda$CBjQBlCD4YksJi7K1SzBIv7SPQI(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 1

    .line 553
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$SeyFeyEwMVc51ZkcP_LPvzDFeP4(Lcom/android/server/appfunctions/MetadataSyncAdapter;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->lambda$submitSyncRequest$0(Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    .line 77
    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec;->getResultCountPerPage()I

    move-result v0

    sput v0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->DEFAULT_RESULT_COUNT_PER_PAGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/app/appsearch/AppSearchManager;)V
    .registers 4

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mLock:Ljava/lang/Object;

    .line 89
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 90
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/app/appsearch/AppSearchManager;

    iput-object p2, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    .line 91
    new-instance p1, Lcom/android/server/appfunctions/NamedThreadFactory;

    const-string p2, "AppFunctionSyncExecutors"

    invoke-direct {p1, p2}, Lcom/android/server/appfunctions/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static buildMetadataSearchSpec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/appsearch/SearchSpec;
    .registers 6

    .line 576
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    .line 581
    invoke-virtual {v0, p3}, Landroid/app/appsearch/SearchSpec$Builder;->setResultCountPerPage(I)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p3

    new-instance v0, Landroid/app/appsearch/PropertyPath;

    invoke-direct {v0, p1}, Landroid/app/appsearch/PropertyPath;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroid/app/appsearch/PropertyPath;

    invoke-direct {p1, p2}, Landroid/app/appsearch/PropertyPath;-><init>(Ljava/lang/String;)V

    .line 584
    invoke-static {v0, p1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 582
    invoke-virtual {p3, p0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->addProjectionPaths(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    .line 587
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object p0

    return-object p0
.end method

.method public static convertFailedAppSearchResultToException(Ljava/util/Collection;)Ljava/lang/IllegalStateException;
    .registers 3

    .line 228
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/AppSearchResult;

    .line 231
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 233
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static countTotalStringsInValueSets(Ljava/util/Map;)I
    .registers 3

    .line 629
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 630
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_9

    :cond_1b
    return v0
.end method

.method public static getAddedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 357
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-static {p0, p1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public static getFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 10

    .line 389
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 393
    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 394
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 395
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 398
    :cond_2f
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 400
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_44
    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 401
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Landroid/util/ArraySet;

    .line 402
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 403
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 406
    :cond_66
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 407
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_70
    return-object v0
.end method

.method public static getPackageToFunctionIdMap(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appfunctions/FutureAppSearchSession;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 527
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 532
    const-string v1, ""

    .line 536
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->buildMetadataSearchSpec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/appsearch/SearchSpec;

    move-result-object p1

    .line 534
    invoke-interface {p0, v1, p1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appfunctions/FutureSearchResults;

    .line 542
    :try_start_1e
    invoke-interface {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->getNextPage()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 544
    :goto_28
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_6a

    .line 545
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/appsearch/SearchResult;

    .line 548
    invoke-virtual {p4}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    .line 549
    invoke-virtual {v1, p3}, Landroid/app/appsearch/GenericDocument;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-virtual {p4}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/app/appsearch/GenericDocument;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 552
    new-instance v2, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda0;-><init>()V

    .line 553
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 554
    invoke-virtual {v1, p4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :catchall_5d
    move-exception p1

    goto :goto_6e

    .line 556
    :cond_5f
    invoke-interface {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->getNextPage()Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_69
    .catchall {:try_start_1e .. :try_end_69} :catchall_5d

    goto :goto_28

    .line 558
    :cond_6a
    invoke-interface {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->close()V

    return-object v0

    :goto_6e
    if-eqz p0, :cond_78

    .line 532
    :try_start_70
    invoke-interface {p0}, Lcom/android/server/appfunctions/FutureSearchResults;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_78

    :catchall_74
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_78
    :goto_78
    throw p1
.end method

.method public static getPackageToFunctionIdMapWithRetry(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appfunctions/FutureAppSearchSession;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 444
    :try_start_0
    sget v0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->DEFAULT_RESULT_COUNT_PER_PAGE:I

    .line 445
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getPackageToFunctionIdMap(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object v1
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_6} :catch_54

    .line 474
    invoke-static {v1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->countTotalStringsInValueSets(Ljava/util/Map;)I

    move-result v2

    if-ne v2, v0, :cond_53

    .line 479
    sget-object v1, Lcom/android/server/appfunctions/MetadataSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "b/400587895: getPackageToFunctionIdMapWithRetry is retrying for schemaType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xc8

    .line 484
    invoke-static {p0, p1, p2, p3, v3}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getPackageToFunctionIdMap(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object p0

    .line 490
    invoke-static {p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->countTotalStringsInValueSets(Ljava/util/Map;)I

    move-result p2

    if-eq p2, v0, :cond_52

    .line 494
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "b/400587895: First search yields "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " results, but the second one with higher page size yields "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " results. schemaType = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return-object p0

    :cond_53
    return-object v1

    :catch_54
    move-exception p0

    .line 453
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    .line 455
    throw p0
.end method

.method public static getRemovedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 379
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-static {p1, p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public static getRemovedPackages(Ljava/util/Set;Ljava/util/Set;)Landroid/util/ArraySet;
    .registers 5

    .line 330
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 332
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 333
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 334
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-object v0
.end method


# virtual methods
.method public final buildPutRuntimeMetadataRequest(Landroid/util/ArrayMap;)Landroid/app/appsearch/PutDocumentsRequest;
    .registers 9

    .line 239
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance p0, Landroid/app/appsearch/PutDocumentsRequest$Builder;

    invoke-direct {p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 242
    :goto_a
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 243
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 244
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 245
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    .line 246
    new-array v5, v5, [Landroid/app/appsearch/GenericDocument;

    new-instance v6, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;

    invoke-direct {v6, v2, v4}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v6}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->build()Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    move-result-object v4

    aput-object v4, v5, v0

    .line 246
    invoke-virtual {p0, v5}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments([Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    goto :goto_20

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 251
    :cond_41
    invoke-virtual {p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->build()Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object p0

    return-object p0
.end method

.method public final buildRemoveRuntimeMetadataRequest(Landroid/util/ArrayMap;)Landroid/app/appsearch/RemoveByDocumentIdRequest;
    .registers 6

    .line 258
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance p0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    const-string v0, "app_functions_runtime"

    invoke-direct {p0, v0}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 263
    :goto_b
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 264
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 266
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 268
    invoke-static {v1, v3}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getDocumentIdForAppFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->addIds([Ljava/lang/String;)Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    goto :goto_21

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 273
    :cond_3c
    invoke-virtual {p0}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/RemoveByDocumentIdRequest;

    move-result-object p0

    return-object p0
.end method

.method public final buildSetSchemaRequestForRuntimeMetadataSchemas(Landroid/content/pm/PackageManager;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest;
    .registers 10

    .line 280
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v0, Landroid/app/appsearch/SetSchemaRequest$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SetSchemaRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 282
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setForceOverride(Z)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addSchemas(Ljava/util/Collection;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    .line 284
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/appsearch/AppSearchSchema;

    .line 287
    invoke-virtual {v2}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-static {v3}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getPackageNameFromSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-virtual {p0, p1, v3}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getCertificate(Landroid/content/pm/PackageManager;Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_30

    goto :goto_15

    .line 293
    :cond_30
    invoke-virtual {v2}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/app/appsearch/PackageIdentifier;

    invoke-direct {v6, v3, v4}, Landroid/app/appsearch/PackageIdentifier;-><init>(Ljava/lang/String;[B)V

    .line 292
    invoke-virtual {v0, v5, v1, v6}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setSchemaTypeVisibilityForPackage(Ljava/lang/String;ZLandroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 297
    invoke-virtual {v2}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 296
    invoke-virtual {v0, v2, v3}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    goto :goto_15

    .line 299
    :cond_4e
    invoke-virtual {v0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->build()Landroid/app/appsearch/SetSchemaRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getAllRuntimeMetadataSchemas(Ljava/util/Set;)Ljava/util/Set;
    .registers 3

    .line 306
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 309
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    invoke-static {v0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->createAppFunctionRuntimeSchema(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema;

    move-result-object v0

    .line 310
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_20
    return-object p0
.end method

.method public final getCertificate(Landroid/content/pm/PackageManager;Ljava/lang/String;)[B
    .registers 5

    .line 594
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x8000080

    const/4 v0, 0x0

    .line 600
    :try_start_a
    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 599
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/content/pm/PackageInfo;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_53

    .line 608
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez p1, :cond_31

    .line 609
    sget-object p1, Lcom/android/server/appfunctions/MetadataSyncAdapter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signing info not found for package: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 615
    :cond_31
    :try_start_31
    const-string p1, "SHA256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_31 .. :try_end_37} :catch_52

    .line 619
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object p0

    if-eqz p0, :cond_52

    .line 620
    array-length p2, p0

    if-nez p2, :cond_43

    goto :goto_52

    :cond_43
    const/4 p2, 0x0

    .line 623
    aget-object p0, p0, p2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 624
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    :catch_52
    :cond_52
    :goto_52
    return-object v0

    .line 605
    :catch_53
    sget-object p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name info not found for package: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final synthetic lambda$submitSyncRequest$0(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 7

    .line 106
    new-instance v0, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    const-string v1, "apps-db"

    invoke-direct {v0, v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object v0

    .line 111
    new-instance v1, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    const-string v2, "appfunctions-db"

    invoke-direct {v1, v2}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object v1

    .line 116
    :try_start_16
    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iget-object v3, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    new-instance v4, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v2, v3, v4, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_3d

    .line 123
    :try_start_22
    new-instance v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iget-object v3, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    new-instance v4, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v3, v4, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_3f

    .line 129
    :try_start_2e
    invoke-virtual {p0, v2, v0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->trySyncAppFunctionMetadataBlocking(Lcom/android/server/appfunctions/FutureAppSearchSession;Lcom/android/server/appfunctions/FutureAppSearchSession;)V

    .line 131
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_41

    .line 133
    :try_start_36
    invoke-interface {v0}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3f

    :try_start_39
    invoke-interface {v2}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception p0

    goto :goto_54

    :catchall_3f
    move-exception p0

    goto :goto_4b

    :catchall_41
    move-exception p0

    .line 116
    :try_start_42
    invoke-interface {v0}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception v0

    :try_start_47
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4a
    throw p0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_3f

    :goto_4b
    :try_start_4b
    invoke-interface {v2}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception v0

    :try_start_50
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_53
    throw p0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_54} :catch_3d

    .line 134
    :goto_54
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public shutDown()V
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public submitSyncRequest()Lcom/android/internal/infra/AndroidFuture;
    .registers 6

    .line 103
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 104
    new-instance v1, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appfunctions/MetadataSyncAdapter;Lcom/android/internal/infra/AndroidFuture;)V

    .line 138
    iget-object v2, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 139
    :try_start_d
    iget-object v3, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;

    if-eqz v3, :cond_23

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-nez v3, :cond_23

    .line 140
    iget-object v3, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v3, 0x0

    .line 141
    iput-object v3, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_21

    goto :goto_23

    :catchall_21
    move-exception p0

    goto :goto_36

    .line 145
    :cond_23
    :goto_23
    :try_start_23
    iget-object v3, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;
    :try_end_2b
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_23 .. :try_end_2b} :catch_2c
    .catchall {:try_start_23 .. :try_end_2b} :catchall_21

    goto :goto_34

    :catch_2c
    move-exception p0

    .line 147
    :try_start_2d
    sget-object v1, Lcom/android/server/appfunctions/MetadataSyncAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Failed to submit sync request due to executor shutdown."

    invoke-static {v1, v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :goto_34
    monitor-exit v2

    return-object v0

    :goto_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_21

    throw p0
.end method

.method public trySyncAppFunctionMetadataBlocking(Lcom/android/server/appfunctions/FutureAppSearchSession;Lcom/android/server/appfunctions/FutureAppSearchSession;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 166
    const-string v0, "AppFunctionStaticMetadata"

    const-string v1, "functionId"

    const-string/jumbo v2, "packageName"

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getPackageToFunctionIdMapWithRetry(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object p1

    .line 171
    const-string v0, "AppFunctionRuntimeMetadata"

    .line 172
    invoke-static {p2, v0, v1, v2}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getPackageToFunctionIdMapWithRetry(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 179
    invoke-static {p1, v0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getAddedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 181
    invoke-static {p1, v0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getRemovedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 183
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 187
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 186
    invoke-static {v0, v3}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getRemovedPackages(Ljava/util/Set;Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 189
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 192
    :cond_47
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getAllRuntimeMetadataSchemas(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 194
    invoke-static {}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->createParentAppFunctionRuntimeSchema()Landroid/app/appsearch/AppSearchSchema;

    move-result-object v0

    .line 193
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 196
    invoke-virtual {p0, v0, p1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->buildSetSchemaRequestForRuntimeMetadataSchemas(Landroid/content/pm/PackageManager;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest;

    move-result-object p1

    .line 199
    invoke-interface {p2, p1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->setSchema(Landroid/app/appsearch/SetSchemaRequest;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/SetSchemaResponse;

    .line 198
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_69
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_91

    .line 204
    invoke-virtual {p0, v2}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->buildRemoveRuntimeMetadataRequest(Landroid/util/ArrayMap;)Landroid/app/appsearch/RemoveByDocumentIdRequest;

    move-result-object p1

    .line 206
    invoke-interface {p2, p1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/AppSearchBatchResult;

    .line 207
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_84

    goto :goto_91

    .line 209
    :cond_84
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 208
    invoke-static {p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->convertFailedAppSearchResultToException(Ljava/util/Collection;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    .line 213
    :cond_91
    :goto_91
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b9

    .line 215
    invoke-virtual {p0, v1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->buildPutRuntimeMetadataRequest(Landroid/util/ArrayMap;)Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object p0

    .line 217
    invoke-interface {p2, p0}, Lcom/android/server/appfunctions/FutureAppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/AppSearchBatchResult;

    .line 218
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_ac

    goto :goto_b9

    .line 220
    :cond_ac
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 219
    invoke-static {p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->convertFailedAppSearchResultToException(Ljava/util/Collection;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_b9
    :goto_b9
    return-void
.end method
