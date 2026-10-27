.class public final Lcom/android/server/wm/AppWarnings$UiHandler;
.super Landroid/os/Handler;
.source "AppWarnings.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V
    .registers 4

    .line 732
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 733
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 738
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4a

    return-void

    .line 764
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 765
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mshowPageSizeMismatchDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 760
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 761
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mshowDeprecatedAbiDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 756
    :pswitch_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 757
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mshowDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 751
    :pswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 752
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 753
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mhideDialogsForPackageUiThread(Lcom/android/server/wm/AppWarnings;Ljava/lang/String;I)V

    return-void

    .line 747
    :pswitch_30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 748
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mshowUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 744
    :pswitch_3a
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mhideUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/AppWarnings;)V

    return-void

    .line 740
    :pswitch_40
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 741
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mshowUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3a
        :pswitch_30
        :pswitch_24
        :pswitch_1a
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method

.method public hideDialogsForPackage(Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 796
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public hideUnsupportedDisplaySizeDialog()V
    .registers 2

    const/4 v0, 0x2

    .line 776
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 777
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showDeprecatedAbiDialog(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x6

    .line 791
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 792
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showDeprecatedTargetDialog(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x5

    .line 786
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 787
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showPageSizeMismatchDialog(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x7

    .line 800
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 801
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showUnsupportedCompileSdkDialog(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x3

    .line 781
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 782
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showUnsupportedDisplaySizeDialog(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x1

    .line 771
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 772
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
