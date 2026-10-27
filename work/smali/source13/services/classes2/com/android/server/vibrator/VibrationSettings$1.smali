.class Lcom/android/server/vibrator/VibrationSettings$1;
.super Ljava/lang/Object;
.source "VibrationSettings.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vibrator/VibrationSettings;->onSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vibrator/VibrationSettings;

    .line 241
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()I
    .registers 2

    .line 244
    const/4 v0, 0x2

    return v0
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .registers 6
    .param p1, "result"    # Landroid/os/PowerSaveState;

    .line 250
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibrationSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 251
    :try_start_7
    iget-boolean v1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$fgetmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;)Z

    move-result v2

    if-eq v1, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 252
    .local v1, "shouldNotifyListeners":Z
    :goto_14
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    iget-boolean v3, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$fputmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;Z)V

    .line 253
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_24

    .line 254
    if-eqz v1, :cond_23

    .line 255
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$1;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$mnotifyListeners(Lcom/android/server/vibrator/VibrationSettings;)V

    .line 257
    :cond_23
    return-void

    .line 253
    .end local v1    # "shouldNotifyListeners":Z
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method
