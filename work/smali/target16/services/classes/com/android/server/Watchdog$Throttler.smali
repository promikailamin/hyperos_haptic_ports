.class public final Lcom/android/server/Watchdog$Throttler;
.super Ljava/lang/Object;
.source "Watchdog.java"


# instance fields
.field public final mCoolOffPeriodMillis:J

.field public mLastTriggerMillis:J

.field public final mUptimeClock:Ljava/time/Clock;


# direct methods
.method public constructor <init>(Ljava/time/Clock;J)V
    .registers 6

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 467
    iput-wide v0, p0, Lcom/android/server/Watchdog$Throttler;->mLastTriggerMillis:J

    .line 470
    iput-object p1, p0, Lcom/android/server/Watchdog$Throttler;->mUptimeClock:Ljava/time/Clock;

    .line 471
    iput-wide p2, p0, Lcom/android/server/Watchdog$Throttler;->mCoolOffPeriodMillis:J

    return-void
.end method


# virtual methods
.method public isThrottled()Z
    .registers 5

    .line 475
    iget-wide v0, p0, Lcom/android/server/Watchdog$Throttler;->mLastTriggerMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/Watchdog$Throttler;->mUptimeClock:Ljava/time/Clock;

    .line 476
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/Watchdog$Throttler;->mLastTriggerMillis:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/Watchdog$Throttler;->mCoolOffPeriodMillis:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public markTrigger()V
    .registers 3

    .line 480
    iget-object v0, p0, Lcom/android/server/Watchdog$Throttler;->mUptimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/Watchdog$Throttler;->mLastTriggerMillis:J

    return-void
.end method
