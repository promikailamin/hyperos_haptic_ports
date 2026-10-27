.class public Lcom/android/server/am/PendingIntentController;
.super Ljava/lang/Object;
.source "PendingIntentController.java"


# instance fields
.field public mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public final mH:Landroid/os/Handler;

.field public final mIntentSenderRecords:Ljava/util/HashMap;

.field public final mIntentsPerUid:Landroid/util/SparseIntArray;

.field public final mLock:Ljava/lang/Object;

.field public final mRecentIntentsPerUid:Landroid/util/SparseArray;

.field public final mUserController:Lcom/android/server/am/UserController;


# direct methods
.method public static synthetic $r8$lambda$8vj5VIrljGq4Dukmp0KCav7XWBE(Lcom/android/server/am/PendingIntentController;Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/PendingIntentController;->clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y9H9gAAIG9kPXv00oSEIO4TUeCM(Lcom/android/server/am/PendingIntentController;Landroid/os/RemoteCallbackList;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/PendingIntentController;->handlePendingIntentCancelled(Landroid/os/RemoteCallbackList;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/am/UserController;Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 5

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 97
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    .line 109
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 110
    iput-object p2, p0, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    .line 111
    iput-object p3, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    return-void
.end method


# virtual methods
.method public cancelIntentSender(Landroid/content/IIntentSender;)V
    .registers 8

    .line 263
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_5

    return-void

    .line 266
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_8
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_2f

    .line 269
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 270
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    const-wide/32 v4, 0x10000000

    .line 269
    invoke-interface {v1, v2, v4, v5, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 271
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_25} :catch_69
    .catchall {:try_start_a .. :try_end_25} :catchall_2f

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    const/16 v2, 0x8

    .line 281
    :try_start_2a
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;ZI)V

    .line 282
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception p0

    goto :goto_70

    .line 272
    :cond_31
    :try_start_31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: cancelIntentSender() from pid="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not allowed to cancel package "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 275
    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_69} :catch_69
    .catchall {:try_start_31 .. :try_end_69} :catchall_2f

    :catch_69
    move-exception p0

    .line 279
    :try_start_6a
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 282
    :goto_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_2f

    throw p0
.end method

.method public cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;ZI)V
    .registers 6

    .line 287
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;I)V

    .line 289
    iget-object p3, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    if-eqz p2, :cond_2f

    .line 291
    iget-object p2, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object p2, p2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eqz p2, :cond_2f

    .line 292
    new-instance p2, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda0;-><init>()V

    iget-object p3, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object p3, p3, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-static {p2, p0, p3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 295
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_31

    .line 297
    :cond_2f
    :goto_2f
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_2d

    throw p0
.end method

.method public final clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .registers 3

    .line 383
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V
    .registers 5

    .line 547
    iget p1, p1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 548
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2c

    .line 550
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 552
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    add-int/lit8 v2, v2, -0xa

    if-ne v1, v2, :cond_1f

    .line 553
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_1f
    if-nez v1, :cond_27

    .line 556
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    return-void

    .line 558
    :cond_27
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    :cond_2c
    return-void
.end method

.method public dumpPendingIntentStatsForStatsd()Ljava/util/List;
    .registers 10

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_9a

    .line 467
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 468
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 470
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_24
    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_24

    .line 471
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_39

    goto :goto_24

    .line 474
    :cond_39
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    .line 475
    iget v5, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    const/4 v6, 0x1

    if-gez v5, :cond_5d

    .line 478
    iget v5, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 479
    iget v5, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 480
    invoke-virtual {v4}, Landroid/content/Intent;->getExtrasTotalSize()I

    move-result v4

    .line 479
    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_24

    :catchall_5b
    move-exception p0

    goto :goto_9c

    .line 482
    :cond_5d
    iget v7, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v2, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 483
    iget v6, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 484
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 485
    invoke-virtual {v4}, Landroid/content/Intent;->getExtrasTotalSize()I

    move-result v4

    add-int/2addr v5, v4

    .line 483
    invoke-virtual {v3, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_24

    .line 490
    :cond_7a
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    const/4 v4, 0x0

    :goto_7f
    if-ge v4, p0, :cond_9a

    .line 491
    new-instance v5, Landroid/app/PendingIntentStats;

    .line 492
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 493
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 494
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    div-int/lit16 v8, v8, 0x400

    invoke-direct {v5, v6, v7, v8}, Landroid/app/PendingIntentStats;-><init>(III)V

    .line 491
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_7f

    .line 497
    :cond_9a
    monitor-exit v1

    return-object v0

    :goto_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_8 .. :try_end_9d} :catchall_5b

    throw p0
.end method

.method public dumpPendingIntents(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 13

    .line 387
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_3
    const-string v1, "ACTIVITY MANAGER PENDING INTENTS (dumpsys activity intents)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_f5

    .line 394
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 395
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 396
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 397
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 398
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 399
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_3d

    .line 400
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_3e

    :catchall_3a
    move-exception p0

    goto/16 :goto_128

    :cond_3d
    const/4 v6, 0x0

    :goto_3e
    if-nez v6, :cond_44

    .line 402
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_44
    if-eqz p3, :cond_51

    .line 405
    iget-object v5, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_51

    goto :goto_25

    .line 408
    :cond_51
    iget-object v5, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_69

    .line 410
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 411
    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_69
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_6d
    move p3, v2

    move v4, p3

    .line 415
    :goto_6f
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge p3, v5, :cond_ca

    .line 416
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 418
    const-string v5, "  * "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " items"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v5, v2

    .line 420
    :goto_9c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_c6

    .line 421
    const-string v7, "    #"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p2, :cond_c3

    .line 423
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/PendingIntentRecord;

    const-string v8, "      "

    invoke-virtual {v7, p1, v8}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_c3
    add-int/lit8 v5, v5, 0x1

    goto :goto_9c

    :cond_c6
    add-int/lit8 p3, p3, 0x1

    move v4, v6

    goto :goto_6f

    .line 427
    :cond_ca
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_f6

    .line 429
    const-string p2, "  * WEAK REFS:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p2, v2

    .line 430
    :goto_d6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_f3

    .line 431
    const-string p3, "    #"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_d6

    :cond_f3
    move v4, v6

    goto :goto_f6

    :cond_f5
    move v4, v2

    .line 436
    :cond_f6
    :goto_f6
    iget-object p2, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-lez p2, :cond_11f

    :goto_fe
    if-ge v2, p2, :cond_11f

    .line 439
    const-string p3, "  * UID: "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    iget-object p3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {p3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 441
    const-string p3, " total: "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    iget-object p3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {p3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_fe

    :cond_11f
    if-nez v4, :cond_126

    .line 447
    const-string p0, "  (nothing)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    :cond_126
    monitor-exit v0

    return-void

    :goto_128
    monitor-exit v0
    :try_end_129
    .catchall {:try_start_3 .. :try_end_129} :catchall_3a

    throw p0
.end method

.method public getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;
    .registers 32

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v9, p9

    .line 123
    iget-object v14, v0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v14

    const/4 v2, 0x0

    const/4 v15, 0x1

    if-eqz v9, :cond_1c

    move v3, v2

    .line 129
    :goto_e
    :try_start_e
    array-length v4, v9

    if-ge v3, v4, :cond_1c

    .line 130
    aget-object v4, v9, v3

    invoke-virtual {v4, v15}, Landroid/content/Intent;->setDefusable(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :catchall_19
    move-exception v0

    goto/16 :goto_11a

    :cond_1c
    move-object/from16 v3, p12

    .line 133
    invoke-static {v3, v15}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 134
    invoke-static {v3}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v3

    if-eqz v3, :cond_6c

    .line 135
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v4

    if-eqz v4, :cond_6c

    .line 137
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resetting option setPendingIntentBackgroundActivityStartMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") to SYSTEM_DEFINED from the options provided by the pending intent creator ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") because this option is meant for the pending intent sender"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v4, 0x131cf49a

    .line 143
    invoke-static {v4, v5, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v4

    if-nez v4, :cond_63

    .line 148
    invoke-virtual {v3, v2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    goto :goto_6e

    .line 145
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pendingIntentBackgroundActivityStartMode must not be set when creating a PendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    move-object/from16 v6, p2

    :goto_6e
    const/high16 v4, 0x20000000

    and-int v4, p11, v4

    if-eqz v4, :cond_77

    move/from16 v16, v15

    goto :goto_79

    :cond_77
    move/from16 v16, v2

    :goto_79
    const/high16 v4, 0x10000000

    and-int v4, p11, v4

    if-eqz v4, :cond_82

    move/from16 v17, v15

    goto :goto_84

    :cond_82
    move/from16 v17, v2

    :goto_84
    const/high16 v4, 0x8000000

    and-int v4, p11, v4

    if-eqz v4, :cond_8d

    move/from16 v18, v15

    goto :goto_8f

    :cond_8d
    move/from16 v18, v2

    :goto_8f
    const v2, -0x38000001

    and-int v11, p11, v2

    .line 158
    new-instance v2, Lcom/android/server/am/PendingIntentRecord$Key;

    new-instance v12, Lcom/android/server/wm/SafeActivityOptions;

    .line 160
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v12, v3, v4, v5}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;II)V

    move/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v13, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v10, p10

    move-object v4, v6

    move-object/from16 v6, p6

    invoke-direct/range {v2 .. v13}, Lcom/android/server/am/PendingIntentRecord$Key;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;I)V

    .line 163
    iget-object v3, v0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    if-eqz v3, :cond_c7

    .line 164
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_c8

    :cond_c7
    move-object v3, v4

    :goto_c8
    if-eqz v3, :cond_105

    if-nez v17, :cond_f8

    if-eqz v18, :cond_f6

    .line 168
    iget-object v0, v3, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_df

    if-eqz v9, :cond_db

    .line 170
    array-length v1, v9

    sub-int/2addr v1, v15

    aget-object v1, v9, v1

    goto :goto_dc

    :cond_db
    move-object v1, v4

    .line 169
    :goto_dc
    invoke-virtual {v0, v1}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    :cond_df
    if-eqz v9, :cond_f0

    .line 173
    array-length v0, v9

    sub-int/2addr v0, v15

    iget-object v1, v3, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    aput-object v2, v9, v0

    .line 174
    iput-object v9, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    move-object/from16 v10, p10

    .line 175
    iput-object v10, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    goto :goto_f6

    .line 177
    :cond_f0
    iget-object v0, v3, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput-object v4, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 178
    iput-object v4, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    .line 181
    :cond_f6
    :goto_f6
    monitor-exit v14

    return-object v3

    :cond_f8
    const/16 v4, 0x20

    .line 183
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;I)V

    .line 184
    iget-object v4, v0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {v0, v3}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    :cond_105
    if-eqz v16, :cond_109

    .line 188
    monitor-exit v14

    return-object v3

    .line 190
    :cond_109
    new-instance v3, Lcom/android/server/am/PendingIntentRecord;

    invoke-direct {v3, v0, v2, v1}, Lcom/android/server/am/PendingIntentRecord;-><init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V

    .line 191
    iget-object v1, v0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v4, v3, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {v0, v3}, Lcom/android/server/am/PendingIntentController;->incrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    .line 193
    monitor-exit v14

    return-object v3

    .line 194
    :goto_11a
    monitor-exit v14
    :try_end_11b
    .catchall {:try_start_e .. :try_end_11b} :catchall_19

    throw v0
.end method

.method public getPendingIntentFlags(Landroid/content/IIntentSender;)I
    .registers 4

    .line 343
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_1d

    .line 344
    const-string p0, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "markAsSentFromNotification(): not a PendingIntentRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 347
    :cond_1d
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 348
    :try_start_20
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget p1, p1, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    monitor-exit p0

    return p1

    :catchall_28
    move-exception p1

    .line 349
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public final handlePendingIntentCancelled(Landroid/os/RemoteCallbackList;)V
    .registers 6

    .line 367
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, p0, :cond_15

    .line 370
    :try_start_8
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/IResultReceiver;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_12

    :catch_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 375
    :cond_15
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 378
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method public incrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V
    .registers 7

    .line 507
    iget v0, p1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 508
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_18

    .line 511
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 512
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_1d

    .line 514
    :cond_18
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 518
    :goto_1d
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    add-int/lit8 v3, v1, -0x9

    const/16 v4, 0xa

    if-ne v2, v3, :cond_34

    .line 521
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 522
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_42

    :cond_34
    if-le v2, v3, :cond_41

    if-gt v2, v1, :cond_41

    .line 524
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/RingBuffer;

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    if-nez v1, :cond_45

    goto :goto_87

    .line 530
    :cond_45
    iget-object p1, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {p1}, Lcom/android/server/am/PendingIntentRecord$Key;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 533
    iget-object p1, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p1, p1, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    if-ne v2, p1, :cond_87

    .line 534
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many PendingIntent created for uid "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", recent "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 534
    const-string v1, "ActivityManager"

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_87
    :goto_87
    return-void
.end method

.method public final makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;I)V
    .registers 4

    const/4 v0, 0x1

    .line 354
    iput-boolean v0, p1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 355
    iput p2, p1, Lcom/android/server/am/PendingIntentRecord;->cancelReason:I

    .line 356
    invoke-virtual {p1}, Lcom/android/server/am/PendingIntentRecord;->detachCancelListenersLocked()Landroid/os/RemoteCallbackList;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 358
    new-instance v0, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 360
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 362
    :cond_19
    const-class p0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/AlarmManagerInternal;

    .line 363
    new-instance p2, Landroid/app/PendingIntent;

    invoke-direct {p2, p1}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    invoke-interface {p0, p2}, Lcom/android/server/AlarmManagerInternal;->remove(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public onActivityManagerInternalAdded()V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_3
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 117
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public registerIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)Z
    .registers 5

    .line 301
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 302
    const-string p0, "ActivityManager"

    const-string/jumbo p1, "registerIntentSenderCancelListener called on non-PendingIntentRecord"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 307
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 308
    :try_start_11
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    .line 309
    iget-boolean v0, p1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_1e

    .line 311
    invoke-virtual {p1, p2}, Lcom/android/server/am/PendingIntentRecord;->registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V

    .line 312
    monitor-exit p0

    return v1

    :catchall_1c
    move-exception p1

    goto :goto_21

    :cond_1e
    const/4 p1, 0x0

    .line 314
    monitor-exit p0

    return p1

    .line 316
    :goto_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_1c

    throw p1
.end method

.method public removePendingIntentsForPackage(Ljava/lang/String;IIZI)Z
    .registers 12

    .line 201
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_11

    .line 207
    monitor-exit v0

    return v2

    :catchall_e
    move-exception p0

    goto/16 :goto_8b

    .line 210
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 211
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 212
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    .line 213
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_2d

    .line 215
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1b

    .line 218
    :cond_2d
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PendingIntentRecord;

    if-nez v3, :cond_39

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1b

    :cond_39
    if-nez p1, :cond_42

    .line 225
    iget-object v4, v3, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v4, p2, :cond_60

    goto :goto_1b

    .line 230
    :cond_42
    iget v4, v3, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-eq v4, p3, :cond_4b

    goto :goto_1b

    :cond_4b
    const/4 v4, -0x1

    if-eq p2, v4, :cond_55

    .line 234
    iget-object v4, v3, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v4, p2, :cond_55

    goto :goto_1b

    .line 238
    :cond_55
    iget-object v4, v3, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    goto :goto_1b

    :cond_60
    const/4 v2, 0x1

    if-nez p4, :cond_65

    .line 244
    monitor-exit v0

    return v2

    .line 247
    :cond_65
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 248
    invoke-virtual {p0, v3, p5}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;I)V

    .line 249
    invoke-virtual {p0, v3}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    .line 250
    iget-object v4, v3, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eqz v4, :cond_1b

    .line 251
    new-instance v4, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticLambda0;-><init>()V

    iget-object v5, v3, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-static {v4, p0, v5, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 254
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1b

    .line 257
    :cond_89
    monitor-exit v0

    return v2

    :goto_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_3 .. :try_end_8c} :catchall_e

    throw p0
.end method

.method public setPendingIntentAllowlistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;JIILjava/lang/String;)V
    .registers 9

    .line 332
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_1c

    .line 333
    const-string p0, "ActivityManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "markAsSentFromNotification(): not a PendingIntentRecord: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 336
    :cond_1c
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 337
    :try_start_1f
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/am/PendingIntentRecord;->setAllowlistDurationLocked(Landroid/os/IBinder;JIILjava/lang/String;)V

    .line 339
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_26

    throw p1
.end method

.method public unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V
    .registers 4

    .line 321
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_5

    return-void

    .line 324
    :cond_5
    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 325
    :try_start_8
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/am/PendingIntentRecord;->unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V

    .line 326
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p1
.end method
