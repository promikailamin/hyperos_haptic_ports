.class Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;
.super Landroid/os/Handler;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipboardClearHandler"
.end annotation


# static fields
.field public static final MSG_CLEAR:I = 0x65


# instance fields
.field final synthetic this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;


# direct methods
.method constructor <init>(Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 609
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;->this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    .line 610
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 611
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 614
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4e

    .line 627
    const-string v0, "ClipboardService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClipboardClearHandler received unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 616
    :pswitch_20
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 617
    .local v0, "userId":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 618
    .local v1, "intendingUid":I
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;->this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    iget-object v2, v2, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 619
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;->this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    iget-object v3, v3, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v3, :cond_47

    .line 620
    const/16 v3, 0x198

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 622
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;->this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    iget-object v3, v3, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$msetPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 624
    :cond_47
    monitor-exit v2

    .line 625
    goto :goto_4c

    .line 624
    :catchall_49
    move-exception v3

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_2d .. :try_end_4b} :catchall_49

    throw v3

    .line 629
    .end local v0    # "userId":I
    .end local v1    # "intendingUid":I
    :goto_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x65
        :pswitch_20
    .end packed-switch
.end method
