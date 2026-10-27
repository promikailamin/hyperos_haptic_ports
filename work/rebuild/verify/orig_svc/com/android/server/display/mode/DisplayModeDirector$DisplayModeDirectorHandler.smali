.class public final Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;
.super Landroid/os/Handler;
.source "DisplayModeDirector.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/os/Looper;)V
    .registers 4

    .line 738
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 739
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 744
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_96

    return-void

    .line 801
    :pswitch_6
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 802
    :try_start_d
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmSettingsObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V

    .line 803
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmSettingsObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateModeSwitchingTypeSettingLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V

    .line 804
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_21

    throw p0

    .line 795
    :pswitch_24
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 796
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHbmObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->onDeviceConfigRefreshRateInHbmHdrChanged(I)V

    return-void

    .line 788
    :pswitch_30
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 789
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHbmObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->onDeviceConfigRefreshRateInHbmSunlightChanged(I)V

    return-void

    .line 760
    :pswitch_3c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 762
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [F

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {p0, v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$monDeviceConfigHighBrightnessThresholdsChanged(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;[F[F)V

    return-void

    .line 769
    :pswitch_52
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 770
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onDeviceConfigRefreshRateInHighZoneChanged(I)V

    return-void

    .line 753
    :pswitch_5e
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 754
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onDeviceConfigRefreshRateInLowZoneChanged(I)V

    return-void

    .line 776
    :pswitch_6a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    .line 777
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmSettingsObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->onDeviceConfigDefaultPeakRefreshRateChanged(Ljava/lang/Float;)V

    return-void

    .line 746
    :pswitch_78
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 747
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [F

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {p0, v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$monDeviceConfigLowBrightnessThresholdsChanged(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;[F[F)V

    return-void

    .line 782
    :pswitch_8e
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    .line 784
    invoke-interface {p0}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;->onDesiredDisplayModeSpecsChanged()V

    return-void

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_78
        :pswitch_6a
        :pswitch_5e
        :pswitch_52
        :pswitch_3c
        :pswitch_30
        :pswitch_24
        :pswitch_6
    .end packed-switch
.end method
