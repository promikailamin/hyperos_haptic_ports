.class final Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bluetooth/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProfileServiceConnections"
.end annotation


# instance fields
.field mClassName:Landroid/content/ComponentName;

.field mIntent:Landroid/content/Intent;

.field mInvokingProxyCallbacks:Z

.field final mProxies:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/bluetooth/IBluetoothProfileServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/bluetooth/BluetoothManagerService;


# direct methods
.method static bridge synthetic -$$Nest$maddProxy(Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->addProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbindService(Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->bindService(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEmpty(Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveAllProxies(Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->removeAllProxies()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveProxy(Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Intent;)V
    .registers 3
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2121
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2114
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    .line 2119
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 2122
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    .line 2123
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    .line 2124
    iput-object p2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    .line 2125
    return-void
.end method

.method private addProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 5
    .param p1, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 2159
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2160
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    const-string v1, "BluetoothManagerService"

    if-eqz v0, :cond_18

    .line 2162
    :try_start_b
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-interface {p1, v2, v0}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_17

    .line 2163
    :catch_11
    move-exception v0

    .line 2164
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to connect to proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2165
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    goto :goto_6a

    .line 2167
    :cond_18
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBluetoothAvailableForBinding()Z

    move-result v0

    if-nez v0, :cond_44

    .line 2168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addProxy: Trying to bind to profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", while Bluetooth is disabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2171
    return-void

    .line 2174
    :cond_44
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v1, 0x191

    invoke-virtual {v0, v1, p0}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 2175
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2176
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2177
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2178
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2181
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6a
    :goto_6a
    return-void
.end method

.method private bindService(I)Z
    .registers 8
    .param p1, "rebindCount"    # I

    .line 2128
    const-string v0, "BluetoothManagerService"

    const/16 v1, 0xa

    .line 2130
    .local v1, "state":I
    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2131
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$msynchronousGetState(Lcom/android/server/bluetooth/BluetoothManagerService;)I

    move-result v3
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_18} :catch_7d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_18} :catch_7d
    .catchall {:try_start_5 .. :try_end_18} :catchall_7b

    move v1, v3

    .line 2136
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2137
    nop

    .line 2139
    const/16 v3, 0xc

    if-eq v1, v3, :cond_31

    .line 2141
    const-string v3, "Unable to bindService while Bluetooth is disabled"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    return v2

    .line 2146
    :cond_31
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_62

    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    if-nez v4, :cond_62

    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$sfgetUSER_HANDLE_CURRENT_OR_SELF()Landroid/os/UserHandle;

    move-result-object v5

    .line 2147
    invoke-virtual {v4, v3, p0, v2, v5}, Lcom/android/server/bluetooth/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 2148
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v2, 0x191

    invoke-virtual {v0, v2}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2149
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2150
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2151
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2152
    const/4 v2, 0x1

    return v2

    .line 2154
    .end local v0    # "msg":Landroid/os/Message;
    :cond_62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind with intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    return v2

    .line 2136
    :catchall_7b
    move-exception v0

    goto :goto_92

    .line 2132
    :catch_7d
    move-exception v3

    .line 2133
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7e
    const-string v4, "Unable to call getState"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_7b

    .line 2134
    nop

    .line 2136
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2134
    return v2

    .line 2136
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_92
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmBluetoothLock(Lcom/android/server/bluetooth/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2137
    throw v0
.end method

.method private isEmpty()Z
    .registers 2

    .line 2206
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private removeAllProxies()V
    .registers 2

    .line 2201
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 2202
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 2203
    return-void
.end method

.method private removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 5
    .param p1, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 2184
    const-string v0, "BluetoothManagerService"

    if-eqz p1, :cond_36

    .line 2185
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2187
    :try_start_c
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-interface {p1, v1}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 2190
    goto :goto_18

    .line 2188
    :catch_12
    move-exception v1

    .line 2189
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to disconnect proxy"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2193
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing the proxy, count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    .line 2194
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2193
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 2196
    :cond_36
    const-string v1, "Trying to remove a null proxy"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    :goto_3b
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 2277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Profile service for profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 2281
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->isBluetoothAvailableForBinding()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 2282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied: Trying to bind to profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", while Bluetooth is disabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    return-void

    .line 2287
    :cond_4c
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2288
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2289
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2290
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 2212
    const-string v0, "BluetoothManagerService"

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothManagerService;)Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const/16 v2, 0x191

    invoke-virtual {v1, v2, p0}, Lcom/android/server/bluetooth/BluetoothManagerService$BluetoothHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2213
    iput-object p2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    .line 2214
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    .line 2216
    const/4 v1, 0x0

    :try_start_12
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 2219
    goto :goto_1c

    .line 2217
    :catch_16
    move-exception v2

    .line 2218
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Unable to linkToDeath"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2221
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1c
    iget-boolean v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    if-eqz v2, :cond_26

    .line 2222
    const-string v1, "Proxy callbacks already in progress."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    return-void

    .line 2225
    :cond_26
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 2227
    iget-object v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2229
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_30
    if-ge v3, v2, :cond_51

    .line 2231
    :try_start_32
    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    invoke-interface {v4, p1, p2}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3d} :catch_40
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3e

    .line 2234
    goto :goto_46

    .line 2237
    .end local v3    # "i":I
    :catchall_3e
    move-exception v0

    goto :goto_49

    .line 2232
    .restart local v3    # "i":I
    :catch_40
    move-exception v4

    .line 2233
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_41
    const-string v5, "Unable to connect to proxy"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_3e

    .line 2229
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 2237
    .end local v3    # "i":I
    :goto_49
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2238
    iput-boolean v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 2239
    throw v0

    .line 2237
    :cond_51
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2238
    iput-boolean v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 2239
    nop

    .line 2240
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 2244
    const-string v0, "BluetoothManagerService"

    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    if-nez v1, :cond_7

    return-void

    .line 2246
    :cond_7
    const/4 v2, 0x0

    :try_start_8
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_b} :catch_c

    .line 2249
    goto :goto_12

    .line 2247
    :catch_c
    move-exception v1

    .line 2248
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v3, "Unable to unlinkToDeath"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2250
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_12
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    .line 2251
    iput-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    .line 2253
    iget-boolean v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    if-eqz v1, :cond_21

    .line 2254
    const-string v1, "Proxy callbacks already in progress."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    return-void

    .line 2257
    :cond_21
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 2259
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 2261
    .local v1, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2b
    if-ge v3, v1, :cond_4c

    .line 2263
    :try_start_2d
    iget-object v4, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    invoke-interface {v4, p1}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_38} :catch_3b
    .catchall {:try_start_2d .. :try_end_38} :catchall_39

    .line 2266
    goto :goto_41

    .line 2269
    .end local v3    # "i":I
    :catchall_39
    move-exception v0

    goto :goto_44

    .line 2264
    .restart local v3    # "i":I
    :catch_3b
    move-exception v4

    .line 2265
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3c
    const-string v5, "Unable to disconnect from proxy"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_39

    .line 2261
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 2269
    .end local v3    # "i":I
    :goto_44
    iget-object v3, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2270
    iput-boolean v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 2271
    throw v0

    .line 2269
    :cond_4c
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2270
    iput-boolean v2, p0, Lcom/android/server/bluetooth/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 2271
    nop

    .line 2272
    return-void
.end method
