.class final Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 3191
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 3192
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3193
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 3197
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_f2

    goto/16 :goto_f1

    .line 3271
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmAutomaticBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 3272
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmAutomaticBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 3274
    :cond_19
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fputmTemporaryAutoBrightnessAdjRatio(Lcom/android/server/display/DisplayPowerController;F)V

    .line 3275
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    goto/16 :goto_f1

    .line 3267
    :sswitch_25
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mlogHbmBrightnessStats(Lcom/android/server/display/DisplayPowerController;FI)V

    .line 3268
    goto/16 :goto_f1

    .line 3260
    :sswitch_34
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmPowerState(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerState;

    move-result-object v0

    if-eqz v0, :cond_f1

    .line 3261
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmPowerState(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v0

    .line 3262
    .local v0, "brightness":F
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1, v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mreportStats(Lcom/android/server/display/DisplayPowerController;F)V

    .line 3263
    .end local v0    # "brightness":F
    goto/16 :goto_f1

    .line 3256
    :sswitch_4d
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mhandleRbcChanged(Lcom/android/server/display/DisplayPowerController;)V

    .line 3257
    goto/16 :goto_f1

    .line 3249
    :sswitch_54
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmStopped(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 3250
    return-void

    .line 3252
    :cond_5d
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayPowerController;Z)V

    .line 3253
    goto/16 :goto_f1

    .line 3245
    :sswitch_65
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mcleanupHandlerThreadAfterStop(Lcom/android/server/display/DisplayPowerController;)V

    .line 3246
    goto/16 :goto_f1

    .line 3241
    :sswitch_6c
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mignoreProximitySensorUntilChangedInternal(Lcom/android/server/display/DisplayPowerController;)V

    .line 3242
    goto/16 :goto_f1

    .line 3234
    :sswitch_73
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 3235
    .local v0, "value":F
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_82

    goto :goto_83

    :cond_82
    move v1, v0

    :goto_83
    invoke-static {v2, v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fputmTemporaryAutoBrightnessAdjRatio(Lcom/android/server/display/DisplayPowerController;F)V

    .line 3237
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    .line 3238
    goto :goto_f1

    .line 3225
    .end local v0    # "value":F
    :sswitch_8c
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fputmTemporaryScreenBrightness(Lcom/android/server/display/DisplayPowerController;F)V

    .line 3227
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmDisplayPowerControllerImpl(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerControllerStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmTemporaryScreenBrightness(Lcom/android/server/display/DisplayPowerController;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/display/DisplayPowerControllerStub;->mayBeReportUserDisableSunlightTemporary(F)V

    .line 3228
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    .line 3229
    goto :goto_f1

    .line 3219
    :sswitch_ac
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/display/BrightnessConfiguration;

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fputmBrightnessConfiguration(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/BrightnessConfiguration;)V

    .line 3220
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    .line 3221
    goto :goto_f1

    .line 3213
    :sswitch_bb
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmPendingScreenOffUnblocker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, v1, :cond_f1

    .line 3214
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$munblockScreenOff(Lcom/android/server/display/DisplayPowerController;)V

    .line 3215
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_f1

    .line 3207
    :sswitch_d0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmPendingScreenOnUnblocker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, v1, :cond_f1

    .line 3208
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$munblockScreenOn(Lcom/android/server/display/DisplayPowerController;)V

    .line 3209
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_f1

    .line 3203
    :sswitch_e5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mdebounceProximitySensor(Lcom/android/server/display/DisplayPowerController;)V

    .line 3204
    goto :goto_f1

    .line 3199
    :sswitch_eb
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    .line 3200
    nop

    .line 3279
    :cond_f1
    :goto_f1
    return-void

    :sswitch_data_f2
    .sparse-switch
        0x1 -> :sswitch_eb
        0x2 -> :sswitch_e5
        0x3 -> :sswitch_d0
        0x4 -> :sswitch_bb
        0x5 -> :sswitch_ac
        0x6 -> :sswitch_8c
        0x7 -> :sswitch_73
        0x8 -> :sswitch_6c
        0x9 -> :sswitch_65
        0xa -> :sswitch_54
        0xb -> :sswitch_4d
        0xc -> :sswitch_34
        0xd -> :sswitch_25
        0xff -> :sswitch_8
    .end sparse-switch
.end method
