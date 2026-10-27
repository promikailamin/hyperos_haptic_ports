.class public Lcom/android/server/power/stats/UsageBasedPowerEstimator;
.super Ljava/lang/Object;
.source "UsageBasedPowerEstimator.java"


# instance fields
.field public final mAveragePowerMahPerMs:D


# direct methods
.method public constructor <init>(D)V
    .registers 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x414b774000000000L    # 3600000.0

    div-double/2addr p1, v0

    .line 32
    iput-wide p1, p0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    return-void
.end method


# virtual methods
.method public calculatePower(J)D
    .registers 5

    .line 50
    iget-wide v0, p0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double p0, p1

    mul-double/2addr v0, p0

    return-wide v0
.end method
