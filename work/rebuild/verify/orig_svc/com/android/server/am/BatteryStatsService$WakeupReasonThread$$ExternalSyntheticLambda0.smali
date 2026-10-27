.class public final synthetic Lcom/android/server/am/BatteryStatsService$WakeupReasonThread$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;JJLjava/lang/String;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    iput-wide p2, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread$$ExternalSyntheticLambda0;->f$1:J

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread$$ExternalSyntheticLambda0;->f$2:J

    iput-object p6, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    iget-wide v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread$$ExternalSyntheticLambda0;->f$1:J

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread$$ExternalSyntheticLambda0;->f$2:J

    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->$r8$lambda$N2KzrCRugqFjIZq0ZdEw_hdWITk(Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;JJLjava/lang/String;)V

    return-void
.end method
