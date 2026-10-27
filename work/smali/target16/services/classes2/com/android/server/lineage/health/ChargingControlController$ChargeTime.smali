.class public final Lcom/android/server/lineage/health/ChargingControlController$ChargeTime;
.super Ljava/lang/Object;
.source "ChargingControlController.java"


# instance fields
.field public final mStartTime:J

.field public final mTargetTime:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    iput-wide p1, p0, Lcom/android/server/lineage/health/ChargingControlController$ChargeTime;->mStartTime:J

    .line 550
    iput-wide p3, p0, Lcom/android/server/lineage/health/ChargingControlController$ChargeTime;->mTargetTime:J

    return-void
.end method


# virtual methods
.method public getStartTime()J
    .registers 3

    .line 554
    iget-wide v0, p0, Lcom/android/server/lineage/health/ChargingControlController$ChargeTime;->mStartTime:J

    return-wide v0
.end method

.method public getTargetTime()J
    .registers 3

    .line 558
    iget-wide v0, p0, Lcom/android/server/lineage/health/ChargingControlController$ChargeTime;->mTargetTime:J

    return-wide v0
.end method
