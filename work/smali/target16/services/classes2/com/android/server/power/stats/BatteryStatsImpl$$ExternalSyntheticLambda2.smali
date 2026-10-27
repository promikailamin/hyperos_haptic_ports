.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;JJZ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$1:J

    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$2:J

    iput-boolean p6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$3:Z

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .registers 11

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$1:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$2:J

    iget-boolean v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$3:Z

    move-object v7, p2

    check-cast v7, [J

    move v6, p1

    invoke-static/range {v0 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->$r8$lambda$98C0Y4ePfbG4-HrZJji0mKQ-jnI(Lcom/android/server/power/stats/BatteryStatsImpl;JJZI[J)V

    return-void
.end method
