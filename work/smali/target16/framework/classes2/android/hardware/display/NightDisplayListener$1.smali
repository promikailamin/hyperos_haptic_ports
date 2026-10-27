.class Landroid/hardware/display/NightDisplayListener$1;
.super Landroid/database/ContentObserver;
.source "NightDisplayListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/display/NightDisplayListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/display/NightDisplayListener;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 60
    iput-object p1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 63
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 64
    if-nez p2, :cond_7

    const/4 p1, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 65
    :goto_b
    if-eqz p1, :cond_b8

    iget-object p2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {p2}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object p2

    if-eqz p2, :cond_b8

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_ba

    :cond_1c
    goto :goto_4f

    :sswitch_1d
    const-string p2, "night_display_custom_start_time"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x2

    goto :goto_50

    :sswitch_27
    const-string p2, "night_display_activated"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x0

    goto :goto_50

    :sswitch_31
    const-string p2, "night_display_color_temperature"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x4

    goto :goto_50

    :sswitch_3b
    const-string p2, "night_display_custom_end_time"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x3

    goto :goto_50

    :sswitch_45
    const-string p2, "night_display_auto_mode"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_50

    :goto_4f
    const/4 p1, -0x1

    :goto_50
    packed-switch p1, :pswitch_data_d0

    goto :goto_b8

    .line 82
    :pswitch_54
    iget-object p1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {p1}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object p1

    iget-object p2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {p2}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmManager(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object p2

    .line 83
    invoke-virtual {p2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayColorTemperature()I

    move-result p2

    .line 82
    invoke-interface {p1, p2}, Landroid/hardware/display/NightDisplayListener$Callback;->onColorTemperatureChanged(I)V

    goto :goto_b8

    .line 78
    :pswitch_68
    iget-object p1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {p1}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object p1

    iget-object p2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {p2}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmManager(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object p2

    .line 79
    invoke-virtual {p2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomEndTime()Ljava/time/LocalTime;

    move-result-object p2

    .line 78
    invoke-interface {p1, p2}, Landroid/hardware/display/NightDisplayListener$Callback;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 80
    goto :goto_b8

    .line 74
    :pswitch_7c
    iget-object p1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {p1}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object p1

    iget-object p2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {p2}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmManager(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object p2

    .line 75
    invoke-virtual {p2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomStartTime()Ljava/time/LocalTime;

    move-result-object p2

    .line 74
    invoke-interface {p1, p2}, Landroid/hardware/display/NightDisplayListener$Callback;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 76
    goto :goto_b8

    .line 71
    :pswitch_90
    iget-object p1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {p1}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object p1

    iget-object p2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {p2}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmManager(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/hardware/display/NightDisplayListener$Callback;->onAutoModeChanged(I)V

    .line 72
    goto :goto_b8

    .line 68
    :pswitch_a4
    iget-object p1, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {p1}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmCallback(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/NightDisplayListener$Callback;

    move-result-object p1

    iget-object p2, p0, Landroid/hardware/display/NightDisplayListener$1;->this$0:Landroid/hardware/display/NightDisplayListener;

    invoke-static {p2}, Landroid/hardware/display/NightDisplayListener;->-$$Nest$fgetmManager(Landroid/hardware/display/NightDisplayListener;)Landroid/hardware/display/ColorDisplayManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/hardware/display/NightDisplayListener$Callback;->onActivated(Z)V

    .line 69
    nop

    .line 87
    :cond_b8
    :goto_b8
    return-void

    nop

    :sswitch_data_ba
    .sparse-switch
        -0x797bb571 -> :sswitch_45
        -0x6900ebe5 -> :sswitch_3b
        -0x39c8c50c -> :sswitch_31
        0x2fb0ca2d -> :sswitch_27
        0x5e128274 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_a4
        :pswitch_90
        :pswitch_7c
        :pswitch_68
        :pswitch_54
    .end packed-switch
.end method
