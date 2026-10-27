.class Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeferredBootCompletedBroadcastPerUser"
.end annotation


# instance fields
.field mBootCompletedBroadcastReceived:Z

.field mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLockedBootCompletedBroadcastReceived:Z

.field mUidReadyForBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

.field mUidReadyForLockedBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

.field private mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$mgetBootCompletedBroadcastsReceiversSize(Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->getBootCompletedBroadcastsReceiversSize(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetBootCompletedBroadcastsUidsSize(Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method constructor <init>(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForLockedBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    .line 255
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    .line 260
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 268
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 275
    iput p1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUserId:I

    .line 276
    return-void
.end method

.method private dequeueDeferredBootCompletedBroadcast(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;Z)Lcom/android/server/am/BroadcastRecord;
    .registers 15
    .param p2, "uidReadyForReceiver"    # Landroid/util/SparseBooleanArray;
    .param p3, "isAllUidReady"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            "Z)",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    .line 347
    .local p1, "uid2br":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "size":I
    :goto_5
    if-ge v0, v1, :cond_ac

    .line 348
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 349
    .local v2, "uid":I
    if-nez p3, :cond_17

    invoke-virtual {p2, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_17

    .line 347
    .end local v2    # "uid":I
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 350
    .restart local v2    # "uid":I
    :cond_17
    :goto_17
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    .line 351
    .local v3, "br":Lcom/android/server/am/BroadcastRecord;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v4, :cond_9f

    .line 352
    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 353
    .local v4, "receiver":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/server/am/BroadcastFilter;

    const-string v6, " broadcast:"

    const-string v7, "getDeferredBootCompletedBroadcast uid:"

    const-string v8, "BroadcastDispatcher"

    if-eqz v5, :cond_66

    .line 354
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v5, :cond_9f

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " BroadcastFilter:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v7, v4

    check-cast v7, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 357
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 355
    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 360
    :cond_66
    move-object v5, v4

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 361
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 362
    .local v9, "packageName":Ljava/lang/String;
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v10, :cond_9f

    .line 363
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " packageName:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 365
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 363
    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v4    # "receiver":Ljava/lang/Object;
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_9f
    :goto_9f
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 371
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_ab

    .line 374
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 376
    :cond_ab
    return-object v3

    .line 379
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "uid":I
    .end local v3    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_ac
    const/4 v0, 0x0

    return-object v0
.end method

.method private dumpBootCompletedBroadcastRecord(Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;)V"
        }
    .end annotation

    .line 439
    .local p1, "brs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "size":I
    :goto_5
    if-ge v0, v1, :cond_6c

    .line 440
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 441
    .local v2, "receiver":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 442
    .local v3, "packageName":Ljava/lang/String;
    instance-of v4, v2, Lcom/android/server/am/BroadcastFilter;

    if-eqz v4, :cond_23

    .line 443
    move-object v4, v2

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    .line 444
    .local v4, "recv":Lcom/android/server/am/BroadcastFilter;
    iget-object v5, v4, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 445
    .end local v4    # "recv":Lcom/android/server/am/BroadcastFilter;
    goto :goto_2c

    .line 446
    :cond_23
    move-object v4, v2

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 447
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 449
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    :goto_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 451
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    iget-object v5, v5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 449
    const-string v5, "BroadcastDispatcher"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .end local v2    # "receiver":Ljava/lang/Object;
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 453
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_6c
    return-void
.end method

.method private enqueueBootCompletedBroadcasts(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .registers 8
    .param p3, "uidReadyForReceiver"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    .line 317
    .local p1, "from":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    .local p2, "into":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 318
    invoke-virtual {p3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_15

    .line 319
    invoke-virtual {p3, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 317
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 322
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x0

    .restart local v0    # "i":I
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "size":I
    :goto_1d
    if-ge v0, v1, :cond_39

    .line 323
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 324
    .local v2, "uid":I
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p2, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 325
    invoke-virtual {p3, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_36

    .line 327
    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 322
    .end local v2    # "uid":I
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 330
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_39
    return-void
.end method

.method private getBootCompletedBroadcastsReceiversSize(Ljava/lang/String;)I
    .registers 7
    .param p1, "action"    # Ljava/lang/String;

    .line 408
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->getDeferredList(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 409
    .local v0, "brs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    if-nez v0, :cond_8

    .line 410
    const/4 v1, 0x0

    return v1

    .line 412
    :cond_8
    const/4 v1, 0x0

    .line 413
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "s":I
    :goto_e
    if-ge v2, v3, :cond_20

    .line 414
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastRecord;

    iget-object v4, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 416
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_20
    return v1
.end method

.method private getBootCompletedBroadcastsUidsSize(Ljava/lang/String;)I
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .line 398
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->getDeferredList(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 399
    .local v0, "brs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method private getDeferredList(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "brs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 385
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    goto :goto_16

    .line 386
    :cond_c
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 387
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 389
    :cond_16
    :goto_16
    return-object v0
.end method


# virtual methods
.method public dequeueDeferredBootCompletedBroadcast(Z)Lcom/android/server/am/BroadcastRecord;
    .registers 5
    .param p1, "isAllUidReady"    # Z

    .line 334
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForLockedBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dequeueDeferredBootCompletedBroadcast(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;Z)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 337
    .local v0, "next":Lcom/android/server/am/BroadcastRecord;
    if-nez v0, :cond_12

    .line 338
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dequeueDeferredBootCompletedBroadcast(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;Z)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 341
    :cond_12
    return-object v0
.end method

.method public dump(Lcom/android/server/am/BroadcastDispatcher$Dumper;Ljava/lang/String;)V
    .registers 7
    .param p1, "dumper"    # Lcom/android/server/am/BroadcastDispatcher$Dumper;
    .param p2, "action"    # Ljava/lang/String;

    .line 420
    invoke-direct {p0, p2}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->getDeferredList(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 421
    .local v0, "brs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    if-nez v0, :cond_7

    .line 422
    return-void

    .line 424
    :cond_7
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_c
    if-ge v1, v2, :cond_1a

    .line 425
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p1, v3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->dump(Lcom/android/server/am/BroadcastRecord;)V

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 427
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1a
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 430
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 431
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 433
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_17
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .restart local v1    # "size":I
    :goto_1e
    if-ge v0, v1, :cond_2e

    .line 434
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 436
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2e
    return-void
.end method

.method public enqueueBootCompletedBroadcasts(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;)V"
        }
    .end annotation

    .line 291
    .local p2, "deferred":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 292
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForLockedBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->enqueueBootCompletedBroadcasts(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 294
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mLockedBootCompletedBroadcastReceived:Z

    .line 295
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v0, :cond_36

    .line 296
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dumpBootCompletedBroadcastRecord(Landroid/util/SparseArray;)V

    goto :goto_36

    .line 298
    :cond_1c
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 299
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->enqueueBootCompletedBroadcasts(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 301
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mBootCompletedBroadcastReceived:Z

    .line 302
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v0, :cond_36

    .line 303
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->dumpBootCompletedBroadcastRecord(Landroid/util/SparseArray;)V

    .line 306
    :cond_36
    :goto_36
    return-void
.end method

.method public updateUidReady(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 279
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mLockedBootCompletedBroadcastReceived:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredLockedBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 280
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_12

    .line 281
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForLockedBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 283
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mBootCompletedBroadcastReceived:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mDeferredBootCompletedBroadcasts:Landroid/util/SparseArray;

    .line 284
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_23

    .line 285
    :cond_1e
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$DeferredBootCompletedBroadcastPerUser;->mUidReadyForBootCompletedBroadcast:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 287
    :cond_23
    return-void
.end method
