.class public Lcom/android/server/lineage/health/ChargingControlController$2;
.super Landroid/content/BroadcastReceiver;
.source "ChargingControlController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/health/ChargingControlController;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/health/ChargingControlController;)V
    .registers 2

    .line 440
    iput-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController$2;->this$0:Lcom/android/server/lineage/health/ChargingControlController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 443
    const-string p1, "LineageHealth"

    const-string p2, "Alarm changed, update charge times"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlController$2;->this$0:Lcom/android/server/lineage/health/ChargingControlController;

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->updateChargeControl()V

    return-void
.end method
