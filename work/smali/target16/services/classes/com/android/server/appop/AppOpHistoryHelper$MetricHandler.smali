.class public Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;
.super Landroid/os/Handler;
.source "AppOpHistoryHelper.java"


# static fields
.field public static final EVENT_PROCESSING_DELAY_MILLIS:J


# instance fields
.field public final mCache:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x2

    .line 574
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;->EVENT_PROCESSING_DELAY_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 583
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 580
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;->mCache:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 588
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_c9

    if-eq v2, v3, :cond_f

    goto/16 :goto_d3

    .line 654
    :cond_f
    iget-object v2, v0, Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;->mCache:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 655
    :try_start_12
    iget-object v1, v0, Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 656
    monitor-exit v2

    return-void

    :catchall_1c
    move-exception v0

    goto/16 :goto_c7

    .line 658
    :cond_1f
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 659
    iget-object v3, v0, Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 660
    new-instance v6, Landroid/util/Pair;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 662
    :cond_55
    iget-object v0, v0, Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 663
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_12 .. :try_end_5b} :catchall_1c

    .line 664
    const-string v0, "AppOpHistoryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MetricHandler reporting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " records."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_7e
    if-ge v4, v0, :cond_d3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    check-cast v2, Landroid/util/Pair;

    .line 666
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;

    .line 667
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;

    .line 668
    invoke-static {v3}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->-$$Nest$fgetpackageName(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->-$$Nest$fgetattributionTag(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;->-$$Nest$fgetopCode(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;)I

    move-result v8

    invoke-static {v2}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->-$$Nest$fgetmForegroundAccessCount(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;)I

    move-result v3

    int-to-long v9, v3

    invoke-static {v2}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->-$$Nest$fgetmBackgroundAccessCount(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;)I

    move-result v3

    int-to-long v11, v3

    invoke-static {v2}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->-$$Nest$fgetmForegroundRejectCount(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;)I

    move-result v3

    int-to-long v13, v3

    invoke-static {v2}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->-$$Nest$fgetmBackgroundRejectCount(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;)I

    move-result v3

    move/from16 p0, v0

    move-object/from16 p1, v1

    int-to-long v0, v3

    invoke-static {v2}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->-$$Nest$fgetmForegroundDurationMillis(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;)J

    move-result-wide v17

    invoke-static {v2}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->-$$Nest$fgetmBackgroundDurationMillis(Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;)J

    move-result-wide v19

    const/16 v5, 0x44f

    move-wide v15, v0

    invoke-static/range {v5 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;IJJJJJJ)V

    move/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_7e

    .line 663
    :goto_c7
    :try_start_c7
    monitor-exit v2
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_1c

    throw v0

    .line 590
    :cond_c9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 592
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d4

    :cond_d3
    :goto_d3
    return-void

    .line 596
    :cond_d4
    iget-object v2, v0, Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;->mCache:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 597
    :try_start_d7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_db
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_177

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    .line 598
    invoke-virtual {v6}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x9

    if-nez v7, :cond_f0

    goto :goto_db

    .line 601
    :cond_f0
    new-instance v7, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;

    .line 602
    invoke-virtual {v6}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->packageName()Ljava/lang/String;

    move-result-object v8

    .line 603
    invoke-virtual {v6}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opCode()I

    move-result v9

    invoke-virtual {v6}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionTag()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricKey;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/appop/AppOpHistoryHelper-IA;)V

    .line 605
    invoke-virtual {v6}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uidState()I

    move-result v8

    const/16 v9, 0x64

    if-lt v8, v9, :cond_117

    .line 606
    invoke-virtual {v6}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uidState()I

    move-result v8

    const/16 v9, 0x1f4

    if-gt v8, v9, :cond_117

    move v8, v5

    goto :goto_118

    :catchall_114
    move-exception v0

    goto/16 :goto_195

    :cond_117
    move v8, v4

    :goto_118
    const-wide/16 v9, 0x0

    if-eqz v8, :cond_12e

    .line 615
    invoke-virtual {v6}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalDurationMillis()J

    move-result-wide v11

    .line 616
    invoke-virtual {v6}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalAccessCount()I

    move-result v8

    .line 617
    invoke-virtual {v6}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalRejectCount()I

    move-result v6

    move-wide v14, v11

    move-wide v11, v9

    move v10, v4

    move v9, v8

    move v8, v10

    goto :goto_13f

    .line 619
    :cond_12e
    invoke-virtual {v6}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalDurationMillis()J

    move-result-wide v11

    .line 620
    invoke-virtual {v6}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalAccessCount()I

    move-result v8

    .line 621
    invoke-virtual {v6}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalRejectCount()I

    move-result v6

    move-wide v14, v9

    move v9, v4

    move v10, v8

    move v8, v6

    move v6, v9

    .line 624
    :goto_13f
    iget-object v13, v0, Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v13, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;

    if-eqz v13, :cond_15d

    .line 626
    invoke-virtual {v13, v14, v15}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->addForegroundDurationMillis(J)V

    .line 627
    invoke-virtual {v13, v9}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->addForegroundAccessCount(I)V

    .line 628
    invoke-virtual {v13, v6}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->addForegroundRejectCount(I)V

    .line 629
    invoke-virtual {v13, v11, v12}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->addBackgroundDurationMillis(J)V

    .line 630
    invoke-virtual {v13, v10}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->addBackgroundAccessCount(I)V

    .line 631
    invoke-virtual {v13, v8}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;->addBackgroundRejectCount(I)V

    goto/16 :goto_db

    .line 633
    :cond_15d
    iget-object v13, v0, Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;->mCache:Landroid/util/ArrayMap;

    move-object/from16 v16, v13

    new-instance v13, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;

    move/from16 v17, v6

    move/from16 v21, v8

    move/from16 v20, v10

    move-wide/from16 v18, v11

    move-object/from16 v6, v16

    move/from16 v16, v9

    invoke-direct/range {v13 .. v21}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpMetricValue;-><init>(JIIJII)V

    invoke-virtual {v6, v7, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_db

    .line 644
    :cond_177
    iget-object v1, v0, Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v4, 0x80

    if-lt v1, v4, :cond_188

    .line 645
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 646
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_193

    .line 647
    :cond_188
    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_193

    .line 648
    sget-wide v4, Lcom/android/server/appop/AppOpHistoryHelper$MetricHandler;->EVENT_PROCESSING_DELAY_MILLIS:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 650
    :cond_193
    :goto_193
    monitor-exit v2

    return-void

    :goto_195
    monitor-exit v2
    :try_end_196
    .catchall {:try_start_d7 .. :try_end_196} :catchall_114

    throw v0
.end method
