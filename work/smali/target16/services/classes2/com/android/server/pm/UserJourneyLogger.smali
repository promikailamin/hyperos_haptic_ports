.class public Lcom/android/server/pm/UserJourneyLogger;
.super Ljava/lang/Object;
.source "UserJourneyLogger.java"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mUserIdToUserJourneyMap:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    .line 202
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    return-void
.end method

.method public static errorToFinishState(I)I
    .registers 2

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 v0, 0x3

    if-eq p0, v0, :cond_8

    const/4 p0, 0x4

    return p0

    :cond_8
    return v0

    :cond_9
    const/4 p0, 0x2

    return p0
.end method

.method public static getUserTypeForStatsd(Ljava/lang/String;)I
    .registers 12

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    sparse-switch v0, :sswitch_data_8c

    goto/16 :goto_7c

    :sswitch_17
    const-string v0, "android.os.usertype.profile.CLONE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_7c

    :cond_21
    move v10, v1

    goto/16 :goto_7c

    :sswitch_24
    const-string v0, "android.os.usertype.full.DEMO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto/16 :goto_7c

    :cond_2e
    move v10, v2

    goto :goto_7c

    :sswitch_30
    const-string v0, "android.os.usertype.full.RESTRICTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto :goto_7c

    :cond_39
    move v10, v3

    goto :goto_7c

    :sswitch_3b
    const-string v0, "android.os.usertype.full.SECONDARY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    goto :goto_7c

    :cond_44
    move v10, v4

    goto :goto_7c

    :sswitch_46
    const-string v0, "android.os.usertype.full.SYSTEM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f

    goto :goto_7c

    :cond_4f
    move v10, v5

    goto :goto_7c

    :sswitch_51
    const-string v0, "android.os.usertype.system.HEADLESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5a

    goto :goto_7c

    :cond_5a
    move v10, v6

    goto :goto_7c

    :sswitch_5c
    const-string v0, "android.os.usertype.profile.MANAGED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    goto :goto_7c

    :cond_65
    move v10, v7

    goto :goto_7c

    :sswitch_67
    const-string v0, "android.os.usertype.full.GUEST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_70

    goto :goto_7c

    :cond_70
    move v10, v8

    goto :goto_7c

    :sswitch_72
    const-string v0, "android.os.usertype.profile.PRIVATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7b

    goto :goto_7c

    :cond_7b
    move v10, v9

    :goto_7c
    packed-switch v10, :pswitch_data_b2

    return v9

    :pswitch_80
    return v1

    :pswitch_81
    return v5

    :pswitch_82
    return v4

    :pswitch_83
    return v7

    :pswitch_84
    return v8

    :pswitch_85
    return v2

    :pswitch_86
    return v3

    :pswitch_87
    return v6

    :pswitch_88
    const/16 p0, 0x9

    return p0

    nop

    :sswitch_data_8c
    .sparse-switch
        -0x4e0e8e80 -> :sswitch_72
        -0x41cc9709 -> :sswitch_67
        -0x986a464 -> :sswitch_5c
        0x206d3ba -> :sswitch_51
        0x1cf29ad0 -> :sswitch_46
        0x3825fd13 -> :sswitch_3b
        0x65fcf07c -> :sswitch_30
        0x6939dec4 -> :sswitch_24
        0x7534089a -> :sswitch_17
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
    .end packed-switch
.end method

