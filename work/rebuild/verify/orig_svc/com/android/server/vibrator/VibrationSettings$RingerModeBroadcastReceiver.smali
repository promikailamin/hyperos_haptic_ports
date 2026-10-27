.class final Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VibrationSettings.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 2

    .line 870
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 873
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 874
    const-string p2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 875
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {p1}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$mupdateRingerMode(Lcom/android/server/vibrator/VibrationSettings;)V

    .line 876
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {p0}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$mnotifyListeners(Lcom/android/server/vibrator/VibrationSettings;)V

    :cond_16
    return-void
.end method
