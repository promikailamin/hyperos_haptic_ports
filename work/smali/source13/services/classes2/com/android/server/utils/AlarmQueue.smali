.class public abstract Lcom/android/server/utils/AlarmQueue;
.super Ljava/lang/Object;
.source "AlarmQueue.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/AlarmQueue$Injector;,
        Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/AlarmManager$OnAlarmListener;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NOT_SCHEDULED:J = -0x1L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final mAlarmTag:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDumpTitle:Ljava/lang/String;

.field private final mExactAlarm:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/utils/AlarmQueue$Injector;

.field private final mLock:Ljava/lang/Object;

.field private mMinTimeBetweenAlarmsMs:J

.field private final mScheduleAlarmRunnable:Ljava/lang/Runnable;

.field private mTriggerTimeElapsed:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlarmTag(Lcom/android/server/utils/AlarmQueue;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/utils/AlarmQueue;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExactAlarm(Lcom/android/server/utils/AlarmQueue;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/utils/AlarmQueue;->mExactAlarm:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/utils/AlarmQueue;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/utils/AlarmQueue;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinTimeBetweenAlarmsMs(Lcom/android/server/utils/AlarmQueue;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTriggerTimeElapsed(Lcom/android/server/utils/AlarmQueue;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-class v0, Lcom/android/server/utils/AlarmQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/AlarmQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "alarmTag"    # Ljava/lang/String;
    .param p4, "dumpTitle"    # Ljava/lang/String;
    .param p5, "exactAlarm"    # Z
    .param p6, "minTimeBetweenAlarmsMs"    # J

    .line 157
    .local p0, "this":Lcom/android/server/utils/AlarmQueue;, "Lcom/android/server/utils/AlarmQueue<TK;>;"
    new-instance v8, Lcom/android/server/utils/AlarmQueue$Injector;

    invoke-direct {v8}, Lcom/android/server/utils/AlarmQueue$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJLcom/android/server/utils/AlarmQueue$Injector;)V

    .line 159
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJLcom/android/server/utils/AlarmQueue$Injector;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "alarmTag"    # Ljava/lang/String;
    .param p4, "dumpTitle"    # Ljava/lang/String;
    .param p5, "exactAlarm"    # Z
    .param p6, "minTimeBetweenAlarmsMs"    # J
    .param p8, "injector"    # Lcom/android/server/utils/AlarmQueue$Injector;

    .line 164
    .local p0, "this":Lcom/android/server/utils/AlarmQueue;, "Lcom/android/server/utils/AlarmQueue<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/android/server/utils/AlarmQueue$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/AlarmQueue$1;-><init>(Lcom/android/server/utils/AlarmQueue;)V

    iput-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mScheduleAlarmRunnable:Ljava/lang/Runnable;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    .line 132
    new-instance v0, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-direct {v0}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    .line 142
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    .line 165
    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue;->mContext:Landroid/content/Context;

    .line 166
    iput-object p3, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmTag:Ljava/lang/String;

    .line 167
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mDumpTitle:Ljava/lang/String;

    .line 168
    iput-boolean p5, p0, Lcom/android/server/utils/AlarmQueue;->mExactAlarm:Z

    .line 169
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    .line 170
    iput-object p8, p0, Lcom/android/server/utils/AlarmQueue;->mInjector:Lcom/android/server/utils/AlarmQueue$Injector;

    .line 171
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-ltz v0, :cond_3a

    .line 174
    iput-wide p6, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    .line 175
    return-void

    .line 172
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "min time between alarms must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setNextAlarmLocked()V
    .registers 3

    .line 278
    .local p0, "this":Lcom/android/server/utils/AlarmQueue;, "Lcom/android/server/utils/AlarmQueue<TK;>;"
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mInjector:Lcom/android/server/utils/AlarmQueue$Injector;

    invoke-virtual {v0}, Lcom/android/server/utils/AlarmQueue$Injector;->getElapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    .line 279
    return-void
.end method

.method private setNextAlarmLocked(J)V
    .registers 10
    .param p1, "earliestTriggerElapsed"    # J

    .line 287
    .local p0, "this":Lcom/android/server/utils/AlarmQueue;, "Lcom/android/server/utils/AlarmQueue<TK;>;"
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v0}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->size()I

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_17

    .line 288
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/utils/AlarmQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/AlarmQueue;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    iput-wide v1, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    .line 298
    return-void

    .line 301
    :cond_17
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v0}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 302
    .local v0, "alarm":Landroid/util/Pair;, "Landroid/util/Pair<TK;Ljava/lang/Long;>;"
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 309
    .local v3, "nextTriggerTimeElapsed":J
    iget-wide v5, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    cmp-long v1, v5, v1

    if-eqz v1, :cond_3e

    const-wide/32 v1, 0xea60

    sub-long v1, v5, v1

    cmp-long v1, v3, v1

    if-ltz v1, :cond_3e

    cmp-long v1, v5, v3

    if-gez v1, :cond_47

    .line 316
    :cond_3e
    iput-wide v3, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    .line 317
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/utils/AlarmQueue;->mScheduleAlarmRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    :cond_47
    return-void
.end method


# virtual methods
.method public addAlarm(Ljava/lang/Object;J)V
    .registers 10
    .param p2, "alarmTimeElapsed"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)V"
        }
    .end annotation

    .line 182
    .local p0, "this":Lcom/android/server/utils/AlarmQueue;, "Lcom/android/server/utils/AlarmQueue<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->removeKey(Ljava/lang/Object;)Z

    move-result v1

    .line 184
    .local v1, "removed":Z
    iget-object v2, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 185
    iget-wide v2, p0, Lcom/android/server/utils/AlarmQueue;->mTriggerTimeElapsed:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_25

    if-nez v1, :cond_25

    cmp-long v2, p2, v2

    if-gez v2, :cond_28

    .line 187
    :cond_25
    invoke-direct {p0}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked()V

    .line 189
    .end local v1    # "removed":Z
    :cond_28
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 345
    .local p0, "this":Lcom/android/server/utils/AlarmQueue;, "Lcom/android/server/utils/AlarmQueue<TK;>;"
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mDumpTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 347
    const-string v1, " alarms:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 350
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->size()I

    move-result v1

    if-nez v1, :cond_1e

    .line 351
    const-string v1, "NOT WAITING"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_49

    .line 353
    :cond_1e
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->size()I

    move-result v2

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v1, v2}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Pair;

    .line 354
    .local v1, "alarms":[Landroid/util/Pair;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2d
    array-length v3, v1

    if-ge v2, v3, :cond_49

    .line 355
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 356
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 357
    const-string v4, ": "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 358
    aget-object v4, v1, v2

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 359
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 354
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 363
    .end local v1    # "alarms":[Landroid/util/Pair;
    .end local v2    # "i":I
    :cond_49
    :goto_49
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 364
    monitor-exit v0

    .line 365
    return-void

    .line 364
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public getMinTimeBetweenAlarmsMs()J
    .registers 4

    .line 198
    .local p0, "this":Lcom/android/server/utils/AlarmQueue;, "Lcom/android/server/utils/AlarmQueue<TK;>;"
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    monitor-exit v0

    return-wide v1

    .line 200
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected abstract isForUser(Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)Z"
        }
    .end annotation
