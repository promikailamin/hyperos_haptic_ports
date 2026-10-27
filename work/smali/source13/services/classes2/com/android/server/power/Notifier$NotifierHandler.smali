.class final Lcom/android/server/power/Notifier$NotifierHandler;
.super Landroid/os/Handler;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotifierHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 937
    iput-object p1, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    .line 938
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 939
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 942
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    goto :goto_44

    .line 963
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/power/Notifier;->-$$Nest$mscreenPolicyChanging(Lcom/android/server/power/Notifier;II)V

    goto :goto_44

    .line 960
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/power/Notifier;->-$$Nest$mshowWiredChargingStarted(Lcom/android/server/power/Notifier;I)V

    .line 961
    goto :goto_44

    .line 957
    :pswitch_18
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/power/Notifier;->-$$Nest$mlockProfile(Lcom/android/server/power/Notifier;I)V

    .line 958
    goto :goto_44

    .line 953
    :pswitch_20
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->removeMessages(I)V

    .line 954
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->-$$Nest$msendEnhancedDischargePredictionBroadcast(Lcom/android/server/power/Notifier;)V

    .line 955
    goto :goto_44

    .line 950
    :pswitch_2a
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/power/Notifier;->-$$Nest$mshowWirelessChargingStarted(Lcom/android/server/power/Notifier;II)V

    .line 951
    goto :goto_44

    .line 947
    :pswitch_34
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->-$$Nest$msendNextBroadcast(Lcom/android/server/power/Notifier;)V

    .line 948
    goto :goto_44

    .line 944
    :pswitch_3a
    iget-object v0, p0, Lcom/android/server/power/Notifier$NotifierHandler;->this$0:Lcom/android/server/power/Notifier;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/power/Notifier;->-$$Nest$msendUserActivity(Lcom/android/server/power/Notifier;II)V

    .line 945
    nop

    .line 966
    :goto_44
    return-void

    nop

    :pswitch_data_46
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
