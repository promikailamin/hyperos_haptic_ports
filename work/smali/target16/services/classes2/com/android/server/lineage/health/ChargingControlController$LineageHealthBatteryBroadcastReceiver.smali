.class public Lcom/android/server/lineage/health/ChargingControlController$LineageHealthBatteryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChargingControlController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/health/ChargingControlController;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/health/ChargingControlController;)V
    .registers 2

    .line 534
    iput-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController$LineageHealthBatteryBroadcastReceiver;->this$0:Lcom/android/server/lineage/health/ChargingControlController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/lineage/health/ChargingControlController;Lcom/android/server/lineage/health/ChargingControlController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/lineage/health/ChargingControlController$LineageHealthBatteryBroadcastReceiver;-><init>(Lcom/android/server/lineage/health/ChargingControlController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 538
    iget-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController$LineageHealthBatteryBroadcastReceiver;->this$0:Lcom/android/server/lineage/health/ChargingControlController;

    invoke-static {p1, p2}, Lcom/android/server/lineage/health/ChargingControlController;->-$$Nest$mupdateBatteryInfo(Lcom/android/server/lineage/health/ChargingControlController;Landroid/content/Intent;)V

    .line 539
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlController$LineageHealthBatteryBroadcastReceiver;->this$0:Lcom/android/server/lineage/health/ChargingControlController;

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->updateChargeControl()V

    return-void
.end method
