.class Landroid/bluetooth/BluetoothLeAudio$1;
.super Landroid/bluetooth/IBluetoothLeAudioCallback$Stub;
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

    .line 136
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeAudio$1;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothLeAudioCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onCodecConfigChanged$0(Landroid/bluetooth/BluetoothLeAudio$Callback;ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V
    .registers 3
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeAudio$Callback;
    .param p1, "groupId"    # I
    .param p2, "status"    # Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    .line 144
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$Callback;->onCodecConfigChanged(ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V

    return-void
.end method

.method static synthetic blacklist lambda$onGroupNodeAdded$1(Landroid/bluetooth/BluetoothLeAudio$Callback;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeAudio$Callback;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "groupId"    # I

    .line 155
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$Callback;->onGroupNodeAdded(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onGroupNodeRemoved$2(Landroid/bluetooth/BluetoothLeAudio$Callback;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeAudio$Callback;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "groupId"    # I

    .line 166
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$Callback;->onGroupNodeRemoved(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onGroupStatusChanged$3(Landroid/bluetooth/BluetoothLeAudio$Callback;II)V
    .registers 3
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeAudio$Callback;
    .param p1, "groupId"    # I
    .param p2, "groupStatus"    # I

    .line 176
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$Callback;->onGroupStatusChanged(II)V

    return-void
.end method


# virtual methods
.method public blacklist onCodecConfigChanged(ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V
    .registers 8
    .param p1, "groupId"    # I
    .param p2, "status"    # Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    .line 141
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$1;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeAudio;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 142
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeAudio$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeAudio$Callback;

    .line 143
    .local v2, "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 144
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothLeAudio$Callback;ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 145
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeAudio$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 146
    :cond_2f
    return-void
.end method

.method public blacklist onGroupNodeAdded(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "groupId"    # I

    .line 150
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$1;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothLeAudio;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 152
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$1;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeAudio;)Ljava/util/Map;

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

    .line 153
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeAudio$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeAudio$Callback;

    .line 154
    .local v2, "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 155
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothLeAudio$Callback;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 156
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeAudio$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_17

    .line 157
    :cond_38
    return-void
.end method

.method public blacklist onGroupNodeRemoved(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "groupId"    # I

    .line 161
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$1;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothLeAudio;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 163
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$1;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeAudio;)Ljava/util/Map;

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

    .line 164
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeAudio$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeAudio$Callback;

    .line 165
    .local v2, "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 166
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothLeAudio$Callback;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 167
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeAudio$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_17

    .line 168
    :cond_38
    return-void
.end method

.method public blacklist onGroupStatusChanged(II)V
    .registers 8
    .param p1, "groupId"    # I
    .param p2, "groupStatus"    # I

    .line 173
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$1;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeAudio;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 174
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeAudio$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeAudio$Callback;

    .line 175
    .local v2, "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 176
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeAudio$1$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothLeAudio$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 177
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeAudio$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeAudio$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 178
    :cond_2f
    return-void
.end method
