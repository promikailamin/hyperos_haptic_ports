.class public final Lcom/miui/leakcanary/ObjectWatcher;
.super Ljava/lang/Object;
.source "ObjectWatcher.java"


# static fields
.field private static final blacklist INSTANCE:Lcom/miui/leakcanary/ObjectWatcher;

.field public static final blacklist RETAINED_DELAY_MILLIS:J = 0x1388L

.field private static final blacklist TAG:Ljava/lang/String; = "ObjectWatcher"


# instance fields
.field private final blacklist onObjectRetainedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/leakcanary/OnObjectRetainedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist watchedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/leakcanary/KeyedWeakReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/miui/leakcanary/ObjectWatcher;

    invoke-direct {v0}, Lcom/miui/leakcanary/ObjectWatcher;-><init>()V

    sput-object v0, Lcom/miui/leakcanary/ObjectWatcher;->INSTANCE:Lcom/miui/leakcanary/ObjectWatcher;

    .line 25
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/leakcanary/ObjectWatcher;->onObjectRetainedListeners:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/leakcanary/ObjectWatcher;->watchedObjects:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/leakcanary/ObjectWatcher;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 28
    return-void
.end method

.method public static blacklist getInstance()Lcom/miui/leakcanary/ObjectWatcher;
    .registers 1

    .line 31
    sget-object v0, Lcom/miui/leakcanary/ObjectWatcher;->INSTANCE:Lcom/miui/leakcanary/ObjectWatcher;

    return-object v0
.end method

