.class public abstract Lcom/android/server/appbinding/finders/AppServiceFinder;
.super Ljava/lang/Object;
.source "AppServiceFinder.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLastMessages:Landroid/util/SparseArray;

.field public final mListener:Ljava/util/function/BiConsumer;

.field public final mLock:Ljava/lang/Object;

.field public final mServiceInfos:Landroid/util/SparseArray;

.field public final mTargetPackages:Landroid/util/SparseArray;

.field public final mTargetServices:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;Landroid/os/Handler;)V
    .registers 6

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mServiceInfos:Landroid/util/SparseArray;

    .line 96
    iput-object p1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mListener:Ljava/util/function/BiConsumer;

    .line 98
    iput-object p3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 10

    .line 321
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    const-string v0, "App type: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 326
    iget-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 327
    :goto_17
    :try_start_17
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_a3

    .line 328
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 329
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    const-string v4, "  User: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 332
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 333
    iget-object v4, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 334
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    const-string v6, "    Package: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 339
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    const-string v6, "    Service: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    iget-object v6, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;

    iget-object v6, v6, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 342
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 344
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    const-string v6, "    Message: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    iget-object v6, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;

    iget-object v5, v5, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;->lastMessage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_43

    :catchall_9a
    move-exception p0

    goto :goto_104

    .line 349
    :cond_9c
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_17

    .line 352
    :cond_a3
    :goto_a3
    iget-object v2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_102

    .line 353
    iget-object v2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 354
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    const-string v3, "  User: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 357
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 359
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    const-string v3, "    Package: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 364
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    const-string v3, "    Service: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 367
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 369
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    const-string v3, "    Message: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    .line 374
    :cond_102
    monitor-exit v0

    return-void

    :goto_104
    monitor-exit v0
    :try_end_105
    .catchall {:try_start_17 .. :try_end_105} :catchall_9a

    throw p0
.end method

.method public dumpSimple(Ljava/io/PrintWriter;)V
    .registers 13

    .line 379
    iget-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 380
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_7f

    .line 381
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 382
    const-string v4, "finder,%s,%s"

    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    iget-object v4, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 384
    const-string v6, "finder,%s,%s,%s,%s,%s"

    .line 385
    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mServiceInfos:Landroid/util/SparseArray;

    .line 386
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;

    iget-object v9, v9, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mServiceInfos:Landroid/util/SparseArray;

    .line 387
    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;

    iget-object v10, v10, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;->lastMessage:Ljava/lang/String;

    filled-new-array {v7, v8, v5, v9, v10}, [Ljava/lang/Object;

    move-result-object v5

    .line 384
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_38

    :catchall_7a
    move-exception p0

    goto :goto_d7

    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 390
    :cond_7f
    :goto_7f
    iget-object v2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_d5

    .line 391
    iget-object v2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 392
    const-string v3, "finder,"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 396
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 398
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 400
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    .line 404
    :cond_d5
    monitor-exit v0

    return-void

    :goto_d7
    monitor-exit v0
    :try_end_d8
    .catchall {:try_start_5 .. :try_end_d8} :catchall_7a

    throw p0
.end method

.method public final findService(ILandroid/content/pm/IPackageManager;Lcom/android/server/appbinding/AppBindingConstants;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;
    .registers 15

    .line 195
    iget-object v1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_3
    iget-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_1c

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 199
    iget-object v2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1c

    :catchall_18
    move-exception v0

    move-object p0, v0

    goto/16 :goto_97

    .line 205
    :cond_1c
    :goto_1c
    invoke-virtual {p0, p3, p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->isEnabled(Lcom/android/server/appbinding/AppBindingConstants;I)Z

    move-result p3

    const/4 v2, 0x0

    if-nez p3, :cond_4e

    .line 207
    new-instance p1, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;

    const-string p2, "feature disabled"

    invoke-direct {p1, v2, p2}, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V

    invoke-virtual {v0, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string p1, "AppBindingService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "feature disabled"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    monitor-exit v1

    return-object v2

    .line 212
    :cond_4e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getServiceAction()Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getServicePermission()Ljava/lang/String;

    move-result-object v6

    .line 218
    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getServiceClass()Ljava/lang/Class;

    move-result-object v7

    move v4, p1

    move-object v8, p2

    move-object v3, p4

    .line 213
    invoke-static/range {v3 .. v9}, Lcom/android/server/appbinding/AppBindingUtils;->findService(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/content/pm/IPackageManager;Ljava/lang/StringBuilder;)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    if-nez p1, :cond_76

    .line 223
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 224
    new-instance p1, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;

    invoke-direct {p1, v2, p0}, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    monitor-exit v1

    return-object v2

    .line 231
    :cond_76
    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->validateService(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8b

    .line 233
    new-instance p1, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;

    invoke-direct {p1, v2, p0}, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string p1, "AppBindingService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    monitor-exit v1

    return-object v2

    .line 238
    :cond_8b
    new-instance p0, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;

    const-string p2, "Valid service found"

    invoke-direct {p0, p1, p2}, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    monitor-exit v1

    return-object p1

    .line 241
    :goto_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_3 .. :try_end_98} :catchall_18

    throw p0
.end method

.method public final findServices(ILandroid/content/pm/IPackageManager;Lcom/android/server/appbinding/AppBindingConstants;)Ljava/util/List;
    .registers 8

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getTargetPackages(I)Ljava/util/Set;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 252
    :try_start_7
    iget-object v2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mServiceInfos:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    invoke-virtual {p0, p3, p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->isEnabled(Lcom/android/server/appbinding/AppBindingConstants;I)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_41

    .line 265
    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_3f

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 269
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/appbinding/finders/AppServiceFinder;->findService(ILandroid/content/pm/IPackageManager;Lcom/android/server/appbinding/AppBindingConstants;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 271
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_3e
    return-object v1

    :catchall_3f
    move-exception p0

    goto :goto_89

    .line 259
    :cond_41
    :goto_41
    :try_start_41
    invoke-virtual {p0, p3, p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->isEnabled(Lcom/android/server/appbinding/AppBindingConstants;I)Z

    move-result p2

    if-nez p2, :cond_4a

    const-string p2, "feature disabled"

    goto :goto_4c

    .line 260
    :cond_4a
    const-string p2, "Target packages not found"

    .line 261
    :goto_4c
    iget-object p3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p2}, Lcom/android/server/appbinding/finders/AppServiceFinder$TargetServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V

    invoke-virtual {p3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string p3, "AppBindingService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " u"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v1

    return-object p0

    .line 265
    :goto_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_41 .. :try_end_8a} :catchall_3f

    throw p0
.end method

.method public abstract getAppDescription()Ljava/lang/String;
.end method

.method public abstract getBindFlags(Lcom/android/server/appbinding/AppBindingConstants;)I
.end method

.method public abstract getServiceAction()Ljava/lang/String;
.end method

.method public abstract getServiceClass()Ljava/lang/Class;
.end method

.method public abstract getServicePermission()Ljava/lang/String;
.end method

.method public abstract getTargetPackages(I)Ljava/util/Set;
.end method

.method public abstract isEnabled(Lcom/android/server/appbinding/AppBindingConstants;I)Z
.end method

.method public onUserRemoved(I)V
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 118
    iget-object v1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 119
    iget-object v1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 120
    iget-object p0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mServiceInfos:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 121
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public abstract startMonitoring()V
.end method

.method public abstract validateService(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;
.end method
