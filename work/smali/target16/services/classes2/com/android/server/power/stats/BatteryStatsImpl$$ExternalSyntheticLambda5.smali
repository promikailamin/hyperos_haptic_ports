.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->$r8$lambda$SOB0eQB-FWIut99wBbjrSJfq8eI(Lcom/android/server/power/stats/BatteryStatsImpl;I)V

    return-void
.end method
