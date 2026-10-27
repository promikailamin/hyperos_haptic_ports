.class final Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;
.super Landroid/os/Handler;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayModeDirectorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 812
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 813
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 814
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 818
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7a

    goto/16 :goto_79

    .line 869
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 870
    .local v0, "refreshRateInHbmHdr":I
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHbmObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->onDeviceConfigRefreshRateInHbmHdrChanged(I)V

    .line 871
    goto :goto_79

    .line 862
    .end local v0    # "refreshRateInHbmHdr":I
    :pswitch_13
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 863
    .local v0, "refreshRateInHbmSunlight":I
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmHbmObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$HbmObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->onDeviceConfigRefreshRateInHbmSunlightChanged(I)V

    .line 865
    goto :goto_79

    .line 834
    .end local v0    # "refreshRateInHbmSunlight":I
    :pswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 836
    .local v0, "thresholds":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onDeviceConfigHighBrightnessThresholdsChanged([I[I)V

    .line 839
    goto :goto_79

    .line 843
    .end local v0    # "thresholds":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    :pswitch_35
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 844
    .local v0, "refreshRateInZone":I
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onDeviceConfigRefreshRateInHighZoneChanged(I)V

    .line 846
    goto :goto_79

    .line 827
    .end local v0    # "refreshRateInZone":I
    :pswitch_41
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 828
    .restart local v0    # "refreshRateInZone":I
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onDeviceConfigRefreshRateInLowZoneChanged(I)V

    .line 830
    goto :goto_79

    .line 850
    .end local v0    # "refreshRateInZone":I
    :pswitch_4d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    .line 851
    .local v0, "defaultPeakRefreshRate":Ljava/lang/Float;
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSettingsObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->onDeviceConfigDefaultPeakRefreshRateChanged(Ljava/lang/Float;)V

    .line 853
    goto :goto_79

    .line 820
    .end local v0    # "defaultPeakRefreshRate":Ljava/lang/Float;
    :pswitch_5b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 821
    .local v0, "thresholds":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onDeviceConfigLowBrightnessThresholdsChanged([I[I)V

    .line 823
    goto :goto_79

    .line 856
    .end local v0    # "thresholds":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    :pswitch_71
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    .line 858
    .local v0, "desiredDisplayModeSpecsListener":Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;
    invoke-interface {v0}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;->onDesiredDisplayModeSpecsChanged()V

    .line 859
    nop

    .line 874
    .end local v0    # "desiredDisplayModeSpecsListener":Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;
    :goto_79
    return-void

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_71
        :pswitch_5b
        :pswitch_4d
        :pswitch_41
        :pswitch_35
        :pswitch_1f
        :pswitch_13
        :pswitch_7
    .end packed-switch
.end method
