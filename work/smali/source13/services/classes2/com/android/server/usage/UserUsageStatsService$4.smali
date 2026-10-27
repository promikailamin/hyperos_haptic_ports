.class Lcom/android/server/usage/UserUsageStatsService$4;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJI)Landroid/app/usage/UsageEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
        "Landroid/app/usage/UsageEvents$Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UserUsageStatsService;

.field final synthetic val$beginTime:J

.field final synthetic val$endTime:J

.field final synthetic val$flags:I

.field final synthetic val$names:Landroid/util/ArraySet;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UserUsageStatsService;JJILandroid/util/ArraySet;)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/usage/UserUsageStatsService;

    .line 569
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->this$0:Lcom/android/server/usage/UserUsageStatsService;

    iput-wide p2, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$beginTime:J

    iput-wide p4, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$endTime:J

    iput p6, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    iput-object p7, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .registers 13
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "mutable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/usage/IntervalStats;",
            "Z",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)Z"
        }
    .end annotation

    .line 573
    .local p3, "accumulatedResult":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    iget-wide v1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$beginTime:J

    invoke-virtual {v0, v1, v2}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result v0

    .line 574
    .local v0, "startIndex":I
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    .line 575
    .local v1, "size":I
    move v2, v0

    .local v2, "i":I
    :goto_f
    const/4 v3, 0x1

    if-ge v2, v1, :cond_92

    .line 577
    invoke-static {}, Lcom/android/server/usage/UsageStatsServiceStub;->getInstance()Lcom/android/server/usage/UsageStatsServiceStub;

    move-result-object v4

    invoke-interface {v4, p3}, Lcom/android/server/usage/UsageStatsServiceStub;->isLimitExceed(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 579
    return v3

    .line 582
    :cond_1d
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v4, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v4

    .line 583
    .local v4, "event":Landroid/app/usage/UsageEvents$Event;
    iget-wide v5, v4, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v7, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$endTime:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2d

    .line 584
    const/4 v3, 0x0

    return v3

    .line 587
    :cond_2d
    iget v5, v4, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 588
    .local v5, "eventType":I
    const/16 v6, 0x8

    if-ne v5, v6, :cond_3a

    iget v7, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    const/4 v8, 0x2

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_3a

    .line 590
    goto :goto_8e

    .line 592
    :cond_3a
    const/16 v7, 0x1e

    if-ne v5, v7, :cond_44

    iget v7, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    and-int/2addr v7, v6

    if-ne v7, v6, :cond_44

    .line 594
    goto :goto_8e

    .line 596
    :cond_44
    const/16 v6, 0xa

    if-eq v5, v6, :cond_4c

    const/16 v6, 0xc

    if-ne v5, v6, :cond_56

    :cond_4c
    iget v6, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    const/4 v7, 0x4

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_56

    .line 600
    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getObfuscatedNotificationEvent()Landroid/app/usage/UsageEvents$Event;

    move-result-object v4

    .line 602
    :cond_56
    iget v6, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    and-int/2addr v6, v3

    if-ne v6, v3, :cond_5f

    .line 603
    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getObfuscatedIfInstantApp()Landroid/app/usage/UsageEvents$Event;

    move-result-object v4

    .line 605
    :cond_5f
    iget-object v3, v4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_6a

    .line 606
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    iget-object v6, v4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_6a
    iget-object v3, v4, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v3, :cond_75

    .line 609
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    iget-object v6, v4, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_75
    iget-object v3, v4, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v3, :cond_80

    .line 612
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    iget-object v6, v4, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_80
    iget-object v3, v4, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v3, :cond_8b

    .line 615
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    iget-object v6, v4, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_8b
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    .end local v4    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v5    # "eventType":I
    :goto_8e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 619
    .end local v2    # "i":I
    :cond_92
    return v3
.end method
