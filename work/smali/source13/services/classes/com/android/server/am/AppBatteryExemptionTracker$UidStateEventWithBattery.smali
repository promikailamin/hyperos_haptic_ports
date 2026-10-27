.class final Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;
.super Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;
.source "AppBatteryExemptionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppBatteryExemptionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UidStateEventWithBattery"
.end annotation


# instance fields
.field private mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

.field private mIsStart:Z

.field private mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;)V
    .registers 3
    .param p1, "other"    # Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 427
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;)V

    .line 428
    iget-boolean v0, p1, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    .line 429
    iget-object v0, p1, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    iput-object v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 431
    return-void
.end method

.method constructor <init>(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;)V
    .registers 6
    .param p1, "isStart"    # Z
    .param p2, "now"    # J
    .param p4, "batteryUsage"    # Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .param p5, "peer"    # Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 417
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    .line 418
    iput-boolean p1, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    .line 419
    iput-object p4, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 420
    iput-object p5, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 421
    if-eqz p5, :cond_d

    .line 422
    iput-object p0, p5, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 424
    :cond_d
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .line 481
    new-instance v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;-><init>(Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 486
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 487
    return v0

    .line 489
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    if-eq v1, v2, :cond_d

    .line 490
    return v0

    .line 492
    :cond_d
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 493
    .local v1, "otherEvent":Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;
    iget-boolean v2, v1, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    iget-boolean v3, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    if-ne v2, v3, :cond_2a

    iget-wide v2, v1, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mTimestamp:J

    iget-wide v4, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mTimestamp:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    iget-object v3, v1, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 495
    invoke-virtual {v2, v3}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    nop

    .line 493
    :goto_2b
    return v0
.end method

.method getBatteryUsage()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .registers 2

    .line 476
    iget-object v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    return-object v0
.end method

.method getBatteryUsage(JJ)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .registers 14
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 464
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    if-nez v0, :cond_4b

    iget-wide v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mTimestamp:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_4b

    cmp-long v0, p3, p1

    if-gtz v0, :cond_f

    goto :goto_4b

    .line 467
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    iget-wide v0, v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mTimestamp:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 468
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mTimestamp:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 469
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mTimestamp:J

    iget-object v2, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    iget-wide v2, v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mTimestamp:J

    sub-long/2addr v0, v2

    .line 470
    .local v0, "totalDur":J
    sub-long v2, p3, p1

    .line 471
    .local v2, "inputDur":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_48

    cmp-long v4, v0, v2

    if-nez v4, :cond_33

    iget-object v4, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    goto :goto_4a

    .line 472
    :cond_33
    iget-object v4, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 471
    invoke-virtual {v4}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->mutate()Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    long-to-double v7, v2

    mul-double/2addr v7, v5

    long-to-double v5, v0

    div-double/2addr v7, v5

    .line 472
    invoke-virtual {v4, v7, v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->scale(D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->unmutate()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v4

    goto :goto_4a

    :cond_48
    sget-object v4, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 471
    :goto_4a
    return-object v4

    .line 465
    .end local v0    # "totalDur":J
    .end local v2    # "inputDur":J
    :cond_4b
    :goto_4b
    sget-object v0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 506
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mTimestamp:J

    .line 507
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 508
    invoke-virtual {v1}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 506
    return v0
.end method

.method isStart()Z
    .registers 2

    .line 460
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UidStateEventWithBattery("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method trimTo(J)V
    .registers 7
    .param p1, "timestamp"    # J

    .line 436
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    if-eqz v0, :cond_38

    iget-wide v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mTimestamp:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    goto :goto_38

    .line 439
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    if-eqz v0, :cond_35

    .line 441
    invoke-virtual {v0}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v0

    .line 442
    .local v0, "batteryUsage":Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    iget-object v1, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    iget-wide v2, v1, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mTimestamp:J

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage(JJ)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 444
    iget-object v1, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v1}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->mutate()Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v1

    .line 445
    invoke-virtual {v1, v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    iget-object v2, v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 446
    invoke-virtual {v1, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->unmutate()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 449
    .end local v0    # "batteryUsage":Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    :cond_35
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mTimestamp:J

    .line 450
    return-void

    .line 437
    :cond_38
    :goto_38
    return-void
.end method

.method update(Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V
    .registers 3
    .param p1, "peer"    # Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;
    .param p2, "batteryUsage"    # Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 454
    iput-object p1, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 455
    iput-object p0, p1, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 456
    iput-object p2, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 457
    return-void
.end method
