.class public final synthetic Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;

    check-cast p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;

    invoke-static {p0, p1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;->$r8$lambda$Fwar8k-A_3qJ9b3XAxvXAT3MInw(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;Landroid/hardware/thermal/V2_0/TemperatureThreshold;)Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object p0

    return-object p0
.end method
