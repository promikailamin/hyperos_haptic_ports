.class final Lcom/android/server/tare/Analyst$Report;
.super Ljava/lang/Object;
.source "Analyst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/Analyst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Report"
.end annotation


# instance fields
.field public cumulativeBatteryDischarge:I

.field public cumulativeLoss:J

.field public cumulativeNegativeRegulations:J

.field public cumulativePositiveRegulations:J

.field public cumulativeProfit:J

.field public cumulativeRewards:J

.field public currentBatteryLevel:I

.field public numNegativeRegulations:I

.field public numPositiveRegulations:I

.field public numProfitableActions:I

.field public numRewards:I

.field public numUnprofitableActions:I


# direct methods
.method static bridge synthetic -$$Nest$mclear(Lcom/android/server/tare/Analyst$Report;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/tare/Analyst$Report;->clear()V

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    .line 45
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    .line 51
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    .line 52
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    .line 58
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    .line 59
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    .line 63
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    .line 64
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    .line 68
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    .line 69
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    .line 73
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    .line 74
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    return-void
.end method

.method private clear()V
    .registers 4

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    .line 78
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    .line 79
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    .line 80
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    .line 81
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    .line 82
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    .line 83
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    .line 84
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    .line 85
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    .line 86
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    .line 87
    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    .line 88
    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    .line 89
    return-void
.end method
