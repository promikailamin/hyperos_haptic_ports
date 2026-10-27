.class public Lcom/android/server/lineage/health/ChargingControlNotification$LineageHealthNotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChargingControlNotification.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/health/ChargingControlNotification;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/health/ChargingControlNotification;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/android/server/lineage/health/ChargingControlNotification$LineageHealthNotificationBroadcastReceiver;->this$0:Lcom/android/server/lineage/health/ChargingControlNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/lineage/health/ChargingControlNotification;Lcom/android/server/lineage/health/ChargingControlNotification-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/lineage/health/ChargingControlNotification$LineageHealthNotificationBroadcastReceiver;-><init>(Lcom/android/server/lineage/health/ChargingControlNotification;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 214
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlNotification$LineageHealthNotificationBroadcastReceiver;->this$0:Lcom/android/server/lineage/health/ChargingControlNotification;

    invoke-static {p0, p2}, Lcom/android/server/lineage/health/ChargingControlNotification;->-$$Nest$mhandleNotificationIntent(Lcom/android/server/lineage/health/ChargingControlNotification;Landroid/content/Intent;)V

    return-void
.end method
