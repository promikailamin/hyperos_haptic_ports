.class Landroid/bluetooth/BluetoothAdapter$9;
.super Landroid/bluetooth/IBluetoothConnectionCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 2
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapter;

    .line 5124
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$9;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothConnectionCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onDeviceConnected$0(Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 5132
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;->onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDeviceDisconnected$1(Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p0, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "hciReason"    # I

    .line 5143
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;->onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method


# virtual methods
.method public blacklist onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 5127
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$9;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothAdapter;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 5129
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$9;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmBluetoothConnectionCallbackExecutorMap(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5130
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;

    .line 5131
    .local v2, "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 5132
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p1}, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5133
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_17

    .line 5134
    :cond_38
    return-void
.end method

.method public blacklist onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "hciReason"    # I

    .line 5138
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$9;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothAdapter;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 5140
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$9;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmBluetoothConnectionCallbackExecutorMap(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5141
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;

    .line 5142
    .local v2, "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 5143
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5144
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_17

    .line 5145
    :cond_38
    return-void
.end method