.method public static journeyToEvent(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_16

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/16 p0, 0xa

    return p0

    :pswitch_8
    const/16 p0, 0x9

    return p0

    :pswitch_b
    const/16 p0, 0x8

    return p0

    :pswitch_e
    const/4 p0, 0x7

    return p0

    :pswitch_10
    const/4 p0, 0x3

    return p0

    :pswitch_12
    const/4 p0, 0x2

    return p0

    :pswitch_14
    const/4 p0, 0x1

    return p0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final findUserJourneySession(I)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .registers 7

    .line 356
    iget-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_25

    .line 359
    iget-object v3, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 360
    div-int/lit8 v4, v3, 0x64

    if-ne v4, p1, :cond_22

    .line 361
    iget-object p0, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    monitor-exit v0

    return-object p0

    :catchall_20
    move-exception p0

    goto :goto_28

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 364
    :cond_25
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_20

    throw p0
.end method

.method public finishAndClearIncompleteUserJourney(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .registers 14

    .line 383
    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v0

    .line 385
    iget-object v2, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    if-eqz v4, :cond_37

    .line 387
    iget v2, v4, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mJourney:I

    .line 390
    invoke-static {v2}, Lcom/android/server/pm/UserJourneyLogger;->journeyToEvent(I)I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x2

    move-object v3, p0

    move v5, p1

    .line 387
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    .line 394
    const-string p0, ""

    .line 399
    invoke-static {p0}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x2

    const/4 v6, -0x1

    move v7, v5

    move v5, p2

    .line 394
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleJourneyReported(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIIIII)V

    .line 401
    iget-object p0, v3, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 403
    monitor-exit v1

    return-object v4

    :catchall_34
    move-exception v0

    move-object p0, v0

    goto :goto_3a

    .line 405
    :cond_37
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_34

    throw p0
.end method

.method public final getUserJourneyKey(II)I
    .registers 3

    .line 0
    mul-int/lit8 p1, p1, 0x64

    add-int/2addr p1, p2

    return p1
.end method

.method public logDelayedUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .registers 16

    .line 477
    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 478
    :try_start_3
    iget v0, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v0

    .line 479
    iget-object v2, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    if-eqz v4, :cond_2f

    .line 481
    iget v7, p2, Landroid/content/pm/UserInfo;->id:I

    iget-object v2, p2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 484
    invoke-static {v2}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v8

    iget v9, p2, Landroid/content/pm/UserInfo;->flags:I

    move-object v3, p0

    move v6, p1

    move v5, p3

    move v10, p4

    .line 481
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleJourneyReported(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIIIII)V

    .line 487
    iget-object p0, v3, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 489
    monitor-exit v1

    return-object v4

    :catchall_2c
    move-exception v0

    move-object p0, v0

    goto :goto_32

    .line 491
    :cond_2f
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :goto_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_2c

    throw p0
.end method

.method public logNullUserJourneyError(IIILjava/lang/String;I)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .registers 16

    .line 502
    iget-object v8, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 503
    :try_start_3
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v9

    .line 504
    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 507
    invoke-static {p1}, Lcom/android/server/pm/UserJourneyLogger;->journeyToEvent(I)I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x4

    move-object v0, p0

    move v2, p3

    .line 506
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    .line 513
    invoke-static {p4}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x4

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p5

    .line 511
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleJourneyReported(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIIIII)V

    .line 516
    iget-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 517
    monitor-exit v8

    return-object v1

    :catchall_2e
    move-exception v0

    .line 518
    monitor-exit v8
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public logUserCreateJourneyFinish(ILandroid/content/pm/UserInfo;)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .registers 14

    .line 528
    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, -0x1

    const/4 v2, 0x4

    .line 531
    :try_start_5
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v0

    .line 532
    iget-object v2, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    if-eqz v4, :cond_37

    .line 534
    iget v5, p2, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v6, 0x3

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    .line 540
    iget v7, p2, Landroid/content/pm/UserInfo;->id:I

    iget-object p0, p2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 543
    invoke-static {p0}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v8

    iget v9, p2, Landroid/content/pm/UserInfo;->flags:I

    const/4 v10, -0x1

    const/4 v5, 0x4

    move v6, p1

    .line 540
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleJourneyReported(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIIIII)V

    .line 546
    iget-object p0, v3, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 548
    monitor-exit v1

    return-object v4

    :catchall_34
    move-exception v0

    move-object p0, v0

    goto :goto_3a

    .line 550
    :cond_37
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_34

    throw p0
.end method

.method public logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .registers 13

    .line 559
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/16 v1, 0x1

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v0

    .line 560
    iget-object v2, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 561
    :try_start_12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v3

    .line 562
    new-instance v5, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    invoke-direct {v5, v0, v1, p2}, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;-><init>(JI)V

    .line 564
    iget-object p2, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {p2, v3, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 566
    iget p2, v5, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mJourney:I

    .line 568
    invoke-static {p2}, Lcom/android/server/pm/UserJourneyLogger;->journeyToEvent(I)I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, -0x1

    move-object v4, p0

    move v6, p1

    .line 566
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    .line 572
    monitor-exit v2

    return-object v5

    :catchall_2f
    move-exception v0

    move-object p0, v0

    .line 573
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_12 .. :try_end_32} :catchall_2f

    throw p0
.end method

.method public logUserJourneyFinish(ILandroid/content/pm/UserInfo;I)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .registers 5

    const/4 v0, -0x1

    .line 414
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object p0

    return-object p0
.end method

.method public logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .registers 15

    .line 447
    iget-object v8, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 448
    :try_start_3
    invoke-static {p4}, Lcom/android/server/pm/UserJourneyLogger;->errorToFinishState(I)I

    move-result v4

    .line 449
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, p3}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v9

    .line 450
    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    if-eqz v1, :cond_3e

    .line 452
    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    iget v3, v1, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mJourney:I

    .line 454
    invoke-static {v3}, Lcom/android/server/pm/UserJourneyLogger;->journeyToEvent(I)I

    move-result v3

    move-object v0, p0

    move v5, p4

    .line 452
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    .line 458
    iget v4, p2, Landroid/content/pm/UserInfo;->id:I

    iget-object v0, p2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 461
    invoke-static {v0}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v5

    iget v6, p2, Landroid/content/pm/UserInfo;->flags:I

    move-object v0, p0

    move v3, p1

    move v2, p3

    move v7, p4

    .line 458
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleJourneyReported(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIIIII)V

    .line 464
    iget-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 466
    monitor-exit v8

    return-object v1

    :catchall_3c
    move-exception v0

    goto :goto_41

    .line 468
    :cond_3e
    monitor-exit v8

    const/4 v0, 0x0

    return-object v0

    :goto_41
    monitor-exit v8
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_3c

    throw v0
.end method

.method public logUserLifecycleEvent(III)V
    .registers 10

    .line 346
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserJourneyLogger;->findUserJourneySession(I)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object v1

    const/4 v5, -0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 347
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    return-void
.end method

.method public logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V
    .registers 20

    if-nez p1, :cond_f

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-wide/16 v1, -0x1

    move-object v0, p0

    move/from16 v3, p2

    move/from16 v4, p3

    .line 322
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/UserJourneyLogger;->writeUserLifecycleEventOccurred(JIIII)V

    return-void

    .line 325
    :cond_f
    iget-wide v8, p1, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mSessionId:J

    move-object v7, p0

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/pm/UserJourneyLogger;->writeUserLifecycleEventOccurred(JIIII)V

    return-void
.end method

.method public logUserLifecycleJourneyReported(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIIIII)V
    .registers 30

    move-object/from16 v0, p1

    if-nez v0, :cond_19

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 291
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/UserJourneyLogger;->writeUserLifecycleJourneyReported(JIIIIIIJ)V

    return-void

    .line 294
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mStartTimeInMills:J

    sub-long v20, v1, v3

    .line 295
    iget-wide v12, v0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mSessionId:J

    move-object/from16 v11, p0

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    invoke-virtual/range {v11 .. v21}, Lcom/android/server/pm/UserJourneyLogger;->writeUserLifecycleJourneyReported(JIIIIIIJ)V

    return-void
.end method

.method public logUserSwitchJourneyFinish(ILandroid/content/pm/UserInfo;)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .registers 9

    .line 424
    iget-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_3
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v1

    .line 426
    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v3

    .line 428
    iget-object v5, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 429
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinish(ILandroid/content/pm/UserInfo;I)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1f
    move-exception p0

    goto :goto_32

    .line 433
    :cond_21
    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 434
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinish(ILandroid/content/pm/UserInfo;I)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2f
    const/4 p0, 0x0

    .line 438
    monitor-exit v0

    return-object p0

    .line 439
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_1f

    throw p0
.end method

.method public startSessionForDelayedJourney(IIJ)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .registers 16

    .line 583
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/16 v1, 0x1

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v6

    .line 584
    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 585
    :try_start_12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result p1

    .line 586
    new-instance v5, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move v8, p2

    move-wide v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;-><init>(JIJ)V

    .line 588
    iget-object p0, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 589
    monitor-exit v1

    return-object v5

    :catchall_24
    move-exception v0

    move-object p0, v0

    .line 590
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_24

    throw p0
.end method

.method public writeUserLifecycleEventOccurred(JIIII)V
    .registers 7

    const/16 p0, 0x109

    .line 336
    invoke-static/range {p0 .. p6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIII)V

    return-void
.end method

.method public writeUserLifecycleJourneyReported(JIIIIIIJ)V
    .registers 11

    const/16 p0, 0x108

    .line 307
    invoke-static/range {p0 .. p10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIIIIIJ)V

    return-void
.end method
