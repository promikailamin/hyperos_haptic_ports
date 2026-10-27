.class public Lcom/android/server/lineage/display/TwilightTracker$TwilightState;
.super Ljava/lang/Object;
.source "TwilightTracker.java"


# instance fields
.field public final mIsNight:Z

.field public final mTodaySunrise:J

.field public final mTodaySunset:J

.field public final mTomorrowSunrise:J

.field public final mYesterdaySunset:J


# direct methods
.method public constructor <init>(ZJJJJ)V
    .registers 10

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-boolean p1, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mIsNight:Z

    .line 462
    iput-wide p2, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mYesterdaySunset:J

    .line 463
    iput-wide p4, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mTodaySunrise:J

    .line 464
    iput-wide p6, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mTodaySunset:J

    .line 465
    iput-wide p8, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mTomorrowSunrise:J

    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/lineage/display/TwilightTracker$TwilightState;)Z
    .registers 6

    if-eqz p1, :cond_2a

    .line 513
    iget-boolean v0, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mIsNight:Z

    iget-boolean v1, p1, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mIsNight:Z

    if-ne v0, v1, :cond_2a

    iget-wide v0, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mYesterdaySunset:J

    iget-wide v2, p1, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mYesterdaySunset:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    iget-wide v0, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mTodaySunrise:J

    iget-wide v2, p1, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mTodaySunrise:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    iget-wide v0, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mTodaySunset:J

    iget-wide v2, p1, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mTodaySunset:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    iget-wide v0, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mTomorrowSunrise:J

    iget-wide p0, p1, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mTomorrowSunrise:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 509
    instance-of v0, p1, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->equals(Lcom/android/server/lineage/display/TwilightTracker$TwilightState;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public getTodaySunrise()J
    .registers 3

    .line 488
    iget-wide v0, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mTodaySunrise:J

    return-wide v0
.end method

.method public getTodaySunset()J
    .registers 3

    .line 496
    iget-wide v0, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mTodaySunset:J

    return-wide v0
.end method

.method public getTomorrowSunrise()J
    .registers 3

    .line 504
    iget-wide v0, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mTomorrowSunrise:J

    return-wide v0
.end method

.method public getYesterdaySunset()J
    .registers 3

    .line 480
    iget-wide v0, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mYesterdaySunset:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isNight()Z
    .registers 1

    .line 472
    iget-boolean p0, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mIsNight:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 528
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{TwilightState: isNight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mIsNight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mYesterdaySunset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mYesterdaySunset:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 530
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mTodaySunrise="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mTodaySunrise:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 531
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mTodaySunset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mTodaySunset:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 532
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mTomorrowSunrise="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->mTomorrowSunrise:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 533
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
