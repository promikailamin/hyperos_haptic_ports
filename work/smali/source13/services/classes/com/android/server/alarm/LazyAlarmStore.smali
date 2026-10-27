.class public Lcom/android/server/alarm/LazyAlarmStore;
.super Ljava/lang/Object;
.source "LazyAlarmStore.java"

# interfaces
.implements Lcom/android/server/alarm/AlarmStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/LazyAlarmStore$Stats;
    }
.end annotation


# static fields
.field private static final ALARM_DEADLINE_SLOP:J = 0x1f4L

.field static final TAG:Ljava/lang/String;

.field private static final sDecreasingTimeOrder:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mOnAlarmClockRemoved:Ljava/lang/Runnable;

.field final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-class v0, Lcom/android/server/alarm/LazyAlarmStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/LazyAlarmStore;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stats"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET_NEXT_DELIVERY_TIME"

    const-string v3, "GET_NEXT_WAKEUP_DELIVERY_TIME"

    const-string v4, "GET_COUNT"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/alarm/Alarm;)V
    .registers 4
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 66
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 67
    .local v0, "index":I
    if-gez v0, :cond_e

    .line 68
    rsub-int/lit8 v1, v0, 0x0

    add-int/lit8 v0, v1, -0x1

    .line 70
    :cond_e
    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 71
    return-void
.end method

.method public addAll(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-nez p1, :cond_3

    .line 76
    return-void

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 79
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 80
    return-void
.end method

.method public asList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 225
    .local v0, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 226
    return-object v0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .registers 7
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "nowElapsed"    # J
    .param p4, "sdf"    # Ljava/text/SimpleDateFormat;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pending alarms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 233
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-static {p1, v0, p2, p3, p4}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    .line 234
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 235
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 236
    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 12
    .param p1, "pos"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "nowElapsed"    # J

    .line 240
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/Alarm;

    .line 241
    .local v1, "a":Lcom/android/server/alarm/Alarm;
    const-wide v4, 0x20b0000002aL

    move-object v2, v1

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 242
    .end local v1    # "a":Lcom/android/server/alarm/Alarm;
    goto :goto_6

    .line 243
    :cond_1e
    return-void
.end method

.method public getCount(Ljava/util/function/Predicate;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)I"
        }
    .end annotation

    .line 252
    .local p1, "condition":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 254
    .local v0, "start":J
    const/4 v2, 0x0

    .line 255
    .local v2, "count":I
    iget-object v3, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 256
    .local v4, "a":Lcom/android/server/alarm/Alarm;
    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 257
    add-int/lit8 v2, v2, 0x1

    .line 259
    .end local v4    # "a":Lcom/android/server/alarm/Alarm;
    :cond_21
    goto :goto_d

    .line 260
    :cond_22
    iget-object v3, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 261
    return v2
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 247
    sget-object v0, Lcom/android/server/alarm/LazyAlarmStore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getNextDeliveryTime()J
    .registers 10

    .line 147
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 148
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 149
    .local v2, "n":I
    if-nez v2, :cond_11

    .line 150
    const-wide/16 v3, 0x0

    return-wide v3

    .line 152
    :cond_11
    iget-object v3, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v3}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v3

    .line 153
    .local v3, "nextDelivery":J
    add-int/lit8 v5, v2, -0x2

    .local v5, "i":I
    :goto_21
    if-ltz v5, :cond_3f

    .line 154
    iget-object v6, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/alarm/Alarm;

    .line 155
    .local v6, "a":Lcom/android/server/alarm/Alarm;
    invoke-virtual {v6}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-lez v7, :cond_34

    .line 156
    goto :goto_3f

    .line 158
    :cond_34
    invoke-virtual {v6}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 153
    .end local v6    # "a":Lcom/android/server/alarm/Alarm;
    add-int/lit8 v5, v5, -0x1

    goto :goto_21

    .line 160
    .end local v5    # "i":I
    :cond_3f
    :goto_3f
    iget-object v5, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 161
    return-wide v3
.end method

