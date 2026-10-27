.class Lcom/android/server/am/BaseAppStateTimeSlotEvents;
.super Lcom/android/server/am/BaseAppStateEvents;
.source "BaseAppStateTimeSlotEvents.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateEvents<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final DEBUG_BASE_APP_TIME_SLOT_EVENTS:Z = false


# instance fields
.field mCurSlotStartTime:[J

.field final mTimeSlotSize:J


# direct methods
.method constructor <init>(ILjava/lang/String;IJLjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "numOfEventTypes"    # I
    .param p4, "timeslotSize"    # J
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "maxTrackingDurationConfig"    # Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;

    .line 50
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateEvents;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    .line 51
    iput-wide p4, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    .line 52
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/BaseAppStateTimeSlotEvents;)V
    .registers 6
    .param p1, "other"    # Lcom/android/server/am/BaseAppStateTimeSlotEvents;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateEvents;-><init>(Lcom/android/server/am/BaseAppStateEvents;)V

    .line 57
    iget-wide v0, p1, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    iput-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    .line 58
    iget-object v0, p1, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1d

    .line 60
    iget-object v2, p1, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 62
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method


# virtual methods
.method add(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 70
    .local p1, "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .local p2, "otherEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method add(Lcom/android/server/am/BaseAppStateEvents;)V
    .registers 27
    .param p1, "otherObj"    # Lcom/android/server/am/BaseAppStateEvents;

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_fe

    instance-of v2, v1, Lcom/android/server/am/BaseAppStateTimeSlotEvents;

    if-nez v2, :cond_c

    goto/16 :goto_fe

    .line 78
    :cond_c
    move-object v2, v1

    check-cast v2, Lcom/android/server/am/BaseAppStateTimeSlotEvents;

    .line 79
    .local v2, "other":Lcom/android/server/am/BaseAppStateTimeSlotEvents;
    iget-object v3, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v3, v3

    iget-object v4, v2, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v4, v4

    if-eq v3, v4, :cond_18

    .line 83
    return-void

    .line 85
    :cond_18
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v4, v4

    if-ge v3, v4, :cond_fd

    .line 86
    iget-object v4, v2, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v4, v4, v3

    .line 87
    .local v4, "otherEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_f6

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_2c

    .line 88
    goto/16 :goto_f7

    .line 90
    :cond_2c
    iget-object v5, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v5, v5, v3

    .line 91
    .local v5, "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_de

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-nez v6, :cond_3e

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    goto/16 :goto_e2

    .line 97
    :cond_3e
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 98
    .local v6, "dest":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 99
    .local v7, "itl":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 100
    .local v8, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    iget-object v9, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v9, v9, v3

    .line 101
    .local v9, "maxl":J
    iget-object v11, v2, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v11, v11, v3

    .line 102
    .local v11, "maxr":J
    iget-wide v13, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v16, v2

    .end local v2    # "other":Lcom/android/server/am/BaseAppStateTimeSlotEvents;
    .local v16, "other":Lcom/android/server/am/BaseAppStateTimeSlotEvents;
    int-to-long v1, v15

    mul-long/2addr v13, v1

    sub-long v1, v9, v13

    .line 103
    .local v1, "minl":J
    iget-wide v13, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .end local v4    # "otherEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .end local v5    # "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .local v17, "otherEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .local v18, "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    int-to-long v4, v15

    mul-long/2addr v13, v4

    sub-long v4, v11, v13

    .line 104
    .local v4, "minr":J
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 105
    .local v13, "latest":J
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v19

    .line 106
    .local v19, "earliest":J
    move-wide/from16 v21, v19

    .local v21, "start":J
    :goto_7b
    cmp-long v15, v21, v13

    if-gtz v15, :cond_ba

    .line 107
    cmp-long v15, v21, v1

    const/16 v23, 0x0

    if-ltz v15, :cond_94

    cmp-long v15, v21, v9

    if-gtz v15, :cond_94

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_96

    :cond_94
    move/from16 v15, v23

    .line 108
    :goto_96
    cmp-long v24, v21, v4

    if-ltz v24, :cond_a8

    cmp-long v24, v21, v11

    if-gtz v24, :cond_a8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    :cond_a8
    add-int v15, v15, v23

    .line 107
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 106
    move-wide/from16 v23, v1

    .end local v1    # "minl":J
    .local v23, "minl":J
    iget-wide v1, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    add-long v21, v21, v1

    move-wide/from16 v1, v23

    goto :goto_7b

    .end local v23    # "minl":J
    .restart local v1    # "minl":J
    :cond_ba
    move-wide/from16 v23, v1

    .line 110
    .end local v1    # "minl":J
    .end local v21    # "start":J
    .restart local v23    # "minl":J
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mEvents:[Ljava/util/LinkedList;

    aput-object v6, v1, v3

    .line 111
    cmp-long v1, v9, v11

    if-gez v1, :cond_cf

    .line 112
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    move-object/from16 v2, v16

    .end local v16    # "other":Lcom/android/server/am/BaseAppStateTimeSlotEvents;
    .restart local v2    # "other":Lcom/android/server/am/BaseAppStateTimeSlotEvents;
    iget-object v15, v2, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v15, v15, v3

    aput-wide v15, v1, v3

    goto :goto_d1

    .line 111
    .end local v2    # "other":Lcom/android/server/am/BaseAppStateTimeSlotEvents;
    .restart local v16    # "other":Lcom/android/server/am/BaseAppStateTimeSlotEvents;
    :cond_cf
    move-object/from16 v2, v16

    .line 114
    .end local v16    # "other":Lcom/android/server/am/BaseAppStateTimeSlotEvents;
    .restart local v2    # "other":Lcom/android/server/am/BaseAppStateTimeSlotEvents;
    :goto_d1
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    move-wide v15, v4

    .end local v4    # "minr":J
    .local v15, "minr":J
    aget-wide v4, v1, v3

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getEarliest(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->trimEvents(JI)V

    goto :goto_f7

    .line 91
    .end local v6    # "dest":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .end local v7    # "itl":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v8    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v9    # "maxl":J
    .end local v11    # "maxr":J
    .end local v13    # "latest":J
    .end local v15    # "minr":J
    .end local v17    # "otherEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .end local v18    # "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .end local v19    # "earliest":J
    .end local v23    # "minl":J
    .local v4, "otherEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .restart local v5    # "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :cond_de
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 92
    .end local v4    # "otherEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .end local v5    # "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .restart local v17    # "otherEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .restart local v18    # "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :goto_e2
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mEvents:[Ljava/util/LinkedList;

    new-instance v4, Ljava/util/LinkedList;

    move-object/from16 v5, v17

    .end local v17    # "otherEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .local v5, "otherEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-direct {v4, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    aput-object v4, v1, v3

    .line 93
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    iget-object v4, v2, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v6, v4, v3

    aput-wide v6, v1, v3

    .line 94
    goto :goto_f7

    .line 87
    .end local v5    # "otherEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .end local v18    # "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .restart local v4    # "otherEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :cond_f6
    move-object v5, v4

    .line 85
    .end local v4    # "otherEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :goto_f7
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_19

    .line 116
    .end local v3    # "i":I
    :cond_fd
    return-void

    .line 76
    .end local v2    # "other":Lcom/android/server/am/BaseAppStateTimeSlotEvents;
    :cond_fe
    :goto_fe
    return-void
.end method

.method addEvent(JI)V
    .registers 13
    .param p1, "now"    # J
    .param p3, "index"    # I

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getSlotStartTime(J)J

    move-result-wide v0

    .line 146
    .local v0, "slot":J
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v2, v2, p3

    .line 147
    .local v2, "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    if-nez v2, :cond_14

    .line 148
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object v2, v3

    .line 149
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mEvents:[Ljava/util/LinkedList;

    aput-object v2, v3, p3

    .line 151
    :cond_14
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_23

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 154
    :cond_23
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v5, v3, p3

    .local v5, "start":J
    :goto_27
    cmp-long v3, v5, v0

    if-gez v3, :cond_37

    .line 155
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-wide v7, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    add-long/2addr v5, v7

    goto :goto_27

    .line 157
    .end local v5    # "start":J
    :cond_37
    invoke-virtual {v2}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    .line 159
    :goto_49
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aput-wide v0, v3, p3

    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getEarliest(J)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, p3}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->trimEvents(JI)V

    .line 161
    return-void
.end method

.method getCurrentSlotStartTime(I)J
    .registers 4
    .param p1, "index"    # I

    .line 182
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method getSlotStartTime(J)J
    .registers 5
    .param p1, "timestamp"    # J

    .line 177
    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    rem-long v0, p1, v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method getTotalEventsSince(JJI)I
    .registers 20
    .param p1, "since"    # J
    .param p3, "now"    # J
    .param p5, "index"    # I

    .line 120
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v1, v1, p5

    .line 121
    .local v1, "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_11

    move-wide/from16 v5, p3

    goto :goto_55

    .line 124
    :cond_11
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getSlotStartTime(J)J

    move-result-wide v3

    .line 125
    .local v3, "start":J
    iget-object v5, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v5, v5, p5

    cmp-long v5, v3, v5

    if-lez v5, :cond_1e

    .line 126
    return v2

    .line 128
    :cond_1e
    move-wide/from16 v5, p3

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getSlotStartTime(J)J

    move-result-wide v7

    iget-object v2, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v9, v2, p5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 129
    .local v7, "end":J
    invoke-virtual {v1}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 130
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 131
    .local v9, "count":I
    iget-object v10, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v10, v10, p5

    .local v10, "time":J
    :goto_35
    cmp-long v12, v10, v3

    if-ltz v12, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_52

    .line 133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 134
    .local v12, "val":I
    cmp-long v13, v10, v7

    if-gtz v13, :cond_4e

    .line 135
    add-int/2addr v9, v12

    .line 132
    .end local v12    # "val":I
    :cond_4e
    iget-wide v12, v0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    sub-long/2addr v10, v12

    goto :goto_35

    .line 138
    .end local v10    # "time":J
    :cond_52
    return v9

    .line 121
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "start":J
    .end local v7    # "end":J
    .end local v9    # "count":I
    :cond_53
    move-wide/from16 v5, p3

    .line 122
    :goto_55
    return v2
.end method

.method trimEvents(JI)V
    .registers 13
    .param p1, "earliest"    # J
    .param p3, "index"    # I

    .line 165
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v0, v0, p3

    .line 166
    .local v0, "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_32

    .line 169
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->getSlotStartTime(J)J

    move-result-wide v1

    .line 170
    .local v1, "slot":J
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mCurSlotStartTime:[J

    aget-wide v3, v3, p3

    iget-wide v5, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-long v7, v7

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    .line 171
    .local v3, "time":J
    :goto_20
    cmp-long v5, v3, v1

    if-gez v5, :cond_31

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_31

    .line 172
    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 171
    iget-wide v5, p0, Lcom/android/server/am/BaseAppStateTimeSlotEvents;->mTimeSlotSize:J

    add-long/2addr v3, v5

    goto :goto_20

    .line 174
    .end local v3    # "time":J
    :cond_31
    return-void

    .line 167
    .end local v1    # "slot":J
    :cond_32
    :goto_32
    return-void
.end method
