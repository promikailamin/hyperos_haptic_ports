.class final Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;
.super Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StrategyPreferredDevicesDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method private constructor blacklist <init>(Landroid/media/AudioManager;)V
    .registers 2

    .line 2091
    iput-object p1, p0, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchPrefDevicesChanged$0(Landroid/media/AudioManager$PrefDevListenerInfo;Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;)V
    .registers 4
    .param p0, "info"    # Landroid/media/AudioManager$PrefDevListenerInfo;
    .param p1, "strategy"    # Landroid/media/audiopolicy/AudioProductStrategy;
    .param p2, "devices"    # Ljava/util/List;

    .line 2111
    iget-object v0, p0, Landroid/media/AudioManager$PrefDevListenerInfo;->mListener:Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;

    invoke-interface {v0, p1, p2}, Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;->onPreferredDevicesForStrategyChanged(Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchPrefDevicesChanged(ILjava/util/List;)V
    .registers 11
    .param p1, "strategyId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    .line 2099
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    iget-object v0, p0, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmPrefDevListenerLock(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2100
    :try_start_7
    iget-object v1, p0, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmPrefDevListeners(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmPrefDevListeners(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_57

    .line 2103
    :cond_1c
    iget-object v1, p0, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmPrefDevListeners(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2104
    .local v1, "prefDevListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$PrefDevListenerInfo;>;"
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_59

    .line 2105
    nop

    .line 2106
    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategyWithId(I)Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object v0

    .line 2107
    .local v0, "strategy":Landroid/media/audiopolicy/AudioProductStrategy;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2109
    .local v2, "ident":J
    :try_start_32
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager$PrefDevListenerInfo;

    .line 2110
    .local v5, "info":Landroid/media/AudioManager$PrefDevListenerInfo;
    iget-object v6, v5, Landroid/media/AudioManager$PrefDevListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5, v0, p2}, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioManager$PrefDevListenerInfo;Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4c
    .catchall {:try_start_32 .. :try_end_4c} :catchall_52

    .line 2112
    .end local v5    # "info":Landroid/media/AudioManager$PrefDevListenerInfo;
    goto :goto_36

    .line 2114
    :cond_4d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2115
    nop

    .line 2116
    return-void

    .line 2114
    :catchall_52
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2115
    throw v4

    .line 2101
    .end local v0    # "strategy":Landroid/media/audiopolicy/AudioProductStrategy;
    .end local v1    # "prefDevListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$PrefDevListenerInfo;>;"
    .end local v2    # "ident":J
    :cond_57
    :goto_57
    :try_start_57
    monitor-exit v0

    return-void

    .line 2104
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_59

    throw v1
.end method