.method public getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 110
    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/Alarm;

    .line 111
    .local v1, "alarm":Lcom/android/server/alarm/Alarm;
    iget v2, v1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_19

    .line 112
    return-object v1

    .line 109
    .end local v1    # "alarm":Lcom/android/server/alarm/Alarm;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 115
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextWakeupDeliveryTime()J
    .registers 10

    .line 125
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 126
    .local v0, "start":J
    const-wide/16 v2, 0x0

    .line 127
    .local v2, "nextWakeup":J
    iget-object v4, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_10
    if-ltz v4, :cond_3e

    .line 128
    iget-object v6, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/alarm/Alarm;

    .line 129
    .local v6, "a":Lcom/android/server/alarm/Alarm;
    iget-boolean v7, v6, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-nez v7, :cond_1f

    .line 130
    goto :goto_3b

    .line 132
    :cond_1f
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-nez v7, :cond_2a

    .line 133
    invoke-virtual {v6}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v2

    goto :goto_3b

    .line 135
    :cond_2a
    invoke-virtual {v6}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-lez v7, :cond_33

    .line 136
    goto :goto_3e

    .line 138
    :cond_33
    invoke-virtual {v6}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 127
    .end local v6    # "a":Lcom/android/server/alarm/Alarm;
    :goto_3b
    add-int/lit8 v4, v4, -0x1

    goto :goto_10

    .line 141
    .end local v4    # "i":I
    :cond_3e
    :goto_3e
    iget-object v4, p0, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 142
    return-wide v2
.end method

.method public remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation

    .line 84
    .local p1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "removedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_43

    .line 86
    iget-object v2, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 87
    iget-object v2, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 88
    .local v2, "removed":Lcom/android/server/alarm/Alarm;
    iget-object v3, v2, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/android/server/alarm/LazyAlarmStore;->mOnAlarmClockRemoved:Ljava/lang/Runnable;

    if-eqz v3, :cond_30

    .line 89
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 91
    :cond_30
    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->isTimeTickAlarm(Lcom/android/server/alarm/Alarm;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 94
    sget-object v3, Lcom/android/server/alarm/LazyAlarmStore;->TAG:Ljava/lang/String;

    const-string v4, "Removed TIME_TICK alarm"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_3d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v2    # "removed":Lcom/android/server/alarm/Alarm;
    :cond_40
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 99
    .end local v1    # "i":I
    :cond_43
    return-object v0
.end method

.method public removePendingAlarms(J)Ljava/util/ArrayList;
    .registers 12
    .param p1, "nowElapsed"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "pending":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    const/4 v1, 0x0

    .line 175
    .local v1, "sendWakeups":Z
    const/4 v2, 0x0

    .line 177
    .local v2, "standalonesOnly":Z
    iget-object v3, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_f
    if-ltz v3, :cond_44

    .line 178
    iget-object v4, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 179
    .local v4, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-virtual {v4}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-lez v5, :cond_22

    .line 180
    goto :goto_44

    .line 182
    :cond_22
    iget-object v5, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 183
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-boolean v5, v4, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v5, :cond_3a

    invoke-virtual {v4}, Lcom/android/server/alarm/Alarm;->getMaxWhenElapsed()J

    move-result-wide v5

    const-wide/16 v7, 0x1f4

    add-long/2addr v7, p1

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3a

    .line 187
    const/4 v1, 0x1

    .line 189
    :cond_3a
    iget v5, v4, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_41

    .line 190
    const/4 v2, 0x1

    .line 177
    .end local v4    # "alarm":Lcom/android/server/alarm/Alarm;
    :cond_41
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 193
    .end local v3    # "i":I
    :cond_44
    :goto_44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v3, "toSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_4f
    if-ltz v4, :cond_70

    .line 195
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 196
    .local v5, "pendingAlarm":Lcom/android/server/alarm/Alarm;
    if-nez v1, :cond_5e

    iget-boolean v6, v5, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v6, :cond_5e

    .line 197
    goto :goto_6d

    .line 199
    :cond_5e
    if-eqz v2, :cond_67

    iget v6, v5, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_67

    .line 200
    goto :goto_6d

    .line 202
    :cond_67
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 203
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v5    # "pendingAlarm":Lcom/android/server/alarm/Alarm;
    :goto_6d
    add-int/lit8 v4, v4, -0x1

    goto :goto_4f

    .line 206
    .end local v4    # "i":I
    :cond_70
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/LazyAlarmStore;->addAll(Ljava/util/ArrayList;)V

    .line 207
    return-object v3
.end method

.method public setAlarmClockRemovalListener(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 104
    iput-object p1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mOnAlarmClockRemoved:Ljava/lang/Runnable;

    .line 105
    return-void
.end method

.method public size()I
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z
    .registers 6
    .param p1, "deliveryCalculator"    # Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 214
    .local v2, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-interface {p1, v2}, Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;->updateAlarmDelivery(Lcom/android/server/alarm/Alarm;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 215
    .end local v2    # "alarm":Lcom/android/server/alarm/Alarm;
    goto :goto_7

    .line 216
    :cond_19
    if-eqz v0, :cond_22

    .line 217
    iget-object v1, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 219
    :cond_22
    return v0
.end method
