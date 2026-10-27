.class public Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
.super Ljava/lang/Object;
.source "ZenModeFiltering.java"


# instance fields
.field public final mOtherCalls:Landroid/util/ArrayMap;

.field public final mTelCalls:Landroid/util/ArrayMap;

.field public mThresholdMinutes:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmOtherCalls(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTelCalls(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThresholdMinutes(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcleanUpCallsAfter(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUpCallsAfter(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misRepeat(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->isRepeat(Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrecordCall(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->recordCall(Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    .line 397
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/ZenModeFiltering-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized checkCallers(Landroid/content/Context;[Ljava/lang/String;Landroid/util/ArraySet;)Z
    .registers 13

    monitor-enter p0

    .line 534
    :try_start_1
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 535
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 536
    :goto_11
    array-length v4, p2

    const/4 v5, 0x1

    if-ge v0, v4, :cond_49

    .line 537
    aget-object v4, p2, v0

    if-nez v4, :cond_1a

    goto :goto_46

    .line 539
    :cond_1a
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 540
    const-string/jumbo v7, "tel"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 541
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-virtual {p0, v2, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->checkForNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    move v1, v5

    :cond_36
    move v2, v5

    goto :goto_46

    :catchall_38
    move-exception p1

    goto :goto_69

    .line 548
    :cond_3a
    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    move v1, v5

    move v3, v1

    goto :goto_46

    :cond_45
    move v3, v5

    :goto_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_49
    if-eqz p3, :cond_64

    .line 556
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_64

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 558
    invoke-virtual {p0, p3, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->checkForNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_62

    move v1, v5

    :cond_62
    move v2, v5

    goto :goto_4f

    .line 565
    :cond_64
    invoke-static {v1, v2, v3}, Lcom/android/server/notification/ZenLog;->traceCheckRepeatCaller(ZZZ)V
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_38

    .line 566
    monitor-exit p0

    return v1

    :goto_69
    :try_start_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_38

    throw p1
.end method

.method public final declared-synchronized checkForNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    monitor-enter p0

    .line 509
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_30

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 511
    monitor-exit p0

    return v1

    .line 514
    :cond_c
    :try_start_c
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 516
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 517
    invoke-static {p1, v2, p2}, Landroid/telephony/PhoneNumberUtils;->areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_30

    if-eqz v2, :cond_1c

    .line 519
    monitor-exit p0

    return v1

    :catchall_30
    move-exception p1

    goto :goto_35

    .line 524
    :cond_32
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_30

    throw p1
.end method

.method public final declared-synchronized cleanUp(Landroid/util/ArrayMap;J)V
    .registers 9

    monitor-enter p0

    .line 433
    :try_start_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_2d

    .line 435
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-gtz v3, :cond_27

    sub-long v1, p2, v1

    .line 436
    iget v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    const v4, 0xea60

    mul-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2a

    goto :goto_27

    :catchall_25
    move-exception p1

    goto :goto_2f

    .line 437
    :cond_27
    :goto_27
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_25

    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 440
    :cond_2d
    monitor-exit p0

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_25

    throw p1
.end method

.method public final declared-synchronized cleanUpCallsAfter(J)V
    .registers 6

    monitor-enter p0

    .line 445
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_26

    .line 446
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_23

    .line 448
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_23

    :catchall_21
    move-exception p1

    goto :goto_4a

    :cond_23
    :goto_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 451
    :cond_26
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2e
    if-ltz v0, :cond_48

    .line 452
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_45

    .line 454
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_21

    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    .line 457
    :cond_48
    monitor-exit p0

    return-void

    :goto_4a
    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_21

    throw p1
.end method

.method public final declared-synchronized isRepeat(Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z
    .registers 7

    monitor-enter p0

    .line 422
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->setThresholdMinutes(Landroid/content/Context;)V

    .line 423
    iget v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    const/4 v1, 0x0

    if-lez v0, :cond_2e

    if-nez p2, :cond_c

    goto :goto_2e

    .line 424
    :cond_c
    invoke-static {p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2c

    .line 425
    array-length v0, p2

    if-nez v0, :cond_16

    goto :goto_2c

    .line 426
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 427
    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    .line 428
    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    .line 429
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->checkCallers(Landroid/content/Context;[Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result p1
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return p1

    :catchall_2a
    move-exception p1

    goto :goto_30

    .line 425
    :cond_2c
    :goto_2c
    monitor-exit p0

    return v1

    .line 423
    :cond_2e
    :goto_2e
    monitor-exit p0

    return v1

    :goto_30
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2a

    throw p1
.end method

.method public final declared-synchronized recordCall(Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)V
    .registers 6

    monitor-enter p0

    .line 405
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->setThresholdMinutes(Landroid/content/Context;)V

    .line 406
    iget p1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    if-lez p1, :cond_2c

    if-nez p2, :cond_b

    goto :goto_2c

    .line 407
    :cond_b
    invoke-static {p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 408
    array-length p2, p1

    if-nez p2, :cond_15

    goto :goto_2a

    .line 409
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 410
    iget-object p2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    .line 411
    iget-object p2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    .line 412
    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->recordCallers([Ljava/lang/String;Landroid/util/ArraySet;J)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 413
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    goto :goto_2e

    .line 408
    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void

    .line 406
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_28

    throw p1
.end method

.method public final declared-synchronized recordCallers([Ljava/lang/String;Landroid/util/ArraySet;J)V
    .registers 14

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 469
    :goto_5
    :try_start_5
    array-length v4, p1

    const/4 v5, 0x1

    if-ge v0, v4, :cond_45

    .line 470
    aget-object v4, p1, v0

    if-nez v4, :cond_e

    goto :goto_42

    .line 472
    :cond_e
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 473
    const-string/jumbo v7, "tel"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 476
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_42

    .line 478
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v5

    move v2, v1

    goto :goto_42

    :catchall_35
    move-exception p1

    goto :goto_6c

    .line 484
    :cond_37
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v5

    move v3, v1

    :cond_42
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_45
    if-eqz p2, :cond_65

    .line 493
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4b
    :goto_4b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_4b

    .line 495
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v5

    move v2, v1

    goto :goto_4b

    :cond_65
    if-eqz v1, :cond_6a

    .line 502
    invoke-static {v2, v3}, Lcom/android/server/notification/ZenLog;->traceRecordCaller(ZZ)V
    :try_end_6a
    .catchall {:try_start_5 .. :try_end_6a} :catchall_35

    .line 504
    :cond_6a
    monitor-exit p0

    return-void

    :goto_6c
    :try_start_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_35

    throw p1
.end method

.method public final setThresholdMinutes(Landroid/content/Context;)V
    .registers 3

    .line 460
    iget v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    if-gtz v0, :cond_11

    .line 461
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e018a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    :cond_11
    return-void
.end method
