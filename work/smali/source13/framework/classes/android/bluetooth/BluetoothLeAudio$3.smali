.class Landroid/bluetooth/BluetoothLeAudio$3;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothLeAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothLeAudio;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothLeAudio;)V
    .registers 2
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothLeAudio;

    .line 638
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBluetoothStateChange(Z)V
    .registers 7
    .param p1, "up"    # Z

    .line 640
    const-string v0, "BluetoothLeAudio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChange: up="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    if-eqz p1, :cond_6a

    .line 643
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeAudio;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 644
    :try_start_22
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeAudio;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_67

    if-nez v1, :cond_65

    .line 646
    :try_start_2e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$mgetService(Landroid/bluetooth/BluetoothLeAudio;)Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v1

    .line 647
    .local v1, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v1, :cond_55

    .line 649
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 650
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothLeAudio;)Landroid/bluetooth/IBluetoothLeAudioCallback;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v4}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothLeAudio;)Landroid/content/AttributionSource;

    move-result-object v4

    invoke-interface {v1, v3, v4, v2}, Landroid/bluetooth/IBluetoothLeAudio;->registerCallback(Landroid/bluetooth/IBluetoothLeAudioCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 652
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    .line 653
    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2e .. :try_end_55} :catch_5c
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_55} :catch_56
    .catchall {:try_start_2e .. :try_end_55} :catchall_67

    .line 659
    .end local v1    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_55
    goto :goto_65

    .line 657
    :catch_56
    move-exception v1

    .line 658
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_57
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeAudio$3;
    .end local p1    # "up":Z
    throw v2

    .line 655
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeAudio$3;
    .restart local p1    # "up":Z
    :catch_5c
    move-exception v1

    .line 656
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "BluetoothLeAudio"

    const-string v3, "Failed to register callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 659
    nop

    .line 661
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_65
    :goto_65
    monitor-exit v0

    goto :goto_6a

    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_57 .. :try_end_69} :catchall_67

    throw v1

    .line 663
    :cond_6a
    :goto_6a
    return-void
.end method
