.class final Lcom/android/server/display/BrightnessTracker$TrackerHandler;
.super Landroid/os/Handler;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1021
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 1022
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1023
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .line 1025
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_98

    goto/16 :goto_96

    .line 1057
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Sensor;

    invoke-static {v0, v1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mhandleSensorChanged(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/Sensor;)V

    goto/16 :goto_96

    .line 1046
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/display/BrightnessConfiguration;

    invoke-static {v0, v3}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fputmBrightnessConfiguration(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1047
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmBrightnessConfiguration(Lcom/android/server/display/BrightnessTracker;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmBrightnessConfiguration(Lcom/android/server/display/BrightnessTracker;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    .line 1049
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    move-result v0

    if-eqz v0, :cond_33

    move v1, v2

    goto :goto_34

    :cond_33
    nop

    :goto_34
    move v0, v1

    .line 1050
    .local v0, "shouldCollectColorSamples":Z
    if-eqz v0, :cond_45

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmColorSamplingEnabled(Lcom/android/server/display/BrightnessTracker;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 1051
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$menableColorSampling(Lcom/android/server/display/BrightnessTracker;)V

    goto :goto_96

    .line 1052
    :cond_45
    if-nez v0, :cond_96

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$fgetmColorSamplingEnabled(Lcom/android/server/display/BrightnessTracker;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 1053
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mdisableColorSampling(Lcom/android/server/display/BrightnessTracker;)V

    goto :goto_96

    .line 1038
    .end local v0    # "shouldCollectColorSamples":Z
    :pswitch_55
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mstartSensorListener(Lcom/android/server/display/BrightnessTracker;)V

    .line 1039
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$menableColorSampling(Lcom/android/server/display/BrightnessTracker;)V

    .line 1040
    goto :goto_96

    .line 1042
    :pswitch_60
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mstopSensorListener(Lcom/android/server/display/BrightnessTracker;)V

    .line 1043
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mdisableColorSampling(Lcom/android/server/display/BrightnessTracker;)V

    .line 1044
    goto :goto_96

    .line 1030
    :pswitch_6b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    .line 1031
    .local v0, "values":Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_75

    move v6, v2

    goto :goto_76

    :cond_75
    move v6, v1

    .line 1032
    .local v6, "userInitiatedChange":Z
    :goto_76
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget v5, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->brightness:F

    iget v7, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->powerBrightnessFactor:F

    iget-boolean v8, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isUserSetBrightness:Z

    iget-boolean v9, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    iget-wide v10, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->timestamp:J

    iget-object v12, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->uniqueDisplayId:Ljava/lang/String;

    invoke-static/range {v4 .. v12}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mhandleBrightnessChanged(Lcom/android/server/display/BrightnessTracker;FZFZZJLjava/lang/String;)V

    .line 1036
    goto :goto_96

    .line 1027
    .end local v0    # "values":Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;
    .end local v6    # "userInitiatedChange":Z
    :pswitch_88
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mbackgroundStart(Lcom/android/server/display/BrightnessTracker;F)V

    .line 1028
    nop

    .line 1061
    :cond_96
    :goto_96
    return-void

    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_88
        :pswitch_6b
        :pswitch_60
        :pswitch_55
        :pswitch_14
        :pswitch_9
    .end packed-switch
.end method
