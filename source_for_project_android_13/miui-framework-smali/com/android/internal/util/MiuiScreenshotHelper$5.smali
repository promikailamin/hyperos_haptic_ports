.class Lcom/android/internal/util/MiuiScreenshotHelper$5;
.super Ljava/lang/Object;
.source "MiuiScreenshotHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/MiuiScreenshotHelper;->takeScreenshotPartial(I[FJLandroid/os/Handler;Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Ljava/util/function/Consumer;)V
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

.field final synthetic blacklist val$msg:Landroid/os/Message;

.field final synthetic blacklist val$pathList:[F


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/MiuiScreenshotHelper;[FLandroid/os/Message;Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/internal/util/MiuiScreenshotHelper;

    .line 362
    iput-object p1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    iput-object p2, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->val$pathList:[F

    iput-object p3, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->val$msg:Landroid/os/Message;

    iput-object p4, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->val$completionConsumer:Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->val$handler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 365
    iget-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$fgetmScreenshotLock(Lcom/android/internal/util/MiuiScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 366
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$fgetmScreenshotConnection(Lcom/android/internal/util/MiuiScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eq v1, p0, :cond_11

    .line 367
    monitor-exit v0

    return-void

    .line 369
    :cond_11
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v1, p2}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$fputmScreenshotService(Lcom/android/internal/util/MiuiScreenshotHelper;Landroid/os/IBinder;)V

    .line 370
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v2}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$fgetmScreenshotService(Lcom/android/internal/util/MiuiScreenshotHelper;)Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_5b

    .line 373
    .local v1, "messenger":Landroid/os/Messenger;
    :try_start_21
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 374
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "partial.screenshot.points"

    iget-object v4, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->val$pathList:[F

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 375
    iget-object v3, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->val$msg:Landroid/os/Message;

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 376
    iget-object v3, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->val$msg:Landroid/os/Message;

    invoke-virtual {v1, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_37} :catch_38
    .catchall {:try_start_21 .. :try_end_37} :catchall_5b

    .line 382
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_59

    .line 377
    :catch_38
    move-exception v2

    .line 378
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_39
    const-string v3, "ScreenshotHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t take screenshot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v3, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->val$completionConsumer:Ljava/util/function/Consumer;

    if-eqz v3, :cond_59

    .line 380
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 383
    .end local v1    # "messenger":Landroid/os/Messenger;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_59
    :goto_59
    monitor-exit v0

    .line 384
    return-void

    .line 383
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_39 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 388
    iget-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$fgetmScreenshotLock(Lcom/android/internal/util/MiuiScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 389
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$fgetmScreenshotConnection(Lcom/android/internal/util/MiuiScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 390
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$mresetConnection(Lcom/android/internal/util/MiuiScreenshotHelper;)V

    .line 392
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 393
    const-string v1, "ScreenshotHelper"

    const-string v2, "Screenshot service disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 395
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$5;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$mnotifyScreenshotError(Lcom/android/internal/util/MiuiScreenshotHelper;)V

    .line 398
    :cond_31
    monitor-exit v0

    .line 399
    return-void

    .line 398
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw v1
.end method
