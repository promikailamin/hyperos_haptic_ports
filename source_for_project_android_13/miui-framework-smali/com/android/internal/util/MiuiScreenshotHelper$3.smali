.class Lcom/android/internal/util/MiuiScreenshotHelper$3;
.super Ljava/lang/Object;
.source "MiuiScreenshotHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

.field final synthetic blacklist val$msg:Landroid/os/Message;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/MiuiScreenshotHelper;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/os/Message;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/internal/util/MiuiScreenshotHelper;

    .line 247
    iput-object p1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    iput-object p2, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->val$msg:Landroid/os/Message;

    iput-object p5, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->val$completionConsumer:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 250
    iget-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$fgetmScreenshotLock(Lcom/android/internal/util/MiuiScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 251
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$fgetmScreenshotConnection(Lcom/android/internal/util/MiuiScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eq v1, p0, :cond_29

    .line 252
    const-string v1, "ScreenshotHelper"

    const-string v2, "Local connection is not same to mScreenshotConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 254
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    :cond_27
    monitor-exit v0

    return-void

    .line 258
    :cond_29
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v1, p2}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$fputmScreenshotService(Lcom/android/internal/util/MiuiScreenshotHelper;Landroid/os/IBinder;)V

    .line 259
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v2}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$fgetmScreenshotService(Lcom/android/internal/util/MiuiScreenshotHelper;)Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_62

    .line 262
    .local v1, "messenger":Landroid/os/Messenger;
    :try_start_39
    iget-object v2, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->val$msg:Landroid/os/Message;

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3e} :catch_3f
    .catchall {:try_start_39 .. :try_end_3e} :catchall_62

    .line 268
    goto :goto_60

    .line 263
    :catch_3f
    move-exception v2

    .line 264
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_40
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

    .line 265
    iget-object v3, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->val$completionConsumer:Ljava/util/function/Consumer;

    if-eqz v3, :cond_60

    .line 266
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 269
    .end local v1    # "messenger":Landroid/os/Messenger;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_60
    :goto_60
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_40 .. :try_end_64} :catchall_62

    throw v1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 274
    iget-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$fgetmScreenshotLock(Lcom/android/internal/util/MiuiScreenshotHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 275
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$fgetmScreenshotConnection(Lcom/android/internal/util/MiuiScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 276
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$mresetConnection(Lcom/android/internal/util/MiuiScreenshotHelper;)V

    .line 278
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 279
    const-string v1, "ScreenshotHelper"

    const-string v2, "Screenshot service disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    iget-object v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$3;->this$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    invoke-static {v1}, Lcom/android/internal/util/MiuiScreenshotHelper;->-$$Nest$mnotifyScreenshotError(Lcom/android/internal/util/MiuiScreenshotHelper;)V

    .line 284
    :cond_31
    monitor-exit v0

    .line 285
    return-void

    .line 284
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw v1
.end method
