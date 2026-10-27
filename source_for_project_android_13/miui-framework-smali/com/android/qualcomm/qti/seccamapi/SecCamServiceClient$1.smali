.class Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;
.super Ljava/lang/Object;
.source "SecCamServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;


# direct methods
.method constructor blacklist <init>(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    .line 510
    iput-object p1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 525
    const-string v0, "SECCAM-SERVICE-CLIENT"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->-$$Nest$fputbundServiceMessenger_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Landroid/os/Messenger;)V

    .line 527
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->-$$Nest$fputserviceConnecting_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Z)V

    .line 528
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->-$$Nest$fputserviceConnected_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Z)V

    .line 529
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-static {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->-$$Nest$fgetserviceReadyLatch_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 530
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-static {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->-$$Nest$fgetcallback_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 531
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-static {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->-$$Nest$fgetcallback_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;->serviceConnected()V

    .line 533
    :cond_37
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 513
    const-string v0, "SECCAM-SERVICE-CLIENT"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->-$$Nest$fputbundServiceMessenger_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Landroid/os/Messenger;)V

    .line 515
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->-$$Nest$fputserviceDisonnecting_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Z)V

    .line 516
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-static {v0, v1}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->-$$Nest$fputserviceConnected_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Z)V

    .line 517
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-static {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->-$$Nest$fgetserviceReadyLatch_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 518
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-static {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->-$$Nest$fgetcallback_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 519
    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-static {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->-$$Nest$fgetcallback_(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;->serviceDisconnected()V

    .line 521
    :cond_32
    return-void
.end method