.end method

.method synthetic lambda$setNextAlarmLocked$0$com-android-server-utils-AlarmQueue()V
    .registers 3

    .line 290
    .local p0, "this":Lcom/android/server/utils/AlarmQueue;, "Lcom/android/server/utils/AlarmQueue<TK;>;"
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 291
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-eqz v0, :cond_f

    .line 294
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 296
    :cond_f
    return-void
.end method

.method public onAlarm()V
    .registers 8

    .line 323
    .local p0, "this":Lcom/android/server/utils/AlarmQueue;, "Lcom/android/server/utils/AlarmQueue<TK;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 324
    .local v0, "expired":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TK;>;"
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_8
    iget-object v2, p0, Lcom/android/server/utils/AlarmQueue;->mInjector:Lcom/android/server/utils/AlarmQueue$Injector;

    invoke-virtual {v2}, Lcom/android/server/utils/AlarmQueue$Injector;->getElapsedRealtime()J

    move-result-wide v2

    .line 326
    .local v2, "nowElapsed":J
    :goto_e
    iget-object v4, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v4}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->size()I

    move-result v4

    if-lez v4, :cond_36

    .line 327
    iget-object v4, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v4}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 328
    .local v4, "alarm":Landroid/util/Pair;, "Landroid/util/Pair<TK;Ljava/lang/Long;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gtz v5, :cond_36

    .line 329
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v5, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v5, v4}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 334
    nop

    .end local v4    # "alarm":Landroid/util/Pair;, "Landroid/util/Pair<TK;Ljava/lang/Long;>;"
    goto :goto_e

    .line 335
    :cond_36
    iget-wide v4, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    add-long/2addr v4, v2

    invoke-direct {p0, v4, v5}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    .line 336
    .end local v2    # "nowElapsed":J
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_47

    .line 338
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_46

    .line 339
    invoke-virtual {p0, v0}, Lcom/android/server/utils/AlarmQueue;->processExpiredAlarms(Landroid/util/ArraySet;)V

    .line 341
    :cond_46
    return-void

    .line 336
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v2
.end method

