.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda95;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/DoubleSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda95;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-void
.end method


# virtual methods
.method public final getAsDouble()D
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda95;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getBatteryCapacity()I

    move-result p0

    int-to-double v0, p0

    return-wide v0
.end method
