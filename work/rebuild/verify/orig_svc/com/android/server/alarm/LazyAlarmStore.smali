.class public Lcom/android/server/alarm/LazyAlarmStore;
.super Ljava/lang/Object;
.source "LazyAlarmStore.java"

# interfaces
.implements Lcom/android/server/alarm/AlarmStore;


# static fields
.field static final TAG:Ljava/lang/String; = "LazyAlarmStore"

.field public static final sDecreasingTimeOrder:Ljava/util/Comparator;


# instance fields
.field public final mAlarms:Ljava/util/ArrayList;

.field public mOnAlarmClockRemoved:Ljava/lang/Runnable;

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Lcom/android/server/alarm/LazyAlarmStore$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/alarm/LazyAlarmStore$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stats"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET_NEXT_WAKEUP_DELIVERY_TIME"

    const-string v3, "GET_COUNT"

    const-string v4, "GET_NEXT_DELIVERY_TIME"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/alarm/Alarm;)V
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_c

    rsub-int/lit8 v0, v0, -0x1

    .line 68
    :cond_c
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addAll(Ljava/util/ArrayList;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public asList()Ljava/util/ArrayList;
    .registers 2

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 218
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .registers 7

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pending alarms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 226
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-static {p1, v0, p2, p3, p4}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    .line 227
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 228
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 13

    .line 233
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    check-cast v3, Lcom/android/server/alarm/Alarm;

    const-wide v5, 0x20b0000002aL

    move-object v4, p1

    move-wide v7, p2

    .line 234
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    goto :goto_7

    :cond_1d
    return-void
.end method

.method public getCount(Ljava/util/function/Predicate;)I
    .registers 9

    .line 245
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 248
    iget-object v2, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_e
    :goto_e
    if-ge v5, v3, :cond_21

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/alarm/Alarm;

    .line 249
    invoke-interface {p1, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 253
    :cond_21
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return v4
.end method

.method public getNextDeliveryTime()J
    .registers 9

    .line 140
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 141
    iget-object v2, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_11

    const-wide/16 v0, 0x0

    return-wide v0

    .line 145
    :cond_11
    iget-object v3, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v3}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v3

    add-int/lit8 v2, v2, -0x2

    :goto_21
    if-ltz v2, :cond_3f

    .line 147
    iget-object v5, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 148
    invoke-virtual {v5}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-lez v6, :cond_34

    goto :goto_3f

    .line 151
    :cond_34
    invoke-virtual {v5}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 153
    :cond_3f
    :goto_3f
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-wide v3
.end method

.method public getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 103
    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/Alarm;

    .line 104
    iget v2, v1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNextWakeupDeliveryTime()J
    .registers 12

    .line 118
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 120
    iget-object v2, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_11
    if-ltz v2, :cond_3d

    .line 121
    iget-object v8, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/alarm/Alarm;

    .line 122
    iget-boolean v9, v8, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-nez v9, :cond_20

    goto :goto_3a

    :cond_20
    cmp-long v9, v6, v4

    if-nez v9, :cond_29

    .line 126
    invoke-virtual {v8}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v6

    goto :goto_3a

    .line 128
    :cond_29
    invoke-virtual {v8}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-lez v9, :cond_32

    goto :goto_3d

    .line 131
    :cond_32
    invoke-virtual {v8}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :goto_3a
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 134
    :cond_3d
    :goto_3d
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-wide v6
.end method

.method public remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .registers 6

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_36

    .line 84
    iget-object v2, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 85
    iget-object v2, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 86
    iget-object v3, v2, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/android/server/alarm/LazyAlarmStore;->mOnAlarmClockRemoved:Ljava/lang/Runnable;

    if-eqz v3, :cond_30

    .line 87
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 89
    :cond_30
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_36
    return-object v0
.end method

.method public removePendingAlarms(J)Ljava/util/ArrayList;
    .registers 13

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ltz v1, :cond_43

    .line 171
    iget-object v5, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 172
    invoke-virtual {v5}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-lez v6, :cond_22

    goto :goto_43

    .line 175
    :cond_22
    iget-object v6, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 176
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-boolean v6, v5, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v6, :cond_3a

    invoke-virtual {v5}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    add-long/2addr v8, p1

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3a

    move v3, v2

    .line 182
    :cond_3a
    iget v5, v5, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_40

    move v4, v2

    :cond_40
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 186
    :cond_43
    :goto_43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_4d
    if-ltz p2, :cond_6d

    .line 188
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/Alarm;

    if-nez v3, :cond_5c

    .line 189
    iget-boolean v5, v1, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v5, :cond_5c

    goto :goto_6a

    :cond_5c
    if-eqz v4, :cond_64

    .line 192
    iget v5, v1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/2addr v5, v2

    if-nez v5, :cond_64

    goto :goto_6a

    .line 195
    :cond_64
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 196
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6a
    add-int/lit8 p2, p2, -0x1

    goto :goto_4d

    .line 199
    :cond_6d
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/LazyAlarmStore;->addAll(Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public setAlarmClockRemovalListener(Ljava/lang/Runnable;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mOnAlarmClockRemoved:Ljava/lang/Runnable;

    return-void
.end method

.method public size()I
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z
    .registers 7

    .line 206
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 207
    invoke-interface {p1, v4}, Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;->updateAlarmDelivery(Lcom/android/server/alarm/Alarm;)Z

    move-result v4

    or-int/2addr v2, v4

    goto :goto_8

    :cond_18
    if-eqz v2, :cond_21

    .line 210
    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_21
    return v2
.end method