.method protected abstract processExpiredAlarms(Landroid/util/ArraySet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "TK;>;)V"
        }
    .end annotation
.end method

.method public removeAlarmForKey(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 205
    .local p0, "this":Lcom/android/server/utils/AlarmQueue;, "Lcom/android/server/utils/AlarmQueue<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->removeKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 207
    invoke-direct {p0}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked()V

    .line 209
    :cond_e
    monitor-exit v0

    .line 210
    return-void

    .line 209
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public removeAlarmsForUserId(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 214
    .local p0, "this":Lcom/android/server/utils/AlarmQueue;, "Lcom/android/server/utils/AlarmQueue<TK;>;"
    const/4 v0, 0x0

    .line 215
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_4
    iget-object v2, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v2}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->size()I

    move-result v3

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v2, v3}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Pair;

    .line 217
    .local v2, "alarms":[Landroid/util/Pair;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_15
    if-ltz v3, :cond_2c

    .line 218
    aget-object v4, v2, v3

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 219
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v4, p1}, Lcom/android/server/utils/AlarmQueue;->isForUser(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 220
    iget-object v5, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 221
    const/4 v0, 0x1

    .line 217
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_29
    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    .line 224
    .end local v3    # "i":I
    :cond_2c
    if-eqz v0, :cond_31

    .line 225
    invoke-direct {p0}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked()V

    .line 227
    .end local v2    # "alarms":[Landroid/util/Pair;
    :cond_31
    monitor-exit v1

    .line 228
    return-void

    .line 227
    :catchall_33
    move-exception v2

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_33

    throw v2
.end method

.method protected removeAlarmsIf(Ljava/util/function/Predicate;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "TK;>;)V"
        }
    .end annotation

    .line 240
    .local p0, "this":Lcom/android/server/utils/AlarmQueue;, "Lcom/android/server/utils/AlarmQueue<TK;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TK;>;"
    const/4 v0, 0x0

    .line 241
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_4
    iget-object v2, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v2}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->size()I

    move-result v3

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v2, v3}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Pair;

    .line 243
    .local v2, "alarms":[Landroid/util/Pair;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_15
    if-ltz v3, :cond_2c

    .line 244
    aget-object v4, v2, v3

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 245
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 246
    iget-object v5, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 247
    const/4 v0, 0x1

    .line 243
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_29
    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    .line 250
    .end local v3    # "i":I
    :cond_2c
    if-eqz v0, :cond_31

    .line 251
    invoke-direct {p0}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked()V

    .line 253
    .end local v2    # "alarms":[Landroid/util/Pair;
    :cond_31
    monitor-exit v1

    .line 254
    return-void

    .line 253
    :catchall_33
    move-exception v2

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_33

    throw v2
.end method

.method public removeAllAlarms()V
    .registers 4

    .line 232
    .local p0, "this":Lcom/android/server/utils/AlarmQueue;, "Lcom/android/server/utils/AlarmQueue<TK;>;"
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/AlarmQueue;->mAlarmPriorityQueue:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;

    invoke-virtual {v1}, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->clear()V

    .line 234
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/utils/AlarmQueue;->setNextAlarmLocked(J)V

    .line 235
    monitor-exit v0

    .line 236
    return-void

    .line 235
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public setMinTimeBetweenAlarmsMs(J)V
    .registers 5
    .param p1, "minTimeMs"    # J

    .line 261
    .local p0, "this":Lcom/android/server/utils/AlarmQueue;, "Lcom/android/server/utils/AlarmQueue<TK;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_10

    .line 264
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_9
    iput-wide p1, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    .line 266
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v1

    .line 262
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "min time between alarms must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
