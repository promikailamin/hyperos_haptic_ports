.class public final Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V
    .registers 4

    .line 3110
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 3111
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 3116
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_1f4

    goto/16 :goto_1ec

    .line 3253
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/display/DisplayPowerController;

    .line 3254
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmDisplayBrightnessFollowers(Lcom/android/server/display/DisplayPowerController;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerController;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    const/high16 p0, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 3257
    invoke-virtual {p1, v1, p0, v0, v2}, Lcom/android/server/display/DisplayPowerController;->setBrightnessToFollow(FFFZ)V

    return-void

    .line 3247
    :pswitch_23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/display/DisplayPowerController;

    .line 3248
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmDisplayBrightnessFollowers(Lcom/android/server/display/DisplayPowerController;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerController;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3249
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    return-void

    .line 3166
    :pswitch_3a
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmDisplayBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/brightness/DisplayBrightnessController;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateWindowManagerBrightnessOverride(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;)Z

    move-result p1

    if-eqz p1, :cond_1ec

    .line 3168
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    return-void

    .line 3243
    :pswitch_50
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmDisplayBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/brightness/DisplayBrightnessController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setStylusBeingUsed(Z)V

    .line 3244
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    return-void

    .line 3236
    :pswitch_5f
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object p1

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3237
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 3238
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmClock(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$Clock;

    move-result-object v1

    .line 3239
    invoke-interface {v1}, Lcom/android/server/display/DisplayPowerController$Clock;->uptimeMillis()J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmIdleStylusTimeoutMillisConfig(Lcom/android/server/display/DisplayPowerController;)J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 3238
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3240
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmDisplayBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/brightness/DisplayBrightnessController;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setStylusBeingUsed(Z)V

    return-void

    .line 3134
    :pswitch_98
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmDisplayOffloadSession(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, p1, :cond_1ec

    .line 3135
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$munblockScreenOnByDisplayOffload(Lcom/android/server/display/DisplayPowerController;)V

    .line 3136
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    return-void

    .line 3227
    :pswitch_ad
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmDisplayBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/brightness/DisplayBrightnessController;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 3228
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 3227
    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessFromOffload(F)Z

    move-result p1

    if-eqz p1, :cond_1ec

    .line 3229
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    return-void

    .line 3224
    :pswitch_c5
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$msetDwbcLoggingEnabled(Lcom/android/server/display/DisplayPowerController;I)V

    return-void

    .line 3219
    :pswitch_cd
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 3220
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$msetDwbcOverride(Lcom/android/server/display/DisplayPowerController;F)V

    return-void

    .line 3210
    :pswitch_d9
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_de

    move v2, v3

    .line 3211
    :cond_de
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmAutomaticBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v0

    if-eqz v0, :cond_f6

    .line 3212
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmAutomaticBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    .line 3213
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$msetAnimatorRampSpeeds(Lcom/android/server/display/DisplayPowerController;Z)V

    .line 3215
    :cond_f6
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$msetDwbcStrongMode(Lcom/android/server/display/DisplayPowerController;I)V

    return-void

    .line 3205
    :pswitch_fe
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1, v3}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fputmBootCompleted(Lcom/android/server/display/DisplayPowerController;Z)V

    .line 3206
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    return-void

    .line 3199
    :pswitch_109
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_115

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3201
    :cond_115
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1, v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mhandleOnSwitchUser(Lcom/android/server/display/DisplayPowerController;IIF)V

    return-void

    .line 3195
    :pswitch_11f
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mlogHbmBrightnessStats(Lcom/android/server/display/DisplayPowerController;FI)V

    return-void

    .line 3188
    :pswitch_12d
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmPowerState(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerState;

    move-result-object p1

    if-eqz p1, :cond_1ec

    .line 3189
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmPowerState(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result p1

    .line 3190
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0, p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mreportStats(Lcom/android/server/display/DisplayPowerController;F)V

    return-void

    .line 3184
    :pswitch_145
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mhandleRbcChanged(Lcom/android/server/display/DisplayPowerController;)V

    return-void

    .line 3177
    :pswitch_14b
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmStopped(Lcom/android/server/display/DisplayPowerController;)Z

    move-result p1

    if-eqz p1, :cond_155

    goto/16 :goto_1ec

    .line 3180
    :cond_155
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayPowerController;)V

    return-void

    .line 3173
    :pswitch_15b
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mcleanupHandlerThreadAfterStop(Lcom/android/server/display/DisplayPowerController;)V

    return-void

    .line 3160
    :pswitch_161
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmAutomaticBrightnessStrategy(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 3161
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setTemporaryAutoBrightnessAdjustment(F)V

    .line 3162
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    return-void

    .line 3154
    :pswitch_176
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmDisplayBrightnessController(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/brightness/DisplayBrightnessController;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 3155
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setTemporaryBrightness(Ljava/lang/Float;)V

    .line 3156
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    return-void

    .line 3140
    :pswitch_18f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    .line 3142
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmAutomaticBrightnessStrategy(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_19f

    move p1, v3

    goto :goto_1a0

    :cond_19f
    move p1, v2

    :goto_1a0
    invoke-virtual {v1, v0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V

    .line 3144
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmBrightnessTracker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessTracker;

    move-result-object p1

    if-eqz p1, :cond_1bd

    .line 3145
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmBrightnessTracker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessTracker;

    move-result-object p1

    if-eqz v0, :cond_1ba

    .line 3147
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    move-result v0

    if-eqz v0, :cond_1ba

    move v2, v3

    .line 3146
    :cond_1ba
    invoke-virtual {p1, v2}, Lcom/android/server/display/BrightnessTracker;->setShouldCollectColorSample(Z)V

    .line 3149
    :cond_1bd
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    return-void

    .line 3128
    :pswitch_1c3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmPendingScreenOffUnblocker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, p1, :cond_1ec

    .line 3129
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$munblockScreenOff(Lcom/android/server/display/DisplayPowerController;)V

    .line 3130
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    return-void

    .line 3122
    :pswitch_1d8
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmPendingScreenOnUnblocker(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, p1, :cond_1ec

    .line 3123
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$munblockScreenOn(Lcom/android/server/display/DisplayPowerController;)V

    .line 3124
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    :cond_1ec
    :goto_1ec
    return-void

    .line 3118
    :pswitch_1ed
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mupdatePowerState(Lcom/android/server/display/DisplayPowerController;)V

    return-void

    nop

    :pswitch_data_1f4
    .packed-switch 0x1
        :pswitch_1ed
        :pswitch_1d8
        :pswitch_1c3
        :pswitch_18f
        :pswitch_176
        :pswitch_161
        :pswitch_15b
        :pswitch_14b
        :pswitch_145
        :pswitch_12d
        :pswitch_11f
        :pswitch_109
        :pswitch_fe
        :pswitch_d9
        :pswitch_cd
        :pswitch_c5
        :pswitch_ad
        :pswitch_98
        :pswitch_5f
        :pswitch_50
        :pswitch_3a
        :pswitch_23
        :pswitch_b
    .end packed-switch
.end method
