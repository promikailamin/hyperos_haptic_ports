.class Lcom/android/server/connectivity/PacProxyService$2;
.super Ljava/lang/Object;
.source "PacProxyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacProxyService;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacProxyService;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacProxyService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/PacProxyService;

    .line 341
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 351
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmProxyLock(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 353
    :try_start_7
    const-string v1, "PacProxyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding service com.android.net.IProxyService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 354
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_23} :catch_26
    .catchall {:try_start_7 .. :try_end_23} :catchall_24

    .line 357
    goto :goto_2e

    .line 372
    :catchall_24
    move-exception v1

    goto :goto_6f

    .line 355
    :catch_26
    move-exception v1

    .line 356
    .local v1, "e1":Landroid/os/RemoteException;
    :try_start_27
    const-string v2, "PacProxyService"

    const-string v3, "Remote Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    .end local v1    # "e1":Landroid/os/RemoteException;
    :goto_2e
    const-string v1, "com.android.net.IProxyService"

    invoke-static {v1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 359
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p2}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fputmProxyService(Lcom/android/server/connectivity/PacProxyService;Lcom/android/net/IProxyService;)V

    .line 360
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v1}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmProxyService(Lcom/android/server/connectivity/PacProxyService;)Lcom/android/net/IProxyService;

    move-result-object v1

    if-nez v1, :cond_4c

    .line 361
    const-string v1, "PacProxyService"

    const-string v2, "No proxy service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 366
    :cond_4c
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v1}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmCurrentPac(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 367
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v1}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmCurrentPac(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$msetCurrentProxyScript(Lcom/android/server/connectivity/PacProxyService;Ljava/lang/String;)V

    goto :goto_6d

    .line 369
    :cond_5e
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v1}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmNetThreadHandler(Lcom/android/server/connectivity/PacProxyService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v2}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmPacDownloader(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    :goto_6d
    monitor-exit v0

    .line 373
    return-void

    .line 372
    :goto_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_27 .. :try_end_70} :catchall_24

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 344
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmProxyLock(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 345
    :try_start_7
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fputmProxyService(Lcom/android/server/connectivity/PacProxyService;Lcom/android/net/IProxyService;)V

    .line 346
    monitor-exit v0

    .line 347
    return-void

    .line 346
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method
