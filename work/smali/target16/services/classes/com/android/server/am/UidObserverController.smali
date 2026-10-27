.class public Lcom/android/server/am/UidObserverController;
.super Ljava/lang/Object;
.source "UidObserverController.java"


# instance fields
.field public mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

.field public final mAvailUidChanges:Ljava/util/ArrayList;

.field public final mDispatchRunnable:Ljava/lang/Runnable;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingUidChanges:Ljava/util/ArrayList;

.field public mUidChangeDispatchCount:I

.field public final mUidObservers:Landroid/os/RemoteCallbackList;

.field public final mValidateUids:Lcom/android/server/am/ActiveUids;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    const/4 v0, 0x5

    .line 69
    new-array v0, v0, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 75
    new-instance v0, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UidObserverController;)V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    .line 85
    iput-object p1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance p1, Lcom/android/server/am/ActiveUids;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActiveUids$Observer;)V

    iput-object p1, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    return-void
.end method

.method public static mergeWithPendingChange(II)I
    .registers 4

    .line 0
    and-int/lit8 v0, p0, 0x6

    if-nez v0, :cond_7

    and-int/lit8 v0, p1, 0x6

    or-int/2addr p0, v0

    :cond_7
    and-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_e

    and-int/lit8 v0, p1, 0x18

    or-int/2addr p0, v0

    :cond_e
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_14

    and-int/lit8 p0, p0, -0xd

    :cond_14
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_1a

    or-int/lit8 p0, p0, 0x20

    :cond_1a
    const/high16 v0, -0x80000000

    and-int v1, p1, v0

    if-eqz v1, :cond_21

    or-int/2addr p0, v0

    :cond_21
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_27

    or-int/lit8 p0, p0, 0x40

    :cond_27
    return p0
.end method


# virtual methods
.method public final addUidToObserver(Landroid/os/IBinder;I)V
    .registers 6

    .line 113
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 115
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final addUidToObserverImpl(Landroid/os/IBinder;I)V
    .registers 6

    .line 126
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2b

    .line 128
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 129
    invoke-virtual {v0}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 130
    invoke-virtual {v0, p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->addUid(I)V

    goto :goto_2b

    :cond_20
    if-nez v1, :cond_29

    .line 135
    const-string v0, "ActivityManager"

    const-string v2, "Unable to find UidObserver by token"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    move v0, v1

    goto :goto_6

    .line 138
    :cond_2b
    :goto_2b
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dispatchUidsChanged()V
    .registers 10

    .line 264
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 266
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    array-length v2, v2

    if-ge v2, v1, :cond_16

    .line 267
    new-array v2, v1, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput-object v2, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    goto :goto_16

    :catchall_13
    move-exception p0

    goto/16 :goto_dd

    :cond_16
    :goto_16
    const/4 v2, 0x0

    move v3, v2

    :goto_18
    if-ge v3, v1, :cond_36

    .line 270
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 271
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-virtual {p0}, Lcom/android/server/am/UidObserverController;->getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;

    move-result-object v6

    aput-object v6, v5, v3

    .line 272
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/android/server/am/UidObserverController$ChangeRecord;->copyTo(Lcom/android/server/am/UidObserverController$ChangeRecord;)V

    .line 273
    iput-boolean v2, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 275
    :cond_36
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 279
    iget v3, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    .line 280
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_13

    .line 282
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_47
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_60

    .line 284
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IUidObserver;

    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 285
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 284
    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/am/UidObserverController;->dispatchUidsChangedForObserver(Landroid/app/IUidObserver;Lcom/android/server/am/UidObserverController$UidObserverRegistration;I)V

    move v0, v3

    goto :goto_47

    .line 287
    :cond_60
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 289
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 290
    :try_start_68
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_c8

    move v0, v2

    :goto_71
    if-ge v0, v1, :cond_c8

    .line 292
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v4, v4, v0

    .line 293
    iget v5, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_87

    .line 294
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v4, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActiveUids;->remove(I)V

    goto :goto_c5

    :catchall_85
    move-exception p0

    goto :goto_db

    .line 296
    :cond_87
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v7, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v5

    if-nez v5, :cond_a0

    .line 298
    new-instance v5, Lcom/android/server/am/UidRecord;

    iget v7, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/android/server/am/UidRecord;-><init>(ILcom/android/server/am/ActivityManagerService;)V

    .line 299
    iget-object v7, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v8, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v7, v8, v5}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 301
    :cond_a0
    iget v7, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_aa

    .line 302
    invoke-virtual {v5, v6}, Lcom/android/server/am/psc/UidRecordInternal;->setIdle(Z)V

    goto :goto_b1

    :cond_aa
    and-int/lit8 v6, v7, 0x4

    if-eqz v6, :cond_b1

    .line 304
    invoke-virtual {v5, v2}, Lcom/android/server/am/psc/UidRecordInternal;->setIdle(Z)V

    .line 306
    :cond_b1
    :goto_b1
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/psc/UidRecordInternal;->setSetProcState(I)V

    .line 307
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/psc/UidRecordInternal;->setCurProcState(I)V

    .line 308
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/psc/UidRecordInternal;->setSetCapability(I)V

    .line 309
    iget v4, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v5, v4}, Lcom/android/server/am/psc/UidRecordInternal;->setCurCapability(I)V

    :goto_c5
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    :cond_c8
    move v0, v2

    :goto_c9
    if-ge v0, v1, :cond_d9

    .line 314
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v4, v4, v0

    .line 315
    iput-boolean v2, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 316
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c9

    .line 318
    :cond_d9
    monitor-exit v3

    return-void

    :goto_db
    monitor-exit v3
    :try_end_dc
    .catchall {:try_start_68 .. :try_end_dc} :catchall_85

    throw p0

    .line 280
    :goto_dd
    :try_start_dd
    monitor-exit v0
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_13

    throw p0
