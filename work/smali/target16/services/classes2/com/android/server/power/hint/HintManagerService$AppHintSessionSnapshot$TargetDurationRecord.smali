.class public Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;
.super Ljava/lang/Object;
.source "HintManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public mCount:I

.field public mTargetDurationNs:J

.field public mTimestamp:J


# direct methods
.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;J)V
    .registers 4

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-wide p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTargetDurationNs:J

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTimestamp:J

    const/4 p1, 0x1

    .line 467
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mCount:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;)I
    .registers 6

    .line 472
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->getCount()I

    move-result v0

    .line 473
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->getCount()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1a

    .line 479
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->getTimestamp()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_19

    return v3

    :cond_19
    return v2

    :cond_1a
    if-ge v0, v1, :cond_1d

    return v3

    :cond_1d
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 460
    check-cast p1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->compareTo(Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;)I

    move-result p0

    return p0
.end method

.method public getCount()I
    .registers 1

    .line 488
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mCount:I

    return p0
.end method

.method public getTargetDurationNs()J
    .registers 3

    .line 484
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTargetDurationNs:J

    return-wide v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 492
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTimestamp:J

    return-wide v0
.end method

.method public setCount(I)V
    .registers 2

    .line 496
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mCount:I

    return-void
.end method

.method public setTimestamp()V
    .registers 3

    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTimestamp:J

    return-void
.end method
