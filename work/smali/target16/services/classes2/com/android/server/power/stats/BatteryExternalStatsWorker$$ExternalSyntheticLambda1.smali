.class public final synthetic Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;JJ)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;->f$1:J

    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;->f$1:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;->f$2:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->$r8$lambda$jGOuPZKngR5Hkw2HmXI1V92vqNc(Lcom/android/server/power/stats/BatteryExternalStatsWorker;JJ)V

    return-void
.end method
