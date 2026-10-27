.class final Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VibrationSettings.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 2

    .line 883
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 886
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 887
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 888
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {p0, p2}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$mupdateBatteryInfo(Lcom/android/server/vibrator/VibrationSettings;Landroid/content/Intent;)V

    :cond_11
    return-void
.end method
