.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;JJZZZII[I)V
    .registers 12

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$1:J

    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$2:J

    iput-boolean p6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$3:Z

    iput-boolean p7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$4:Z

    iput-boolean p8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$5:Z

    iput p9, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$6:I

    iput p10, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$7:I

    iput-object p11, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$8:[I

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .registers 16

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$1:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$2:J

    iget-boolean v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$3:Z

    iget-boolean v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$4:Z

    iget-boolean v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$5:Z

    iget v8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$6:I

    iget v9, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$7:I

    iget-object v10, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda8;->f$8:[I

    move-object v12, p2

    check-cast v12, [J

    move v11, p1

    invoke-static/range {v0 .. v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->$r8$lambda$n2j09dFHdzjml-IvHidYb1BTkDU(Lcom/android/server/power/stats/BatteryStatsImpl;JJZZZII[II[J)V

    return-void
.end method
