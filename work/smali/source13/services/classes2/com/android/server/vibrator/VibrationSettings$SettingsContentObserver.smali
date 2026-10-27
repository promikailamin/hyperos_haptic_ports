.class final Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "VibrationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/vibrator/VibrationSettings;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 681
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    .line 682
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 683
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 687
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$mupdateSettings(Lcom/android/server/vibrator/VibrationSettings;)V

    .line 688
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$mnotifyListeners(Lcom/android/server/vibrator/VibrationSettings;)V

    .line 689
    return-void
.end method
