.class public final Lcom/android/server/power/Notifier$NotifierHandler;
.super Landroid/os/Handler;
.source "Notifier.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V
    .registers 4

    .line 1490
    iput-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1491
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1496
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    return-void

    .line 1517
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/power/Notifier;->-$$Nest$mscreenPolicyChanging(Lcom/android/server/power/Notifier;II)V

    return-void

    .line 1514
    :pswitch_10
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/power/Notifier;->-$$Nest$mshowWiredChargingStarted(Lcom/android/server/power/Notifier;I)V

    return-void

    .line 1511
    :pswitch_18
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/power/Notifier;->-$$Nest$mlockProfile(Lcom/android/server/power/Notifier;I)V

    return-void

    :pswitch_20
    const/4 p1, 0x4

    .line 1507
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1508
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p0}, Lcom/android/server/power/Notifier;->-$$Nest$msendEnhancedDischargePredictionBroadcast(Lcom/android/server/power/Notifier;)V

    return-void

    .line 1504
    :pswitch_2a
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/power/Notifier;->-$$Nest$mshowWirelessChargingStarted(Lcom/android/server/power/Notifier;II)V

    return-void

    .line 1501
    :pswitch_34
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p0}, Lcom/android/server/power/Notifier;->-$$Nest$msendNextBroadcast(Lcom/android/server/power/Notifier;)V

    return-void

    .line 1498
    :pswitch_3a
    iget-object p0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/power/Notifier;->-$$Nest$msendUserActivity(Lcom/android/server/power/Notifier;II)V

    return-void

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_34
        :pswitch_2a
        :pswitch_20
        :pswitch_18
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method
