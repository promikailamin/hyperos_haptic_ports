.class public Lcom/android/server/pm/Installer$Batch;
.super Ljava/lang/Object;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Batch"
.end annotation


# static fields
.field private static final CREATE_APP_DATA_BATCH_SIZE:I = 0x100


# instance fields
.field private final mArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/CreateAppDataArgs;",
            ">;"
        }
    .end annotation
.end field

.field private mExecuted:Z

.field private final mFutures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p1, "args"    # Landroid/os/CreateAppDataArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CreateAppDataArgs;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 369
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    if-nez v0, :cond_16

    .line 372
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 373
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v1, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1c

    .line 375
    monitor-exit p0

    return-object v0

    .line 370
    .end local v0    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Long;>;"
    .end local p0    # "this":Lcom/android/server/pm/Installer$Batch;
    :cond_16
    :try_start_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1c

    .line 368
    .end local p1    # "args":Landroid/os/CreateAppDataArgs;
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized execute(Lcom/android/server/pm/Installer;)V
    .registers 11
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    monitor-enter p0

    .line 386
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    if-nez v0, :cond_62

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    .line 389
    iget-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 390
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_60

    .line 391
    sub-int v2, v0, v1

    const/16 v3, 0x100

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v2, v2, [Landroid/os/CreateAppDataArgs;

    .line 393
    .local v2, "args":[Landroid/os/CreateAppDataArgs;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1c
    array-length v4, v2

    if-ge v3, v4, :cond_2e

    .line 394
    iget-object v4, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    add-int v5, v1, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/CreateAppDataArgs;

    aput-object v4, v2, v3

    .line 393
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 396
    .end local v3    # "j":I
    .end local p0    # "this":Lcom/android/server/pm/Installer$Batch;
    :cond_2e
    invoke-virtual {p1, v2}, Lcom/android/server/pm/Installer;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v3

    .line 397
    .local v3, "results":[Landroid/os/CreateAppDataResult;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_33
    array-length v5, v2

    if-ge v4, v5, :cond_5d

    .line 398
    aget-object v5, v3, v4

    .line 399
    .local v5, "result":Landroid/os/CreateAppDataResult;
    iget-object v6, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    add-int v7, v1, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CompletableFuture;

    .line 400
    .local v6, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Long;>;"
    iget v7, v5, Landroid/os/CreateAppDataResult;->exceptionCode:I

    if-nez v7, :cond_50

    .line 401
    iget-wide v7, v5, Landroid/os/CreateAppDataResult;->ceDataInode:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 403
    :cond_50
    new-instance v7, Lcom/android/server/pm/Installer$InstallerException;

    iget-object v8, v5, Landroid/os/CreateAppDataResult;->exceptionMessage:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_68

    .line 397
    .end local v5    # "result":Landroid/os/CreateAppDataResult;
    .end local v6    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Long;>;"
    :goto_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 390
    .end local v2    # "args":[Landroid/os/CreateAppDataArgs;
    .end local v3    # "results":[Landroid/os/CreateAppDataResult;
    .end local v4    # "j":I
    :cond_5d
    add-int/lit16 v1, v1, 0x100

    goto :goto_f

    .line 408
    .end local v1    # "i":I
    :cond_60
    monitor-exit p0

    return-void

    .line 386
    .end local v0    # "size":I
    :cond_62
    :try_start_62
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_68

    .line 385
    .end local p1    # "installer":Lcom/android/server/pm/Installer;
    :catchall_68
    move-exception p1

    monitor-exit p0

    throw p1
.end method