.end method

.method public final dispatchUidsChangedForObserver(Landroid/app/IUidObserver;Lcom/android/server/am/UidObserverController$UidObserverRegistration;I)V
    .registers 22

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    if-nez v0, :cond_8

    goto/16 :goto_14e

    :cond_8
    const/4 v7, 0x0

    move/from16 v8, p3

    move v9, v7

    :goto_c
    if-ge v9, v8, :cond_14e

    move-object/from16 v10, p0

    .line 328
    :try_start_10
    iget-object v1, v10, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v11, v1, v9

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 330
    iget v14, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    .line 332
    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v6, v1}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->isWatchingUid(I)Z

    move-result v1

    if-nez v1, :cond_24

    goto/16 :goto_149

    .line 336
    :cond_24
    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmUid(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq v1, v2, :cond_3c

    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCanInteractAcrossUsers(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Z

    move-result v1

    if-nez v1, :cond_3c

    goto/16 :goto_149

    :cond_3c
    const/high16 v1, -0x80000000

    const/4 v15, 0x1

    if-ne v14, v1, :cond_4a

    .line 340
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/2addr v1, v15

    if-nez v1, :cond_4a

    goto/16 :goto_149

    :cond_4a
    const/16 v1, 0x40

    if-ne v14, v1, :cond_57

    .line 346
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_57

    goto/16 :goto_149

    :cond_57
    and-int/lit8 v2, v14, 0x2

    if-eqz v2, :cond_6b

    .line 353
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_7c

    .line 357
    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v0, v2, v3}, Landroid/app/IUidObserver;->onUidIdle(IZ)V

    goto :goto_7c

    :cond_6b
    and-int/lit8 v2, v14, 0x4

    if-eqz v2, :cond_7c

    .line 360
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7c

    .line 364
    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v0, v2}, Landroid/app/IUidObserver;->onUidActive(I)V

    .line 367
    :cond_7c
    :goto_7c
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_97

    and-int/lit8 v2, v14, 0x8

    if-eqz v2, :cond_8e

    .line 372
    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v0, v2, v15}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    goto :goto_97

    :cond_8e
    and-int/lit8 v2, v14, 0x10

    if-eqz v2, :cond_97

    .line 377
    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v0, v2, v7}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    :cond_97
    :goto_97
    and-int/lit8 v2, v14, 0x1

    const/16 v3, 0x14

    if-eqz v2, :cond_b8

    .line 381
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_ac

    .line 385
    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v0, v1, v2}, Landroid/app/IUidObserver;->onUidGone(IZ)V

    .line 387
    :cond_ac
    iget-object v1, v6, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_b5

    .line 388
    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_b5
    move v7, v3

    goto/16 :goto_136

    .line 392
    :cond_b8
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    and-int/2addr v2, v15

    if-eqz v2, :cond_ed

    .line 394
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    if-ltz v2, :cond_eb

    .line 395
    iget-object v2, v6, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    iget v4, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v5, :cond_e7

    .line 398
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v4

    if-gt v2, v4, :cond_d8

    move v2, v15

    goto :goto_d9

    :cond_d8
    move v2, v7

    .line 399
    :goto_d9
    iget v4, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v5

    if-gt v4, v5, :cond_e3

    move v4, v15

    goto :goto_e4

    :cond_e3
    move v4, v7

    :goto_e4
    if-eq v2, v4, :cond_ed

    goto :goto_eb

    .line 402
    :cond_e7
    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    if-eq v2, v3, :cond_ed

    :cond_eb
    :goto_eb
    move v2, v15

    goto :goto_ee

    :cond_ed
    move v2, v7

    .line 406
    :goto_ee
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_fe

    and-int/lit8 v4, v14, 0x20

    if-eqz v4, :cond_fc

    move v4, v15

    goto :goto_fd

    :cond_fc
    move v4, v7

    :goto_fd
    or-int/2addr v2, v4

    :cond_fe
    if-eqz v2, :cond_120

    .line 414
    iget-object v2, v6, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_10b

    .line 415
    iget v4, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v5, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_10b
    move v2, v1

    .line 417
    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    move v4, v2

    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    move v5, v3

    move/from16 v16, v4

    iget-wide v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    move/from16 v17, v5

    iget v5, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    move/from16 v7, v17

    invoke-interface/range {v0 .. v5}, Landroid/app/IUidObserver;->onUidStateChanged(IIJI)V

    goto :goto_123

    :cond_120
    move/from16 v16, v1

    move v7, v3

    .line 421
    :goto_123
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_136

    and-int/lit8 v1, v14, 0x40

    if-eqz v1, :cond_136

    .line 423
    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    invoke-interface {v0, v1, v2}, Landroid/app/IUidObserver;->onUidProcAdjChanged(II)V

    .line 426
    :cond_136
    :goto_136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v12

    long-to-int v1, v1

    .line 427
    iget v2, v6, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    if-ge v2, v1, :cond_142

    .line 428
    iput v1, v6, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    :cond_142
    if-lt v1, v7, :cond_149

    .line 431
    iget v1, v6, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    add-int/2addr v1, v15

    iput v1, v6, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I
    :try_end_149
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_149} :catch_14e

    :cond_149
    :goto_149
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x0

    goto/16 :goto_c

    :catch_14e
    :cond_14e
    :goto_14e
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10

    .line 445
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    if-ge v3, v1, :cond_3b

    .line 449
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 450
    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    if-eqz p2, :cond_25

    .line 451
    invoke-static {v5}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmPkg(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_93

    :cond_25
    :goto_25
    if-nez v4, :cond_2d

    .line 453
    const-string v4, "  mUidObservers:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 456
    :cond_2d
    iget-object v6, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/IUidObserver;

    invoke-virtual {v5, p1, v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dump(Ljava/io/PrintWriter;Landroid/app/IUidObserver;)V

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_3b
    if-nez p2, :cond_91

    .line 461
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 462
    const-string p2, "  mUidChangeDispatchCount="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    iget p2, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 464
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 465
    const-string p2, "  Slow UID dispatches:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_52
    if-ge v2, v1, :cond_91

    .line 467
    iget-object p2, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 468
    invoke-virtual {p2, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 469
    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 470
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUidObserver;

    invoke-interface {v3}, Landroid/app/IUidObserver;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 471
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    iget v3, p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 473
    const-string v3, " / Max "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 474
    iget p2, p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 475
    const-string/jumbo p2, "ms"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 478
    :cond_91
    monitor-exit v0

    return-void

    :goto_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_3 .. :try_end_94} :catchall_23

    throw p0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .registers 9

    .line 482
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2e

    .line 485
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 486
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    if-eqz p2, :cond_23

    .line 487
    invoke-static {v3}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmPkg(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    goto :goto_23

    :catchall_21
    move-exception p0

    goto :goto_30

    :cond_23
    :goto_23
    const-wide v4, 0x20b00000017L

    .line 488
    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 491
    :cond_2e
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_21

    throw p0
.end method

.method public dumpValidateUids(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z
    .registers 8

    .line 496
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/ActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_b
    move-exception v0

    move-object p0, v0

    .line 498
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_b

    throw p0
.end method

.method public dumpValidateUidsProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V
    .registers 8

    .line 503
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/ActiveUids;->dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V

    .line 505
    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_a

    throw p0
.end method

.method public enqueueUidChange(Lcom/android/server/am/UidObserverController$ChangeRecord;IIIIJIZ)I
    .registers 13

    .line 172
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_15

    .line 177
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_3f

    :cond_15
    :goto_15
    if-eqz p1, :cond_18

    goto :goto_1c

    .line 181
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/am/UidObserverController;->getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;

    move-result-object p1

    .line 182
    :goto_1c
    iget-boolean v1, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    if-nez v1, :cond_29

    const/4 v1, 0x1

    .line 183
    iput-boolean v1, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 184
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 186
    :cond_29
    iget p0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    invoke-static {p3, p0}, Lcom/android/server/am/UidObserverController;->mergeWithPendingChange(II)I

    move-result p3

    .line 189
    :goto_2f
    iput p2, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 190
    iput p3, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    .line 191
    iput p4, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    .line 192
    iput p5, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    .line 193
    iput-wide p6, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    .line 194
    iput p8, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    .line 195
    iput-boolean p9, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    .line 197
    monitor-exit v0

    return p3

    .line 198
    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_13

    throw p0
.end method

.method public final getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 248
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UidObserverController$ChangeRecord;

    return-object p0

    .line 253
    :cond_13
    new-instance p0, Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {p0}, Lcom/android/server/am/UidObserverController$ChangeRecord;-><init>()V

    return-object p0
.end method

.method public getValidateUidRecord(I)Lcom/android/server/am/UidRecord;
    .registers 3

    .line 439
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 441
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public register(Landroid/app/IUidObserver;IILjava/lang/String;I[I)Landroid/os/IBinder;
    .registers 16

    .line 91
    new-instance v7, Landroid/os/Binder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UidObserver-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v8, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 95
    :try_start_29
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {v0, p5, v1, v2}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_35

    :goto_33
    move v5, v2

    goto :goto_37

    :cond_35
    const/4 v2, 0x0

    goto :goto_33

    .line 98
    :goto_37
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    move v3, p2

    move v4, p3

    move-object v2, p4

    move v1, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;-><init>(ILjava/lang/String;IIZ[ILandroid/os/IBinder;)V

    invoke-virtual {p0, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 101
    monitor-exit v8

    return-object v7

    :catchall_48
    move-exception v0

    move-object p0, v0

    monitor-exit v8
    :try_end_4b
    .catchall {:try_start_29 .. :try_end_4b} :catchall_48

    throw p0
.end method

.method public final removeUidFromObserver(Landroid/os/IBinder;I)V
    .registers 6

    .line 142
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x51

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 144
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final removeUidFromObserverImpl(Landroid/os/IBinder;I)V
    .registers 6

    .line 155
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2b

    .line 157
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 158
    invoke-virtual {v0}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 159
    invoke-virtual {v0, p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->removeUid(I)V

    goto :goto_2b

    :cond_20
    if-nez v1, :cond_29

    .line 164
    const-string v0, "ActivityManager"

    const-string v2, "Unable to find UidObserver by token"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    move v0, v1

    goto :goto_6

    .line 167
    :cond_2b
    :goto_2b
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public unregister(Landroid/app/IUidObserver;)V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 109
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
