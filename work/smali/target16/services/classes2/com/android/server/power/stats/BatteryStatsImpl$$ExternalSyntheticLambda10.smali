.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsCollector$PowerStatsConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-void
.end method


# virtual methods
.method public final notePowerStats(Lcom/android/internal/os/PowerStats;JJ)V
    .registers 6

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->$r8$lambda$_zCIm06q1aSPE0o1rjFdtSUYVnM(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/internal/os/PowerStats;JJ)V

    return-void
.end method
