.class Lcom/android/server/display/color/ColorDisplayService$2;
.super Landroid/database/ContentObserver;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/color/ColorDisplayService;->setUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 305
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 308
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 310
    if-nez p2, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "setting":Ljava/lang/String;
    :goto_b
    if-eqz v0, :cond_164

    .line 312
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x6

    sparse-switch v2, :sswitch_data_166

    :cond_17
    goto/16 :goto_9d

    :sswitch_19
    const-string/jumbo v2, "reduce_bright_colors_activated"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0xa

    goto/16 :goto_9d

    :sswitch_26
    const-string/jumbo v2, "night_display_custom_start_time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x3

    goto/16 :goto_9d

    :sswitch_32
    const-string v2, "display_color_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x5

    goto :goto_9d

    :sswitch_3c
    const-string/jumbo v2, "reduce_bright_colors_level"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0xb

    goto :goto_9d

    :sswitch_48
    const-string v2, "display_white_balance_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x9

    goto :goto_9d

    :sswitch_53
    const-string/jumbo v2, "night_display_activated"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x0

    goto :goto_9d

    :sswitch_5e
    const-string v2, "accessibility_display_daltonizer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v1, 0x8

    goto :goto_9d

    :sswitch_69
    const-string v2, "accessibility_display_inversion_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v1, v4

    goto :goto_9d

    :sswitch_73
    const-string v2, "accessibility_display_daltonizer_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x7

    goto :goto_9d

    :sswitch_7d
    const-string/jumbo v2, "night_display_color_temperature"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v1, v3

    goto :goto_9d

    :sswitch_88
    const-string/jumbo v2, "night_display_custom_end_time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x4

    goto :goto_9d

    :sswitch_93
    const-string/jumbo v2, "night_display_auto_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x2

    :goto_9d
    packed-switch v1, :pswitch_data_198

    goto/16 :goto_164

    .line 363
    :pswitch_a2
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monReduceBrightColorsStrengthLevelChanged(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 364
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v1, v1, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_164

    .line 359
    :pswitch_b0
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1, v3}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monReduceBrightColorsActivationChanged(Lcom/android/server/display/color/ColorDisplayService;Z)V

    .line 360
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v1, v1, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 361
    goto/16 :goto_164

    .line 356
    :pswitch_be
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 357
    goto/16 :goto_164

    .line 353
    :pswitch_c5
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monAccessibilityDaltonizerChanged(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 354
    goto/16 :goto_164

    .line 349
    :pswitch_cc
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monAccessibilityDaltonizerChanged(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 350
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monAccessibilityActivated(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 351
    goto/16 :goto_164

    .line 345
    :pswitch_d8
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monAccessibilityInversionChanged(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 346
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monAccessibilityActivated(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 347
    goto/16 :goto_164

    .line 342
    :pswitch_e4
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetColorModeInternal(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monDisplayColorModeChanged(Lcom/android/server/display/color/ColorDisplayService;I)V

    .line 343
    goto/16 :goto_164

    .line 338
    :pswitch_ef
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 339
    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayCustomEndTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    .line 338
    invoke-static {v1, v2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monNightDisplayCustomEndTimeChanged(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V

    .line 340
    goto :goto_164

    .line 334
    :pswitch_fd
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 335
    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayCustomStartTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    .line 334
    invoke-static {v1, v2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monNightDisplayCustomStartTimeChanged(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V

    .line 336
    goto :goto_164

    .line 331
    :pswitch_10b
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayAutoModeInternal(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monNightDisplayAutoModeChanged(Lcom/android/server/display/color/ColorDisplayService;I)V

    .line 332
    goto :goto_164

    .line 322
    :pswitch_115
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v1

    .line 323
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result v1

    .line 324
    .local v1, "temperature":I
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperature()I

    move-result v2

    if-eq v2, v1, :cond_164

    .line 326
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    .line 327
    invoke-virtual {v2, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->onColorTemperatureChanged(I)V

    goto :goto_164

    .line 314
    .end local v1    # "temperature":I
    :pswitch_135
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result v1

    .line 316
    .local v1, "activated":Z
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedStateNotSet()Z

    move-result v2

    if-nez v2, :cond_157

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    .line 317
    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v2

    if-eq v2, v1, :cond_164

    .line 318
    :cond_157
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 368
    .end local v1    # "activated":Z
    :cond_164
    :goto_164
    return-void

    nop

    :sswitch_data_166
    .sparse-switch
        -0x797bb571 -> :sswitch_93
        -0x6900ebe5 -> :sswitch_88
        -0x39c8c50c -> :sswitch_7d
        -0x28f198ce -> :sswitch_73
        -0x20db1ad9 -> :sswitch_69
        0x1ccf6530 -> :sswitch_5e
        0x2fb0ca2d -> :sswitch_53
        0x425e310b -> :sswitch_48
        0x4d7e1cc1 -> :sswitch_3c
        0x5d15789c -> :sswitch_32
        0x5e128274 -> :sswitch_26
        0x62be648e -> :sswitch_19
    .end sparse-switch

    :pswitch_data_198
    .packed-switch 0x0
        :pswitch_135
        :pswitch_115
        :pswitch_10b
        :pswitch_fd
        :pswitch_ef
        :pswitch_e4
        :pswitch_d8
        :pswitch_cc
        :pswitch_c5
        :pswitch_be
        :pswitch_b0
        :pswitch_a2
    .end packed-switch
.end method
