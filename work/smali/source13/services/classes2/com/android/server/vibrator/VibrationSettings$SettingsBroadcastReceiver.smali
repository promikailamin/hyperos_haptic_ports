.class final Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VibrationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vibrator/VibrationSettings;

    .line 697
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 700
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 703
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    goto :goto_24

    .line 704
    :cond_12
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 705
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$mupdateRingerMode(Lcom/android/server/vibrator/VibrationSettings;)V

    .line 706
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$mnotifyListeners(Lcom/android/server/vibrator/VibrationSettings;)V

    .line 708
    :cond_24
    :goto_24
    return-void
.end method
