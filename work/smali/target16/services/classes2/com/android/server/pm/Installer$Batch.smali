.class public Lcom/android/server/pm/Installer$Batch;
.super Ljava/lang/Object;
.source "Installer.java"


# instance fields
.field public final mArgs:Ljava/util/List;

.field public mExecuted:Z

.field public final mFutures:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    monitor-enter p0

    .line 306
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    if-nez v0, :cond_18

    .line 309
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 310
    iget-object v1, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object p1, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 312
    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception p1

    goto :goto_1e

    .line 307
    :cond_18
    :try_start_18
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 312
    :goto_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_16

    throw p1
.end method

.method public declared-synchronized execute(Lcom/android/server/pm/Installer;)V
    .registers 10

    monitor-enter p0

    .line 323
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    if-nez v0, :cond_5e

    const/4 v0, 0x1

    .line 324
    iput-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    .line 326
    iget-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_5c

    sub-int v3, v0, v2

    const/16 v4, 0x100

    .line 328
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v4, v3, [Landroid/os/CreateAppDataArgs;

    move v5, v1

    :goto_1d
    if-ge v5, v3, :cond_30

    .line 331
    iget-object v6, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    add-int v7, v2, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/CreateAppDataArgs;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :catchall_2e
    move-exception p1

    goto :goto_64

    .line 333
    :cond_30
    invoke-virtual {p1, v4}, Lcom/android/server/pm/Installer;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v3

    move v4, v1

    .line 334
    :goto_35
    array-length v5, v3

    if-ge v4, v5, :cond_59

    .line 335
    aget-object v5, v3, v4

    .line 336
    iget-object v6, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    add-int v7, v2, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CompletableFuture;

    .line 337
    iget v7, v5, Landroid/os/CreateAppDataResult;->exceptionCode:I

    if-nez v7, :cond_4c

    .line 338
    invoke-virtual {v6, v5}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_56

    .line 340
    :cond_4c
    new-instance v7, Lcom/android/server/pm/Installer$InstallerException;

    iget-object v5, v5, Landroid/os/CreateAppDataResult;->exceptionMessage:Ljava/lang/String;

    invoke-direct {v7, v5}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_2e

    :goto_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_59
    add-int/lit16 v2, v2, 0x100

    goto :goto_10

    .line 345
    :cond_5c
    monitor-exit p0

    return-void

    .line 323
    :cond_5e
    :try_start_5e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 345
    :goto_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_2e

    throw p1
.end method
