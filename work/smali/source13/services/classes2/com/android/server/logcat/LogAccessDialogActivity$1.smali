.class Lcom/android/server/logcat/LogAccessDialogActivity$1;
.super Landroid/os/Handler;
.source "LogAccessDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/logcat/LogAccessDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/logcat/LogAccessDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/server/logcat/LogAccessDialogActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/logcat/LogAccessDialogActivity;

    .line 136
    iput-object p1, p0, Lcom/android/server/logcat/LogAccessDialogActivity$1;->this$0:Lcom/android/server/logcat/LogAccessDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    goto :goto_22

    .line 140
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity$1;->this$0:Lcom/android/server/logcat/LogAccessDialogActivity;

    invoke-static {v0}, Lcom/android/server/logcat/LogAccessDialogActivity;->-$$Nest$fgetmAlert(Lcom/android/server/logcat/LogAccessDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 141
    iget-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity$1;->this$0:Lcom/android/server/logcat/LogAccessDialogActivity;

    invoke-static {v0}, Lcom/android/server/logcat/LogAccessDialogActivity;->-$$Nest$fgetmAlert(Lcom/android/server/logcat/LogAccessDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 142
    iget-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity$1;->this$0:Lcom/android/server/logcat/LogAccessDialogActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/logcat/LogAccessDialogActivity;->-$$Nest$fputmAlert(Lcom/android/server/logcat/LogAccessDialogActivity;Landroid/app/AlertDialog;)V

    .line 143
    iget-object v0, p0, Lcom/android/server/logcat/LogAccessDialogActivity$1;->this$0:Lcom/android/server/logcat/LogAccessDialogActivity;

    invoke-static {v0}, Lcom/android/server/logcat/LogAccessDialogActivity;->-$$Nest$mdeclineLogAccess(Lcom/android/server/logcat/LogAccessDialogActivity;)V

    .line 150
    :cond_22
    :goto_22
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
