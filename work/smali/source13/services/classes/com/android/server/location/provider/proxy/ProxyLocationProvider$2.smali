.class Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;
.super Ljava/lang/Object;
.source "ProxyLocationProvider.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->onFlush(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 190
    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 212
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_5
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 214
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_15

    .line 215
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 216
    return-void

    .line 214
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public run(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    invoke-static {p1}, Landroid/location/provider/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProvider;

    move-result-object v0

    .line 204
    .local v0, "provider":Landroid/location/provider/ILocationProvider;
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_9
    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$2;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 207
    invoke-interface {v0}, Landroid/location/provider/ILocationProvider;->flush()V

    .line 208
    return-void

    .line 206
    :catchall_17
    move-exception v2

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v2
.end method
