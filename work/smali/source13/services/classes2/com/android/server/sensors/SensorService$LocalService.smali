.class Lcom/android/server/sensors/SensorService$LocalService;
.super Lcom/android/server/sensors/SensorManagerInternal;
.source "SensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensors/SensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sensors/SensorService;


# direct methods
.method constructor <init>(Lcom/android/server/sensors/SensorService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sensors/SensorService;

    .line 107
    iput-object p1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-direct {p0}, Lcom/android/server/sensors/SensorManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public addProximityActiveListener(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;

    .line 111
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    const-string v0, "listener must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    new-instance v0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

    invoke-direct {v0, p1, p2}, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V

    .line 114
    .local v0, "proxy":Lcom/android/server/sensors/SensorService$ProximityListenerProxy;
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmLock(Lcom/android/server/sensors/SensorService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 115
    :try_start_16
    iget-object v2, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v2}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 118
    iget-object v2, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v2}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v2, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v2}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_41

    .line 120
    iget-object v2, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v2}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmPtr(Lcom/android/server/sensors/SensorService;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/sensors/SensorService;->-$$Nest$smregisterProximityActiveListenerNative(J)V

    .line 122
    :cond_41
    monitor-exit v1

    .line 123
    return-void

    .line 116
    :cond_43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener already registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "proxy":Lcom/android/server/sensors/SensorService$ProximityListenerProxy;
    .end local p0    # "this":Lcom/android/server/sensors/SensorService$LocalService;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;
    throw v2

    .line 122
    .restart local v0    # "proxy":Lcom/android/server/sensors/SensorService$ProximityListenerProxy;
    .restart local p0    # "this":Lcom/android/server/sensors/SensorService$LocalService;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;
    :catchall_4b
    move-exception v2

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_16 .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method public removeProximityActiveListener(Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;

    .line 127
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v0}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmLock(Lcom/android/server/sensors/SensorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 129
    :try_start_c
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

    .line 130
    .local v1, "proxy":Lcom/android/server/sensors/SensorService$ProximityListenerProxy;
    if-eqz v1, :cond_31

    .line 134
    iget-object v2, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v2}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmProximityListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 135
    iget-object v2, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v2}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmPtr(Lcom/android/server/sensors/SensorService;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/sensors/SensorService;->-$$Nest$smunregisterProximityActiveListenerNative(J)V

    .line 137
    .end local v1    # "proxy":Lcom/android/server/sensors/SensorService$ProximityListenerProxy;
    :cond_2f
    monitor-exit v0

    .line 138
    return-void

    .line 131
    .restart local v1    # "proxy":Lcom/android/server/sensors/SensorService$ProximityListenerProxy;
    :cond_31
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener was not registered with sensor service"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/sensors/SensorService$LocalService;
    .end local p1    # "listener":Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;
    throw v2

    .line 137
    .end local v1    # "proxy":Lcom/android/server/sensors/SensorService$ProximityListenerProxy;
    .restart local p0    # "this":Lcom/android/server/sensors/SensorService$LocalService;
    .restart local p1    # "listener":Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_39

    throw v1
.end method
