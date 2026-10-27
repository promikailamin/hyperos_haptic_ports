.class final Lcom/android/server/wm/AppWarnings$UiHandler;
.super Landroid/os/Handler;
.source "AppWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UiHandler"
.end annotation


# static fields
.field private static final MSG_HIDE_DIALOGS_FOR_PACKAGE:I = 0x4

.field private static final MSG_HIDE_UNSUPPORTED_DISPLAY_SIZE_DIALOG:I = 0x2

.field private static final MSG_SHOW_DEPRECATED_TARGET_SDK_DIALOG:I = 0x5

.field private static final MSG_SHOW_UNSUPPORTED_COMPILE_SDK_DIALOG:I = 0x3

.field private static final MSG_SHOW_UNSUPPORTED_DISPLAY_SIZE_DIALOG:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 380
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    .line 381
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 382
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 386
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    goto :goto_34

    .line 403
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 404
    .local v0, "ar":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {v1, v0}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mshowDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_34

    .line 399
    .end local v0    # "ar":Lcom/android/server/wm/ActivityRecord;
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 400
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {v1, v0}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mhideDialogsForPackageUiThread(Lcom/android/server/wm/AppWarnings;Ljava/lang/String;)V

    .line 401
    .end local v0    # "name":Ljava/lang/String;
    goto :goto_34

    .line 395
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 396
    .local v0, "ar":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {v1, v0}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mshowUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    .line 397
    .end local v0    # "ar":Lcom/android/server/wm/ActivityRecord;
    goto :goto_34

    .line 392
    :pswitch_24
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {v0}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mhideUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/AppWarnings;)V

    .line 393
    goto :goto_34

    .line 388
    :pswitch_2a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 389
    .restart local v0    # "ar":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {v1, v0}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mshowUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    .line 390
    .end local v0    # "ar":Lcom/android/server/wm/ActivityRecord;
    nop

    .line 407
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_24
        :pswitch_1a
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method

.method public hideDialogsForPackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 430
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 431
    return-void
.end method

.method public hideUnsupportedDisplaySizeDialog()V
    .registers 2

    .line 415
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWarnings$UiHandler;->removeMessages(I)V

    .line 416
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWarnings$UiHandler;->sendEmptyMessage(I)Z

    .line 417
    return-void
.end method

.method public showDeprecatedTargetDialog(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 425
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWarnings$UiHandler;->removeMessages(I)V

    .line 426
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 427
    return-void
.end method

.method public showUnsupportedCompileSdkDialog(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 420
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWarnings$UiHandler;->removeMessages(I)V

    .line 421
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 422
    return-void
.end method

.method public showUnsupportedDisplaySizeDialog(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 410
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWarnings$UiHandler;->removeMessages(I)V

    .line 411
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 412
    return-void
.end method
