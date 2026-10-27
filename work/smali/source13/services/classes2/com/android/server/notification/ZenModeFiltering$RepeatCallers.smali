.class Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
.super Ljava/lang/Object;
.source "ZenModeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RepeatCallers"
.end annotation


# instance fields
.field private final mOtherCalls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mTelCalls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThresholdMinutes:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmOtherCalls(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelCalls(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThresholdMinutes(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)I
    .registers 1

    iget p0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mcleanUpCallsAfter(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUpCallsAfter(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misRepeat(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->isRepeat(Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrecordCall(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->recordCall(Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    .line 367
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;-><init>()V

    return-void
.end method

.method private declared-synchronized checkCallers(Landroid/content/Context;[Ljava/lang/String;Landroid/util/ArraySet;)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "people"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .local p3, "phoneNumbers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-enter p0

    .line 488
    :try_start_1
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 489
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "defaultCountryCode":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_42

    .line 491
    aget-object v2, p2, v1

    .line 492
    .local v2, "person":Ljava/lang/String;
    if-nez v2, :cond_17

    goto :goto_3f

    .line 493
    :cond_17
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 494
    .local v4, "uri":Landroid/net/Uri;
    const-string/jumbo v5, "tel"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 495
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 496
    .local v5, "number":Ljava/lang/String;
    invoke-direct {p0, v5, v0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->checkForNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_60

    if-eqz v6, :cond_34

    .line 497
    monitor-exit p0

    return v3

    .line 499
    .end local v5    # "number":Ljava/lang/String;
    :cond_34
    goto :goto_3f

    .line 500
    .end local p0    # "this":Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    :cond_35
    :try_start_35
    iget-object v5, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_60

    if-eqz v5, :cond_3f

    .line 501
    monitor-exit p0

    return v3

    .line 490
    .end local v2    # "person":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    :cond_3f
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 507
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    :cond_42
    if-eqz p3, :cond_5d

    .line 508
    :try_start_44
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 509
    .local v2, "num":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->checkForNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_58
    .catchall {:try_start_44 .. :try_end_58} :catchall_60

    if-eqz v4, :cond_5c

    .line 510
    monitor-exit p0

    return v3

    .line 512
    .end local v2    # "num":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    :cond_5c
    goto :goto_48

    .line 516
    .end local p0    # "this":Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    :cond_5d
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 487
    .end local v0    # "defaultCountryCode":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "people":[Ljava/lang/String;
    .end local p3    # "phoneNumbers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_60
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized checkForNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryCode"    # Ljava/lang/String;

    monitor-enter p0

    .line 465
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_34

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 467
    monitor-exit p0

    return v1

    .line 470
    :cond_c
    :try_start_c
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "numberToCheck":Ljava/lang/String;
    if-eqz v0, :cond_31

    .line 472
    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 473
    .local v3, "prev":Ljava/lang/String;
    invoke-static {v0, v3, p2}, Landroid/telephony/PhoneNumberUtils;->areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    if-eqz v4, :cond_30

    .line 475
    monitor-exit p0

    return v1

    .line 477
    .end local v3    # "prev":Ljava/lang/String;
    :cond_30
    goto :goto_1c

    .line 480
    .end local v0    # "numberToCheck":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    :cond_31
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 464
    .end local p1    # "number":Ljava/lang/String;
    .end local p2    # "defaultCountryCode":Ljava/lang/String;
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized cleanUp(Landroid/util/ArrayMap;J)V
    .registers 12
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .local p1, "calls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-enter p0

    .line 403
    :try_start_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 404
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_2a

    .line 405
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 406
    .local v2, "time":J
    cmp-long v4, v2, p2

    if-gtz v4, :cond_24

    sub-long v4, p2, v2

    iget v6, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    mul-int/lit16 v6, v6, 0x3e8

    mul-int/lit8 v6, v6, 0x3c

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_27

    .line 407
    .end local p0    # "this":Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    :cond_24
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2c

    .line 404
    .end local v2    # "time":J
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 410
    .end local v1    # "i":I
    :cond_2a
    monitor-exit p0

    return-void

    .line 402
    .end local v0    # "N":I
    .end local p1    # "calls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local p2    # "now":J
    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized cleanUpCallsAfter(J)V
    .registers 7
    .param p1, "timeThreshold"    # J

    monitor-enter p0

    .line 415
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_23

    .line 416
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 417
    .local v1, "time":J
    cmp-long v3, v1, p1

    if-lez v3, :cond_20

    .line 418
    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 415
    .end local v1    # "time":J
    .end local p0    # "this":Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 421
    .end local v0    # "i":I
    :cond_23
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_2b
    if-ltz v0, :cond_45

    .line 422
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 423
    .restart local v1    # "time":J
    cmp-long v3, v1, p1

    if-lez v3, :cond_42

    .line 424
    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_47

    .line 421
    .end local v1    # "time":J
    :cond_42
    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    .line 427
    .end local v0    # "j":I
    :cond_45
    monitor-exit p0

    return-void

    .line 414
    .end local p1    # "timeThreshold":J
    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isRepeat(Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .local p3, "phoneNumbers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-enter p0

    .line 392
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->setThresholdMinutes(Landroid/content/Context;)V

    .line 393
    iget v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    const/4 v1, 0x0

    if-lez v0, :cond_2c

    if-nez p2, :cond_c

    goto :goto_2c

    .line 394
    :cond_c
    invoke-static {p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "extraPeople":[Ljava/lang/String;
    if-eqz v0, :cond_2a

    array-length v2, v0

    if-nez v2, :cond_16

    goto :goto_2a

    .line 396
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 397
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    .line 398
    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    .line 399
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->checkCallers(Landroid/content/Context;[Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v3
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2e

    monitor-exit p0

    return v3

    .line 395
    .end local v1    # "now":J
    .end local p0    # "this":Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    :cond_2a
    :goto_2a
    monitor-exit p0

    return v1

    .line 393
    .end local v0    # "extraPeople":[Ljava/lang/String;
    :cond_2c
    :goto_2c
    monitor-exit p0

    return v1

    .line 391
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "extras":Landroid/os/Bundle;
    .end local p3    # "phoneNumbers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized recordCall(Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p3, "phoneNumbers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-enter p0

    .line 375
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->setThresholdMinutes(Landroid/content/Context;)V

    .line 376
    iget v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    if-lez v0, :cond_2a

    if-nez p2, :cond_b

    goto :goto_2a

    .line 377
    :cond_b
    invoke-static {p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "extraPeople":[Ljava/lang/String;
    if-eqz v0, :cond_28

    array-length v1, v0

    if-nez v1, :cond_15

    goto :goto_28

    .line 379
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 380
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    .line 381
    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    .line 382
    invoke-direct {p0, v0, p3, v1, v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->recordCallers([Ljava/lang/String;Landroid/util/ArraySet;J)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_2c

    .line 383
    monitor-exit p0

    return-void

    .line 378
    .end local v1    # "now":J
    .end local p0    # "this":Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    :cond_28
    :goto_28
    monitor-exit p0

    return-void

    .line 376
    .end local v0    # "extraPeople":[Ljava/lang/String;
    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void

    .line 374
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "extras":Landroid/os/Bundle;
    .end local p3    # "phoneNumbers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized recordCallers([Ljava/lang/String;Landroid/util/ArraySet;J)V
    .registers 11
    .param p1, "people"    # [Ljava/lang/String;
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .local p2, "phoneNumbers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-enter p0

    .line 438
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    array-length v1, p1

    if-ge v0, v1, :cond_3b

    .line 439
    aget-object v1, p1, v0

    .line 440
    .local v1, "person":Ljava/lang/String;
    if-nez v1, :cond_a

    goto :goto_38

    .line 441
    :cond_a
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 442
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "tel"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 445
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "tel":Ljava/lang/String;
    if-eqz v3, :cond_2e

    iget-object v4, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .end local v3    # "tel":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    :cond_2e
    goto :goto_38

    .line 449
    :cond_2f
    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .end local v1    # "person":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 455
    .end local v0    # "i":I
    :cond_3b
    if-eqz p2, :cond_59

    .line 456
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 457
    .local v1, "num":Ljava/lang/String;
    if-eqz v1, :cond_58

    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_2 .. :try_end_58} :catchall_5b

    .line 458
    .end local v1    # "num":Ljava/lang/String;
    :cond_58
    goto :goto_41

    .line 460
    :cond_59
    monitor-exit p0

    return-void

    .line 437
    .end local p1    # "people":[Ljava/lang/String;
    .end local p2    # "phoneNumbers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local p3    # "now":J
    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setThresholdMinutes(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 430
    iget v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    if-gtz v0, :cond_11

    .line 431
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    .line 434
    :cond_11
    return-void
.end method
