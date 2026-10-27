.class public Lcom/android/server/lineage/health/ChargingControlController$1;
.super Landroid/content/BroadcastReceiver;
.source "ChargingControlController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/health/ChargingControlController;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/health/ChargingControlController;)V
    .registers 2

    .line 305
    iput-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController$1;->this$0:Lcom/android/server/lineage/health/ChargingControlController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 308
    const-string p1, "LineageHealth"

    const-string p2, "Power disconnected, reset internal states"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController$1;->this$0:Lcom/android/server/lineage/health/ChargingControlController;

    invoke-virtual {p1}, Lcom/android/server/lineage/health/ChargingControlController;->resetInternalState()V

    .line 310
    iget-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController$1;->this$0:Lcom/android/server/lineage/health/ChargingControlController;

    # getter for: Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/lineage/health/ChargingControlController;->access$000(Lcom/android/server/lineage/health/ChargingControlController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
