.class public Lcom/android/server/appfunctions/AppFunctionPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AppFunctionPackageMonitor.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAppSearchManager:Landroid/app/appsearch/AppSearchManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-class v0, Lcom/android/server/appfunctions/AppFunctionPackageMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/AppFunctionPackageMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .registers 4

    const/4 v0, 0x1

    .line 56
    invoke-direct {p0, v0}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/app/appsearch/AppSearchManager;

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/AppSearchManager;

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionPackageMonitor;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    return-void
.end method

.method public static registerPackageMonitorForUser(Landroid/content/Context;Lcom/android/server/SystemService$TargetUser;)Lcom/android/internal/content/PackageMonitor;
    .registers 4

    .line 133
    new-instance v0, Lcom/android/server/appfunctions/AppFunctionPackageMonitor;

    .line 134
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/appfunctions/AppFunctionPackageMonitor;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 137
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 136
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public onPackageDataCleared(Ljava/lang/String;I)V
    .registers 8

    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "packageName:\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 74
    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    const-string v1, "AppFunctionRuntimeMetadata"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 77
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->setVerbatimSearchEnabled(Z)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    .line 79
    new-instance v1, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    const-string v2, "appfunctions-db"

    invoke-direct {v1, v2}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object v1

    .line 84
    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionPackageMonitor;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    new-instance v3, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V

    .line 86
    :try_start_46
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_a9

    .line 89
    :try_start_4b
    invoke-interface {v2, p2, v0}, Lcom/android/server/appfunctions/FutureAppSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/appfunctions/FutureSearchResults;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_55} :catch_ab
    .catchall {:try_start_4b .. :try_end_55} :catchall_a9

    .line 93
    :cond_55
    :try_start_55
    invoke-interface {p2}, Lcom/android/server/appfunctions/FutureSearchResults;->getNextPage()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/appsearch/SearchResult;

    .line 96
    invoke-virtual {v3}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v3

    const-string v4, "functionId"

    .line 97
    invoke-virtual {v3, v4}, Landroid/app/appsearch/GenericDocument;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    new-instance v4, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;

    .line 101
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, p1, v3}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->build()Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    move-result-object v3

    .line 99
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :catchall_89
    move-exception p0

    goto :goto_ad

    .line 104
    :cond_8b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 106
    new-instance v0, Landroid/app/appsearch/PutDocumentsRequest$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;-><init>()V

    .line 108
    invoke-virtual {v0, p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments(Ljava/util/Collection;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->build()Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object p0

    .line 111
    invoke-interface {v2, p0}, Lcom/android/server/appfunctions/FutureAppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;
    :try_end_a5
    .catchall {:try_start_55 .. :try_end_a5} :catchall_89

    .line 112
    :try_start_a5
    invoke-interface {p2}, Lcom/android/server/appfunctions/FutureSearchResults;->close()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_ab
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a9

    goto :goto_ce

    :catchall_a9
    move-exception p0

    goto :goto_d2

    :catch_ab
    move-exception p0

    goto :goto_b8

    :goto_ad
    if-eqz p2, :cond_b7

    .line 88
    :try_start_af
    invoke-interface {p2}, Lcom/android/server/appfunctions/FutureSearchResults;->close()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b3

    goto :goto_b7

    :catchall_b3
    move-exception p2

    :try_start_b4
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b7
    :goto_b7
    throw p0
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b8} :catch_ab
    .catchall {:try_start_b4 .. :try_end_b8} :catchall_a9

    .line 113
    :goto_b8
    :try_start_b8
    sget-object p2, Lcom/android/server/appfunctions/AppFunctionPackageMonitor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to reset the AppFunctionRuntimeMetadata when clearing data for package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ce
    .catchall {:try_start_b8 .. :try_end_ce} :catchall_a9

    .line 120
    :goto_ce
    invoke-interface {v2}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V

    return-void

    .line 84
    :goto_d2
    :try_start_d2
    invoke-interface {v2}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d6

    goto :goto_da

    :catchall_d6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_da
    throw p0
.end method
