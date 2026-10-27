.class public final Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
.super Landroid/os/Handler;
.source "AutomaticBrightnessController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V
    .registers 4

    .line 1401
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1402
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1407
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_3a

    return-void

    .line 1433
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmPausedShortTermModel(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->-$$Nest$minvalidate(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;)V

    return-void

    .line 1409
    :pswitch_10
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mupdateAutoBrightness(Lcom/android/server/display/AutomaticBrightnessController;ZZ)V

    return-void

    .line 1429
    :pswitch_18
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mupdateForegroundAppSync(Lcom/android/server/display/AutomaticBrightnessController;)V

    return-void

    .line 1425
    :pswitch_1e
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mupdateForegroundApp(Lcom/android/server/display/AutomaticBrightnessController;)V

    return-void

    .line 1421
    :pswitch_24
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmShortTermModel(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->-$$Nest$minvalidate(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;)V

    return-void

    .line 1417
    :pswitch_2e
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mcollectBrightnessAdjustmentSample(Lcom/android/server/display/AutomaticBrightnessController;)V

    return-void

    .line 1413
    :pswitch_34
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$mupdateAmbientLux(Lcom/android/server/display/AutomaticBrightnessController;)V

    return-void

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2e
        :pswitch_24
        :pswitch_1e
        :pswitch_18
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method
