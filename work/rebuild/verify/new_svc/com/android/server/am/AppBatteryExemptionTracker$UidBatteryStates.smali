.class public final Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;
.super Lcom/android/server/am/BaseAppStateDurations;
.source "AppBatteryExemptionTracker.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V
    .registers 10

    .line 230
    const-string v2, ""

    const/4 v3, 0x5

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurations;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;)V
    .registers 2

    .line 234
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateDurations;-><init>(Lcom/android/server/am/BaseAppStateDurations;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;",
            ">;",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_185

    .line 310
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_185

    :cond_a
    if-eqz p1, :cond_17e

    .line 313
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_17e

    .line 316
    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 317
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 318
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 319
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 321
    new-instance v5, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    .line 323
    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    :goto_41
    const-wide v20, 0x7fffffffffffffffL

    cmp-long v22, v6, v20

    if-nez v22, :cond_50

    cmp-long v22, v8, v20

    if-eqz v22, :cond_4f

    goto :goto_50

    :cond_4f
    return-object v4

    :cond_50
    :goto_50
    const/16 v22, 0x1

    if-nez v13, :cond_59

    if-eqz v14, :cond_57

    goto :goto_59

    :cond_57
    const/4 v10, 0x0

    goto :goto_5b

    :cond_59
    :goto_59
    move/from16 v10, v22

    :goto_5b
    cmp-long v23, v6, v8

    if-nez v23, :cond_b0

    if-eqz v13, :cond_68

    .line 330
    invoke-virtual {v2}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    :cond_68
    if-eqz v14, :cond_71

    .line 331
    invoke-virtual {v3}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    :cond_71
    if-eqz v15, :cond_7a

    if-nez v13, :cond_77

    if-eqz v14, :cond_7a

    :cond_77
    sub-long v6, v6, v18

    goto :goto_7c

    :cond_7a
    const-wide/16 v6, 0x0

    :goto_7c
    add-long v16, v16, v6

    xor-int/lit8 v13, v13, 0x1

    xor-int/lit8 v14, v14, 0x1

    .line 336
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    invoke-virtual {v6}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v7

    goto :goto_96

    :cond_93
    move-object v6, v2

    move-wide/from16 v7, v20

    .line 337
    :goto_96
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v20

    :cond_a6
    move-wide/from16 v23, v20

    move-wide/from16 v20, v7

    move-wide/from16 v8, v23

    const-wide/16 v23, 0x0

    goto/16 :goto_110

    :cond_b0
    if-gez v23, :cond_dd

    const-wide/16 v23, 0x0

    if-eqz v13, :cond_bd

    .line 340
    invoke-virtual {v2}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    :cond_bd
    if-eqz v15, :cond_c4

    if-eqz v13, :cond_c4

    sub-long v6, v6, v18

    goto :goto_c6

    :cond_c4
    move-wide/from16 v6, v23

    :goto_c6
    add-long v16, v16, v6

    xor-int/lit8 v13, v13, 0x1

    .line 343
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_db

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    invoke-virtual {v6}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v20

    goto :goto_110

    :cond_db
    move-object v6, v2

    goto :goto_110

    :cond_dd
    const-wide/16 v23, 0x0

    if-eqz v14, :cond_e8

    .line 346
    invoke-virtual {v3}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    :cond_e8
    if-eqz v15, :cond_ef

    if-eqz v14, :cond_ef

    sub-long v8, v8, v18

    goto :goto_f1

    :cond_ef
    move-wide/from16 v8, v23

    :goto_f1
    add-long v16, v16, v8

    xor-int/lit8 v14, v14, 0x1

    .line 349
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_106

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    invoke-virtual {v8}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v20

    goto :goto_107

    :cond_106
    move-object v8, v3

    :goto_107
    move-wide/from16 v27, v6

    move-object v6, v2

    move-object v2, v3

    move-object v3, v8

    move-wide/from16 v8, v20

    move-wide/from16 v20, v27

    :goto_110
    if-eqz v13, :cond_117

    if-eqz v14, :cond_117

    move/from16 v15, v22

    goto :goto_118

    :cond_117
    const/4 v15, 0x0

    :goto_118
    if-nez v13, :cond_11c

    if-eqz v14, :cond_120

    .line 353
    :cond_11c
    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v18

    :cond_120
    if-nez v13, :cond_127

    if-eqz v14, :cond_125

    goto :goto_127

    :cond_125
    const/4 v7, 0x0

    goto :goto_129

    :cond_127
    :goto_127
    move/from16 v7, v22

    :goto_129
    if-eq v10, v7, :cond_173

    .line 357
    invoke-virtual {v2}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    if-eqz v10, :cond_16c

    .line 360
    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 361
    invoke-virtual {v7}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v10

    .line 362
    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v25

    sub-long v10, v25, v10

    move-object/from16 p1, v0

    move-object v12, v1

    add-long v0, v10, v16

    cmp-long v16, v0, v23

    if-eqz v16, :cond_15f

    long-to-double v10, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v10, v10, v16

    long-to-double v0, v0

    div-double/2addr v10, v0

    .line 366
    invoke-virtual {v5, v10, v11}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->scale(D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 367
    new-instance v0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {v0, v5}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    invoke-virtual {v2, v7, v0}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->update(Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V

    goto :goto_164

    .line 369
    :cond_15f
    sget-object v0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v2, v7, v0}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->update(Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V

    .line 371
    :goto_164
    sget-object v0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v5, v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->setTo(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-wide/from16 v16, v23

    goto :goto_16f

    :cond_16c
    move-object/from16 p1, v0

    move-object v12, v1

    .line 374
    :goto_16f
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_176

    :cond_173
    move-object/from16 p1, v0

    move-object v12, v1

    :goto_176
    move-object/from16 v0, p1

    move-object v2, v6

    move-object v1, v12

    move-wide/from16 v6, v20

    goto/16 :goto_41

    .line 314
    :cond_17e
    :goto_17e
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    return-object v0

    :cond_185
    :goto_185
    return-object p1
.end method

.method public addEvent(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;I)V
    .registers 12

    if-eqz p1, :cond_f

    .line 245
    new-instance v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    const/4 v5, 0x0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;-><init>(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;)V

    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    return-void

    .line 248
    :cond_f
    invoke-virtual {p0, p5}, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;->getLastEvent(I)Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 249
    invoke-virtual {v5}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->isStart()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_36

    .line 255
    :cond_1c
    new-instance v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 256
    invoke-virtual {p4}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->mutate()Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v2

    invoke-virtual {v5}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->unmutate()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v4

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;-><init>(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;)V

    .line 255
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    :cond_36
    :goto_36
    return-void
.end method

.method public getBatteryUsageSince(JJI)Landroid/util/Pair;
    .registers 14

    .line 294
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    move-object v7, v0

    .line 295
    :goto_7
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v0, v0

    if-ge v1, v0, :cond_1f

    .line 296
    invoke-static {v1}, Lcom/android/server/am/BaseAppStateTracker;->stateIndexToType(I)I

    move-result v0

    and-int/2addr v0, p5

    if-eqz v0, :cond_1c

    .line 297
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v0, v0, v1

    invoke-virtual {p0, v7, v0}, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;->add(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v0

    move-object v7, v0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .line 300
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;->getBatteryUsageSince(JJLjava/util/LinkedList;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final getBatteryUsageSince(JJLjava/util/LinkedList;)Landroid/util/Pair;
    .registers 9

    if-eqz p5, :cond_5b

    .line 267
    invoke-virtual {p5}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_5b

    .line 270
    :cond_9
    new-instance p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    .line 272
    invoke-virtual {p5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    const/4 v0, 0x0

    :cond_13
    :goto_13
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 274
    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-ltz v1, :cond_13

    invoke-virtual {v0}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->isStart()Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_13

    .line 277
    :cond_2e
    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v1

    invoke-static {p3, p4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage(JJ)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 278
    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-gtz v1, :cond_13

    .line 282
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->unmutate()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->isStart()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 283
    invoke-virtual {v0}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object p1

    goto :goto_56

    :cond_54
    sget-object p1, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 282
    :goto_56
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 268
    :cond_5b
    :goto_5b
    sget-object p0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getLastEvent(I)Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;
    .registers 2

    .line 262
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object p0, p0, p1

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method
