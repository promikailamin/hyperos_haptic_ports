.class public Lcom/android/server/display/color/ColorDisplayService$2;
.super Landroid/database/ContentObserver;
.source "ColorDisplayService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;)V
    .registers 3

    .line 337
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    .line 340
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p2, :cond_7

    const/4 p1, 0x0

    goto :goto_b

    .line 342
    :cond_7
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    :goto_b
    if-eqz p1, :cond_186

    .line 344
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x6

    const/4 v2, -0x1

    sparse-switch p2, :sswitch_data_188

    goto/16 :goto_c0

    :sswitch_1c
    const-string/jumbo p2, "reduce_bright_colors_activated"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto/16 :goto_c0

    :cond_27
    const/16 v2, 0xc

    goto/16 :goto_c0

    :sswitch_2b
    const-string/jumbo p2, "night_display_custom_start_time"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto/16 :goto_c0

    :cond_36
    const/16 v2, 0xb

    goto/16 :goto_c0

    :sswitch_3a
    const-string p2, "display_color_mode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto/16 :goto_c0

    :cond_44
    const/16 v2, 0xa

    goto/16 :goto_c0

    :sswitch_48
    const-string/jumbo p2, "reduce_bright_colors_level"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto/16 :goto_c0

    :cond_53
    const/16 v2, 0x9

    goto/16 :goto_c0

    :sswitch_57
    const-string p2, "display_white_balance_enabled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto/16 :goto_c0

    :cond_61
    const/16 v2, 0x8

    goto/16 :goto_c0

    :sswitch_65
    const-string/jumbo p2, "night_display_activated"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    goto :goto_c0

    :cond_6f
    const/4 v2, 0x7

    goto :goto_c0

    :sswitch_71
    const-string p2, "accessibility_display_daltonizer"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7a

    goto :goto_c0

    :cond_7a
    move v2, v1

    goto :goto_c0

    :sswitch_7c
    const-string p2, "accessibility_display_daltonizer_saturation_level"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_85

    goto :goto_c0

    :cond_85
    const/4 v2, 0x5

    goto :goto_c0

    :sswitch_87
    const-string p2, "accessibility_display_inversion_enabled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_90

    goto :goto_c0

    :cond_90
    const/4 v2, 0x4

    goto :goto_c0

    :sswitch_92
    const-string p2, "accessibility_display_daltonizer_enabled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9b

    goto :goto_c0

    :cond_9b
    const/4 v2, 0x3

    goto :goto_c0

    :sswitch_9d
    const-string/jumbo p2, "night_display_color_temperature"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a7

    goto :goto_c0

    :cond_a7
    const/4 v2, 0x2

    goto :goto_c0

    :sswitch_a9
    const-string/jumbo p2, "night_display_custom_end_time"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b3

    goto :goto_c0

    :cond_b3
    move v2, v0

    goto :goto_c0

    :sswitch_b5
    const-string/jumbo p2, "night_display_auto_mode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bf

    goto :goto_c0

    :cond_bf
    const/4 v2, 0x0

    :goto_c0
    packed-switch v2, :pswitch_data_1be

    goto/16 :goto_186

    .line 396
    :pswitch_c5
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1, v0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monReduceBrightColorsActivationChanged(Lcom/android/server/display/color/ColorDisplayService;Z)V

    .line 397
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 366
    :pswitch_d2
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 367
    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayCustomStartTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    .line 366
    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monNightDisplayCustomStartTimeChanged(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V

    return-void

    .line 374
    :pswitch_e0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetColorModeInternal(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    return-void

    .line 400
    :pswitch_ea
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monReduceBrightColorsStrengthLevelChanged(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 401
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 393
    :pswitch_f7
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    return-void

    .line 346
    :pswitch_fd
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p1

    .line 347
    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result p1

    .line 348
    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    move-result p2

    if-nez p2, :cond_11f

    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p2

    .line 349
    invoke-virtual {p2}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result p2

    if-eq p2, p1, :cond_186

    .line 350
    :cond_11f
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    return-void

    .line 385
    :pswitch_12d
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monAccessibilityDaltonizerChanged(Lcom/android/server/display/color/ColorDisplayService;)V

    return-void

    .line 389
    :pswitch_133
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monAccessibilityDaltonizerChanged(Lcom/android/server/display/color/ColorDisplayService;)V

    return-void

    .line 377
    :pswitch_139
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monAccessibilityInversionChanged(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 378
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monAccessibilityActivated(Lcom/android/server/display/color/ColorDisplayService;)V

    return-void

    .line 381
    :pswitch_144
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monAccessibilityDaltonizerChanged(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 382
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monAccessibilityActivated(Lcom/android/server/display/color/ColorDisplayService;)V

    return-void

    .line 354
    :pswitch_14f
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result p1

    .line 356
    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperature()I

    move-result p2

    if-eq p2, p1, :cond_186

    .line 358
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p0

    .line 359
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->onColorTemperatureChanged(I)V

    return-void

    .line 370
    :pswitch_16f
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 371
    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayCustomEndTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    .line 370
    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monNightDisplayCustomEndTimeChanged(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V

    return-void

    .line 363
    :pswitch_17d
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayAutoModeInternal(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$monNightDisplayAutoModeChanged(Lcom/android/server/display/color/ColorDisplayService;I)V

    :cond_186
    :goto_186
    return-void

    nop

    :sswitch_data_188
    .sparse-switch
        -0x797bb571 -> :sswitch_b5
        -0x6900ebe5 -> :sswitch_a9
        -0x39c8c50c -> :sswitch_9d
        -0x28f198ce -> :sswitch_92
        -0x20db1ad9 -> :sswitch_87
        0x15a05806 -> :sswitch_7c
        0x1ccf6530 -> :sswitch_71
        0x2fb0ca2d -> :sswitch_65
        0x425e310b -> :sswitch_57
        0x4d7e1cc1 -> :sswitch_48
        0x5d15789c -> :sswitch_3a
        0x5e128274 -> :sswitch_2b
        0x62be648e -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_1be
    .packed-switch 0x0
        :pswitch_17d
        :pswitch_16f
        :pswitch_14f
        :pswitch_144
        :pswitch_139
        :pswitch_133
        :pswitch_12d
        :pswitch_fd
        :pswitch_f7
        :pswitch_ea
        :pswitch_e0
        :pswitch_d2
        :pswitch_c5
    .end packed-switch
.end method
