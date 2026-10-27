.class public Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
.super Ljava/lang/Object;
.source "PowerComponentAggregatedPowerStats.java"


# instance fields
.field public hasPowerStats:Z

.field public states:[I

.field public stats:Lcom/android/server/power/stats/processor/MultiStateStats;

.field public updated:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;-><init>()V

    return-void
.end method
