.class Lcom/android/internal/util/MiuiScreenshotHelper$2;
.super Landroid/os/Handler;
.source "MiuiScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/MiuiScreenshotHelper;->takeScreenshot(IJLandroid/os/Handler;Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

.field final synthetic blacklist val$completionConsumer:Ljava/util/function/Consumer;

.field final synthetic blacklist val$handler:Landroid/os/Handler;

.field final synthetic blacklist val$mScreenshotTimeout:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/MiuiScreenshotHelper;Landroid/os/Looper;Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/internal/util/MiuiScreenshotHelper;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 218
    iput-object p1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$2;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    iput-object p3, p0, Lcom/android/internal/util/MiuiScreenshotHelper$2;->val$completionConsumer:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/internal/util/MiuiScreenshotHelper$2;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/internal/util/MiuiScreenshotHelper$2;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 221
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_38

    .line 230
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper$2;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$fgetmScreenshotLock(Lcom/android/internal/util/MiuiScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 231
    :try_start_d
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$2;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$mresetConnection(Lcom/android/internal/util/MiuiScreenshotHelper;)V

    .line 232
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_1b

    .line 233
    const-string v0, "ScreenshotHelper"

    const-string v1, "Handler msg.what=SCREENSHOT_MSG_PROCESS_COMPLETE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 232
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1

    .line 223
    :pswitch_1e
    iget-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper$2;->val$completionConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_29

    .line 224
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 226
    :cond_29
    const-string v0, "ScreenshotHelper"

    const-string v1, "Handler msg.what=SCREENSHOT_MSG_URI"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$2;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    nop

    .line 236
    :goto_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_6
    .end packed-switch
.end method
