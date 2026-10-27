.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ZIJJLjava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-boolean p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$1:Z

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$2:I

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$3:J

    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$4:J

    iput-object p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-boolean v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$1:Z

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$2:I

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$3:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$4:J

    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;->f$5:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BatteryStatsService;->lambda$updateBatteryStatsOnActivityUsage$101$com-android-server-am-BatteryStatsService(ZIJJLjava/lang/String;)V

    return-void
.end method
