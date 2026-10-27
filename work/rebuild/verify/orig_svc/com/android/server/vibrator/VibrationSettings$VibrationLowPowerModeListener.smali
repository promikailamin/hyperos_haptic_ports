.class final Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;
.super Ljava/lang/Object;
.source "VibrationSettings.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 2

    .line 941
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()I
    .registers 1

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .registers 5

    .line 950
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibrationSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 951
    :try_start_7
    iget-boolean v1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$fgetmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;)Z

    move-result v2

    if-eq v1, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 952
    :goto_14
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-static {v2, p1}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$fputmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;Z)V

    .line 953
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_24

    if-eqz v1, :cond_23

    .line 955
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {p0}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$mnotifyListeners(Lcom/android/server/vibrator/VibrationSettings;)V

    :cond_23
    return-void

    :catchall_24
    move-exception p0

    .line 953
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method
