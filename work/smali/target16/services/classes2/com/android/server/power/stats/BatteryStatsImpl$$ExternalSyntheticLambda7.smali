.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:Ljava/io/ByteArrayOutputStream;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/io/ByteArrayOutputStream;J)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$1:Ljava/io/ByteArrayOutputStream;

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$1:Ljava/io/ByteArrayOutputStream;

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->$r8$lambda$nJe8UK1ypi7M29-w2P3ZPxEvSx8(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/io/ByteArrayOutputStream;J)V

    return-void
.end method