.method private declared-synchronized blacklist moveToRetained(Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 111
    :try_start_1
    invoke-direct {p0}, Lcom/miui/leakcanary/ObjectWatcher;->removeWeaklyReachableObjects()V

    .line 112
    iget-object v0, p0, Lcom/miui/leakcanary/ObjectWatcher;->watchedObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/leakcanary/KeyedWeakReference;

    .line 113
    .local v0, "retainedRef":Lcom/miui/leakcanary/KeyedWeakReference;
    if-eqz v0, :cond_39

    .line 114
    const-string v1, "ObjectWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onObjectRetained "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/leakcanary/KeyedWeakReference;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/leakcanary/KeyedWeakReference;->setRetainedUptimeMillis(J)V

    .line 116
    iget-object v1, p0, Lcom/miui/leakcanary/ObjectWatcher;->onObjectRetainedListeners:Ljava/util/Set;

    new-instance v2, Lcom/miui/leakcanary/ObjectWatcher$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/miui/leakcanary/ObjectWatcher$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 118
    .end local p0    # "this":Lcom/miui/leakcanary/ObjectWatcher;
    :cond_39
    monitor-exit p0

    return-void

    .line 110
    .end local v0    # "retainedRef":Lcom/miui/leakcanary/KeyedWeakReference;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist removeWeaklyReachableObjects()V
    .registers 4

    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "ref":Lcom/miui/leakcanary/KeyedWeakReference;
    :goto_1
    iget-object v1, p0, Lcom/miui/leakcanary/ObjectWatcher;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/miui/leakcanary/KeyedWeakReference;

    .line 124
    if-eqz v0, :cond_13

    .line 125
    iget-object v1, p0, Lcom/miui/leakcanary/ObjectWatcher;->watchedObjects:Ljava/util/Map;

    iget-object v2, v0, Lcom/miui/leakcanary/KeyedWeakReference;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_13
    if-nez v0, :cond_16

    .line 128
    return-void

    .line 127
    :cond_16
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized blacklist addOnObjectRetainedListener(Lcom/miui/leakcanary/OnObjectRetainedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/miui/leakcanary/OnObjectRetainedListener;

    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/miui/leakcanary/ObjectWatcher;->onObjectRetainedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 61
    monitor-exit p0

    return-void

    .line 59
    .end local p0    # "this":Lcom/miui/leakcanary/ObjectWatcher;
    .end local p1    # "listener":Lcom/miui/leakcanary/OnObjectRetainedListener;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist clearObjectsWatchedBefore(J)V
    .registers 8
    .param p1, "heapDumpUptimeMillis"    # J

    monitor-enter p0

    .line 95
    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 96
    .local v0, "weakRefsToRemove":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/leakcanary/KeyedWeakReference;>;"
    iget-object v1, p0, Lcom/miui/leakcanary/ObjectWatcher;->watchedObjects:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 97
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/leakcanary/KeyedWeakReference;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/leakcanary/KeyedWeakReference;

    iget-wide v3, v3, Lcom/miui/leakcanary/KeyedWeakReference;->watchUptimeMillis:J

    cmp-long v3, v3, p1

    if-gtz v3, :cond_37

    .line 98
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/leakcanary/KeyedWeakReference;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/leakcanary/KeyedWeakReference;>;"
    .end local p0    # "this":Lcom/miui/leakcanary/ObjectWatcher;
    :cond_37
    goto :goto_10

    .line 101
    :cond_38
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/miui/leakcanary/ObjectWatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/miui/leakcanary/ObjectWatcher$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 102
    iget-object v1, p0, Lcom/miui/leakcanary/ObjectWatcher;->watchedObjects:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    .line 103
    monitor-exit p0

    return-void

    .line 94
    .end local v0    # "weakRefsToRemove":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/leakcanary/KeyedWeakReference;>;"
    .end local p1    # "heapDumpUptimeMillis":J
    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist clearWatchedObjects()V
    .registers 3

    monitor-enter p0

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/miui/leakcanary/ObjectWatcher;->watchedObjects:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/miui/leakcanary/ObjectWatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/miui/leakcanary/ObjectWatcher$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 107
    iget-object v0, p0, Lcom/miui/leakcanary/ObjectWatcher;->watchedObjects:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 108
    monitor-exit p0

    return-void

    .line 105
    .end local p0    # "this":Lcom/miui/leakcanary/ObjectWatcher;
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist expectWeaklyReachable(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 12
    .param p1, "watchedObject"    # Ljava/lang/Object;
    .param p2, "description"    # Ljava/lang/String;

    monitor-enter p0

    .line 72
    :try_start_1
    invoke-static {}, Lcom/miui/leakcanary/AppWatcher;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_10

    .line 73
    const-string v0, "ObjectWatcher"

    const-string v1, "AppWatcher not installed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_75

    .line 74
    monitor-exit p0

    return-void

    .line 76
    .end local p0    # "this":Lcom/miui/leakcanary/ObjectWatcher;
    :cond_10
    if-nez p1, :cond_1b

    .line 77
    :try_start_12
    const-string v0, "ObjectWatcher"

    const-string v1, "watchedObject is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_75

    .line 78
    monitor-exit p0

    return-void

    .line 80
    :cond_1b
    :try_start_1b
    invoke-direct {p0}, Lcom/miui/leakcanary/ObjectWatcher;->removeWeaklyReachableObjects()V

    .line 81
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "key":Ljava/lang/String;
    new-instance v8, Lcom/miui/leakcanary/KeyedWeakReference;

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/miui/leakcanary/ObjectWatcher;->queue:Ljava/lang/ref/ReferenceQueue;

    move-object v1, v8

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/miui/leakcanary/KeyedWeakReference;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;JLjava/lang/ref/ReferenceQueue;)V

    move-object v1, v8

    .line 86
    .local v1, "reference":Lcom/miui/leakcanary/KeyedWeakReference;
    const-string v2, "ObjectWatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Watching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v2, p0, Lcom/miui/leakcanary/ObjectWatcher;->watchedObjects:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {}, Lcom/miui/leakcanary/internal/HandlerExt;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/miui/leakcanary/ObjectWatcher$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/miui/leakcanary/ObjectWatcher$$ExternalSyntheticLambda2;-><init>(Lcom/miui/leakcanary/ObjectWatcher;Ljava/lang/String;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_73
    .catchall {:try_start_1b .. :try_end_73} :catchall_75

    .line 92
    monitor-exit p0

    return-void

    .line 71
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "reference":Lcom/miui/leakcanary/KeyedWeakReference;
    .end local p1    # "watchedObject":Ljava/lang/Object;
    .end local p2    # "description":Ljava/lang/String;
    :catchall_75
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getRetainedObjectCount()I
    .registers 5

    monitor-enter p0

    .line 49
    :try_start_1
    invoke-direct {p0}, Lcom/miui/leakcanary/ObjectWatcher;->removeWeaklyReachableObjects()V

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "count":I
    iget-object v1, p0, Lcom/miui/leakcanary/ObjectWatcher;->watchedObjects:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 52
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/leakcanary/KeyedWeakReference;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/leakcanary/KeyedWeakReference;

    invoke-virtual {v3}, Lcom/miui/leakcanary/KeyedWeakReference;->isRetained()Z

    move-result v3
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2c

    if-eqz v3, :cond_29

    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 55
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/leakcanary/KeyedWeakReference;>;"
    :cond_29
    goto :goto_f

    .line 56
    .end local p0    # "this":Lcom/miui/leakcanary/ObjectWatcher;
    :cond_2a
    monitor-exit p0

    return v0

    .line 48
    .end local v0    # "count":I
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist hasRetainedObjects()Z
    .registers 4

    monitor-enter p0

    .line 39
    :try_start_1
    invoke-direct {p0}, Lcom/miui/leakcanary/ObjectWatcher;->removeWeaklyReachableObjects()V

    .line 40
    iget-object v0, p0, Lcom/miui/leakcanary/ObjectWatcher;->watchedObjects:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 41
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/leakcanary/KeyedWeakReference;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/leakcanary/KeyedWeakReference;

    invoke-virtual {v2}, Lcom/miui/leakcanary/KeyedWeakReference;->isRetained()Z

    move-result v2
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2d

    if-eqz v2, :cond_29

    .line 42
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 44
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/leakcanary/KeyedWeakReference;>;"
    :cond_29
    goto :goto_e

    .line 45
    .end local p0    # "this":Lcom/miui/leakcanary/ObjectWatcher;
    :cond_2a
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 38
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic blacklist lambda$expectWeaklyReachable$0$com-miui-leakcanary-ObjectWatcher(Ljava/lang/String;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0, p1}, Lcom/miui/leakcanary/ObjectWatcher;->moveToRetained(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public declared-synchronized blacklist removeOnObjectRetainedListener(Lcom/miui/leakcanary/OnObjectRetainedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/miui/leakcanary/OnObjectRetainedListener;

    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/miui/leakcanary/ObjectWatcher;->onObjectRetainedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 65
    monitor-exit p0

    return-void

    .line 63
    .end local p0    # "this":Lcom/miui/leakcanary/ObjectWatcher;
    .end local p1    # "listener":Lcom/miui/leakcanary/OnObjectRetainedListener;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist watch(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p1, "watchedObject"    # Ljava/lang/Object;
    .param p2, "description"    # Ljava/lang/String;

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/miui/leakcanary/ObjectWatcher;->expectWeaklyReachable(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    return-void
.end method
