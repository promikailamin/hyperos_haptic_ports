.class public final synthetic Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->lambda$scheduleCpuSyncDueToWakelockChange$3$com-android-server-am-BatteryExternalStatsWorker()V

    return-void
.end method
